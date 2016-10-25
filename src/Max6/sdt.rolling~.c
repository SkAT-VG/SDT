#include "ext.h"
#include "ext_obex.h"
#include "z_dsp.h"
#include "SDT/SDTCommon.h"
#include "SDT/SDTControl.h"

typedef struct _rolling {
  t_pxobject ob;
  SDTRolling *rolling;
  double grain, depth, mass, velocity;
} t_rolling;

static t_class *rolling_class = NULL;

void *rolling_new(t_symbol *s, long argc, t_atom *argv) {
  t_rolling *x;
  
  x = (t_rolling *)object_alloc(rolling_class);
  if (x) {
    dsp_setup((t_pxobject *)x, 1);
    outlet_new(x, "signal");
    x->rolling = SDTRolling_new();
    attr_args_process(x, argc, argv);
  }
  return (x);
}

void rolling_free(t_rolling *x) {
  dsp_free((t_pxobject *)x);
  SDTRolling_free(x->rolling);
}

void rolling_assist(t_rolling *x, void *b, long m, long a, char *s) {
  if (m == ASSIST_INLET) {
    sprintf(s, "(signal): Surface profile\n"
               "Object attributes and messages (see help patch)");
  } 
  else {
    sprintf(s, "(signal): Applied force on resonator");
  }
}

void rolling_grain(t_rolling *x, void *attr, long ac, t_atom *av) {
  x->grain = atom_getfloat(av);
  SDTRolling_setGrain(x->rolling, x->grain);
}

void rolling_depth(t_rolling *x, void *attr, long ac, t_atom *av) {
  x->depth = atom_getfloat(av);
  SDTRolling_setDepth(x->rolling, x->depth);
}

void rolling_mass(t_rolling *x, void *attr, long ac, t_atom *av) {
  x->mass = atom_getfloat(av);
  SDTRolling_setMass(x->rolling, x->mass);
}

void rolling_velocity(t_rolling *x, void *attr, long ac, t_atom *av) {
  x->velocity = atom_getfloat(av);
  SDTRolling_setVelocity(x->rolling, x->velocity);
}

t_int *rolling_perform(t_int *w) {
  t_rolling *x = (t_rolling *)(w[1]);
  t_float *in = (t_float *)(w[2]);
  t_float *out = (t_float *)(w[3]);
  int n = (int)w[4];
  
  while (n--) {
    *out++ = (float)SDTRolling_dsp(x->rolling, *in++);
  }

  return w + 5;
}

void rolling_dsp(t_rolling *x, t_signal **sp, short *count) {
  SDT_setSampleRate(sp[0]->s_sr);
  dsp_add(rolling_perform, 4, x, sp[0]->s_vec, sp[1]->s_vec, sp[0]->s_n);
}

void rolling_perform64(t_rolling *x, t_object *dsp64, double **ins, long numins, double **outs, long numouts, long sampleframes, long flags, void *userparam) {
  t_double *in = ins[0];
  t_double *out = outs[0];
  int n = sampleframes;
  
  while (n--) {
    *out++ = SDTRolling_dsp(x->rolling, *in++);
  }
}

void rolling_dsp64(t_rolling *x, t_object *dsp64, short *count, double samplerate, long maxvectorsize, long flags) {
  SDT_setSampleRate(samplerate);
  object_method(dsp64, gensym("dsp_add64"), x, rolling_perform64, 0, NULL);
}

int C74_EXPORT main(void) {	
  t_class *c = class_new("sdt.rolling~", (method)rolling_new, (method)rolling_free, (long)sizeof(t_rolling), 0L, A_GIMME, 0);
	
  class_addmethod(c, (method)rolling_dsp, "dsp", A_CANT, 0);
  class_addmethod(c, (method)rolling_dsp64, "dsp64", A_CANT, 0);
  class_addmethod(c, (method)rolling_assist, "assist", A_CANT, 0);
  
  CLASS_ATTR_DOUBLE(c, "grain", 0, t_rolling, grain);
  CLASS_ATTR_DOUBLE(c, "depth", 0, t_rolling, depth);
  CLASS_ATTR_DOUBLE(c, "mass", 0, t_rolling, mass);
  CLASS_ATTR_DOUBLE(c, "velocity", 0, t_rolling, velocity);
  
  CLASS_ATTR_FILTER_CLIP(c, "grain", 0.0, 1.0);
  CLASS_ATTR_FILTER_MIN(c, "depth", 0.0);
  CLASS_ATTR_FILTER_MIN(c, "mass", 0.0);
  
  CLASS_ATTR_ACCESSORS(c, "grain", NULL, (method)rolling_grain);
  CLASS_ATTR_ACCESSORS(c, "depth", NULL, (method)rolling_depth);
  CLASS_ATTR_ACCESSORS(c, "mass", NULL, (method)rolling_mass);
  CLASS_ATTR_ACCESSORS(c, "velocity", NULL, (method)rolling_velocity);
  
  CLASS_ATTR_ORDER(c, "grain", 0, "1");
  CLASS_ATTR_ORDER(c, "depth", 0, "2");
  CLASS_ATTR_ORDER(c, "mass", 0, "3");
  CLASS_ATTR_ORDER(c, "velocity", 0, "4");
  
  class_dspinit(c);
  class_register(CLASS_BOX, c);
  rolling_class = c;

  return 0;
}