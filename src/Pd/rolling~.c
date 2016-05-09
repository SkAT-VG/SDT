#include "m_pd.h"
#include "SDT/SDTCommon.h"
#include "SDT/SDTControl.h"
#ifdef NT
#pragma warning( disable : 4244 )
#pragma warning( disable : 4305 )
#endif

static t_class *rolling_class;

typedef struct _rolling {
  t_object obj;
  SDTRolling *rolling;
  t_float f;
  t_outlet *out;
} t_rolling;

void rolling_grain(t_rolling *x, t_float f) {
  SDTRolling_setGrain(x->rolling, f);
}

void rolling_depth(t_rolling *x, t_float f) {
  SDTRolling_setDepth(x->rolling, f);
}

void rolling_mass(t_rolling *x, t_float f) {
  SDTRolling_setMass(x->rolling, f);
}

void rolling_velocity(t_rolling *x, t_float f) {
  SDTRolling_setVelocity(x->rolling, f);
}

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
  t_rolling *x;
  
  x = (t_rolling *)pd_new(rolling_class);
  x->rolling = SDTRolling_new(); 
  x->out = outlet_new(&x->obj, gensym("signal"));
  return x;
}

void rolling_free(t_rolling *x) {
  SDTRolling_free(x->rolling);
  outlet_free(x->out);
}

void rolling_tilde_setup(void) {	
  rolling_class = class_new(gensym("rolling~"), (t_newmethod)rolling_new, (t_method)rolling_free,
                           (long)sizeof(t_rolling), CLASS_DEFAULT, A_GIMME, 0);
  CLASS_MAINSIGNALIN(rolling_class, t_rolling, f);
  class_addmethod(rolling_class, (t_method)rolling_grain, gensym("grain"), A_FLOAT, 0);
  class_addmethod(rolling_class, (t_method)rolling_depth, gensym("depth"), A_FLOAT, 0);
  class_addmethod(rolling_class, (t_method)rolling_mass, gensym("mass"), A_FLOAT, 0);
  class_addmethod(rolling_class, (t_method)rolling_velocity, gensym("velocity"), A_FLOAT, 0);
  class_addmethod(rolling_class, (t_method)rolling_dsp, gensym("dsp"), 0);
}