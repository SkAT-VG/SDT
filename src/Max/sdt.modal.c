#include "SDT/SDTCommon.h"
#include "SDT/SDTInteractors.h"
#include "SDTCommonMax.h"
#include "SDT_fileusage.h"
#include "ext.h"
#include "ext_obex.h"
#include "z_dsp.h"

typedef struct _modal {
  t_pxobject ob;
  SDTResonator *modal;
  t_symbol *key;
  t_object **pickups;
} t_modal;

static t_class *modal_class = NULL;

t_max_err modal_getPickup(t_modal *x, void *attr, long *ac, t_atom **av);
t_max_err modal_setPickup(t_modal *x, void *attr, long ac, t_atom *av);

void *modal_new(t_symbol *s, long argc, t_atom *argv) {
  SDT_setupMaxLoggers();
  t_modal *x;
  SDTResonator *modal;
  t_symbol *key;
  char attrName[17];
  int err;

  err = 0;
  if (argc < 1 || atom_gettype(&argv[0]) != A_SYM) {
    error("sdt.modal: Please provide a unique id as first argument.");
    err = 1;
  }
  if (argc < 2 || atom_gettype(&argv[1]) != A_LONG) {
    error("sdt.modal: Please provide the number of modes as second argument.");
    err = 1;
  }
  if (argc < 3 || atom_gettype(&argv[2]) != A_LONG) {
    error("sdt.modal: Please provide the number of pickups as third argument.");
    err = 1;
  }
  if (err) return NULL;
  long nModes = atom_getlong(&argv[1]);
  long nPickups = atom_getlong(&argv[2]);
  modal = SDTResonator_new(nModes, nPickups);
  key = atom_getsym(&argv[0]);
  if (SDT_registerResonator(modal, key->s_name)) {
    error(
        "sdt.modal: Error registering the resonator. Probably a duplicate id?");
    SDTResonator_free(modal);
    return NULL;
  }
  x = (t_modal *)object_alloc(modal_class);
  if (!x) {
    error("sdt.modal: Instantiation error.");
    return NULL;
  }
  dsp_setup((t_pxobject *)x, 0);
  x->modal = modal;
  x->key = key;
  SDTResonator_setFragmentSize(x->modal, 1.0);
  for (long mode = 0; mode < nModes; ++mode) {
    SDTResonator_setWeight(x->modal, mode, 1.0);
  }
  // Determine number of pickup attributes at initialization time
  x->pickups = (t_object **)sysmem_newptr(sizeof(t_object *) * (nPickups));
  for (long pickup = 0; pickup < nPickups; pickup++) {
    sprintf(attrName, "pickup%ld", pickup);
    x->pickups[pickup] =
        attribute_new(attrName, gensym("float64"), 0, (method)modal_getPickup,
                      (method)modal_setPickup);
    object_addattr(x, x->pickups[pickup]);
  }

  attr_args_process(x, argc, argv);
  return x;
}

void modal_free(t_modal *x) {
  char attrName[17];
  int pickup, nPickups = SDTResonator_getNPickups(x->modal);

  dsp_free((t_pxobject *)x);

  for (pickup = 0; pickup < nPickups; pickup++) {
    sprintf(attrName, "pickup%d", pickup);
    object_deleteattr(x, gensym(attrName));
  }
  SDT_unregisterResonator(x->key->s_name);
  SDTResonator_free(x->modal);
  sysmem_freeptr(x->pickups);
}

void modal_assist(t_modal *x, void *b, long m, long a, char *s) {
  if (m == ASSIST_INLET) {
    sprintf(s, "Object attributes and messages (see help patch)");
  }
}

SDT_MAX_GETTER_MEMBER(modal, key, key, sym)

SDT_MAX_GETTER(modal, Resonator, modal, NModes, long, )
SDT_MAX_GETTER(modal, Resonator, modal, NPickups, long, )

SDT_MAX_ACCESSORS(modal, Resonator, modal, ActiveModes, long, , )
SDT_MAX_ACCESSORS(modal, Resonator, modal, FragmentSize, float, , )

SDT_MAX_ARRAY_GETTER(modal, Resonator, modal, Frequency, float,
                     SDTResonator_getNModes(x->modal))
SDT_MAX_ARRAY_GETTER(modal, Resonator, modal, Decay, float,
                     SDTResonator_getNModes(x->modal))
SDT_MAX_ARRAY_GETTER(modal, Resonator, modal, Weight, float,
                     SDTResonator_getNModes(x->modal))

SDT_MAX_ARRAY_SETTER(modal, Resonator, modal, Frequency, float, )
SDT_MAX_ARRAY_SETTER(modal, Resonator, modal, Decay, float, )
SDT_MAX_ARRAY_SETTER(modal, Resonator, modal, Weight, float, )

t_max_err modal_getPickup(t_modal *x, void *attr, long *ac, t_atom **av) {
  long nModes = (SDTResonator_getNModes(x->modal));
  if (!(*ac >= nModes && *av)) {
    if (*av) sysmem_freeptr(*av);
    *av = (t_atom *)sysmem_newptr(sizeof(t_atom) * (nModes));
    if (!*av) {
      *ac = 0;
      return MAX_ERR_OUT_OF_MEM;
    }
  }
  *ac = nModes;
  long nPickups = SDTResonator_getNPickups(x->modal);
  for (long pickup = 0; pickup < nPickups; pickup++) {
    if (attr == x->pickups[pickup]) {
      t_max_err err = MAX_ERR_NONE;
      for (long mode = 0; mode < *ac && err == MAX_ERR_NONE; mode++) {
        err = atom_setfloat((*av) + mode,
                            SDTResonator_getGain(x->modal, pickup, mode));
      }
      return err;
    }
  }
  return MAX_ERR_GENERIC;
}

t_max_err modal_setPickup(t_modal *x, void *attr, long ac, t_atom *av) {
  long nPickups = SDTResonator_getNPickups(x->modal);
  for (long pickup = 0; pickup < nPickups; pickup++) {
    if (attr == x->pickups[pickup]) {
      for (long mode = 0; mode < ac; mode++) {
        SDTResonator_setGain(x->modal, pickup, mode,
                             fmax(0.0, atom_getfloat(av + mode)));
      }
      return MAX_ERR_NONE;
    }
  }
  return MAX_ERR_GENERIC;
}

void modal_dsp(t_modal *x, t_signal **sp, short *count) {
  SDT_setSampleRate(sp[0]->s_sr);
  SDTResonator_update(x->modal);
}

void modal_dsp64(t_modal *x, t_object *dsp64, short *count, double samplerate,
                 long maxvectorsize, long flags) {
  SDT_setSampleRate(samplerate);
  SDTResonator_update(x->modal);
}

void C74_EXPORT ext_main(void *r) {
  t_class *c = class_new("sdt.modal", (method)modal_new, (method)modal_free,
                         (long)sizeof(t_modal), 0L, A_GIMME, 0);

  class_addmethod(c, (method)modal_assist, "assist", A_CANT, 0);
  class_addmethod(c, (method)modal_dsp, "dsp", A_CANT, 0);
  class_addmethod(c, (method)modal_dsp64, "dsp64", A_CANT, 0);
  class_addmethod(c, (method)SDT_fileusage, "fileusage", A_CANT, 0L);

  // Read-only
  SDT_MAX_RO_ATTRIBUTE(c, modal, _key, key, symbol, 0);
  SDT_MAX_RO_ATTRIBUTE(c, modal, NModes, nModes, long, 0);
  SDT_MAX_RO_ATTRIBUTE(c, modal, NPickups, nPickups, long, 0);
  CLASS_ATTR_ORDER(c, "key", 0, "1");
  CLASS_ATTR_ORDER(c, "nModes", 0, "2");
  CLASS_ATTR_ORDER(c, "nPickups", 0, "3");
  // R/W (scalars)
  SDT_MAX_ATTRIBUTE(c, modal, ActiveModes, activeModes, long, 0);
  SDT_MAX_ATTRIBUTE(c, modal, FragmentSize, fragmentSize, float64, 0);
  CLASS_ATTR_ORDER(c, "activeModes", 0, "4");
  CLASS_ATTR_ORDER(c, "fragmentSize", 0, "5");
  // R/W (arrays)
  SDT_MAX_ATTRIBUTE(c, modal, Frequency, freqs, float64, 0);
  SDT_MAX_ATTRIBUTE(c, modal, Decay, decays, float64, 0);
  SDT_MAX_ATTRIBUTE(c, modal, Weight, masses, float64, 0);
  CLASS_ATTR_ORDER(c, "freqs", 0, "6");
  CLASS_ATTR_ORDER(c, "decays", 0, "7");
  CLASS_ATTR_ORDER(c, "masses", 0, "8");

  CLASS_ATTR_FILTER_CLIP(c, "fragmentSize", 0.0, 1.0);
  CLASS_ATTR_FILTER_MIN(c, "freqs", 0.0);
  CLASS_ATTR_FILTER_MIN(c, "decays", 0.0);
  CLASS_ATTR_FILTER_MIN(c, "masses", 0.0);

  // Gains are instantiated at initialization (one attribute per pickup)

  class_dspinit(c);
  class_register(CLASS_BOX, c);
  modal_class = c;
}
