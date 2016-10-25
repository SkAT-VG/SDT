#include "m_pd.h"
#include "SDT/SDTCommon.h"
#include "SDT/SDTAnalysis.h"
#ifdef NT
#pragma warning( disable : 4244 )
#pragma warning( disable : 4305 )
#endif

static t_class *zerox_class;

typedef struct _zerox {
  t_object obj;
  SDTZeroCrossing *zerox;
  t_float f;
  t_outlet *out0;
} t_zerox;

void zerox_overlap(t_zerox *x, t_float f) {
  SDTZeroCrossing_setOverlap(x->zerox, f);
}

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
  int windowSize;
  
  t_zerox *x = (t_zerox *)pd_new(zerox_class);
  if (argc > 0 && argv[0].a_type == A_FLOAT) {
    windowSize = atom_getfloat(&argv[0]);
  }
  else {
    windowSize = 1024;
  }
  x->zerox = SDTZeroCrossing_new(windowSize);
  x->out0 = outlet_new(&x->obj, gensym("float"));
  return (x);
}

void zerox_free(t_zerox *x) {
  outlet_free(x->out0);
  SDTZeroCrossing_free(x->zerox);
}

void zerox_tilde_setup(void) {	
  zerox_class = class_new(gensym("zerox~"), (t_newmethod)zerox_new, (t_method)zerox_free, sizeof(t_zerox), CLASS_DEFAULT, A_GIMME, 0);
  CLASS_MAINSIGNALIN(zerox_class, t_zerox, f);
  class_addmethod(zerox_class, (t_method)zerox_overlap, gensym("overlap"), A_FLOAT, 0);
  class_addmethod(zerox_class, (t_method)zerox_dsp, gensym("dsp"), 0);
}