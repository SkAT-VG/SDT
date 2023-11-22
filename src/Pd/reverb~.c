#include "SDT/SDTCommon.h"
#include "SDT/SDTEffects.h"
#include "SDTCommonPd.h"
#ifdef NT
#pragma warning(disable : 4244)
#pragma warning(disable : 4305)
#endif

static t_class *reverb_class;

typedef struct _reverb {
  t_object obj;
  t_float f;
  SDTReverb *reverb;
  t_outlet *out0;
  const char *key;
} t_reverb;

SDT_PD_SETTER(reverb, Reverb, reverb, XSize, update)
SDT_PD_SETTER(reverb, Reverb, reverb, YSize, update)
SDT_PD_SETTER(reverb, Reverb, reverb, ZSize, update)
SDT_PD_SETTER(reverb, Reverb, reverb, Randomness, update)
SDT_PD_SETTER(reverb, Reverb, reverb, Time, update)
SDT_PD_SETTER(reverb, Reverb, reverb, Time1k, update)

static t_int *reverb_perform(t_int *w) {
  t_reverb *x = (t_reverb *)(w[1]);
  t_float *in = (t_float *)(w[2]);
  t_float *out = (t_float *)(w[3]);
  int n = (int)w[4];

  while (n--) {
    *out++ = (float)SDTReverb_dsp(x->reverb, *in++);
  }

  return w + 5;
}

void reverb_dsp(t_reverb *x, t_signal **sp) {
  SDT_setSampleRate(sp[0]->s_sr);
  SDTReverb_update(x->reverb);
  dsp_add(reverb_perform, 4, x, sp[0]->s_vec, sp[1]->s_vec, sp[0]->s_n);
}

static void *reverb_new(t_symbol *s, long argc, t_atom *argv) {
  SDT_PD_ARG_PARSE(2, A_SYMBOL, A_FLOAT)

  t_reverb *x = (t_reverb *)pd_new(reverb_class);
  t_float maxDelay = GET_ARG(1, atom_getfloat, 44100.0);
  x->reverb = SDTReverb_new(maxDelay);

  SDT_PD_REGISTER(Reverb, reverb, "reverb", 0)

  x->out0 = outlet_new(&x->obj, gensym("signal"));
  return (x);
}

static void reverb_free(t_reverb *x) {
  outlet_free(x->out0);
  SDT_PD_FREE(Reverb, reverb)
}

void reverb_tilde_setup(void) {
  reverb_class = class_new(gensym("reverb~"), (t_newmethod)reverb_new,
                           (t_method)reverb_free, sizeof(t_reverb),
                           CLASS_DEFAULT, A_GIMME, 0);
  CLASS_MAINSIGNALIN(reverb_class, t_reverb, f);
  class_addmethod(reverb_class, (t_method)reverb_setXSize, gensym("xSize"),
                  A_FLOAT, 0);
  class_addmethod(reverb_class, (t_method)reverb_setYSize, gensym("ySize"),
                  A_FLOAT, 0);
  class_addmethod(reverb_class, (t_method)reverb_setZSize, gensym("zSize"),
                  A_FLOAT, 0);
  class_addmethod(reverb_class, (t_method)reverb_setRandomness,
                  gensym("randomness"), A_FLOAT, 0);
  class_addmethod(reverb_class, (t_method)reverb_setTime, gensym("time"),
                  A_FLOAT, 0);
  class_addmethod(reverb_class, (t_method)reverb_setTime1k, gensym("time1k"),
                  A_FLOAT, 0);
  class_addmethod(reverb_class, (t_method)reverb_dsp, gensym("dsp"), 0);
}
