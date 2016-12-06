#include "ext.h"
#include "ext_obex.h"
#include "z_dsp.h"
#include "SDT/SDTCommon.h"
#include "SDT/SDTSolids.h"

typedef struct _modal {
  t_pxobject ob;
  SDTResonator *modal;
  char *key;
  t_object *pickups[SDT_MAX_PICKUPS];
  double freqs[SDT_MAX_MODES], decays[SDT_MAX_MODES], gains[SDT_MAX_PICKUPS][SDT_MAX_MODES], fragmentSize;
  long nModes, activeModes, nPickups;
} t_modal;

static t_class *modal_class = NULL;

void modal_pickups(t_modal *x, void *attr, long ac, t_atom *av);

void *modal_new(t_symbol *s, long argc, t_atom *argv) {
  t_modal *x;
  SDTResonator *modal;
  char *key;
  char attrName[10];
  int pickup, err;
  
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
  modal = SDTResonator_new(atom_getlong(&argv[1]), atom_getlong(&argv[2]));
  key = atom_getsym(&argv[0])->s_name;
  if (SDT_registerResonator(modal, key)) {
    error("sdt.modal: Error registering the resonator. Probably a duplicate id?");
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
  x->fragmentSize = 1.0;
  x->nModes = atom_getlong(&argv[1]);
  x->activeModes = atom_getlong(&argv[1]);
  x->nPickups = atom_getlong(&argv[2]);
  for (pickup = 0; pickup < x->nPickups; pickup++) {
    sprintf(attrName, "pickup%d", pickup);
    x->pickups[pickup] = attr_offset_array_new(attrName, gensym("float64"), SDT_MAX_MODES, 0,
                                               NULL, (method)modal_pickups,
                                               calcoffset(t_modal, nModes),
                                               calcoffset(t_modal, gains[pickup]));
    object_addattr(x, x->pickups[pickup]);
  }
  attr_args_process(x, argc, argv);
  return x;
}

void modal_free(t_modal *x) {
  char attrName[10];
  int pickup;
  
  dsp_free((t_pxobject *)x);
  for (pickup = 0; pickup < x->nPickups; pickup++) {
    sprintf(attrName, "pickup%d", pickup);
    object_deleteattr(x, gensym(attrName));
  }
  SDT_unregisterResonator(x->key);
  SDTResonator_free(x->modal);
}

void modal_assist(t_modal *x, void *b, long m, long a, char *s) {
  if (m == ASSIST_INLET) {
    sprintf(s, "Object attributes and messages (see help patch)");
  } 
}

void modal_freqs(t_modal *x, void *attr, long ac, t_atom *av) {
  int mode;
    
  for (mode = 0; mode < ac; mode++) {
    x->freqs[mode] = atom_getfloat(av + mode);
    SDTResonator_setFrequency(x->modal, mode, x->freqs[mode]);
  }
}

void modal_decays(t_modal *x, void *attr, long ac, t_atom *av) {
  int mode;
    
  for (mode = 0; mode < ac; mode++) {
    x->decays[mode] = atom_getfloat(av + mode);
    SDTResonator_setDecay(x->modal, mode, x->decays[mode]);
  }
}

void modal_fragmentSize(t_modal *x, void *attr, long ac, t_atom *av) {
  x->fragmentSize = atom_getfloat(av);
  SDTResonator_setFragmentSize(x->modal, x->fragmentSize);
}

void modal_activeModes(t_modal *x, void *attr, long ac, t_atom *av) {
  x->activeModes = SDT_clip(atom_getlong(av), 0, x->nModes);
  SDTResonator_setActiveModes(x->modal, x->activeModes);
}

void modal_pickups(t_modal *x, void *attr, long ac, t_atom *av) {
  int pickup, mode;
  
  for (pickup = 0; attr != x->pickups[pickup]; pickup++);
  for (mode = 0; mode < ac; mode++) {
    x->gains[pickup][mode] = fmax(0.0, atom_getfloat(av + mode));
    SDTResonator_setGain(x->modal, pickup, mode, x->gains[pickup][mode]);
  }
}

void modal_dsp(t_modal *x, t_signal **sp, short *count) {
  int pickup, mode;
  
  SDT_setSampleRate(sp[0]->s_sr);
  for (mode = 0; mode < x->nModes; mode++) {
    SDTResonator_setFrequency(x->modal, mode, x->freqs[mode]);
    SDTResonator_setDecay(x->modal, mode, x->decays[mode]);
    SDTResonator_setWeight(x->modal, mode, 1.0);
    for (pickup = 0; pickup < x->nPickups; pickup++) {
      SDTResonator_setGain(x->modal, pickup, mode, x->gains[pickup][mode]);
    }
  }
  SDTResonator_setFragmentSize(x->modal, x->fragmentSize);
  SDTResonator_setActiveModes(x->modal, x->activeModes);
}

void modal_dsp64(t_modal *x, t_object *dsp64, short *count, double samplerate,
                  long maxvectorsize, long flags) {
  int pickup, mode;
  
  SDT_setSampleRate(samplerate);
  for (mode = 0; mode < x->nModes; mode++) {
    SDTResonator_setFrequency(x->modal, mode, x->freqs[mode]);
    SDTResonator_setDecay(x->modal, mode, x->decays[mode]);
    SDTResonator_setWeight(x->modal, mode, 1.0);
    for (pickup = 0; pickup < x->nPickups; pickup++) {
      SDTResonator_setGain(x->modal, pickup, mode, x->gains[pickup][mode]);
    }
  }
  SDTResonator_setFragmentSize(x->modal, x->fragmentSize);
  SDTResonator_setActiveModes(x->modal, x->activeModes);
}

int C74_EXPORT main(void) {	
  t_class *c = class_new("sdt.modal", (method)modal_new, (method)modal_free,
                         (long)sizeof(t_modal), 0L, A_GIMME, 0);

  class_addmethod(c, (method)modal_assist, "assist", A_CANT, 0);
  class_addmethod(c, (method)modal_dsp, "dsp", A_CANT, 0);
  class_addmethod(c, (method)modal_dsp64, "dsp64", A_CANT, 0);

  CLASS_ATTR_DOUBLE_VARSIZE(c, "freqs", 0, t_modal, freqs, nModes, SDT_MAX_MODES);
  CLASS_ATTR_DOUBLE_VARSIZE(c, "decays", 0, t_modal, decays, nModes, SDT_MAX_MODES);
  CLASS_ATTR_DOUBLE(c, "fragmentSize", 0, t_modal, fragmentSize);
  CLASS_ATTR_LONG(c, "activeModes", 0, t_modal, activeModes);
  
  CLASS_ATTR_FILTER_MIN(c, "freqs", 0.0);
  CLASS_ATTR_FILTER_MIN(c, "decays", 0.0);
  CLASS_ATTR_FILTER_CLIP(c, "fragmentSize", 0.0, 1.0);
  
  CLASS_ATTR_ACCESSORS(c, "freqs", NULL, (method)modal_freqs);
  CLASS_ATTR_ACCESSORS(c, "decays", NULL, (method)modal_decays);
  CLASS_ATTR_ACCESSORS(c, "fragmentSize", NULL, (method)modal_fragmentSize);
  CLASS_ATTR_ACCESSORS(c, "activeModes", NULL, (method)modal_activeModes);
  
  CLASS_ATTR_ORDER(c, "freqs", 0, "1");
  CLASS_ATTR_ORDER(c, "decays", 0, "2");
  CLASS_ATTR_ORDER(c, "fragmentSize", 0, "3");
  CLASS_ATTR_ORDER(c, "activeModes", 0, "4");

  class_dspinit(c);
  class_register(CLASS_BOX, c);
  modal_class = c;

  return 0;
}
