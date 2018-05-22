#include "m_pd.h"
#include "SDT/SDTCommon.h"
#include "SDT/SDTAnalysis.h"
#ifdef NT
#pragma warning( disable : 4244 )
#pragma warning( disable : 4305 )
#endif

static t_class *myo_class;

typedef struct _myo {
  t_object obj;
  SDTMyoelastic *myo;
  t_float f;
  t_outlet *out0, *out1, *out2, *out3;
  double time;
} t_myo;

void myo_dcFrequency(t_myo *x, t_float f) {
  SDTMyoelastic_setDcFrequency(x->myo, f);
}

void myo_lowFrequency(t_myo *x, t_float f) {
  SDTMyoelastic_setLowFrequency(x->myo, f);
}

void myo_highFrequency(t_myo *x, t_float f) {
  SDTMyoelastic_setHighFrequency(x->myo, f);
}

void myo_threshold(t_myo *x, t_float f) {
  SDTMyoelastic_setThreshold(x->myo, f);
}

t_int *myo_perform(t_int *w) {
  t_myo *x = (t_myo *)(w[1]);
  t_float *in = (t_float *)(w[2]);
  int n = (int)w[3];
  double tmpOuts[4];
  
  while (n--) {
    SDTMyoelastic_dsp(x->myo, tmpOuts, *in++);
    if (x->time != sys_getrealtime()) {
      outlet_float(x->out0, (t_float)tmpOuts[0]);
      outlet_float(x->out1, (t_float)tmpOuts[1]);
      outlet_float(x->out2, (t_float)tmpOuts[2]);
      outlet_float(x->out3, (t_float)tmpOuts[3]);
      x->time = sys_getrealtime();
    }
  }
  return w + 4;
}

void myo_dsp(t_myo *x, t_signal **sp, short *count) {
  SDT_setSampleRate(sp[0]->s_sr);
  dsp_add(myo_perform, 3, x, sp[0]->s_vec, sp[0]->s_n);
}

void *myo_new(t_symbol *s, long argc, t_atom *argv) {
  int windowSize;
  
  t_myo *x = (t_myo *)pd_new(myo_class);
  if (argc > 0 && argv[0].a_type == A_FLOAT) {
    windowSize = atom_getfloat(&argv[0]);
  }
  else {
    windowSize = 4096;
  }
  x->myo = SDTMyoelastic_new(windowSize);
  x->out0 = outlet_new(&x->obj, gensym("float"));
  x->out1 = outlet_new(&x->obj, gensym("float"));
  x->out2 = outlet_new(&x->obj, gensym("float"));
  x->out3 = outlet_new(&x->obj, gensym("float"));
  x->time = 0.0;
  return (x);
}

void myo_free(t_myo *x) {
  outlet_free(x->out0);
  outlet_free(x->out1);
  outlet_free(x->out2);
  outlet_free(x->out3);
  SDTMyoelastic_free(x->myo);
}

void myo_tilde_setup(void) {	
  myo_class = class_new(gensym("myo~"), (t_newmethod)myo_new, (t_method)myo_free, sizeof(t_myo), CLASS_DEFAULT, A_GIMME, 0);
  CLASS_MAINSIGNALIN(myo_class, t_myo, f);
  class_addmethod(myo_class, (t_method)myo_dcFrequency, gensym("dcFrequency"), A_FLOAT, 0);
  class_addmethod(myo_class, (t_method)myo_lowFrequency, gensym("lowFrequency"), A_FLOAT, 0);
  class_addmethod(myo_class, (t_method)myo_highFrequency, gensym("highFrequency"), A_FLOAT, 0);
  class_addmethod(myo_class, (t_method)myo_threshold, gensym("threshold"), A_FLOAT, 0);
  class_addmethod(myo_class, (t_method)myo_dsp, gensym("dsp"), 0);
}