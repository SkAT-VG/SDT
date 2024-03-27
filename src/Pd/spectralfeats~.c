#include "SDT/SDTAnalysis.h"
#include "SDT/SDTCommon.h"
#include "SDTCommonPd.h"
#ifdef NT
#pragma warning(disable : 4244)
#pragma warning(disable : 4305)
#endif

static t_class *spectralfeats_class;

typedef struct _spectralfeats {
  t_object obj;
  SDTSpectralFeats *feats;
  t_float f;
  t_outlet *out0;
  const char *key;
} t_spectralfeats;

SDT_PD_SETTER(spectralfeats, SpectralFeats, feats, Overlap, )
SDT_PD_SETTER(spectralfeats, SpectralFeats, feats, MinFreq, )
SDT_PD_SETTER(spectralfeats, SpectralFeats, feats, MaxFreq, )

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
  SDT_PD_ARG_PARSE(2, A_SYMBOL, A_FLOAT)

  t_spectralfeats *x = (t_spectralfeats *)pd_new(spectralfeats_class);
  GET_ARG_WINSIZE(long, windowSize, 1, SDT_SPECTRALFEATS_SIZE_DEFAULT)
  x->feats = SDTSpectralFeats_new(windowSize);

  SDT_PD_REGISTER(SpectralFeats, feats, "spectral features extractor", 0)

  x->out0 = outlet_new(&x->obj, NULL);
  return (x);
}

void spectralfeats_free(t_spectralfeats *x) {
  outlet_free(x->out0);
  SDT_PD_FREE(SpectralFeats, feats)
}

void spectralfeats_tilde_setup(void) {
  spectralfeats_class =
      class_new(gensym("spectralfeats~"), (t_newmethod)spectralfeats_new,
                (t_method)spectralfeats_free, sizeof(t_spectralfeats),
                CLASS_DEFAULT, A_GIMME, 0);
  CLASS_MAINSIGNALIN(spectralfeats_class, t_spectralfeats, f);
  class_addmethod(spectralfeats_class, (t_method)spectralfeats_setOverlap,
                  gensym("overlap"), A_FLOAT, 0);
  class_addmethod(spectralfeats_class, (t_method)spectralfeats_setMinFreq,
                  gensym("minFreq"), A_FLOAT, 0);
  class_addmethod(spectralfeats_class, (t_method)spectralfeats_setMaxFreq,
                  gensym("maxFreq"), A_FLOAT, 0);
  class_addmethod(spectralfeats_class, (t_method)spectralfeats_dsp,
                  gensym("dsp"), 0);
}
