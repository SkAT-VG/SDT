#include "SDT/SDTCommon.h"
#include "SDT/SDTControl.h"
#include "SDTCommonPd.h"
#ifdef NT
#pragma warning(disable : 4244)
#pragma warning(disable : 4305)
#endif

static t_class *rolling_class;

typedef struct _rolling {
  t_object obj;
  SDTRolling *rolling;
  t_float f;
  t_outlet *out;
  const char *key;
} t_rolling;

SDT_PD_SETTER(rolling, Rolling, rolling, Grain, )
SDT_PD_SETTER(rolling, Rolling, rolling, Depth, )
SDT_PD_SETTER(rolling, Rolling, rolling, Mass, )
SDT_PD_SETTER(rolling, Rolling, rolling, Velocity, )

t_int *rolling_perform(t_int *w) {
  t_rolling *x = (t_rolling *)(w[1]);
  t_float *in = (t_float *)(w[2]);
  t_float *out = (t_float *)(w[3]);
  int n = (int)w[4];

  while (n--) {
    *out++ = (t_float)SDTRolling_dsp(x->rolling, *in++);
  }
  return w + 5;
}

void rolling_dsp(t_rolling *x, t_signal **sp) {
  SDT_setSampleRate(sp[0]->s_sr);
  dsp_add(rolling_perform, 4, x, sp[0]->s_vec, sp[1]->s_vec, sp[0]->s_n);
}

void *rolling_new(t_symbol *s, long argc, t_atom *argv) {
  SDT_PD_ARG_PARSE(1, A_SYMBOL)

  t_rolling *x = (t_rolling *)pd_new(rolling_class);
  x->rolling = SDTRolling_new();

  SDT_PD_REGISTER(Rolling, rolling, "rolling process", 0)

  x->out = outlet_new(&x->obj, gensym("signal"));
  return x;
}

void rolling_free(t_rolling *x) {
  SDT_PD_FREE(Rolling, rolling)
  outlet_free(x->out);
}

void rolling_tilde_setup(void) {
  rolling_class = class_new(gensym("rolling~"), (t_newmethod)rolling_new,
                            (t_method)rolling_free, (long)sizeof(t_rolling),
                            CLASS_DEFAULT, A_GIMME, 0);
  CLASS_MAINSIGNALIN(rolling_class, t_rolling, f);
  class_addmethod(rolling_class, (t_method)rolling_setGrain, gensym("grain"),
                  A_FLOAT, 0);
  class_addmethod(rolling_class, (t_method)rolling_setDepth, gensym("depth"),
                  A_FLOAT, 0);
  class_addmethod(rolling_class, (t_method)rolling_setMass, gensym("mass"),
                  A_FLOAT, 0);
  class_addmethod(rolling_class, (t_method)rolling_setVelocity,
                  gensym("velocity"), A_FLOAT, 0);
  class_addmethod(rolling_class, (t_method)rolling_dsp, gensym("dsp"), 0);
}
