#include "SDT/SDTCommon.h"
#include "SDT/SDTEffects.h"
#include "SDTCommonPd.h"
#ifdef NT
#pragma warning(disable : 4244)
#pragma warning(disable : 4305)
#endif

static t_class *pitchshift_class;

typedef struct _pitchshift {
  t_object obj;
  t_float f;
  SDTPitchShift *shift;
  t_outlet *out;
  const char *key;
} t_pitchshift;

SDT_PD_SETTER(pitchshift, PitchShift, shift, Overlap, )
SDT_PD_SETTER(pitchshift, PitchShift, shift, Ratio, )

static t_int *pitchshift_perform(t_int *w) {
  t_pitchshift *x = (t_pitchshift *)(w[1]);
  t_float *in = (t_float *)(w[2]);
  t_float *out = (t_float *)(w[3]);
  int n = (int)w[4];

  while (n--) {
    *out++ = (t_float)SDTPitchShift_dsp(x->shift, *in++);
  }

  return w + 5;
}

void pitchshift_dsp(t_pitchshift *x, t_signal **sp) {
  SDT_setSampleRate(sp[0]->s_sr);
  dsp_add(pitchshift_perform, 4, x, sp[0]->s_vec, sp[1]->s_vec, sp[0]->s_n);
}

static void *pitchshift_new(t_symbol *s, long argc, t_atom *argv) {
  SDT_PD_ARG_PARSE(3, A_SYMBOL, A_FLOAT, A_FLOAT)

  t_pitchshift *x = (t_pitchshift *)pd_new(pitchshift_class);
  float size, oversample;
  size = GET_ARG(1, atom_getfloat, SDT_PITCHSHIFT_SIZE_DEFAULT);
  oversample = GET_ARG(2, atom_getfloat, SDT_PITCHSHIFT_OVERSAMPLE_DEFAULT);
  x->shift = SDTPitchShift_new(size, oversample);

  SDT_PD_REGISTER(PitchShift, shift, "pitch shifter", 0)

  x->out = outlet_new(&x->obj, gensym("signal"));
  return (x);
}

static void pitchshift_free(t_pitchshift *x) {
  outlet_free(x->out);
  SDT_PD_FREE(PitchShift, shift)
}

void pitchshift_tilde_setup(void) {
  pitchshift_class =
      class_new(gensym("pitchshift~"), (t_newmethod)pitchshift_new,
                (t_method)pitchshift_free, sizeof(t_pitchshift), CLASS_DEFAULT,
                A_GIMME, 0);
  CLASS_MAINSIGNALIN(pitchshift_class, t_pitchshift, f);
  class_addmethod(pitchshift_class, (t_method)pitchshift_setRatio,
                  gensym("ratio"), A_FLOAT, 0);
  class_addmethod(pitchshift_class, (t_method)pitchshift_setOverlap,
                  gensym("overlap"), A_FLOAT, 0);
  class_addmethod(pitchshift_class, (t_method)pitchshift_dsp, gensym("dsp"), 0);
}
