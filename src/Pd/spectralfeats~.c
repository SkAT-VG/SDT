#include "m_pd.h"
#include "SDT/SDTCommon.h"
#include "SDT/SDTAnalysis.h"
#ifdef NT
#pragma warning( disable : 4244 )
#pragma warning( disable : 4305 )
#endif

static t_class *spectralfeats_class;

typedef struct _spectralfeats {
  t_object obj;
  SDTSpectralFeats *feats;
  t_float f;
  t_outlet *out0;
} t_spectralfeats;

void spectralfeats_overlap(t_spectralfeats *x, t_float f) {
  SDTSpectralFeats_setOverlap(x->feats, f);
}

void spectralfeats_minFreq(t_spectralfeats *x, t_float f) {
  SDTSpectralFeats_setMinFreq(x->feats, f);
}

void spectralfeats_maxFreq(t_spectralfeats *x, t_float f) {
  SDTSpectralFeats_setMaxFreq(x->feats, f);
}

t_int *spectralfeats_perform(t_int *w) {
  t_spectralfeats *x = (t_spectralfeats *)(w[1]);
  t_float *in = (t_float *)(w[2]);
  int n = (int)w[3];
  double tmpOuts[8];
  t_atom argv;
  int hasOutput = 0;
  
  while (n--) {
    hasOutput += SDTSpectralFeats_dsp(x->feats, tmpOuts, *in++);
  }
  if (hasOutput) {
    SETFLOAT(&argv, tmpOuts[0]);
    outlet_anything(x->out0, gensym("magnitude"), 1, &argv);
    SETFLOAT(&argv, tmpOuts[1]);
    outlet_anything(x->out0, gensym("centroid"), 1, &argv);
    SETFLOAT(&argv, tmpOuts[2]);
    outlet_anything(x->out0, gensym("spread"), 1, &argv);
    SETFLOAT(&argv, tmpOuts[3]);
    outlet_anything(x->out0, gensym("skewness"), 1, &argv);
    SETFLOAT(&argv, tmpOuts[4]);
    outlet_anything(x->out0, gensym("kurtosis"), 1, &argv);
    SETFLOAT(&argv, tmpOuts[5]);
    outlet_anything(x->out0, gensym("flatness"), 1, &argv);
    SETFLOAT(&argv, tmpOuts[6]);
    outlet_anything(x->out0, gensym("flux"), 1, &argv);
    SETFLOAT(&argv, tmpOuts[7]);
    outlet_anything(x->out0, gensym("onset"), 1, &argv);
  }
  return w + 4;
}

void spectralfeats_dsp(t_spectralfeats *x, t_signal **sp, short *count) {
  SDT_setSampleRate(sp[0]->s_sr);
  dsp_add(spectralfeats_perform, 3, x, sp[0]->s_vec, sp[0]->s_n);
}

void *spectralfeats_new(t_symbol *s, long argc, t_atom *argv) {
  long tmpSize, windowSize;
  
  t_spectralfeats *x = (t_spectralfeats *)pd_new(spectralfeats_class);
  if (argc > 0 && argv[0].a_type == A_FLOAT) {
    tmpSize = atom_getfloat(&argv[0]);
    windowSize = SDT_nextPow2(tmpSize);
    if (tmpSize != windowSize) {
      post("spectralfeats~: Window size must be a power of 2, setting it to %d", windowSize);
    }
  }
  else {
    windowSize = 1024;
  }
  x->feats = SDTSpectralFeats_new(windowSize);
  x->out0 = outlet_new(&x->obj, NULL);
  return (x);
}

void spectralfeats_free(t_spectralfeats *x) {
  outlet_free(x->out0);
  SDTSpectralFeats_free(x->feats);
}

void spectralfeats_tilde_setup(void) {	
  spectralfeats_class = class_new(gensym("spectralfeats~"), (t_newmethod)spectralfeats_new, (t_method)spectralfeats_free, sizeof(t_spectralfeats), CLASS_DEFAULT, A_GIMME, 0);
  CLASS_MAINSIGNALIN(spectralfeats_class, t_spectralfeats, f);
  class_addmethod(spectralfeats_class, (t_method)spectralfeats_overlap, gensym("overlap"), A_FLOAT, 0);
  class_addmethod(spectralfeats_class, (t_method)spectralfeats_minFreq, gensym("minFreq"), A_FLOAT, 0);
  class_addmethod(spectralfeats_class, (t_method)spectralfeats_maxFreq, gensym("maxFreq"), A_FLOAT, 0);
  class_addmethod(spectralfeats_class, (t_method)spectralfeats_dsp, gensym("dsp"), 0);
}