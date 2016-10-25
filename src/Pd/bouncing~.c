#include "m_pd.h"
#include "SDT/SDTCommon.h"
#include "SDT/SDTControl.h"
#ifdef NT
#pragma warning( disable : 4244 )
#pragma warning( disable : 4305 )
#endif

static t_class *bouncing_class;

typedef struct _bouncing {
  t_object obj;
  SDTBouncing *bouncing;
  t_outlet *out;
} t_bouncing;

void bouncing_bang(t_bouncing *x) {
  SDTBouncing_reset(x->bouncing);
}

void bouncing_restitution(t_bouncing *x, t_float f) {
  SDTBouncing_setRestitution(x->bouncing, f);
}

void bouncing_height(t_bouncing *x, t_float f) {
  SDTBouncing_setHeight(x->bouncing, f);
}

void bouncing_irregularity(t_bouncing *x, t_float f) {
  SDTBouncing_setIrregularity(x->bouncing, f);
}

t_int *bouncing_perform(t_int *w) {
  t_bouncing *x = (t_bouncing *)(w[1]);
  t_float *out = (t_float *)(w[2]);
  int n = (int)w[3];
  
  while (n--) {
    *out++ = (t_float)SDTBouncing_dsp(x->bouncing);
  }
  return w + 4;
}

void bouncing_dsp(t_bouncing *x, t_signal **sp) {
  SDT_setSampleRate(sp[0]->s_sr);
  dsp_add(bouncing_perform, 3, x, sp[0]->s_vec, sp[0]->s_n);
}

void *bouncing_new(t_symbol *s, long argc, t_atom *argv) {
  t_bouncing *x;
  
  x = (t_bouncing *)pd_new(bouncing_class);
  x->bouncing = SDTBouncing_new(); 
  x->out = outlet_new(&x->obj, gensym("signal"));
  return x;
}

void bouncing_free(t_bouncing *x) {
  SDTBouncing_free(x->bouncing);
  outlet_free(x->out);
}

void bouncing_tilde_setup(void) {	
  bouncing_class = class_new(gensym("bouncing~"), (t_newmethod)bouncing_new, (t_method)bouncing_free,
                           (long)sizeof(t_bouncing), CLASS_DEFAULT, A_GIMME, 0);
  class_addmethod(bouncing_class, (t_method)bouncing_bang, gensym("bang"), 0);
  class_addmethod(bouncing_class, (t_method)bouncing_restitution, gensym("restitution"), A_FLOAT, 0);
  class_addmethod(bouncing_class, (t_method)bouncing_height, gensym("height"), A_FLOAT, 0);
  class_addmethod(bouncing_class, (t_method)bouncing_irregularity, gensym("irregularity"), A_FLOAT, 0);
  class_addmethod(bouncing_class, (t_method)bouncing_dsp, gensym("dsp"), 0);
}