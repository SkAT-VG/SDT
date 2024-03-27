#include "SDT/SDTCommon.h"
#include "SDT/SDTInteractors.h"
#include "SDTCommonMax.h"
#include "SDT_fileusage.h"
#include "ext.h"
#include "ext_obex.h"
#include "z_dsp.h"

typedef struct _friction {
  t_pxobject ob;
  SDTInteractor *friction;
  const char *key0, *key1;
  long nOutlets;
} t_friction;

static t_class *friction_class = NULL;

void *friction_new(t_symbol *s, long argc, t_atom *argv) {
  SDT_setupMaxLoggers();
  t_friction *x;
  SDTInteractor *friction;
  char *key0, *key1;
  int i, err;

  err = 0;
  if (argc < 1 || atom_gettype(&argv[0]) != A_SYM) {
    error(
        "sdt.friction~: Please provide the id of the first resonator as first "
        "argument.");
    err = 1;
  }
  if (argc < 2 || atom_gettype(&argv[1]) != A_SYM) {
    error(
        "sdt.friction~: Please provide the id of the second resonator as "
        "second argument.");
    err = 1;
  }
  if (argc < 3 || atom_gettype(&argv[2]) != A_LONG) {
    error(
        "sdt.friction~: Please provide the number of available outlets as "
        "third argument.");
    err = 1;
  }
  if (err) return NULL;
  friction = SDTFriction_new();
  key0 = atom_getsym(&argv[0])->s_name;
  key1 = atom_getsym(&argv[1])->s_name;
  if (SDT_registerInteractor(friction, key0, key1)) {
    error(
        "sdt.friction~: Error registering the interaction. Probably a "
        "duplicate id?");
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
  if (m == ASSIST_INLET) {  // inlet
    switch (a) {
      case 0:
        sprintf(s,
                "(signal): External force applied on object 1 (N)\n"
                "Object attributes and messages (see help patch)");
        break;
      case 1:
        sprintf(s, "(signal): Strike velocity of object 1 (m/s)");
        break;
      case 2:
        sprintf(s, "(signal): Fragment size of object 1 [0,1]");
        break;
      case 3:
        sprintf(s, "(signal): External force applied on object 2 (N)");
        break;
      case 4:
        sprintf(s, "(signal): Strike velocity of object 2 (m/s)");
        break;
      case 5:
        sprintf(s, "(signal): Fragment size of object 2 [0,1]");
        break;
      default:
        break;
    }
  } else {
    sprintf(s, "(signal): Output sound from / displacement (m) at pickup %ld",
            a);
  }
}

SDT_MAX_KEY_GETTER(friction, Interactor, key0)
SDT_MAX_KEY_GETTER(friction, Interactor, key1)

SDT_MAX_ACCESSORS(friction, Interactor, friction, FirstPoint, long, , )
SDT_MAX_ACCESSORS(friction, Interactor, friction, SecondPoint, long, , )

SDT_MAX_ACCESSORS(friction, Friction, friction, NormalForce, float, , )
SDT_MAX_ACCESSORS(friction, Friction, friction, StribeckVelocity, float, , )
SDT_MAX_ACCESSORS(friction, Friction, friction, StaticCoefficient, float, , )
SDT_MAX_ACCESSORS(friction, Friction, friction, DynamicCoefficient, float, , )
SDT_MAX_ACCESSORS(friction, Friction, friction, Stiffness, float, , )
SDT_MAX_ACCESSORS(friction, Friction, friction, Dissipation, float, , )
SDT_MAX_ACCESSORS(friction, Friction, friction, Viscosity, float, , )
SDT_MAX_ACCESSORS(friction, Friction, friction, Noisiness, float, , )
SDT_MAX_ACCESSORS(friction, Friction, friction, BreakAway, float, , )

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
  double tmpOuts[2 * SDT_RESONATOR_NPICKUPS_MAX];
  int i, k;

  for (k = 0; k < n; k++) {
    SDTInteractor_dsp(x->friction, *in0++, *in1++, *in2++, *in3++, *in4++,
                      *in5++, tmpOuts);
    for (i = 0; i < x->nOutlets; i++) {
      out = (t_float *)(sp[6 + i]->s_vec);
      out[k] = (float)tmpOuts[i];
    }
  }
  return w + 4;
}

void friction_dsp(t_friction *x, t_signal **sp, short *count) {
  SDT_setSampleRate(sp[0]->s_sr);
  dsp_add(friction_perform, 3, x, sp, sp[0]->s_n);
}

void friction_perform64(t_friction *x, t_object *dsp64, double **ins,
                        long numins, double **outs, long numouts,
                        long sampleframes, long flags, void *userparam) {
  t_double *in0 = (t_double *)ins[0];
  t_double *in1 = (t_double *)ins[1];
  t_double *in2 = (t_double *)ins[2];
  t_double *in3 = (t_double *)ins[3];
  t_double *in4 = (t_double *)ins[4];
  t_double *in5 = (t_double *)ins[5];
  int n = sampleframes;
  double tmpOuts[2 * SDT_RESONATOR_NPICKUPS_MAX];
  int i, k;

  for (k = 0; k < n; k++) {
    SDTInteractor_dsp(x->friction, *in0++, *in1++, *in2++, *in3++, *in4++,
                      *in5++, tmpOuts);
    for (i = 0; i < x->nOutlets; i++) {
      outs[i][k] = tmpOuts[i];
    }
  }
}

void friction_dsp64(t_friction *x, t_object *dsp64, short *count,
                    double samplerate, long maxvectorsize, long flags) {
  SDT_setSampleRate(samplerate);
  object_method(dsp64, gensym("dsp_add64"), x, friction_perform64, 0, NULL);
}

void C74_EXPORT ext_main(void *r) {
  t_class *c =
      class_new("sdt.friction~", (method)friction_new, (method)friction_free,
                (long)sizeof(t_friction), 0L, A_GIMME, 0);

  class_addmethod(c, (method)friction_dsp, "dsp", A_CANT, 0);
  class_addmethod(c, (method)friction_dsp64, "dsp64", A_CANT, 0);
  class_addmethod(c, (method)friction_assist, "assist", A_CANT, 0);
  class_addmethod(c, (method)SDT_fileusage, "fileusage", A_CANT, 0L);

  SDT_MAX_RO_ATTRIBUTE(c, friction, _key0, resonator0, symbol, 0);
  SDT_MAX_RO_ATTRIBUTE(c, friction, _key1, resonator1, symbol, 0);

  SDT_MAX_ATTRIBUTE(c, friction, NormalForce, force, float64, 0);
  SDT_MAX_ATTRIBUTE(c, friction, StribeckVelocity, stribeck, float64, 0);
  SDT_MAX_ATTRIBUTE(c, friction, StaticCoefficient, kStatic, float64, 0);
  SDT_MAX_ATTRIBUTE(c, friction, DynamicCoefficient, kDynamic, float64, 0);
  SDT_MAX_ATTRIBUTE(c, friction, Stiffness, stiffness, float64, 0);
  SDT_MAX_ATTRIBUTE(c, friction, Dissipation, dissipation, float64, 0);
  SDT_MAX_ATTRIBUTE(c, friction, Viscosity, viscosity, float64, 0);
  SDT_MAX_ATTRIBUTE(c, friction, Noisiness, noisiness, float64, 0);
  SDT_MAX_ATTRIBUTE(c, friction, BreakAway, breakAway, float64, 0);
  SDT_MAX_ATTRIBUTE(c, friction, FirstPoint, contact0, long, 0);
  SDT_MAX_ATTRIBUTE(c, friction, SecondPoint, contact1, long, 0);

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

  CLASS_ATTR_ORDER(c, "resonator0", 0, "1");
  CLASS_ATTR_ORDER(c, "resonator1", 0, "2");
  CLASS_ATTR_ORDER(c, "contact0", 0, "3");
  CLASS_ATTR_ORDER(c, "contact1", 0, "4");
  CLASS_ATTR_ORDER(c, "force", 0, "5");
  CLASS_ATTR_ORDER(c, "stribeck", 0, "6");
  CLASS_ATTR_ORDER(c, "kStatic", 0, "7");
  CLASS_ATTR_ORDER(c, "kDynamic", 0, "8");
  CLASS_ATTR_ORDER(c, "stiffness", 0, "9");
  CLASS_ATTR_ORDER(c, "dissipation", 0, "10");
  CLASS_ATTR_ORDER(c, "viscosity", 0, "11");
  CLASS_ATTR_ORDER(c, "noisiness", 0, "12");
  CLASS_ATTR_ORDER(c, "breakAway", 0, "13");

  class_dspinit(c);
  class_register(CLASS_BOX, c);
  friction_class = c;
}
