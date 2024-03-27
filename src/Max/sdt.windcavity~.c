#include "SDT/SDTCommon.h"
#include "SDT/SDTGases.h"
#include "SDTCommonMax.h"
#include "SDT_fileusage.h"
#include "ext.h"
#include "ext_obex.h"
#include "z_dsp.h"

typedef struct _windcavity {
  t_pxobject ob;
  SDTWindCavity *cavity;
  t_symbol *key;
} t_windcavity;

static t_class *windcavity_class = NULL;

void *windcavity_new(t_symbol *s, long argc, t_atom *argv) {
  SDT_setupMaxLoggers();
  t_windcavity *x = (t_windcavity *)object_alloc(windcavity_class);
  long maxDelay;

  if (x) {
    dsp_setup((t_pxobject *)x, 1);
    outlet_new(x, "signal");
    if (argc > 0 && atom_gettype(&argv[0]) == A_LONG) {
      maxDelay = atom_getlong(&argv[0]);
    } else {
      maxDelay = SDT_WINDCAVITY_MAXDELAY_DEFAULT;
    }
    x->cavity = SDTWindCavity_new(maxDelay);
    x->key = 0;
    attr_args_process(x, argc, argv);
  }
  return (x);
}

void windcavity_free(t_windcavity *x) {
  dsp_free((t_pxobject *)x);
  SDT_MAX_FREE(WindCavity, cavity)
}

void windcavity_assist(t_windcavity *x, void *b, long m, long a, char *s) {
  if (m == ASSIST_INLET) {  // inlet
    sprintf(s,
            "(signal): Wind speed [0.0 ~ 1.0]\n"
            "Object attributes and messages (see help patch)");
  } else {
    sprintf(s, "(signal): Output sound");
  }
}

SDT_MAX_KEY(windcavity, WindCavity, cavity, "windcavity~", "wind cavity")

SDT_MAX_GETTER(windcavity, WindCavity, cavity, MaxDelay, long, )

SDT_MAX_ACCESSORS(windcavity, WindCavity, cavity, Length, float, , )
SDT_MAX_ACCESSORS(windcavity, WindCavity, cavity, Diameter, float, , )

t_int *windcavity_perform(t_int *w) {
  t_windcavity *x = (t_windcavity *)(w[1]);
  t_float *inL = (t_float *)(w[2]);
  t_float *outL = (t_float *)(w[3]);
  int n = (int)w[4];

  while (n--) {
    SDTWindCavity_setWindSpeed(x->cavity, *inL++);
    *outL++ = (float)SDTWindCavity_dsp(x->cavity);
  }

  return w + 5;
}

void windcavity_dsp(t_windcavity *x, t_signal **sp, short *count) {
  SDT_setSampleRate(sp[0]->s_sr);
  dsp_add(windcavity_perform, 4, x, sp[0]->s_vec, sp[1]->s_vec, sp[0]->s_n);
}

void windcavity_perform64(t_windcavity *x, t_object *dsp64, double **ins,
                          long numins, double **outs, long numouts,
                          long sampleframes, long flags, void *userparam) {
  t_double *inL = ins[0];
  t_double *outL = outs[0];
  int n = sampleframes;

  while (n--) {
    SDTWindCavity_setWindSpeed(x->cavity, *inL++);
    *outL++ = SDTWindCavity_dsp(x->cavity);
  }
}

void windcavity_dsp64(t_windcavity *x, t_object *dsp64, short *count,
                      double samplerate, long maxvectorsize, long flags) {
  SDT_setSampleRate(samplerate);
  object_method(dsp64, gensym("dsp_add64"), x, windcavity_perform64, 0, NULL);
}

void C74_EXPORT ext_main(void *r) {
  t_class *c = class_new("sdt.windcavity~", (method)windcavity_new,
                         (method)windcavity_free, (long)sizeof(t_windcavity),
                         0L, A_GIMME, 0);

  class_addmethod(c, (method)windcavity_dsp, "dsp", A_CANT, 0);
  class_addmethod(c, (method)windcavity_dsp64, "dsp64", A_CANT, 0);
  class_addmethod(c, (method)windcavity_assist, "assist", A_CANT, 0);
  class_addmethod(c, (method)SDT_fileusage, "fileusage", A_CANT, 0L);

  SDT_CLASS_KEY(windcavity, "1")

  SDT_MAX_RO_ATTRIBUTE(c, windcavity, MaxDelay, maxDelay, long, 0);

  SDT_MAX_ATTRIBUTE(c, windcavity, Length, length, float64, 0);
  SDT_MAX_ATTRIBUTE(c, windcavity, Diameter, diameter, float64, 0);

  CLASS_ATTR_FILTER_MIN(c, "length", SDT_MICRO);
  CLASS_ATTR_FILTER_MIN(c, "diameter", SDT_MICRO);

  CLASS_ATTR_ORDER(c, "maxDelay", 0, "2");
  CLASS_ATTR_ORDER(c, "length", 0, "3");
  CLASS_ATTR_ORDER(c, "diameter", 0, "4");

  class_dspinit(c);
  class_register(CLASS_BOX, c);
  windcavity_class = c;
}
