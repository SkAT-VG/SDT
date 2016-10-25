#include "m_pd.h"
#include "SDT/SDTCommon.h"
#include "SDT/SDTAnalysis.h"
#ifdef NT
#pragma warning( disable : 4244 )
#pragma warning( disable : 4305 )
#endif

static t_class *pitch_class;

typedef struct _pitch {
  t_object obj;
  SDTPitch *pitch;
  t_float f;
  t_outlet *out0, *out1;
} t_pitch;

void pitch_overlap(t_pitch *x, t_float f) {
  SDTPitch_setOverlap(x->pitch, f);
}

void pitch_tolerance(t_pitch *x, t_float f) {
  SDTPitch_setTolerance(x->pitch, f);
}

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
  int tmpSize, windowSize;
  t_pitch *x = (t_pitch *)pd_new(pitch_class);
  if (argc > 0 && argv[0].a_type == A_FLOAT) {
    tmpSize = atom_getfloat(&argv[0]);
    windowSize = SDT_nextPow2(tmpSize);
    if (tmpSize != windowSize) {
      post("sdt.pitch~: Window size must be a power of 2, setting it to %d", windowSize);
    }
  }
  else {
    windowSize = 1024;
  }
  x->pitch = SDTPitch_new(windowSize);
  x->out0 = outlet_new(&x->obj, gensym("float"));
  x->out1 = outlet_new(&x->obj, gensym("float"));
  return (x);
}

void pitch_free(t_pitch *x) {
  outlet_free(x->out0);
  outlet_free(x->out1);
  SDTPitch_free(x->pitch);
}

void pitch_tilde_setup(void) {	
  pitch_class = class_new(gensym("pitch~"), (t_newmethod)pitch_new, (t_method)pitch_free, sizeof(t_pitch), CLASS_DEFAULT, A_GIMME, 0);
  CLASS_MAINSIGNALIN(pitch_class, t_pitch, f);
  class_addmethod(pitch_class, (t_method)pitch_overlap, gensym("overlap"), A_FLOAT, 0);
  class_addmethod(pitch_class, (t_method)pitch_tolerance, gensym("tolerance"), A_FLOAT, 0);
  class_addmethod(pitch_class, (t_method)pitch_dsp, gensym("dsp"), 0);
}