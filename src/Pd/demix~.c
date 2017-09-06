#include "m_pd.h"
#include "SDT/SDTCommon.h"
#include "SDT/SDTDemix.h"
#ifdef NT
#pragma warning( disable : 4244 )
#pragma warning( disable : 4305 )
#endif

static t_class *demix_class;

typedef struct _demix {
  t_object obj;
  SDTDemix *demix;
  t_float f;
  t_outlet *out0, *out1, *out2;
} t_demix;

static t_class *demix_class = NULL;

void demix_overlap(t_demix *x, t_float f) {
  SDTDemix_setOverlap(x->demix, f);
}

void demix_noiseThreshold(t_demix *x, t_float f) {
  SDTDemix_setNoiseThreshold(x->demix, f);
}

void demix_tonalThreshold(t_demix *x, t_float f) {
  SDTDemix_setTonalThreshold(x->demix, f);
}

t_int *demix_perform(t_int *w) {
  t_demix *x = (t_demix *)(w[1]);
  t_float *in = (t_float *)(w[2]);
  t_float *out0 = (t_float *)(w[3]);
  t_float *out1 = (t_float *)(w[4]);
  t_float *out2 = (t_float *)(w[5]);
  int n = (int)w[6];
  double tmpOuts[3];
  
  while (n--) {
    SDTDemix_dsp(x->demix, tmpOuts, *in++);
    *out0++ = (t_float)tmpOuts[0];
    *out1++ = (t_float)tmpOuts[1];
    *out2++ = (t_float)tmpOuts[2];
  }

  return w + 7;
}

void demix_dsp(t_demix *x, t_signal **sp) {
  SDT_setSampleRate(sp[0]->s_sr);
  dsp_add(demix_perform, 6, x, sp[0]->s_vec, sp[1]->s_vec, sp[2]->s_vec, sp[3]->s_vec, sp[0]->s_n);
}

void *demix_new(t_symbol *s, long argc, t_atom *argv) {
  long tmpSize, windowSize, kernelRadius;
  
  t_demix *x = (t_demix *)pd_new(demix_class);
  if (argc > 0 && argv[0].a_type == A_FLOAT) {
    tmpSize = atom_getfloat(&argv[0]);
    windowSize = SDT_nextPow2(tmpSize);
    if (tmpSize != windowSize) {
      post("sdt.demix~: Window size must be a power of 2, setting it to %d", windowSize);
    }
  }
  else {
    windowSize = 1024;
  }
  if (argc > 1 && argv[1].a_type == A_FLOAT) {
    kernelRadius = atom_getfloat(&argv[1]);
  }
  else {
    kernelRadius = 4;
  }
  x->demix = SDTDemix_new(windowSize, kernelRadius);
  x->out0 = outlet_new(&x->obj, gensym("signal"));
  x->out1 = outlet_new(&x->obj, gensym("signal"));
  x->out2 = outlet_new(&x->obj, gensym("signal"));
  return (x);
}

void demix_free(t_demix *x) {
  SDTDemix_free(x->demix);
  outlet_free(x->out0);
  outlet_free(x->out1);
  outlet_free(x->out2);
}

void demix_tilde_setup(void) {	
  demix_class = class_new(gensym("demix~"), (t_newmethod)demix_new, (t_method)demix_free,
                         (long)sizeof(t_demix), CLASS_DEFAULT, A_GIMME, 0);
  CLASS_MAINSIGNALIN(demix_class, t_demix, f);
  class_addmethod(demix_class, (t_method)demix_overlap, gensym("overlap"), A_FLOAT, 0);
  class_addmethod(demix_class, (t_method)demix_noiseThreshold, gensym("noiseThreshold"), A_FLOAT, 0);
  class_addmethod(demix_class, (t_method)demix_tonalThreshold, gensym("tonalThreshold"), A_FLOAT, 0);
  class_addmethod(demix_class, (t_method)demix_dsp, gensym("dsp"), 0);
}
