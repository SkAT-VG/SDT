#include "SDT/SDTCommon.h"
#include "SDT/SDTLiquids.h"
#include "SDTCommonMax.h"
#include "SDT_fileusage.h"
#include "ext.h"
#include "ext_obex.h"
#include "z_dsp.h"

typedef struct _fluidflow {
  t_pxobject ob;
  SDTFluidFlow *flow;
  double avgRate, minRadius, maxRadius, expRadius, minDepth, maxDepth, expDepth,
      riseFactor, riseCutoff;
  t_symbol *key;
} t_fluidflow;

static t_class *fluidflow_class = NULL;

void *fluidflow_new(t_symbol *s, long argc, t_atom *argv) {
  SDT_setupMaxLoggers();
  t_fluidflow *x = (t_fluidflow *)object_alloc(fluidflow_class);
  long voices;

  if (x) {
    dsp_setup((t_pxobject *)x, 0);
    outlet_new(x, "signal");
    if (argc > 0 && atom_gettype(&argv[0]) == A_LONG) {
      voices = atom_getlong(&argv[0]);
    } else {
      voices = 128;
    }
    x->flow = SDTFluidFlow_new(voices);
    x->key = 0;
    attr_args_process(x, argc, argv);
  }
  return (x);
}

void fluidflow_free(t_fluidflow *x) {
  dsp_free((t_pxobject *)x);
  SDT_MAX_FREE(FluidFlow, flow)
}

void fluidflow_assist(t_fluidflow *x, void *b, long m, long a, char *s) {
  if (m == ASSIST_INLET) {
    sprintf(s, "Object attributes and messages (see help patch)");
  } else {
    sprintf(s, "(signal): Output sound");
  }
}

SDT_MAX_KEY(fluidflow, FluidFlow, flow, "fluidflow~", "fluid flow")

SDT_MAX_GETTER(fluidflow, FluidFlow, flow, NBubbles, long, )

SDT_MAX_ACCESSORS(fluidflow, FluidFlow, flow, AvgRate, float, , )
SDT_MAX_ACCESSORS(fluidflow, FluidFlow, flow, MinRadius, float, 1000.0, )
SDT_MAX_ACCESSORS(fluidflow, FluidFlow, flow, MaxRadius, float, 1000.0, )
SDT_MAX_ACCESSORS(fluidflow, FluidFlow, flow, ExpRadius, float, , )
SDT_MAX_ACCESSORS(fluidflow, FluidFlow, flow, MinDepth, float, , )
SDT_MAX_ACCESSORS(fluidflow, FluidFlow, flow, MaxDepth, float, , )
SDT_MAX_ACCESSORS(fluidflow, FluidFlow, flow, ExpDepth, float, , )
SDT_MAX_ACCESSORS(fluidflow, FluidFlow, flow, RiseFactor, float, , )
SDT_MAX_ACCESSORS(fluidflow, FluidFlow, flow, RiseCutoff, float, , )

t_int *fluidflow_perform(t_int *w) {
  t_fluidflow *x = (t_fluidflow *)(w[1]);
  t_float *outL = (t_float *)(w[2]);
  int n = (int)w[3];

  while (n--) *outL++ = (float)SDTFluidFlow_dsp(x->flow);

  return w + 4;
}

void fluidflow_perform64(t_fluidflow *x, t_object *dsp64, double **ins,
                         long numins, double **outs, long numouts,
                         long sampleframes, long flags, void *userparam) {
  t_double *outL = outs[0];
  int n = sampleframes;

  while (n--) *outL++ = SDTFluidFlow_dsp(x->flow);
}

void fluidflow_dsp(t_fluidflow *x, t_signal **sp, short *count) {
  SDT_setSampleRate(sp[0]->s_sr);
  dsp_add(fluidflow_perform, 3, x, sp[1]->s_vec, sp[0]->s_n);
}

void fluidflow_dsp64(t_fluidflow *x, t_object *dsp64, short *count,
                     double samplerate, long maxvectorsize, long flags) {
  SDT_setSampleRate(samplerate);
  object_method(dsp64, gensym("dsp_add64"), x, fluidflow_perform64, 0, NULL);
}

void C74_EXPORT ext_main(void *r) {
  t_class *c =
      class_new("sdt.fluidflow~", (method)fluidflow_new, (method)fluidflow_free,
                (long)sizeof(t_fluidflow), 0L, A_GIMME, 0);

  class_addmethod(c, (method)fluidflow_dsp, "dsp", A_CANT, 0);
  class_addmethod(c, (method)fluidflow_dsp64, "dsp64", A_CANT, 0);
  class_addmethod(c, (method)fluidflow_assist, "assist", A_CANT, 0);
  class_addmethod(c, (method)SDT_fileusage, "fileusage", A_CANT, 0L);

  SDT_CLASS_KEY(fluidflow, "1")

  SDT_MAX_RO_ATTRIBUTE(c, fluidflow, NBubbles, nBubbles, long, 0);

  SDT_MAX_ATTRIBUTE(c, fluidflow, AvgRate, avgRate, float64, 0);
  SDT_MAX_ATTRIBUTE(c, fluidflow, MinRadius, minRadius, float64, 0);
  SDT_MAX_ATTRIBUTE(c, fluidflow, MaxRadius, maxRadius, float64, 0);
  SDT_MAX_ATTRIBUTE(c, fluidflow, ExpRadius, expRadius, float64, 0);
  SDT_MAX_ATTRIBUTE(c, fluidflow, MinDepth, minDepth, float64, 0);
  SDT_MAX_ATTRIBUTE(c, fluidflow, MaxDepth, maxDepth, float64, 0);
  SDT_MAX_ATTRIBUTE(c, fluidflow, ExpDepth, expDepth, float64, 0);
  SDT_MAX_ATTRIBUTE(c, fluidflow, RiseFactor, riseFactor, float64, 0);
  SDT_MAX_ATTRIBUTE(c, fluidflow, RiseCutoff, riseCutoff, float64, 0);

  CLASS_ATTR_FILTER_CLIP(c, "avgRate", 0.0, 100000.0);
  CLASS_ATTR_FILTER_CLIP(c, "minRadius", 0.15, 150.0);
  CLASS_ATTR_FILTER_CLIP(c, "maxRadius", 0.15, 150.0);
  CLASS_ATTR_FILTER_CLIP(c, "expRadius", 0.0, 10.0);
  CLASS_ATTR_FILTER_CLIP(c, "minDepth", 0.0, 1.0);
  CLASS_ATTR_FILTER_CLIP(c, "maxDepth", 0.0, 1.0);
  CLASS_ATTR_FILTER_CLIP(c, "expDepth", 0.0, 10.0);
  CLASS_ATTR_FILTER_CLIP(c, "riseFactor", 0.0, 3.0);
  CLASS_ATTR_FILTER_CLIP(c, "riseCutoff", 0.0, 1.0);

  CLASS_ATTR_ORDER(c, "nBubbles", 0, "2");
  CLASS_ATTR_ORDER(c, "avgRate", 0, "3");
  CLASS_ATTR_ORDER(c, "minRadius", 0, "4");
  CLASS_ATTR_ORDER(c, "maxRadius", 0, "5");
  CLASS_ATTR_ORDER(c, "expRadius", 0, "6");
  CLASS_ATTR_ORDER(c, "minDepth", 0, "7");
  CLASS_ATTR_ORDER(c, "maxDepth", 0, "8");
  CLASS_ATTR_ORDER(c, "expDepth", 0, "9");
  CLASS_ATTR_ORDER(c, "riseFactor", 0, "10");
  CLASS_ATTR_ORDER(c, "riseCutoff", 0, "11");

  class_dspinit(c);
  class_register(CLASS_BOX, c);
  fluidflow_class = c;
}
