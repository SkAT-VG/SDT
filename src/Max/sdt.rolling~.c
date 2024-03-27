#include "SDT/SDTCommon.h"
#include "SDT/SDTControl.h"
#include "SDTCommonMax.h"
#include "SDT_fileusage.h"
#include "ext.h"
#include "ext_obex.h"
#include "z_dsp.h"

typedef struct _rolling {
  t_pxobject ob;
  SDTRolling *rolling;
  t_symbol *key;
} t_rolling;

static t_class *rolling_class = NULL;

void *rolling_new(t_symbol *s, long argc, t_atom *argv) {
  SDT_setupMaxLoggers();
  t_rolling *x;

  x = (t_rolling *)object_alloc(rolling_class);
  if (x) {
    dsp_setup((t_pxobject *)x, 1);
    outlet_new(x, "signal");
    x->rolling = SDTRolling_new();
    x->key = 0;
    attr_args_process(x, argc, argv);
  }
  return (x);
}

void rolling_free(t_rolling *x) {
  dsp_free((t_pxobject *)x);
  SDT_MAX_FREE(Rolling, rolling)
}

void rolling_assist(t_rolling *x, void *b, long m, long a, char *s) {
  if (m == ASSIST_INLET) {
    sprintf(s,
            "(signal): Surface profile\n"
            "Object attributes and messages (see help patch)");
  } else {
    sprintf(s, "(signal): Applied force on resonator");
  }
}

SDT_MAX_KEY(rolling, Rolling, rolling, "rolling~", "rolling process")

SDT_MAX_ACCESSORS(rolling, Rolling, rolling, Grain, float, , )
SDT_MAX_ACCESSORS(rolling, Rolling, rolling, Depth, float, , )
SDT_MAX_ACCESSORS(rolling, Rolling, rolling, Mass, float, , )
SDT_MAX_ACCESSORS(rolling, Rolling, rolling, Velocity, float, , )

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

void rolling_perform64(t_rolling *x, t_object *dsp64, double **ins, long numins,
                       double **outs, long numouts, long sampleframes,
                       long flags, void *userparam) {
  t_double *in = ins[0];
  t_double *out = outs[0];
  int n = sampleframes;

  while (n--) {
    *out++ = SDTRolling_dsp(x->rolling, *in++);
  }
}

void rolling_dsp64(t_rolling *x, t_object *dsp64, short *count,
                   double samplerate, long maxvectorsize, long flags) {
  SDT_setSampleRate(samplerate);
  object_method(dsp64, gensym("dsp_add64"), x, rolling_perform64, 0, NULL);
}

void C74_EXPORT ext_main(void *r) {
  t_class *c =
      class_new("sdt.rolling~", (method)rolling_new, (method)rolling_free,
                (long)sizeof(t_rolling), 0L, A_GIMME, 0);

  class_addmethod(c, (method)rolling_dsp, "dsp", A_CANT, 0);
  class_addmethod(c, (method)rolling_dsp64, "dsp64", A_CANT, 0);
  class_addmethod(c, (method)rolling_assist, "assist", A_CANT, 0);
  class_addmethod(c, (method)SDT_fileusage, "fileusage", A_CANT, 0L);

  SDT_CLASS_KEY(rolling, "1")

  SDT_MAX_ATTRIBUTE(c, rolling, Grain, grain, float64, 0);
  SDT_MAX_ATTRIBUTE(c, rolling, Depth, depth, float64, 0);
  SDT_MAX_ATTRIBUTE(c, rolling, Mass, mass, float64, 0);
  SDT_MAX_ATTRIBUTE(c, rolling, Velocity, velocity, float64, 0);

  CLASS_ATTR_FILTER_CLIP(c, "grain", 0.0, 1.0);
  CLASS_ATTR_FILTER_MIN(c, "depth", 0.0);
  CLASS_ATTR_FILTER_MIN(c, "mass", 0.0);

  CLASS_ATTR_ORDER(c, "grain", 0, "2");
  CLASS_ATTR_ORDER(c, "depth", 0, "3");
  CLASS_ATTR_ORDER(c, "mass", 0, "4");
  CLASS_ATTR_ORDER(c, "velocity", 0, "5");

  class_dspinit(c);
  class_register(CLASS_BOX, c);
  rolling_class = c;
}
