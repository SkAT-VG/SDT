#include "ext.h"
#include "ext_obex.h"
#include "z_dsp.h"
#include "SDT/SDTCommon.h"
#include "SDT/SDTSolids.h"

typedef struct _impact {
  t_pxobject ob;
  SDTInteractor *impact;
  char *key0, *key1;
  double stiffness, dissipation, shape;
  long contact0, contact1, nOutlets;
} t_impact;

static t_class *impact_class = NULL;

void *impact_new(t_symbol *s, long argc, t_atom *argv) {
  t_impact *x;
  SDTInteractor *impact;
  char *key0, *key1;
  int i, err;
  
  err = 0;
  if (argc < 1 || atom_gettype(&argv[0]) != A_SYM) {
    error("sdt.impact~: Please provide the id of the first resonator as first argument.");
    err = 1;
  }
  if (argc < 2 || atom_gettype(&argv[1]) != A_SYM) {
    error("sdt.impact~: Please provide the id of the second resonator as second argument.");
    err = 1;
  }
  if (argc < 3 || atom_gettype(&argv[2]) != A_LONG) {
    error("sdt.impact~: Please provide the number of available outlets as third argument.");
    err = 1;
  }
  if (err) return NULL;
  impact = SDTImpact_new();
  key0 = atom_getsym(&argv[0])->s_name;
  key1 = atom_getsym(&argv[1])->s_name;
  if (SDT_registerInteractor(impact, key0, key1)) {
    error("sdt.impact~: Error registering the interaction. Probably a duplicate id?");
    SDTImpact_free(impact);
    return NULL;
  }
  x = (t_impact *)object_alloc(impact_class);
  if (!x) {
    error("sdt.impact~: Instantiation error.");
    return NULL;
  }
  dsp_setup((t_pxobject *)x, 6);
  x->nOutlets = atom_getlong(&argv[2]);
  for (i = 0; i < x->nOutlets; i++) { 
    outlet_new(x, "signal");
  }
  x->impact = impact;
  x->key0 = key0;
  x->key1 = key1;
  attr_args_process(x, argc, argv);
  return x;
}

void impact_free(t_impact *x) {
  dsp_free((t_pxobject *)x);
  SDT_unregisterInteractor(x->key0, x->key1);
  SDTImpact_free(x->impact);
}

void impact_assist(t_impact *x, void *b, long m, long a, char *s) {
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

void impact_stiffness(t_impact *x, void *attr, long ac, t_atom *av) {
    x->stiffness = atom_getfloat(av);
    SDTImpact_setStiffness(x->impact, x->stiffness);
}

void impact_dissipation(t_impact *x, void *attr, long ac, t_atom *av) {
    x->dissipation = atom_getfloat(av);
    SDTImpact_setDissipation(x->impact, x->dissipation);
}

void impact_shape(t_impact *x, void *attr, long ac, t_atom *av) {
    x->shape = atom_getfloat(av);
    SDTImpact_setShape(x->impact, x->shape);
}

void impact_contact0(t_impact *x, void *attr, long ac, t_atom *av) {
    x->contact0 = atom_getlong(av);
    SDTInteractor_setFirstPoint(x->impact, x->contact0);
}

void impact_contact1(t_impact *x, void *attr, long ac, t_atom *av) {
    x->contact1 = atom_getlong(av);
    SDTInteractor_setSecondPoint(x->impact, x->contact1);
}

t_int *impact_perform(t_int *w) {
  t_impact *x = (t_impact *)(w[1]);
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
    SDTInteractor_dsp(x->impact, *in0++, *in1++, *in2++, *in3++, *in4++, *in5++, tmpOuts);
    for (i = 0; i < x->nOutlets; i++) {
      out = (t_float *)(sp[6+i]->s_vec);
      out[k] = (float)tmpOuts[i];
    }
  }
  return w + 4;
}

void impact_dsp(t_impact *x, t_signal **sp, short *count) {
  SDT_setSampleRate(sp[0]->s_sr);
  dsp_add(impact_perform, 3, x, sp, sp[0]->s_n);
}

void impact_perform64(t_impact *x, t_object *dsp64, double **ins, long numins,
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
    SDTInteractor_dsp(x->impact, *in0++, *in1++, *in2++, *in3++, *in4++, *in5++, tmpOuts);
    for (i = 0; i < x->nOutlets; i++) {
      outs[i][k] = tmpOuts[i];
    }
  }
}

void impact_dsp64(t_impact *x, t_object *dsp64, short *count, double samplerate,
                  long maxvectorsize, long flags) {
  SDT_setSampleRate(samplerate);
  object_method(dsp64, gensym("dsp_add64"), x, impact_perform64, 0, NULL);
}

int C74_EXPORT main(void) {	
  t_class *c = class_new("sdt.impact~", (method)impact_new, (method)impact_free,
                         (long)sizeof(t_impact), 0L, A_GIMME, 0);
	
  class_addmethod(c, (method)impact_dsp, "dsp", A_CANT, 0);
  class_addmethod(c, (method)impact_dsp64, "dsp64", A_CANT, 0);
  class_addmethod(c, (method)impact_assist, "assist", A_CANT, 0);

  CLASS_ATTR_DOUBLE(c, "stiffness", 0, t_impact, stiffness);
  CLASS_ATTR_DOUBLE(c, "dissipation", 0, t_impact, dissipation);
  CLASS_ATTR_DOUBLE(c, "shape", 0, t_impact, shape);
  CLASS_ATTR_LONG(c, "contact0", 0, t_impact, contact0);
  CLASS_ATTR_LONG(c, "contact1", 0, t_impact, contact1);
  
  CLASS_ATTR_FILTER_MIN(c, "stiffness", 0.0);
  CLASS_ATTR_FILTER_MIN(c, "dissipation", 0.0);
  CLASS_ATTR_FILTER_MIN(c, "shape", 1.0);
  CLASS_ATTR_FILTER_MIN(c, "contact0", 0);
  CLASS_ATTR_FILTER_MIN(c, "contact1", 0);
  
  CLASS_ATTR_ACCESSORS(c, "stiffness", NULL, (method)impact_stiffness);
  CLASS_ATTR_ACCESSORS(c, "dissipation", NULL, (method)impact_dissipation);
  CLASS_ATTR_ACCESSORS(c, "shape", NULL, (method)impact_shape);
  CLASS_ATTR_ACCESSORS(c, "contact0", NULL, (method)impact_contact0);
  CLASS_ATTR_ACCESSORS(c, "contact1", NULL, (method)impact_contact1);
  
  CLASS_ATTR_ORDER(c, "stiffness", 0, "1");
  CLASS_ATTR_ORDER(c, "dissipation", 0, "2");
  CLASS_ATTR_ORDER(c, "shape", 0, "3");
  CLASS_ATTR_ORDER(c, "contact0", 0, "4");
  CLASS_ATTR_ORDER(c, "contact1", 0, "5");

  class_dspinit(c);
  class_register(CLASS_BOX, c);
  impact_class = c;

  return 0;
}