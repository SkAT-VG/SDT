#include "SDT/SDTCommon.h"
#include "SDT/SDTInteractors.h"
#include "SDTCommonMax.h"
#include "SDT_fileusage.h"
#include "ext.h"
#include "ext_obex.h"
#include "z_dsp.h"

typedef struct _inertial {
  t_pxobject ob;
  SDTResonator *inertial;
  t_symbol *key;
} t_inertial;

static t_class *inertial_class = NULL;

void *inertial_new(t_symbol *s, long argc, t_atom *argv) {
  SDT_setupMaxLoggers();
  t_inertial *x;
  SDTResonator *inertial;
  t_symbol *key;

  if (argc < 1 || atom_gettype(&argv[0]) != A_SYM) {
    error("sdt.inertial: Please provide a unique id as first argument.");
    return NULL;
  }
  inertial = SDTResonator_new(1, 1);
  key = atom_getsym(&argv[0]);  //->s_name;
  if (SDT_registerResonator(inertial, key->s_name)) {
    error(
        "sdt.inertial: Error registering the resonator. Probably a duplicate "
        "id?");
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

  SDTResonator_setFrequency(x->inertial, 0, 0.0);
  SDTResonator_setDecay(x->inertial, 0, 0.0);
  SDTResonator_setWeight(x->inertial, 0, 1.0);
  SDTResonator_setGain(x->inertial, 0, 0, 1.0);
  SDTResonator_setFragmentSize(x->inertial, 1.0);
  SDTResonator_setActiveModes(x->inertial, 1);

  attr_args_process(x, argc, argv);
  return x;
}

void inertial_free(t_inertial *x) {
  dsp_free((t_pxobject *)x);
  SDT_unregisterResonator(x->key->s_name);
  SDTResonator_free(x->inertial);
}

void inertial_assist(t_inertial *x, void *b, long m, long a, char *s) {
  if (m == ASSIST_INLET) {  // inlet
    sprintf(s,
            "mass (float): object mass\n"
            "Object attributes and messages (see help patch)");
  }
}

t_max_err inertial_getMass(t_inertial *x, void *attr, long *ac, t_atom **av) {
  if (!(*ac && *av)) {
    *ac = 1;
    *av =
        (t_atom *)((char *)sysmem_newptr((t_ptr_size)(sizeof(t_atom) * (*ac))));
    if (!*av) {
      *ac = 0;
      return MAX_ERR_OUT_OF_MEM;
    }
  }
  atom_setfloat(*av, SDTResonator_getWeight(x->inertial, 0));
  return MAX_ERR_NONE;
}

t_max_err inertial_setMass(t_inertial *x, void *attr, long ac, t_atom *av) {
  if (ac && av) {
    SDTResonator_setWeight(x->inertial, 0, atom_getfloat(av));
  }
  return MAX_ERR_NONE;
}

SDT_MAX_GETTER_MEMBER(inertial, key, key, sym)

SDT_MAX_ACCESSORS(inertial, Resonator, inertial, FragmentSize, float, , )

void inertial_strike(t_inertial *x, double p, double v) {
  SDTResonator_setPosition(x->inertial, 0, p);
  SDTResonator_setVelocity(x->inertial, 0, v);
}

void inertial_dsp(t_inertial *x, t_signal **sp, short *count) {
  SDT_setSampleRate(sp[0]->s_sr);
  SDTResonator_update(x->inertial);
}

void inertial_dsp64(t_inertial *x, t_object *dsp64, short *count,
                    double samplerate, long maxvectorsize, long flags) {
  SDT_setSampleRate(samplerate);
  SDTResonator_update(x->inertial);
}

void C74_EXPORT ext_main(void *r) {
  t_class *c =
      class_new("sdt.inertial", (method)inertial_new, (method)inertial_free,
                (long)sizeof(t_inertial), 0L, A_GIMME, 0);
  class_addmethod(c, (method)inertial_assist, "assist", A_CANT, 0);
  class_addmethod(c, (method)inertial_dsp, "dsp", A_CANT, 0);
  class_addmethod(c, (method)inertial_dsp64, "dsp64", A_CANT, 0);
  class_addmethod(c, (method)inertial_strike, "strike", A_FLOAT, A_FLOAT, 0);
  class_addmethod(c, (method)SDT_fileusage, "fileusage", A_CANT, 0L);

  SDT_MAX_RO_ATTRIBUTE(c, inertial, _key, key, symbol, 0);
  SDT_MAX_ATTRIBUTE(c, inertial, Mass, mass, float64, 0);
  SDT_MAX_ATTRIBUTE(c, inertial, FragmentSize, fragmentSize, float64, 0);

  CLASS_ATTR_FILTER_MIN(c, "mass", 0.0);
  CLASS_ATTR_FILTER_CLIP(c, "fragmentSize", 0.0, 1.0);

  CLASS_ATTR_ORDER(c, "key", 0, "1");

  class_dspinit(c);
  class_register(CLASS_BOX, c);
  inertial_class = c;
}
