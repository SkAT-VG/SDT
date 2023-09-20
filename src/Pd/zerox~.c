#include "SDT/SDTAnalysis.h"
#include "SDT/SDTCommon.h"
#include "SDTCommonPd.h"
#ifdef NT
#pragma warning(disable : 4244)
#pragma warning(disable : 4305)
#endif

static t_class *zerox_class;

typedef struct _zerox {
  t_object obj;
  SDTZeroCrossing *zerox;
  t_float f;
  t_outlet *out0;
  const char *key;
} t_zerox;

SDT_PD_SETTER(zerox, ZeroCrossing, zerox, Overlap, )

t_int *zerox_perform(t_int *w) {
  t_zerox *x = (t_zerox *)(w[1]);
  t_float *in = (t_float *)(w[2]);
  int n = (int)w[3];
  double tmpOut;
  int hasOutput = 0;

  while (n--) {
    hasOutput += SDTZeroCrossing_dsp(x->zerox, &tmpOut, *in++);
  }
  if (hasOutput) {
    outlet_float(x->out0, tmpOut);
  }

  return w + 4;
}

void zerox_dsp(t_zerox *x, t_signal **sp, short *count) {
  SDT_setSampleRate(sp[0]->s_sr);
  dsp_add(zerox_perform, 3, x, sp[0]->s_vec, sp[0]->s_n);
}

void *zerox_new(t_symbol *s, long argc, t_atom *argv) {
  SDT_PD_ARG_PARSE(2, A_SYMBOL, A_FLOAT)

  t_zerox *x = (t_zerox *)pd_new(zerox_class);
  int windowSize = GET_ARG(1, atom_getfloat, SDT_ZEROCROSSING_SIZE_DEFAULT);
  x->zerox = SDTZeroCrossing_new(windowSize);

  SDT_PD_REGISTER(ZeroCrossing, zerox, "zero crossing rate detector", 0)

  x->out0 = outlet_new(&x->obj, gensym("float"));
  return (x);
}

void zerox_free(t_zerox *x) {
  outlet_free(x->out0);
  SDT_PD_FREE(ZeroCrossing, zerox)
}

void zerox_tilde_setup(void) {
  zerox_class =
      class_new(gensym("zerox~"), (t_newmethod)zerox_new, (t_method)zerox_free,
                sizeof(t_zerox), CLASS_DEFAULT, A_GIMME, 0);
  CLASS_MAINSIGNALIN(zerox_class, t_zerox, f);
  class_addmethod(zerox_class, (t_method)zerox_setOverlap, gensym("overlap"),
                  A_FLOAT, 0);
  class_addmethod(zerox_class, (t_method)zerox_dsp, gensym("dsp"), 0);
}
