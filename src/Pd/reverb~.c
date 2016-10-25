#include "m_pd.h"
#include "SDT/SDTCommon.h"
#include "SDT/SDTEffects.h"
#ifdef NT
#pragma warning( disable : 4244 )
#pragma warning( disable : 4305 )
#endif

static t_class *reverb_class;

typedef struct _reverb {
  t_object obj;
  t_float f;
  SDTReverb *reverb;
  t_outlet *out0;
} t_reverb;

void reverb_xSize(t_reverb *x, t_float f) {
  SDTReverb_setXSize(x->reverb, f);
  SDTReverb_update(x->reverb);
}

void reverb_ySize(t_reverb *x, t_float f) {
  SDTReverb_setYSize(x->reverb, f);
  SDTReverb_update(x->reverb);
}

void reverb_zSize(t_reverb *x, t_float f) {
  SDTReverb_setZSize(x->reverb, f);
  SDTReverb_update(x->reverb);
}

void reverb_randomness(t_reverb *x, t_float f) {
  SDTReverb_setRandomness(x->reverb, f);
  SDTReverb_update(x->reverb);
}

void reverb_time(t_reverb *x, t_float f) {
  SDTReverb_setTime(x->reverb, f);
  SDTReverb_update(x->reverb);
}

void reverb_time1k(t_reverb *x, t_float f) {
  SDTReverb_setTime1k(x->reverb, f);
  SDTReverb_update(x->reverb);
}

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
  t_float maxDelay;
  t_reverb *x = (t_reverb *)pd_new(reverb_class);
  x->out0 = outlet_new(&x->obj, gensym("signal"));
  if (argc > 0 && argv[0].a_type == A_FLOAT) {
    maxDelay = atom_getfloat(argv);
  }
  else {
    maxDelay = 44100.0;
  }
  x->reverb = SDTReverb_new(maxDelay);
  return (x);
}

static void reverb_free(t_reverb *x) {
  outlet_free(x->out0);
  SDTReverb_free(x->reverb);
}

void reverb_tilde_setup(void) {	
  reverb_class = class_new(gensym("reverb~"), (t_newmethod)reverb_new, (t_method)reverb_free, sizeof(t_reverb), CLASS_DEFAULT, A_GIMME, 0);
  CLASS_MAINSIGNALIN(reverb_class, t_reverb, f);
  class_addmethod(reverb_class, (t_method)reverb_xSize, gensym("xSize"), A_FLOAT, 0);
  class_addmethod(reverb_class, (t_method)reverb_ySize, gensym("ySize"), A_FLOAT, 0);
  class_addmethod(reverb_class, (t_method)reverb_zSize, gensym("zSize"), A_FLOAT, 0);
  class_addmethod(reverb_class, (t_method)reverb_randomness, gensym("randomness"), A_FLOAT, 0);
  class_addmethod(reverb_class, (t_method)reverb_time, gensym("time"), A_FLOAT, 0);
  class_addmethod(reverb_class, (t_method)reverb_time1k, gensym("time1k"), A_FLOAT, 0);
  class_addmethod(reverb_class, (t_method)reverb_dsp, gensym("dsp"), 0);
}