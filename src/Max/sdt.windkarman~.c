#include "SDT/SDTCommon.h"
#include "SDT/SDTGases.h"
#include "SDTCommonMax.h"
#include "SDT_fileusage.h"
#include "ext.h"
#include "ext_obex.h"
#include "z_dsp.h"

typedef struct _windkarman {
  t_pxobject ob;
  SDTWindKarman *karman;
  t_symbol *key;
} t_windkarman;

static t_class *windkarman_class = NULL;

void *windkarman_new(t_symbol *s, long argc, t_atom *argv) {
  SDT_setupMaxLoggers();
  t_windkarman *x = (t_windkarman *)object_alloc(windkarman_class);

  if (x) {
    dsp_setup((t_pxobject *)x, 1);
    outlet_new(x, "signal");
    x->karman = SDTWindKarman_new();
    x->key = 0;
    attr_args_process(x, argc, argv);
  }
  return (x);
}

void windkarman_free(t_windkarman *x) {
  dsp_free((t_pxobject *)x);
  SDT_MAX_FREE(WindKarman, karman)
}

void windkarman_assist(t_windkarman *x, void *b, long m, long a, char *s) {
  if (m == ASSIST_INLET) {  // inlet
    sprintf(s,
            "(signal): Wind speed [0.0 ~ 1.0]\n"
            "Object attributes and messages (see help patch)");
  } else {
    sprintf(s, "(signal): Output sound");
  }
}

SDT_MAX_KEY(windkarman, WindKarman, karman, "windkarman~", "wind Karman")

SDT_MAX_ACCESSORS(windkarman, WindKarman, karman, Diameter, float, 1000.0, )

t_int *windkarman_perform(t_int *w) {
  t_windkarman *x = (t_windkarman *)(w[1]);
  t_float *inL = (t_float *)(w[2]);
  t_float *outL = (t_float *)(w[3]);
  int n = (int)w[4];

  while (n--) {
    SDTWindKarman_setWindSpeed(x->karman, *inL++);
    *outL++ = (float)SDTWindKarman_dsp(x->karman);
  }

  return w + 5;
}

void windkarman_dsp(t_windkarman *x, t_signal **sp, short *count) {
  SDT_setSampleRate(sp[0]->s_sr);
  dsp_add(windkarman_perform, 4, x, sp[0]->s_vec, sp[1]->s_vec, sp[0]->s_n);
}

void windkarman_perform64(t_windkarman *x, t_object *dsp64, double **ins,
                          long numins, double **outs, long numouts,
                          long sampleframes, long flags, void *userparam) {
  t_double *inL = ins[0];
  t_double *outL = outs[0];
  int n = sampleframes;

  while (n--) {
    SDTWindKarman_setWindSpeed(x->karman, *inL++);
    *outL++ = SDTWindKarman_dsp(x->karman);
  }
}

void windkarman_dsp64(t_windkarman *x, t_object *dsp64, short *count,
                      double samplerate, long maxvectorsize, long flags) {
  SDT_setSampleRate(samplerate);
  object_method(dsp64, gensym("dsp_add64"), x, windkarman_perform64, 0, NULL);
}

void C74_EXPORT ext_main(void *r) {
  t_class *c = class_new("sdt.windkarman~", (method)windkarman_new,
                         (method)windkarman_free, (long)sizeof(t_windkarman),
                         0L, A_GIMME, 0);

  class_addmethod(c, (method)windkarman_dsp, "dsp", A_CANT, 0);
  class_addmethod(c, (method)windkarman_dsp64, "dsp64", A_CANT, 0);
  class_addmethod(c, (method)windkarman_assist, "assist", A_CANT, 0);
  class_addmethod(c, (method)SDT_fileusage, "fileusage", A_CANT, 0L);

  SDT_CLASS_KEY(windkarman, "1")

  SDT_MAX_ATTRIBUTE(c, windkarman, Diameter, diameter, float64, 0);

  CLASS_ATTR_FILTER_MIN(c, "diameter", 0.001);

  class_dspinit(c);
  class_register(CLASS_BOX, c);
  windkarman_class = c;
}
