#include "m_pd.h"
#include "SDT/SDTCommon.h"
#include "SDT/SDTControl.h"
#ifdef NT
#pragma warning( disable : 4244 )
#pragma warning( disable : 4305 )
#endif

static t_class *crumpling_class;

typedef struct _crumpling {
  t_object obj;
  SDTCrumpling *crumpling;
  t_outlet *out0, *out1;
} t_crumpling;

void crumpling_crushingEnergy(t_crumpling *x, t_float f) {
  SDTCrumpling_setCrushingEnergy(x->crumpling, f);
}

void crumpling_granularity(t_crumpling *x, t_float f) {
  SDTCrumpling_setGranularity(x->crumpling, f);
}

void crumpling_fragmentation(t_crumpling *x, t_float f) {
  SDTCrumpling_setFragmentation(x->crumpling, f);
}

t_int *crumpling_perform(t_int *w) {
  t_crumpling *x = (t_crumpling *)(w[1]);
  t_float *out0 = (t_float *)(w[2]);
  t_float *out1 = (t_float *)(w[3]);
  int n = (int)w[4];
  double tmpOuts[2];
  
  while (n--) {
    SDTCrumpling_dsp(x->crumpling, tmpOuts);
    *out0++ = (t_float)tmpOuts[0];
    *out1++ = (t_float)tmpOuts[1];
  }
  return w + 5;
}

void crumpling_dsp(t_crumpling *x, t_signal **sp) {
  SDT_setSampleRate(sp[0]->s_sr);
  dsp_add(crumpling_perform, 4, x, sp[0]->s_vec, sp[1]->s_vec, sp[0]->s_n);
}

void *crumpling_new(t_symbol *s, long argc, t_atom *argv) {
  t_crumpling *x;
  
  x = (t_crumpling *)pd_new(crumpling_class);
  x->crumpling = SDTCrumpling_new(); 
  x->out0 = outlet_new(&x->obj, gensym("signal"));
  x->out1 = outlet_new(&x->obj, gensym("signal"));
  return x;
}

void crumpling_free(t_crumpling *x) {
  SDTCrumpling_free(x->crumpling);
  outlet_free(x->out0);
  outlet_free(x->out1);
}

void crumpling_tilde_setup(void) {	
  crumpling_class = class_new(gensym("crumpling~"), (t_newmethod)crumpling_new, (t_method)crumpling_free,
                           (long)sizeof(t_crumpling), CLASS_DEFAULT, A_GIMME, 0);
  class_addmethod(crumpling_class, (t_method)crumpling_crushingEnergy, gensym("crushingEnergy"), A_FLOAT, 0);
  class_addmethod(crumpling_class, (t_method)crumpling_granularity, gensym("granularity"), A_FLOAT, 0);
  class_addmethod(crumpling_class, (t_method)crumpling_fragmentation, gensym("fragmentation"), A_FLOAT, 0);
  class_addmethod(crumpling_class, (t_method)crumpling_dsp, gensym("dsp"), 0);
}