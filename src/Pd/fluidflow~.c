/** \file fluidflow~.c
 * Puredata external for the generation of liquid sounds.
 *
 * \author Stefano Baldan (stefanobaldan@iuav.it)
 *
 *****************************************************************************/

#include "SDT/SDTCommon.h"
#include "SDT/SDTLiquids.h"
#include "SDTCommonPd.h"
#ifdef NT
#pragma warning(disable : 4244)
#pragma warning(disable : 4305)
#endif

static t_class *fluidflow_class;

typedef struct _fluidflow {
  t_object obj;
  SDTFluidFlow *flow;
  t_outlet *out;
  const char *key;
} t_fluidflow;

SDT_PD_SETTER(fluidflow, FluidFlow, flow, AvgRate, )
SDT_PD_SETTER(fluidflow, FluidFlow, flow, MinRadius, )
SDT_PD_SETTER(fluidflow, FluidFlow, flow, MaxRadius, )
SDT_PD_SETTER(fluidflow, FluidFlow, flow, ExpRadius, )
SDT_PD_SETTER(fluidflow, FluidFlow, flow, MinDepth, )
SDT_PD_SETTER(fluidflow, FluidFlow, flow, MaxDepth, )
SDT_PD_SETTER(fluidflow, FluidFlow, flow, ExpDepth, )
SDT_PD_SETTER(fluidflow, FluidFlow, flow, RiseFactor, )
SDT_PD_SETTER(fluidflow, FluidFlow, flow, RiseCutoff, )

static t_int *fluidflow_perform(t_int *w) {
  t_fluidflow *x = (t_fluidflow *)(w[1]);
  t_float *out = (t_float *)(w[2]);
  int n = (int)(w[3]);
  while (n--) {
    *out++ = (float)SDTFluidFlow_dsp(x->flow);
  }
  return (w + 4);
}

static void fluidflow_dsp(t_fluidflow *x, t_signal **sp) {
  SDT_setSampleRate(sp[0]->s_sr);
  dsp_add(fluidflow_perform, 3, x, sp[0]->s_vec, sp[0]->s_n);
}

static void *fluidflow_new(t_symbol *s, int argc, t_atom *argv) {
  SDT_PD_ARG_PARSE(2, A_SYMBOL, A_FLOAT)

  t_fluidflow *x = (t_fluidflow *)pd_new(fluidflow_class);
  x->flow = SDTFluidFlow_new(
      GET_ARG(1, atom_getfloat, SDT_FLUIDFLOW_NBUBBLES_DEFAULT));

  SDT_PD_REGISTER(FluidFlow, flow, "fluid flow", 0)

  x->out = outlet_new(&x->obj, gensym("signal"));
  return (x);
}

static void fluidflow_free(t_fluidflow *x) {
  outlet_free(x->out);
  SDT_PD_FREE(FluidFlow, flow)
}

void fluidflow_tilde_setup(void) {
  fluidflow_class = class_new(gensym("fluidflow~"), (t_newmethod)fluidflow_new,
                              (t_method)fluidflow_free, sizeof(t_fluidflow),
                              CLASS_DEFAULT, A_GIMME, 0);
  class_addmethod(fluidflow_class, (t_method)fluidflow_setAvgRate,
                  gensym("avgRate"), A_FLOAT, 0);
  class_addmethod(fluidflow_class, (t_method)fluidflow_setMinRadius,
                  gensym("minRadius"), A_FLOAT, 0);
  class_addmethod(fluidflow_class, (t_method)fluidflow_setMaxRadius,
                  gensym("maxRadius"), A_FLOAT, 0);
  class_addmethod(fluidflow_class, (t_method)fluidflow_setExpRadius,
                  gensym("expRadius"), A_FLOAT, 0);
  class_addmethod(fluidflow_class, (t_method)fluidflow_setMinDepth,
                  gensym("minDepth"), A_FLOAT, 0);
  class_addmethod(fluidflow_class, (t_method)fluidflow_setMaxDepth,
                  gensym("maxDepth"), A_FLOAT, 0);
  class_addmethod(fluidflow_class, (t_method)fluidflow_setExpDepth,
                  gensym("expDepth"), A_FLOAT, 0);
  class_addmethod(fluidflow_class, (t_method)fluidflow_setRiseFactor,
                  gensym("riseFactor"), A_FLOAT, 0);
  class_addmethod(fluidflow_class, (t_method)fluidflow_setRiseCutoff,
                  gensym("riseCutoff"), A_FLOAT, 0);
  class_addmethod(fluidflow_class, (t_method)fluidflow_dsp, gensym("dsp"), 0);
}
