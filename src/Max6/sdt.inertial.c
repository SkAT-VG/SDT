#include "ext.h"
#include "ext_obex.h"
#include "z_dsp.h"
#include "SDT/SDTCommon.h"
#include "SDT/SDTSolids.h"

typedef struct _inertial {
  t_pxobject ob;
  SDTResonator *inertial;
  char *key;
  double mass, fragmentSize;
} t_inertial;

static t_class *inertial_class = NULL;

void *inertial_new(t_symbol *s, long argc, t_atom *argv) {
  t_inertial *x;
  SDTResonator *inertial;
  char *key;
  
  if (argc < 1 || atom_gettype(&argv[0]) != A_SYM) {
    error("sdt.inertial: Please provide a unique id as first argument.");
    return NULL;
  }
  inertial = SDTResonator_new(1, 1);
  key = atom_getsym(&argv[0])->s_name;
  if (SDT_registerResonator(inertial, key)) {
    error("sdt.inertial: Error registering the resonator. Probably a duplicate id?");
    SDTResonator_free(inertial);
    return NULL;
  }
  x = (t_inertial *)object_alloc(inertial_class);
  if (!x) {
    error("sdt.inertial: Instantiation error.");
    return NULL;
  }
  dsp_setup((t_pxobject *)x, 0);
  x->inertial = inertial;
  x->key = key;
  x->mass = 1.0;
  x->fragmentSize = 1.0;
  attr_args_process(x, argc, argv);
  return x;
}

void inertial_free(t_inertial *x) {
  dsp_free((t_pxobject *)x);
  SDT_unregisterResonator(x->key);
  SDTResonator_free(x->inertial);
}

void inertial_assist(t_inertial *x, void *b, long m, long a, char *s) {
  if (m == ASSIST_INLET) { //inlet
    sprintf(s, "mass (float): object mass\n"
               "Object attributes and messages (see help patch)");
  }
}

void inertial_mass(t_inertial *x, void *attr, long ac, t_atom *av) {
  x->mass = atom_getfloat(av);
  SDTResonator_setWeight(x->inertial, 0, x->mass);
}

void inertial_fragmentSize(t_inertial *x, void *attr, long ac, t_atom *av) {
  x->fragmentSize = atom_getfloat(av);
  SDTResonator_setFragmentSize(x->inertial, x->fragmentSize);
}

void inertial_strike(t_inertial *x, double p, double v) {
  SDTResonator_setPosition(x->inertial, 0, p);
  SDTResonator_setVelocity(x->inertial, 0, v);
}

void inertial_dsp(t_inertial *x, t_signal **sp, short *count) {
  SDT_setSampleRate(sp[0]->s_sr);
  SDTResonator_setFrequency(x->inertial, 0, 0.0);
  SDTResonator_setDecay(x->inertial, 0, 0.0);
  SDTResonator_setWeight(x->inertial, 0, x->mass);
  SDTResonator_setGain(x->inertial, 0, 0, 1.0);
  SDTResonator_setFragmentSize(x->inertial, x->fragmentSize);
  SDTResonator_setActiveModes(x->inertial, 1);
}

void inertial_dsp64(t_inertial *x, t_object *dsp64, short *count, double samplerate,
                    long maxvectorsize, long flags) {
  SDT_setSampleRate(samplerate);
  SDTResonator_setFrequency(x->inertial, 0, 0.0);
  SDTResonator_setDecay(x->inertial, 0, 0.0);
  SDTResonator_setWeight(x->inertial, 0, x->mass);
  SDTResonator_setGain(x->inertial, 0, 0, 1.0);
  SDTResonator_setFragmentSize(x->inertial, x->fragmentSize);
  SDTResonator_setActiveModes(x->inertial, 1);
}

int C74_EXPORT main(void) {	
  t_class *c = class_new("sdt.inertial", (method)inertial_new, (method)inertial_free,
                         (long)sizeof(t_inertial), 0L, A_GIMME, 0);
  class_addmethod(c, (method)inertial_assist, "assist", A_CANT, 0);
  class_addmethod(c, (method)inertial_dsp, "dsp", A_CANT, 0);
  class_addmethod(c, (method)inertial_dsp64, "dsp64", A_CANT, 0);
  class_addmethod(c, (method)inertial_strike, "strike", A_FLOAT, A_FLOAT, 0);
  
  CLASS_ATTR_DOUBLE(c, "mass", 0, t_inertial, mass);
  CLASS_ATTR_DOUBLE(c, "fragmentSize", 0, t_inertial, fragmentSize);
  
  CLASS_ATTR_FILTER_MIN(c, "mass", 0.0);
  CLASS_ATTR_FILTER_CLIP(c, "fragmentSize", 0.0, 1.0);
  
  CLASS_ATTR_ACCESSORS(c, "mass", NULL, (method)inertial_mass);
  CLASS_ATTR_ACCESSORS(c, "fragmentSize", NULL, (method)inertial_fragmentSize);
  
  class_dspinit(c);
  class_register(CLASS_BOX, c);
  inertial_class = c;

  return 0;
}