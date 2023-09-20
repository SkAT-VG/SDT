#include "SDT/SDTAnalysis.h"
#include "SDT/SDTCommon.h"
#include "SDTCommonPd.h"
#ifdef NT
#pragma warning(disable : 4244)
#pragma warning(disable : 4305)
#endif

static t_class *myo_class;

typedef struct _myo {
  t_object obj;
  SDTMyoelastic *myo;
  t_float f;
  t_outlet *out0, *out1, *out2, *out3;
  double time;
  const char *key;
} t_myo;

SDT_PD_SETTER(myo, Myoelastic, myo, DcFrequency, update)
SDT_PD_SETTER(myo, Myoelastic, myo, LowFrequency, update)
SDT_PD_SETTER(myo, Myoelastic, myo, HighFrequency, update)
SDT_PD_SETTER(myo, Myoelastic, myo, Threshold, )

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
  SDTMyoelastic_update(x->myo);
  dsp_add(myo_perform, 3, x, sp[0]->s_vec, sp[0]->s_n);
}

void *myo_new(t_symbol *s, long argc, t_atom *argv) {
  SDT_PD_ARG_PARSE(1, A_SYMBOL)

  t_myo *x = (t_myo *)pd_new(myo_class);
  x->myo = SDTMyoelastic_new();
  x->time = 0.0;

  SDT_PD_REGISTER(Myoelastic, myo, "myoelastic feature extractor", 0)

  x->out0 = outlet_new(&x->obj, gensym("float"));
  x->out1 = outlet_new(&x->obj, gensym("float"));
  x->out2 = outlet_new(&x->obj, gensym("float"));
  x->out3 = outlet_new(&x->obj, gensym("float"));
  return (x);
}

void myo_free(t_myo *x) {
  outlet_free(x->out0);
  outlet_free(x->out1);
  outlet_free(x->out2);
  outlet_free(x->out3);
  SDT_PD_FREE(Myoelastic, myo)
}

void myo_tilde_setup(void) {
  myo_class =
      class_new(gensym("myo~"), (t_newmethod)myo_new, (t_method)myo_free,
                sizeof(t_myo), CLASS_DEFAULT, A_GIMME, 0);
  CLASS_MAINSIGNALIN(myo_class, t_myo, f);
  class_addmethod(myo_class, (t_method)myo_setDcFrequency,
                  gensym("dcFrequency"), A_FLOAT, 0);
  class_addmethod(myo_class, (t_method)myo_setLowFrequency,
                  gensym("lowFrequency"), A_FLOAT, 0);
  class_addmethod(myo_class, (t_method)myo_setHighFrequency,
                  gensym("highFrequency"), A_FLOAT, 0);
  class_addmethod(myo_class, (t_method)myo_setThreshold, gensym("threshold"),
                  A_FLOAT, 0);
  class_addmethod(myo_class, (t_method)myo_dsp, gensym("dsp"), 0);
}
