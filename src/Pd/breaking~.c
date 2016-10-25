#include "m_pd.h"
#include "SDT/SDTCommon.h"
#include "SDT/SDTControl.h"
#ifdef NT
#pragma warning( disable : 4244 )
#pragma warning( disable : 4305 )
#endif

static t_class *breaking_class;

typedef struct _breaking {
  t_object obj;
  SDTBreaking *breaking;
  t_outlet *out0, *out1;
} t_breaking;

void breaking_bang(t_breaking *x) {
  SDTBreaking_reset(x->breaking);
}

void breaking_storedEnergy(t_breaking *x, t_float f) {
  SDTBreaking_setStoredEnergy(x->breaking, f);
}

void breaking_crushingEnergy(t_breaking *x, t_float f) {
  SDTBreaking_setCrushingEnergy(x->breaking, f);
}

void breaking_granularity(t_breaking *x, t_float f) {
  SDTBreaking_setGranularity(x->breaking, f);
}

void breaking_fragmentation(t_breaking *x, t_float f) {
  SDTBreaking_setFragmentation(x->breaking, f);
}

t_int *breaking_perform(t_int *w) {
  t_breaking *x = (t_breaking *)(w[1]);
  t_float *out0 = (t_float *)(w[2]);
  t_float *out1 = (t_float *)(w[3]);
  int n = (int)w[4];
  double tmpOuts[2];
  
  while (n--) {
    SDTBreaking_dsp(x->breaking, tmpOuts);
    *out0++ = (t_float)tmpOuts[0];
    *out1++ = (t_float)tmpOuts[1];
  }
  return w + 5;
}

void breaking_dsp(t_breaking *x, t_signal **sp) {
  SDT_setSampleRate(sp[0]->s_sr);
  dsp_add(breaking_perform, 4, x, sp[0]->s_vec, sp[1]->s_vec, sp[0]->s_n);
}

void *breaking_new(t_symbol *s, long argc, t_atom *argv) {
  t_breaking *x;
  
  x = (t_breaking *)pd_new(breaking_class);
  x->breaking = SDTBreaking_new(); 
  x->out0 = outlet_new(&x->obj, gensym("signal"));
  x->out1 = outlet_new(&x->obj, gensym("signal"));
  return x;
}

void breaking_free(t_breaking *x) {
  SDTBreaking_free(x->breaking);
  outlet_free(x->out0);
  outlet_free(x->out1);
}

void breaking_tilde_setup(void) {	
  breaking_class = class_new(gensym("breaking~"), (t_newmethod)breaking_new, (t_method)breaking_free,
                           (long)sizeof(t_breaking), CLASS_DEFAULT, A_GIMME, 0);
  class_addmethod(breaking_class, (t_method)breaking_bang, gensym("bang"), 0);
  class_addmethod(breaking_class, (t_method)breaking_storedEnergy, gensym("storedEnergy"), A_FLOAT, 0);
  class_addmethod(breaking_class, (t_method)breaking_crushingEnergy, gensym("crushingEnergy"), A_FLOAT, 0);
  class_addmethod(breaking_class, (t_method)breaking_granularity, gensym("granularity"), A_FLOAT, 0);
  class_addmethod(breaking_class, (t_method)breaking_fragmentation, gensym("fragmentation"), A_FLOAT, 0);
  class_addmethod(breaking_class, (t_method)breaking_dsp, gensym("dsp"), 0);
}