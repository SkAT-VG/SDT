#include "m_pd.h"
#include "SDT/SDTCommon.h"
#include "SDT/SDTControl.h"

static t_class *crumpling_class = NULL;

typedef struct _crumpling {
  t_object obj;
  SDTCrumpling *crumpling;
  t_outlet *out0, *out1;
  t_clock *discrete, *continuous;
} t_crumpling;

void crumpling_discrete(t_crumpling *x) {
  double size, energy;
    
  SDTCrumpling_discrete(x->crumpling, &size, &energy);
  if (size || energy) {
    outlet_float(x->out0, size);
    outlet_float(x->out1, energy);
  }
  if (!SDTCrumpling_hasFinished(x->crumpling)) {
    clock_delay(x->discrete, 10);
  }
}

void crumpling_continuous(t_crumpling *x) {
  double size, energy;

  SDTCrumpling_continuous(x->crumpling, &size, &energy);
  if (size || energy) {
    outlet_float(x->out0, size);
    outlet_float(x->out1, energy);
  }
  clock_delay(x->continuous, 10);
}

void crumpling_bang(t_crumpling *x) {  
  SDTCrumpling_reset(x->crumpling);
  crumpling_discrete(x);
}

void crumpling_start(t_crumpling *x) {
  crumpling_continuous(x);
}

void crumpling_stop(t_crumpling *x) {
  clock_unset(x->continuous);
}

void crumpling_int(t_crumpling *x, long l) {
  if (l) crumpling_start(x);
  else crumpling_stop(x);
}

void crumpling_fragmentation(t_crumpling *x, t_float f) {
  SDTCrumpling_setFragmentation(x->crumpling,f);
}

void crumpling_crushingEnergy(t_crumpling *x, t_float f) {
  SDTCrumpling_setCrushingEnergy(x->crumpling, f);
}

void crumpling_granularity(t_crumpling *x, t_float f) {
  SDTCrumpling_setGranularity(x->crumpling, f);
}

void *crumpling_new(t_symbol *s, short argc, t_atom *argv) {
  t_crumpling *x;
  
  x = (t_crumpling *)pd_new(crumpling_class);
  x->crumpling = SDTCrumpling_new();
  x->out1 = outlet_new(&x->obj, &s_float);
  x->out0 = outlet_new(&x->obj, &s_float);
  x->discrete = clock_new(&x->obj, (t_method)crumpling_discrete);
  x->continuous = clock_new(&x->obj, (t_method)crumpling_continuous);
  return (x);
}

void crumpling_free(t_crumpling *x)  {
  SDTCrumpling_free(x->crumpling);
  outlet_free(x->out0);
  outlet_free(x->out1);
  clock_free(x->discrete);
  clock_free(x->continuous);
}

void crumpling_setup(void) {	
  crumpling_class = class_new(gensym("crumpling"), (t_newmethod)crumpling_new, (t_method)crumpling_free,
                    (long)sizeof(t_crumpling), CLASS_DEFAULT, A_GIMME, 0);                       
  class_addmethod(crumpling_class, (t_method)crumpling_crushingEnergy, gensym("crushingEnergy"), A_FLOAT, 0);
  class_addmethod(crumpling_class, (t_method)crumpling_granularity, gensym("granularity"), A_FLOAT, 0);
  class_addmethod(crumpling_class, (t_method)crumpling_fragmentation, gensym("fragmentation"), A_FLOAT, 0);
  class_addmethod(crumpling_class, (t_method)crumpling_bang, gensym("bang"), 0);
  class_addmethod(crumpling_class, (t_method)crumpling_start, gensym("start"), 0);
  class_addmethod(crumpling_class, (t_method)crumpling_stop, gensym("stop"), 0);
  class_addmethod(crumpling_class, (t_method)crumpling_int, gensym("float"), A_FLOAT, 0);
}