#include "SDT/SDTCommon.h"
#include "SDT/SDTGases.h"
#include "SDTCommonMax.h"
#include "SDT_fileusage.h"
#include "ext.h"
#include "ext_obex.h"
#include "z_dsp.h"

typedef struct _windflow {
  t_pxobject ob;
  SDTWindFlow *flow;
  t_symbol *key;
} t_windflow;

static t_class *windflow_class = NULL;

void *windflow_new(t_symbol *s, long argc, t_atom *argv) {
  SDT_setupMaxLoggers();
  t_windflow *x = (t_windflow *)object_alloc(windflow_class);

  if (x) {
    dsp_setup((t_pxobject *)x, 1);
    outlet_new(x, "signal");
    x->flow = SDTWindFlow_new();
    x->key = 0;
    attr_args_process(x, argc, argv);
  }
  return (x);
}

void windflow_free(t_windflow *x) {
  dsp_free((t_pxobject *)x);
  SDT_MAX_FREE(WindFlow, flow)
}

void windflow_assist(t_windflow *x, void *b, long m, long a, char *s) {
  if (m == ASSIST_INLET) {
    sprintf(s, "(signal): Wind speed [0.0 ~ 1.0]");
  } else {
    sprintf(s, "(signal): Output sound");
  }
}

SDT_MAX_KEY(windflow, WindFlow, flow, "windflow~", "wind flow")

t_int *windflow_perform(t_int *w) {
  t_windflow *x = (t_windflow *)(w[1]);
  t_float *inL = (t_float *)(w[2]);
  t_float *outL = (t_float *)(w[3]);
  int n = (int)w[4];

  while (n--) {
    SDTWindFlow_setWindSpeed(x->flow, *inL++);
    *outL++ = (float)SDTWindFlow_dsp(x->flow);
  }

  return w + 5;
}

void windflow_dsp(t_windflow *x, t_signal **sp, short *count) {
  SDT_setSampleRate(sp[0]->s_sr);
  SDTWindFlow_update(x->flow);
  dsp_add(windflow_perform, 4, x, sp[0]->s_vec, sp[1]->s_vec, sp[0]->s_n);
}

void windflow_perform64(t_windflow *x, t_object *dsp64, double **ins,
                        long numins, double **outs, long numouts,
                        long sampleframes, long flags, void *userparam) {
  t_double *inL = ins[0];
  t_double *outL = outs[0];
  int n = sampleframes;

  while (n--) {
    SDTWindFlow_setWindSpeed(x->flow, *inL++);
    *outL++ = SDTWindFlow_dsp(x->flow);
  }
}

void windflow_dsp64(t_windflow *x, t_object *dsp64, short *count,
                    double samplerate, long maxvectorsize, long flags) {
  SDT_setSampleRate(samplerate);
  SDTWindFlow_update(x->flow);
  object_method(dsp64, gensym("dsp_add64"), x, windflow_perform64, 0, NULL);
}

void C74_EXPORT ext_main(void *r) {
  t_class *c =
      class_new("sdt.windflow~", (method)windflow_new, (method)windflow_free,
                (long)sizeof(t_windflow), 0L, A_GIMME, 0);

  class_addmethod(c, (method)windflow_dsp, "dsp", A_CANT, 0);
  class_addmethod(c, (method)windflow_dsp64, "dsp64", A_CANT, 0);
  class_addmethod(c, (method)windflow_assist, "assist", A_CANT, 0);
  class_addmethod(c, (method)SDT_fileusage, "fileusage", A_CANT, 0L);

  SDT_CLASS_KEY(windflow, "1")

  class_dspinit(c);
  class_register(CLASS_BOX, c);
  windflow_class = c;
}