#include "m_pd.h"
#include "SDT/SDTCommon.h"
#include "SDT/SDTSolids.h"
#ifdef NT
#pragma warning( disable : 4244 )
#pragma warning( disable : 4305 )
#endif

static t_class *inertial_class;

typedef struct _inertial {
  t_object obj;
  SDTResonator *inertial;
  char *key;
  t_sample f;
} t_inertial;

void inertial_mass(t_inertial *x, t_float f) {
  SDTResonator_setWeight(x->inertial, 0, f);
}

void inertial_fragmentSize(t_inertial *x, t_float f) {
  SDTResonator_setFragmentSize(x->inertial, f);
}

void inertial_strike(t_inertial *x, t_float p, t_float v) {
  SDTResonator_setPosition(x->inertial, 0, p);
  SDTResonator_setVelocity(x->inertial, 0, v);
}

void inertial_dsp(t_inertial *x, t_signal **sp) {
  SDT_setSampleRate(sp[0]->s_sr);
  SDTResonator_setFrequency(x->inertial, 0, 0.0);
  SDTResonator_setDecay(x->inertial, 0, 0.0);
  SDTResonator_setWeight(x->inertial, 0, 1.0);
  SDTResonator_setGain(x->inertial, 0, 0, 1.0);
  SDTResonator_setFragmentSize(x->inertial, 1.0);
  SDTResonator_setActiveModes(x->inertial, 1);
}

void *inertial_new(t_symbol *s, long argc, t_atom *argv) {
  t_inertial *x;
  
  if (argc < 1 || argv[0].a_type != A_SYMBOL) {
    error("sdt.inertial: Please provide a unique id as first argument.");
    return NULL;
  }
  x = (t_inertial *)pd_new(inertial_class);
  x->inertial = SDTResonator_new(1, 1);
  x->key = (char *)(atom_getsymbol(argv)->s_name);
  if (SDT_registerResonator(x->inertial, x->key)) {
    error("sdt.inertial: Error registering the resonator. Probably a duplicate id?");
    SDTResonator_free(x->inertial);
    return NULL;
  }
  return x;
}

void inertial_free(t_inertial *x) {
  SDT_unregisterResonator(x->key);
  SDTResonator_free(x->inertial);
}

void inertial_setup(void) {	
  inertial_class = class_new(gensym("inertial"), (t_newmethod)inertial_new, (t_method)inertial_free, sizeof(t_inertial), CLASS_DEFAULT, A_GIMME, 0);
  CLASS_MAINSIGNALIN(inertial_class, t_inertial, f);
  class_addmethod(inertial_class, (t_method)inertial_dsp, gensym("dsp"), 0);
  class_addmethod(inertial_class, (t_method)inertial_mass, gensym("mass"), A_FLOAT, 0);
  class_addmethod(inertial_class, (t_method)inertial_fragmentSize, gensym("fragmentSize"), A_FLOAT, 0);
  class_addmethod(inertial_class, (t_method)inertial_strike, gensym("strike"), A_FLOAT, A_FLOAT, 0);
}