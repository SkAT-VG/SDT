#include "ext.h"
#include "ext_obex.h"
#include "z_dsp.h"
#include "SDT/SDTCommon.h"
#include "SDT/SDTControl.h"

typedef struct _breaking {
  t_pxobject ob;
  void *size, *energy;
  SDTBreaking *breaking;
  double storedEnergy, crushingEnergy, granularity, fragmentation;
} t_breaking;

static t_class *breaking_class = NULL;

void breaking_assist(t_breaking *x, void *b, long m, long a, char *s) {
	if (m == ASSIST_INLET) {
        sprintf(s, "(bang): Triggers a breaking process\n"
                   "Object attributes and messages (see help patch)");
	} 
	else {
	  switch (a) {
	    case 0:
	      sprintf(s, "(signal): Impact velocity");
	      break;
	    case 1:
	      sprintf(s, "(float): Fragment size");
	      break;
	    default:
	      break;
	  }
	}
}

void breaking_bang(t_breaking *x) {
  SDTBreaking_reset(x->breaking);
}

void breaking_storedEnergy(t_breaking *x, void *attr, long ac, t_atom *av) {
  x->storedEnergy = atom_getfloat(av);
  SDTBreaking_setStoredEnergy(x->breaking, x->storedEnergy);
}

void breaking_crushingEnergy(t_breaking *x, void *attr, long ac, t_atom *av) {
  x->crushingEnergy = atom_getfloat(av);
  SDTBreaking_setCrushingEnergy(x->breaking, x->crushingEnergy);
}

void breaking_granularity(t_breaking *x, void *attr, long ac, t_atom *av) {
  x->granularity = atom_getfloat(av);
  SDTBreaking_setGranularity(x->breaking, x->granularity);
}

void breaking_fragmentation(t_breaking *x, void *attr, long ac, t_atom *av) {
  x->fragmentation = atom_getfloat(av);
  SDTBreaking_setFragmentation(x->breaking, x->fragmentation);
}

void *breaking_new(t_symbol *s, short argc, t_atom *argv) {
  t_breaking *x = (t_breaking *)object_alloc(breaking_class);
  if (x) {
    dsp_setup((t_pxobject *)x, 0);
    x->energy = outlet_new(x, "signal");
    x->size = outlet_new(x, "signal");
    x->breaking = SDTBreaking_new();
    attr_args_process(x, argc, argv); 
  }
  return (x);
}

void breaking_free(t_breaking *x)  {
    dsp_free((t_pxobject *)x);
    SDTBreaking_free(x->breaking);
    object_free(x->size);
    object_free(x->energy);
}

t_int *breaking_perform(t_int *w) {
  t_breaking *x = (t_breaking *)(w[1]);
  t_float *out0 = (t_float *)(w[2]);
  t_float *out1 = (t_float *)(w[3]);
  int n = (int)w[4];
  double tmpOuts[2];
  
  while (n--) {
    SDTBreaking_dsp(x->breaking, tmpOuts);
    *out0++ = (float)tmpOuts[0];
    *out1++ = (float)tmpOuts[1];
  }
  return w + 5;
}

void breaking_dsp(t_breaking *x, t_signal **sp, short *count) {
  SDT_setSampleRate(sp[0]->s_sr);
  dsp_add(breaking_perform, 4, x, sp[0]->s_vec, sp[1]->s_vec, sp[0]->s_n);
}

void breaking_perform64(t_breaking *x, t_object *dsp64, double **ins, long numins,
                      double **outs, long numouts, long sampleframes,
                      long flags, void *userparam) {
  t_double *out0 = (t_double *)outs[0];
  t_double *out1 = (t_double *)outs[1];
  int n = sampleframes;
  double tmpOuts[2];
  
  while (n--) {
    SDTBreaking_dsp(x->breaking, tmpOuts);
    *out0++ = tmpOuts[0];
    *out1++ = tmpOuts[1];
  }
}

void breaking_dsp64(t_breaking *x, t_object *dsp64, short *count, double samplerate,
                  long maxvectorsize, long flags) {
  SDT_setSampleRate(samplerate);
  object_method(dsp64, gensym("dsp_add64"), x, breaking_perform64, 0, NULL);
}

int C74_EXPORT main(void) {	
	t_class *c = class_new("sdt.breaking~", (method)breaking_new, (method)breaking_free,
	                       (long)sizeof(t_breaking), 0L, A_GIMME, 0);
	                       
	class_addmethod(c, (method)breaking_bang, "bang", 0);
	class_addmethod(c, (method)breaking_dsp, "dsp", A_CANT, 0);
    class_addmethod(c, (method)breaking_dsp64, "dsp64", A_CANT, 0);
	class_addmethod(c, (method)breaking_assist, "assist", A_CANT, 0);
	
	CLASS_ATTR_DOUBLE(c, "storedEnergy", 0, t_breaking, storedEnergy);
	CLASS_ATTR_DOUBLE(c, "crushingEnergy", 0, t_breaking, crushingEnergy);
    CLASS_ATTR_DOUBLE(c, "granularity", 0, t_breaking, granularity);
    CLASS_ATTR_DOUBLE(c, "fragmentation", 0, t_breaking, fragmentation);
	
	CLASS_ATTR_FILTER_MIN(c, "storedEnergy", 0.0);
	CLASS_ATTR_FILTER_MIN(c, "crushingEnergy", 0.0);
    CLASS_ATTR_FILTER_CLIP(c, "granularity", 0.0, 1.0);
    CLASS_ATTR_FILTER_CLIP(c, "fragmentation", 0.0, 1.0);
	
	CLASS_ATTR_ACCESSORS(c, "storedEnergy", NULL, (method)breaking_storedEnergy);
	CLASS_ATTR_ACCESSORS(c, "crushingEnergy", NULL, (method)breaking_crushingEnergy);
    CLASS_ATTR_ACCESSORS(c, "granularity", NULL, (method)breaking_granularity);
    CLASS_ATTR_ACCESSORS(c, "fragmentation", NULL, (method)breaking_fragmentation);
	
	CLASS_ATTR_ORDER(c, "storedEnergy", 0, "1");
	CLASS_ATTR_ORDER(c, "crushingEnergy", 0, "2");
	CLASS_ATTR_ORDER(c, "granularity", 0, "3");
	CLASS_ATTR_ORDER(c, "fragmentation", 0, "4");
	
	class_dspinit(c);
	class_register(CLASS_BOX, c);
	breaking_class = c;

	return 0;
}