#include "SDT/SDTCommon.h"
#include "SDT/SDTInteractors.h"
#include "SDTCommonPd.h"
#include "m_pd.h"
#ifdef NT
#pragma warning(disable : 4244)
#pragma warning(disable : 4305)
#endif

static t_class *modal_class;

typedef struct _modal {
  t_object obj;
  SDTResonator *modal;
  const char *key;
  t_sample f;
} t_modal;

SDT_PD_SETTER(modal, Resonator, modal, FragmentSize, )
SDT_PD_SETTER(modal, Resonator, modal, ActiveModes, )

SDT_PD_ARRAY_SETTER(modal, Resonator, modal, Frequency, )
SDT_PD_ARRAY_SETTER(modal, Resonator, modal, Decay, )
SDT_PD_ARRAY_SETTER(modal, Resonator, modal, Weight, )

void modal_pickup(t_modal *x, void *attr, long ac, t_atom *av) {
  int pickup = atom_getint(av);
  for (int mode = 1; mode < ac; mode++) {
    SDTResonator_setGain(x->modal, pickup, mode - 1, atom_getfloat(av + mode));
  }
}

void modal_dsp(t_modal *x, t_signal **sp) {
  SDT_setSampleRate(sp[0]->s_sr);
  SDTResonator_update(x->modal);
}

void *modal_new(t_symbol *s, long argc, t_atom *argv) {
  t_modal *x;

  if (argc < 3 || argv[0].a_type != A_SYMBOL || argv[1].a_type != A_FLOAT ||
      argv[2].a_type != A_FLOAT) {
    pd_error(NULL,
             "modal: Please provide a unique id as first argument, "
             "the number of modes as second argument and "
             "the number of pickups as third argument.");
    return NULL;
  }
  x = (t_modal *)pd_new(modal_class);
  int nModes = atom_getint(argv + 1);
  int nPickups = atom_getint(argv + 2);
  x->modal = SDTResonator_new(nModes, nPickups);
  x->key = (char *)(atom_getsymbol(argv)->s_name);
  if (SDT_registerResonator(x->modal, x->key)) {
    pd_error(
        x,
        "sdt.modal: Error registering the resonator. Probably a duplicate id?");
    SDTResonator_free(x->modal);
    return NULL;
  }
  SDTResonator_setFragmentSize(x->modal, 1.0);
  for (long mode = 0; mode < nModes; ++mode) {
    SDTResonator_setWeight(x->modal, mode, 1.0);
  }
  return x;
}

void modal_free(t_modal *x) {
  SDT_unregisterResonator(x->key);
  SDTResonator_free(x->modal);
}

void modal_setup(void) {
  modal_class =
      class_new(gensym("modal"), (t_newmethod)modal_new, (t_method)modal_free,
                sizeof(t_modal), CLASS_DEFAULT, A_GIMME, 0);
  CLASS_MAINSIGNALIN(modal_class, t_modal, f);
  class_addmethod(modal_class, (t_method)modal_dsp, gensym("dsp"), 0);
  class_addmethod(modal_class, (t_method)modal_setFrequency, gensym("freqs"),
                  A_GIMME, 0);
  class_addmethod(modal_class, (t_method)modal_setDecay, gensym("decays"),
                  A_GIMME, 0);
  class_addmethod(modal_class, (t_method)modal_setWeight, gensym("masses"),
                  A_GIMME, 0);
  class_addmethod(modal_class, (t_method)modal_pickup, gensym("pickup"),
                  A_GIMME, 0);
  class_addmethod(modal_class, (t_method)modal_setFragmentSize,
                  gensym("fragmentSize"), A_FLOAT, 0);
  class_addmethod(modal_class, (t_method)modal_setActiveModes,
                  gensym("activeModes"), A_FLOAT, 0);
}
