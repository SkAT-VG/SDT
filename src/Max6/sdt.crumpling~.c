#include "ext.h"
#include "ext_obex.h"
#include "z_dsp.h"
#include "SDT/SDTCommon.h"
#include "SDT/SDTControl.h"

typedef struct _crumpling {
  t_pxobject ob;
  void *size, *energy;
  SDTCrumpling *crumpling;
  double crushingEnergy, granularity, fragmentation;
} t_crumpling;

static t_class *crumpling_class = NULL;

void crumpling_assist(t_crumpling *x, void *b, long m, long a, char *s) {
	if (m == ASSIST_INLET) {
        sprintf(s, "Object attributes and messages (see help patch)");
	} 
	else {
	  switch (a) {
	    case 0:
	      sprintf(s, "(float): Impact velocity");
	      break;
	    case 1:
	      sprintf(s, "(float): Fragment size");
	      break;
	    default:
	      break;
	  }
	}
}

void crumpling_crushingEnergy(t_crumpling *x, void *attr, long ac, t_atom *av) {
  x->crushingEnergy = atom_getfloat(av);
  SDTCrumpling_setCrushingEnergy(x->crumpling, x->crushingEnergy);
}

void crumpling_granularity(t_crumpling *x, void *attr, long ac, t_atom *av) {
  x->granularity = atom_getfloat(av);
  SDTCrumpling_setGranularity(x->crumpling, x->granularity);
}

void crumpling_fragmentation(t_crumpling *x, void *attr, long ac, t_atom *av) {
  x->fragmentation = atom_getfloat(av);
  SDTCrumpling_setFragmentation(x->crumpling, x->fragmentation);
}

void *crumpling_new(t_symbol *s, short argc, t_atom *argv) {
  t_crumpling *x = (t_crumpling *)object_alloc(crumpling_class);
  if (x) {
    dsp_setup((t_pxobject *)x, 0);
    x->energy = outlet_new(x, "signal");
    x->size = outlet_new(x, "signal");
    x->crumpling = SDTCrumpling_new();
    attr_args_process(x, argc, argv); 
  }
  return (x);
}

void crumpling_free(t_crumpling *x)  {
    dsp_free((t_pxobject *)x);
    SDTCrumpling_free(x->crumpling);
    object_free(x->size);
    object_free(x->energy);
}

t_int *crumpling_perform(t_int *w) {
  t_crumpling *x = (t_crumpling *)(w[1]);
  t_float *out0 = (t_float *)(w[2]);
  t_float *out1 = (t_float *)(w[3]);
  int n = (int)w[4];
  double tmpOuts[2];
  
  while (n--) {
    SDTCrumpling_dsp(x->crumpling, tmpOuts);
    *out0++ = (float)tmpOuts[0];
    *out1++ = (float)tmpOuts[1];
  }
  return w + 5;
}

void crumpling_dsp(t_crumpling *x, t_signal **sp, short *count) {
  SDT_setSampleRate(sp[0]->s_sr);
  dsp_add(crumpling_perform, 4, x, sp[0]->s_vec, sp[1]->s_vec, sp[0]->s_n);
}

void crumpling_perform64(t_crumpling *x, t_object *dsp64, double **ins, long numins,
                      double **outs, long numouts, long sampleframes,
                      long flags, void *userparam) {
  t_double *out0 = (t_double *)outs[0];
  t_double *out1 = (t_double *)outs[1];
  int n = sampleframes;
  double tmpOuts[2];
  
  while (n--) {
    SDTCrumpling_dsp(x->crumpling, tmpOuts);
    *out0++ = tmpOuts[0];
    *out1++ = tmpOuts[1];
  }
}

void crumpling_dsp64(t_crumpling *x, t_object *dsp64, short *count, double samplerate,
                  long maxvectorsize, long flags) {
  SDT_setSampleRate(samplerate);
  object_method(dsp64, gensym("dsp_add64"), x, crumpling_perform64, 0, NULL);
}

int C74_EXPORT main(void) {	
	t_class *c = class_new("sdt.crumpling~", (method)crumpling_new, (method)crumpling_free,
	                       (long)sizeof(t_crumpling), 0L, A_GIMME, 0);

	class_addmethod(c, (method)crumpling_dsp, "dsp", A_CANT, 0);
    class_addmethod(c, (method)crumpling_dsp64, "dsp64", A_CANT, 0);
	class_addmethod(c, (method)crumpling_assist, "assist", A_CANT, 0);
	
	CLASS_ATTR_DOUBLE(c, "crushingEnergy", 0, t_crumpling, crushingEnergy);
    CLASS_ATTR_DOUBLE(c, "granularity", 0, t_crumpling, granularity);
    CLASS_ATTR_DOUBLE(c, "fragmentation", 0, t_crumpling, fragmentation);
	
	CLASS_ATTR_FILTER_MIN(c, "crushingEnergy", 0.0);
    CLASS_ATTR_FILTER_CLIP(c, "granularity", 0.0, 1.0);
    CLASS_ATTR_FILTER_CLIP(c, "fragmentation", 0.0, 1.0);
	
	CLASS_ATTR_ACCESSORS(c, "crushingEnergy", NULL, (method)crumpling_crushingEnergy);
    CLASS_ATTR_ACCESSORS(c, "granularity", NULL, (method)crumpling_granularity);
    CLASS_ATTR_ACCESSORS(c, "fragmentation", NULL, (method)crumpling_fragmentation);
	
	CLASS_ATTR_ORDER(c, "crushingEnergy", 0, "1");
	CLASS_ATTR_ORDER(c, "granularity", 0, "2");
	CLASS_ATTR_ORDER(c, "fragmentation", 0, "3");
	
	class_dspinit(c);
	class_register(CLASS_BOX, c);
	crumpling_class = c;

	return 0;
}