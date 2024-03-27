#include "SDT/SDTAnalysis.h"
#include "SDT/SDTCommon.h"
#include "SDTCommonPd.h"
#ifdef NT
#pragma warning(disable : 4244)
#pragma warning(disable : 4305)
#endif

static t_class *pitch_class;

typedef struct _pitch {
  t_object obj;
  SDTPitch *pitch;
  t_float f;
  t_outlet *out0, *out1;
  const char *key;
} t_pitch;

SDT_PD_SETTER(pitch, Pitch, pitch, Overlap, )
SDT_PD_SETTER(pitch, Pitch, pitch, Tolerance, )

t_int *pitch_perform(t_int *w) {
  t_pitch *x = (t_pitch *)(w[1]);
  t_float *in = (t_float *)(w[2]);
  int n = (int)w[3];
  double tmpOuts[2];
  int hasOutput = 0;

  while (n--) {
    hasOutput += SDTPitch_dsp(x->pitch, tmpOuts, *in++);
  }
  if (hasOutput) {
    outlet_float(x->out0, tmpOuts[0]);
    outlet_float(x->out1, tmpOuts[1]);
  }
  return w + 4;
}

void pitch_dsp(t_pitch *x, t_signal **sp) {
  SDT_setSampleRate(sp[0]->s_sr);
  dsp_add(pitch_perform, 3, x, sp[0]->s_vec, sp[0]->s_n);
}

void *pitch_new(t_symbol *s, long argc, t_atom *argv) {
  SDT_PD_ARG_PARSE(3, A_SYMBOL, A_FLOAT)

  t_pitch *x = (t_pitch *)pd_new(pitch_class);
  GET_ARG_WINSIZE(int, windowSize, 1, SDT_PITCH_SIZE_DEFAULT)
  x->pitch = SDTPitch_new(windowSize);

  SDT_PD_REGISTER(Pitch, pitch, "fundamental frequency estimator", 0)

  x->out0 = outlet_new(&x->obj, gensym("float"));
  x->out1 = outlet_new(&x->obj, gensym("float"));
  return (x);
}

void pitch_free(t_pitch *x) {
  outlet_free(x->out0);
  outlet_free(x->out1);
  SDT_PD_FREE(Pitch, pitch)
}

void pitch_tilde_setup(void) {
  pitch_class =
      class_new(gensym("pitch~"), (t_newmethod)pitch_new, (t_method)pitch_free,
                sizeof(t_pitch), CLASS_DEFAULT, A_GIMME, 0);
  CLASS_MAINSIGNALIN(pitch_class, t_pitch, f);
  class_addmethod(pitch_class, (t_method)pitch_setOverlap, gensym("overlap"),
                  A_FLOAT, 0);
  class_addmethod(pitch_class, (t_method)pitch_setTolerance,
                  gensym("tolerance"), A_FLOAT, 0);
  class_addmethod(pitch_class, (t_method)pitch_dsp, gensym("dsp"), 0);
}