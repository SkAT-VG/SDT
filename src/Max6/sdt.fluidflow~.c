#include "ext.h"
#include "ext_obex.h"
#include "z_dsp.h"
#include "SDT/SDTCommon.h"
#include "SDT/SDTLiquids.h"

typedef struct _fluidflow {
  t_pxobject ob;
  SDTFluidFlow *flow;
  double avgRate,
         minRadius, maxRadius, expRadius,
         minDepth, maxDepth, expDepth,
         riseFactor, riseCutoff;
} t_fluidflow;

static t_class *fluidflow_class = NULL;

void *fluidflow_new(t_symbol *s, long argc, t_atom *argv) {
  t_fluidflow *x = (t_fluidflow *)object_alloc(fluidflow_class);
  long voices;
  
  if (x) {
    dsp_setup((t_pxobject *)x, 0);
    outlet_new(x, "signal");
    if (argc > 0 && atom_gettype(&argv[0]) == A_LONG) {
      voices = atom_getlong(&argv[0]);
    }
    else {
      voices = 128;
    }
    x->flow = SDTFluidFlow_new(voices);
    attr_args_process(x, argc, argv);
  }
  return (x);
}

void fluidflow_free(t_fluidflow *x) {
  dsp_free((t_pxobject *)x);
  SDTFluidFlow_free(x->flow);
}

void fluidflow_assist(t_fluidflow *x, void *b, long m, long a, char *s) {
  if (m == ASSIST_INLET) {
    sprintf(s,
      "Object attributes and messages (see help patch)"
    );
  } 
  else {
    sprintf(s, "(signal): Output sound");
  }
}

void fluidflow_avgRate(t_fluidflow *x, void *attr, long ac, t_atom *av) {
  x->avgRate = atom_getfloat(av);
  SDTFluidFlow_setAvgRate(x->flow, x->avgRate);
}

void fluidflow_minRadius(t_fluidflow *x, void *attr, long ac, t_atom *av) {
  x->minRadius = atom_getfloat(av);
  SDTFluidFlow_setMinRadius(x->flow, 0.001 * x->minRadius);
}

void fluidflow_maxRadius(t_fluidflow *x, void *attr, long ac, t_atom *av) {
  x->maxRadius = atom_getfloat(av);
  SDTFluidFlow_setMaxRadius(x->flow, 0.001 * x->maxRadius);
}

void fluidflow_expRadius(t_fluidflow *x, void *attr, long ac, t_atom *av) {
  x->expRadius = atom_getfloat(av);
  SDTFluidFlow_setExpRadius(x->flow, x->expRadius);
}

void fluidflow_minDepth(t_fluidflow *x, void *attr, long ac, t_atom *av) {
  x->minDepth = atom_getfloat(av);
  SDTFluidFlow_setMinDepth(x->flow, x->minDepth);
}

void fluidflow_maxDepth(t_fluidflow *x, void *attr, long ac, t_atom *av) {
  x->maxDepth = atom_getfloat(av);
  SDTFluidFlow_setMaxDepth(x->flow, x->maxDepth);
}

void fluidflow_expDepth(t_fluidflow *x, void *attr, long ac, t_atom *av) {
  x->expDepth = atom_getfloat(av);
  SDTFluidFlow_setExpDepth(x->flow, x->expDepth);
}

void fluidflow_riseFactor(t_fluidflow *x, void *attr, long ac, t_atom *av) {
  x->riseFactor = atom_getfloat(av);
  SDTFluidFlow_setRiseFactor(x->flow, x->riseFactor);
}

void fluidflow_riseCutoff(t_fluidflow *x, void *attr, long ac, t_atom *av) {
  x->riseCutoff = atom_getfloat(av);
  SDTFluidFlow_setRiseCutoff(x->flow, x->riseCutoff);
}

t_int *fluidflow_perform(t_int *w) {
  t_fluidflow *x = (t_fluidflow *)(w[1]);
  t_float *outL = (t_float *)(w[2]);
  int n = (int)w[3];

  while (n--)
    *outL++ = (float)SDTFluidFlow_dsp(x->flow);

  return w + 4;
}

void fluidflow_perform64(t_fluidflow *x, t_object *dsp64, double **ins, long numins,
                         double **outs, long numouts, long sampleframes,
                         long flags, void *userparam) {
  t_double *outL = outs[0];
  int n = sampleframes;
	
  while (n--)
    *outL++ = SDTFluidFlow_dsp(x->flow);
}

void fluidflow_dsp(t_fluidflow *x, t_signal **sp, short *count)
{
  SDT_setSampleRate(sp[0]->s_sr);
  dsp_add(fluidflow_perform, 3, x, sp[1]->s_vec, sp[0]->s_n);
}

void fluidflow_dsp64(t_fluidflow *x, t_object *dsp64, short *count,
                     double samplerate, long maxvectorsize, long flags) {
  SDT_setSampleRate(samplerate);
  object_method(dsp64, gensym("dsp_add64"), x, fluidflow_perform64, 0, NULL);
}

int C74_EXPORT main(void) {	
  t_class *c = class_new("sdt.fluidflow~", (method)fluidflow_new,
    (method)fluidflow_free, (long)sizeof(t_fluidflow), 0L, A_GIMME, 0);
    
  class_addmethod(c, (method)fluidflow_dsp, "dsp", A_CANT, 0);
  class_addmethod(c, (method)fluidflow_dsp64, "dsp64", A_CANT, 0);
  class_addmethod(c, (method)fluidflow_assist, "assist", A_CANT, 0);

  CLASS_ATTR_DOUBLE(c, "avgRate", 0, t_fluidflow, avgRate);
  CLASS_ATTR_DOUBLE(c, "minRadius", 0, t_fluidflow, minRadius);
  CLASS_ATTR_DOUBLE(c, "maxRadius", 0, t_fluidflow, maxRadius);
  CLASS_ATTR_DOUBLE(c, "expRadius", 0, t_fluidflow, expRadius);
  CLASS_ATTR_DOUBLE(c, "minDepth", 0, t_fluidflow, minDepth);
  CLASS_ATTR_DOUBLE(c, "maxDepth", 0, t_fluidflow, maxDepth);
  CLASS_ATTR_DOUBLE(c, "expDepth", 0, t_fluidflow, expDepth);
  CLASS_ATTR_DOUBLE(c, "riseFactor", 0, t_fluidflow, riseFactor);
  CLASS_ATTR_DOUBLE(c, "riseCutoff", 0, t_fluidflow, riseCutoff);

  CLASS_ATTR_FILTER_CLIP(c, "avgRate", 0.0, 100000.0);
  CLASS_ATTR_FILTER_CLIP(c, "minRadius", 0.15, 150.0);
  CLASS_ATTR_FILTER_CLIP(c, "maxRadius", 0.15, 150.0);
  CLASS_ATTR_FILTER_CLIP(c, "expRadius", 0.0, 10.0);
  CLASS_ATTR_FILTER_CLIP(c, "minDepth", 0.0, 1.0);
  CLASS_ATTR_FILTER_CLIP(c, "maxDepth", 0.0, 1.0);
  CLASS_ATTR_FILTER_CLIP(c, "expDepth", 0.0, 10.0);
  CLASS_ATTR_FILTER_CLIP(c, "riseFactor", 0.0, 3.0);
  CLASS_ATTR_FILTER_CLIP(c, "riseCutoff", 0.0, 1.0);

  CLASS_ATTR_ACCESSORS(c, "avgRate", NULL, (method)fluidflow_avgRate);
  CLASS_ATTR_ACCESSORS(c, "minRadius", NULL, (method)fluidflow_minRadius);
  CLASS_ATTR_ACCESSORS(c, "maxRadius", NULL, (method)fluidflow_maxRadius);
  CLASS_ATTR_ACCESSORS(c, "expRadius", NULL, (method)fluidflow_expRadius);
  CLASS_ATTR_ACCESSORS(c, "minDepth", NULL, (method)fluidflow_minDepth);
  CLASS_ATTR_ACCESSORS(c, "maxDepth", NULL, (method)fluidflow_maxDepth);
  CLASS_ATTR_ACCESSORS(c, "expDepth", NULL, (method)fluidflow_expDepth);
  CLASS_ATTR_ACCESSORS(c, "riseFactor", NULL, (method)fluidflow_riseFactor);
  CLASS_ATTR_ACCESSORS(c, "riseCutoff", NULL, (method)fluidflow_riseCutoff);

  CLASS_ATTR_ORDER(c, "avgRate", 0, "1");
  CLASS_ATTR_ORDER(c, "minRadius", 0, "2");
  CLASS_ATTR_ORDER(c, "maxRadius", 0, "3");
  CLASS_ATTR_ORDER(c, "expRadius", 0, "4");
  CLASS_ATTR_ORDER(c, "minDepth", 0, "5");
  CLASS_ATTR_ORDER(c, "maxDepth", 0, "6");
  CLASS_ATTR_ORDER(c, "expDepth", 0, "7");
  CLASS_ATTR_ORDER(c, "riseFactor", 0, "8");
  CLASS_ATTR_ORDER(c, "riseCutoff", 0, "9");

  class_dspinit(c);
  class_register(CLASS_BOX, c);
  fluidflow_class = c;

  return 0;
}