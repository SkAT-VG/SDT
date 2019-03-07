#include "m_pd.h"
#include "SDT/SDTCommon.h"
#include "SDT/SDTSolids.h"
#ifdef NT
#pragma warning( disable : 4244 )
#pragma warning( disable : 4305 )
#endif

static t_class *modal_class;

typedef struct _modal {
  t_object obj;
  SDTResonator *modal;
  char *key;
  int nModes, nPickups;
  t_sample f;
} t_modal;

void modal_freqs(t_modal *x, void *attr, long ac, t_atom *av) {
  int mode;

  for (mode = 0; mode < ac; mode++) {
    SDTResonator_setFrequency(x->modal, mode, atom_getfloat(av + mode));
  }
}

void modal_decays(t_modal *x, void *attr, long ac, t_atom *av) {
  int mode;

  for (mode = 0; mode < ac; mode++) {
    SDTResonator_setDecay(x->modal, mode, atom_getfloat(av + mode));
  }
}

void modal_pickup(t_modal *x, void *attr, long ac, t_atom *av) {
  int pickup, mode;
  
  pickup = atom_getint(av);
  for (mode = 1; mode < ac; mode++) {
    SDTResonator_setGain(x->modal, pickup, mode - 1, atom_getfloat(av + mode));
  }
}

void modal_fragmentSize(t_modal *x, t_float f) {
  SDTResonator_setFragmentSize(x->modal, f);
}

void modal_activeModes(t_modal *x, t_float f) {
  SDTResonator_setActiveModes(x->modal, f);
}

void modal_dsp(t_modal *x, t_signal **sp) {
  int pickup, mode;
  
  SDT_setSampleRate(sp[0]->s_sr);
  for (mode = 0; mode < x->nModes; mode++) {
    SDTResonator_setFrequency(x->modal, mode, 0.0);
    SDTResonator_setDecay(x->modal, mode, 0.0);
    SDTResonator_setWeight(x->modal, mode, 1.0);
    for (pickup = 0; pickup < x->nPickups; pickup++) {
      SDTResonator_setGain(x->modal, pickup, mode, 1.0);
    }
  }
  SDTResonator_setFragmentSize(x->modal, 1.0);
  SDTResonator_setActiveModes(x->modal, x->nModes);
}

void *modal_new(t_symbol *s, long argc, t_atom *argv) {
  t_modal *x;
  
  if (argc < 3 || argv[0].a_type != A_SYMBOL || argv[1].a_type != A_FLOAT || argv[2].a_type != A_FLOAT) {
    error("modal: Please provide a unique id as first argument, "
          "the number of modes as second argument and "
          "the number of pickups as third argument.");
    return NULL;
  }
  x = (t_modal *)pd_new(modal_class);
  x->modal = SDTResonator_new(atom_getint(argv + 1), atom_getint(argv + 2));
  x->key = (char *)(atom_getsymbol(argv)->s_name);
  x->nModes = atom_getint(argv + 1);
  x->nPickups = atom_getint(argv + 2);
  if (SDT_registerResonator(x->modal, x->key)) {
    error("sdt.modal: Error registering the resonator. Probably a duplicate id?");
    SDTResonator_free(x->modal);
    return NULL;
  }
  return x;
}

void modal_free(t_modal *x) {
  SDT_unregisterResonator(x->key);
  SDTResonator_free(x->modal);
}

void modal_setup(void) {	
  modal_class = class_new(gensym("modal"), (t_newmethod)modal_new, (t_method)modal_free, sizeof(t_modal), CLASS_DEFAULT, A_GIMME, 0);
  CLASS_MAINSIGNALIN(modal_class, t_modal, f);
  class_addmethod(modal_class, (t_method)modal_dsp, gensym("dsp"), 0);
  class_addmethod(modal_class, (t_method)modal_freqs, gensym("freqs"), A_GIMME, 0);
  class_addmethod(modal_class, (t_method)modal_decays, gensym("decays"), A_GIMME, 0);
  class_addmethod(modal_class, (t_method)modal_pickup, gensym("pickup"), A_GIMME, 0);
  class_addmethod(modal_class, (t_method)modal_fragmentSize, gensym("fragmentSize"), A_FLOAT, 0);
  class_addmethod(modal_class, (t_method)modal_activeModes, gensym("activeModes"), A_FLOAT, 0);
}