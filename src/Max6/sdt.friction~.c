#include "ext.h"
#include "ext_obex.h"
#include "z_dsp.h"
#include "SDT/SDTCommon.h"
#include "SDT/SDTSolids.h"

typedef struct _friction {
  t_pxobject ob;
  SDTInteractor *friction;
  char *key0, *key1;
  double force, stribeck, kStatic, kDynamic,
         stiffness, dissipation, viscosity,
         noisiness, breakAway;
  long contact0, contact1, nOutlets;
} t_friction;

static t_class *friction_class = NULL;

void *friction_new(t_symbol *s, long argc, t_atom *argv) {
  t_friction *x;
  SDTInteractor *friction;
  char *key0, *key1;
  int i, err;
  
  err = 0;
  if (argc < 1 || atom_gettype(&argv[0]) != A_SYM) {
    error("sdt.friction~: Please provide the id of the first resonator as first argument.");
    err = 1;
  }
  if (argc < 2 || atom_gettype(&argv[1]) != A_SYM) {
    error("sdt.friction~: Please provide the id of the second resonator as second argument.");
    err = 1;
  }
  if (argc < 3 || atom_gettype(&argv[2]) != A_LONG) {
    error("sdt.friction~: Please provide the number of available outlets as third argument.");
    err = 1;
  }
  if (err) return NULL;
  friction = SDTFriction_new();
  key0 = atom_getsym(&argv[0])->s_name;
  key1 = atom_getsym(&argv[1])->s_name;
  if (SDT_registerInteractor(friction, key0, key1)) {
    error("sdt.friction~: Error registering the interaction. Probably a duplicate id?");
    SDTFriction_free(friction);
    return NULL;
  }
  x = (t_friction *)object_alloc(friction_class);
  if (!x) {
    error("sdt.friction~: Instantiation error.");
    return NULL;
  }
  dsp_setup((t_pxobject *)x, 6);
  x->nOutlets = atom_getlong(&argv[2]);
  for (i = 0; i < x->nOutlets; i++) { 
    outlet_new(x, "signal");
  }
  x->friction = friction;
  x->key0 = key0;
  x->key1 = key1;
  attr_args_process(x, argc, argv);
  return x;
}

void friction_free(t_friction *x) {
  dsp_free((t_pxobject *)x);
  SDT_unregisterInteractor(x->key0, x->key1);
  SDTFriction_free(x->friction);
}

void friction_assist(t_friction *x, void *b, long m, long a, char *s) {
  if (m == ASSIST_INLET) { //inlet
    switch (a) { 
      case 0:
        sprintf(s, "(signal): Force applied on first resonator (N)\n"
                   "Object attributes and messages (see help patch)");
        break;
      case 1:
        sprintf(s, "(signal): Impact velocity of first resonator (m/s)");
        break;
      case 2:
        sprintf(s, "(signal): Fragment size of first resonator [0,1]");
        break;
      case 3:
        sprintf(s, "(signal): Force applied on second resonator (N)");
        break;
      case 4:
        sprintf(s, "(signal): Impact velocity of second resonator (m/s)");
        break;
      case 5:
        sprintf(s, "(signal): Fragment size of second resonator [0,1]");
        break;
      default:
        break;
    }
  } 
  else {
    sprintf(s, "(signal): Output sound from pickup %ld", a + 1);
  }
}

void friction_force(t_friction *x, void *attr, long ac, t_atom *av) {
    x->force = atom_getfloat(av);
    SDTFriction_setNormalForce(x->friction, x->force);
}

void friction_stribeck(t_friction *x, void *attr, long ac, t_atom *av) {
    x->stribeck = atom_getfloat(av);
    SDTFriction_setStribeckVelocity(x->friction, x->stribeck);
}

void friction_kStatic(t_friction *x, void *attr, long ac, t_atom *av) {
    x->kStatic = atom_getfloat(av);
    SDTFriction_setStaticCoefficient(x->friction, x->kStatic);
}

void friction_kDynamic(t_friction *x, void *attr, long ac, t_atom *av) {
    x->kDynamic = atom_getfloat(av);
    SDTFriction_setDynamicCoefficient(x->friction, x->kDynamic);
}

void friction_stiffness(t_friction *x, void *attr, long ac, t_atom *av) {
    x->stiffness = atom_getfloat(av);
    SDTFriction_setStiffness(x->friction, x->stiffness);
}

void friction_dissipation(t_friction *x, void *attr, long ac, t_atom *av) {
    x->dissipation = atom_getfloat(av);
    SDTFriction_setDissipation(x->friction, x->dissipation);
}

void friction_viscosity(t_friction *x, void *attr, long ac, t_atom *av) {
    x->viscosity = atom_getfloat(av);
    SDTFriction_setViscosity(x->friction, x->viscosity);
}

void friction_noisiness(t_friction *x, void *attr, long ac, t_atom *av) {
    x->noisiness = atom_getfloat(av);
    SDTFriction_setNoisiness(x->friction, x->noisiness);
}

void friction_breakAway(t_friction *x, void *attr, long ac, t_atom *av) {
    x->breakAway = atom_getfloat(av);
    SDTFriction_setBreakAway(x->friction, x->breakAway);
}

void friction_contact0(t_friction *x, void *attr, long ac, t_atom *av) {
    x->contact0 = atom_getlong(av);
    SDTInteractor_setFirstPoint(x->friction, x->contact0);
}

void friction_contact1(t_friction *x, void *attr, long ac, t_atom *av) {
    x->contact1 = atom_getlong(av);
    SDTInteractor_setSecondPoint(x->friction, x->contact1);
}

t_int *friction_perform(t_int *w) {
  t_friction *x = (t_friction *)(w[1]);
  t_signal **sp = (t_signal **)(w[2]);
  t_float *in0 = (t_float *)(sp[0]->s_vec);
  t_float *in1 = (t_float *)(sp[1]->s_vec);
  t_float *in2 = (t_float *)(sp[2]->s_vec);
  t_float *in3 = (t_float *)(sp[3]->s_vec);
  t_float *in4 = (t_float *)(sp[4]->s_vec);
  t_float *in5 = (t_float *)(sp[5]->s_vec);
  int n = (int)w[3];
  t_float *out;
  double tmpOuts[2 * SDT_MAX_PICKUPS];
  int i, k;
  
  for (k = 0; k < n; k++) {
    SDTInteractor_dsp(x->friction, *in0++, *in1++, *in2++, *in3++, *in4++, *in5++, tmpOuts);
    for (i = 0; i < x->nOutlets; i++) {
      out = (t_float *)(sp[6+i]->s_vec);
      out[k] = (float)tmpOuts[i];
    }
  }
  return w + 4;
}

void friction_dsp(t_friction *x, t_signal **sp, short *count) {
  SDT_setSampleRate(sp[0]->s_sr);
  dsp_add(friction_perform, 3, x, sp, sp[0]->s_n);
}

void friction_perform64(t_friction *x, t_object *dsp64, double **ins, long numins,
                      double **outs, long numouts, long sampleframes,
                      long flags, void *userparam) {
  t_double *in0 = (t_double *)ins[0];
  t_double *in1 = (t_double *)ins[1];
  t_double *in2 = (t_double *)ins[2];
  t_double *in3 = (t_double *)ins[3];
  t_double *in4 = (t_double *)ins[4];
  t_double *in5 = (t_double *)ins[5];
  int n = sampleframes;
  double tmpOuts[2 * SDT_MAX_PICKUPS];
  int i, k;
  
  for (k = 0; k < n; k++) {
    SDTInteractor_dsp(x->friction, *in0++, *in1++, *in2++, *in3++, *in4++, *in5++, tmpOuts);
    for (i = 0; i < x->nOutlets; i++) {
      outs[i][k] = tmpOuts[i];
    }
  }
}

void friction_dsp64(t_friction *x, t_object *dsp64, short *count, double samplerate,
                  long maxvectorsize, long flags) {
  SDT_setSampleRate(samplerate);
  object_method(dsp64, gensym("dsp_add64"), x, friction_perform64, 0, NULL);
}

int C74_EXPORT main(void) {	
  t_class *c = class_new("sdt.friction~", (method)friction_new, (method)friction_free,
                         (long)sizeof(t_friction), 0L, A_GIMME, 0);
	
  class_addmethod(c, (method)friction_dsp, "dsp", A_CANT, 0);
  class_addmethod(c, (method)friction_dsp64, "dsp64", A_CANT, 0);
  class_addmethod(c, (method)friction_assist, "assist", A_CANT, 0);

  CLASS_ATTR_DOUBLE(c, "force", 0, t_friction, force);
  CLASS_ATTR_DOUBLE(c, "stribeck", 0, t_friction, stribeck);
  CLASS_ATTR_DOUBLE(c, "kStatic", 0, t_friction, kStatic);
  CLASS_ATTR_DOUBLE(c, "kDynamic", 0, t_friction, kDynamic);
  CLASS_ATTR_DOUBLE(c, "stiffness", 0, t_friction, stiffness);
  CLASS_ATTR_DOUBLE(c, "dissipation", 0, t_friction, dissipation);
  CLASS_ATTR_DOUBLE(c, "viscosity", 0, t_friction, viscosity);
  CLASS_ATTR_DOUBLE(c, "noisiness", 0, t_friction, noisiness);
  CLASS_ATTR_DOUBLE(c, "breakAway", 0, t_friction, breakAway);
  CLASS_ATTR_LONG(c, "contact0", 0, t_friction, contact0);
  CLASS_ATTR_LONG(c, "contact1", 0, t_friction, contact1);
  
  CLASS_ATTR_FILTER_MIN(c, "force", 0.0);
  CLASS_ATTR_FILTER_MIN(c, "stribeck", 0.0);
  CLASS_ATTR_FILTER_CLIP(c, "kStatic", 0.0, 1.0);
  CLASS_ATTR_FILTER_CLIP(c, "kDynamic", 0.0, 1.0);
  CLASS_ATTR_FILTER_MIN(c, "stiffness", 0.0);
  CLASS_ATTR_FILTER_MIN(c, "dissipation", 0.0);
  CLASS_ATTR_FILTER_MIN(c, "viscosity", 0.0);
  CLASS_ATTR_FILTER_MIN(c, "noisiness", 0.0);
  CLASS_ATTR_FILTER_CLIP(c, "breakAway", 0.0, 1.0);
  CLASS_ATTR_FILTER_MIN(c, "contact0", 0);
  CLASS_ATTR_FILTER_MIN(c, "contact1", 0);
  
  CLASS_ATTR_ACCESSORS(c, "force", NULL, (method)friction_force);
  CLASS_ATTR_ACCESSORS(c, "stribeck", NULL, (method)friction_stribeck);
  CLASS_ATTR_ACCESSORS(c, "kStatic", NULL, (method)friction_kStatic);
  CLASS_ATTR_ACCESSORS(c, "kDynamic", NULL, (method)friction_kDynamic);
  CLASS_ATTR_ACCESSORS(c, "stiffness", NULL, (method)friction_stiffness);
  CLASS_ATTR_ACCESSORS(c, "dissipation", NULL, (method)friction_dissipation);
  CLASS_ATTR_ACCESSORS(c, "viscosity", NULL, (method)friction_viscosity);
  CLASS_ATTR_ACCESSORS(c, "noisiness", NULL, (method)friction_noisiness);
  CLASS_ATTR_ACCESSORS(c, "breakAway", NULL, (method)friction_breakAway);
  CLASS_ATTR_ACCESSORS(c, "contact0", NULL, (method)friction_contact0);
  CLASS_ATTR_ACCESSORS(c, "contact1", NULL, (method)friction_contact1);
  
  CLASS_ATTR_ORDER(c, "force", 0, "1");
  CLASS_ATTR_ORDER(c, "stribeck", 0, "2");
  CLASS_ATTR_ORDER(c, "kStatic", 0, "3");
  CLASS_ATTR_ORDER(c, "kDynamic", 0, "4");
  CLASS_ATTR_ORDER(c, "stiffness", 0, "5");
  CLASS_ATTR_ORDER(c, "dissipation", 0, "6");
  CLASS_ATTR_ORDER(c, "viscosity", 0, "7");
  CLASS_ATTR_ORDER(c, "noisiness", 0, "8");
  CLASS_ATTR_ORDER(c, "breakAway", 0, "9");
  CLASS_ATTR_ORDER(c, "contact0", 0, "10");
  CLASS_ATTR_ORDER(c, "contact1", 0, "11");

  class_dspinit(c);
  class_register(CLASS_BOX, c);
  friction_class = c;

  return 0;
}