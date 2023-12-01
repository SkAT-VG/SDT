/** \file windflow~.c
 * Puredata external for the simulation of flowing gases.
 *
 * \author Stefano Baldan (stefanobaldan@iuav.it)
 *
 *****************************************************************************/

#include "SDT/SDTCommon.h"
#include "SDT/SDTGases.h"
#include "SDTCommonPd.h"
#ifdef NT
#pragma warning(disable : 4244)
#pragma warning(disable : 4305)
#endif

static t_class *windflow_class;

typedef struct _windflow {
  t_object obj;
  SDTWindFlow *flow;
  t_float f;
  t_outlet *out;
  const char *key;
} t_windflow;

static t_int *windflow_perform(t_int *w) {
  t_windflow *x = (t_windflow *)(w[1]);
  t_float *in = (t_float *)(w[2]);
  t_float *out = (t_float *)(w[3]);
  int n = (int)(w[4]);
  while (n--) {
    SDTWindFlow_setWindSpeed(x->flow, *in++);
    *out++ = (float)SDTWindFlow_dsp(x->flow);
  }
  return (w + 5);
}

static void windflow_dsp(t_windflow *x, t_signal **sp) {
  SDT_setSampleRate(sp[0]->s_sr);
  SDTWindFlow_update(x->flow);
  dsp_add(windflow_perform, 4, x, sp[0]->s_vec, sp[1]->s_vec, sp[0]->s_n);
}

static void *windflow_new(t_symbol *s, int argc, t_atom *argv) {
  SDT_PD_ARG_PARSE(1, A_SYMBOL)

  t_windflow *x = (t_windflow *)pd_new(windflow_class);
  x->flow = SDTWindFlow_new();

  SDT_PD_REGISTER(WindFlow, flow, "wind flow", 0)

  x->out = outlet_new(&x->obj, gensym("signal"));
  return (x);
}

static void windflow_free(t_windflow *x) {
  outlet_free(x->out);
  SDT_PD_FREE(WindFlow, flow)
}

void windflow_tilde_setup(void) {
  windflow_class = class_new(gensym("windflow~"), (t_newmethod)windflow_new,
                             (t_method)windflow_free, sizeof(t_windflow),
                             CLASS_DEFAULT, A_GIMME, 0);
  CLASS_MAINSIGNALIN(windflow_class, t_windflow, f);
  class_addmethod(windflow_class, (t_method)windflow_dsp, gensym("dsp"), 0);
}
