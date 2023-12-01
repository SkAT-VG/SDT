#include "SDT/SDTCommon.h"
#include "SDT/SDTGases.h"
#include "SDTCommonMax.h"
#include "SDT_fileusage.h"
#include "ext.h"
#include "ext_obex.h"
#include "z_dsp.h"

typedef struct _explosion {
  t_pxobject ob;
  SDTExplosion *blow;
  double blastTime, scatterTime, dispersion, distance, waveSpeed, windSpeed;
  t_symbol *key;
} t_explosion;

static t_class *explosion_class = NULL;

void *explosion_new(t_symbol *s, long argc, t_atom *argv) {
  SDT_setupMaxLoggers();
  t_explosion *x = (t_explosion *)object_alloc(explosion_class);
  long maxScatter, maxDelay;

  if (x) {
    dsp_setup((t_pxobject *)x, 0);
    outlet_new(x, "signal");
    outlet_new(x, "signal");
    if (argc > 0 && atom_gettype(&argv[0]) == A_LONG) {
      maxScatter = atom_getlong(&argv[0]);
    } else {
      maxScatter = 44100;
    }
    if (argc > 1 && atom_gettype(&argv[1]) == A_LONG) {
      maxDelay = atom_getlong(&argv[1]);
    } else {
      maxDelay = 4410000;
    }
    x->blow = SDTExplosion_new(maxScatter, maxDelay);
    x->key = 0;
    attr_args_process(x, argc, argv);
  }
  return (x);
}

void explosion_free(t_explosion *x) {
  dsp_free((t_pxobject *)x);
  SDT_MAX_FREE(Explosion, blow)
}

void explosion_assist(t_explosion *x, void *b, long m, long a, char *s) {
  if (m == ASSIST_INLET) {  // inlet
    sprintf(s,
            "(bang): Triggers an explosion\n"
            "Object attributes and messages (see help patch)");
  } else {
    sprintf(s, "(signal): Output sound");
  }
}

SDT_MAX_KEY(explosion, Explosion, blow, "explosion~", "explosion")

SDT_MAX_GETTER(explosion, Explosion, blow, MaxScatter, long, )
SDT_MAX_GETTER(explosion, Explosion, blow, MaxDelay, long, )

SDT_MAX_ACCESSORS(explosion, Explosion, blow, BlastTime, float, , )
SDT_MAX_ACCESSORS(explosion, Explosion, blow, ScatterTime, float, , )
SDT_MAX_ACCESSORS(explosion, Explosion, blow, Dispersion, float, , )
SDT_MAX_ACCESSORS(explosion, Explosion, blow, Distance, float, , )
SDT_MAX_ACCESSORS(explosion, Explosion, blow, WaveSpeed, float, , )
SDT_MAX_ACCESSORS(explosion, Explosion, blow, WindSpeed, float, , )

void explosion_trigger(t_explosion *x) { SDTExplosion_trigger(x->blow); }

t_int *explosion_perform(t_int *w) {
  t_explosion *x = (t_explosion *)(w[1]);
  t_float *out0 = (t_float *)(w[2]);
  t_float *out1 = (t_float *)(w[3]);
  int n = (int)w[4];
  double tmpOuts[2];

  while (n--) {
    SDTExplosion_dsp(x->blow, tmpOuts);
    *out0++ = (float)tmpOuts[0];
    *out1++ = (float)tmpOuts[1];
  }

  return w + 5;
}

void explosion_dsp(t_explosion *x, t_signal **sp, short *count) {
  SDT_setSampleRate(sp[0]->s_sr);
  dsp_add(explosion_perform, 4, x, sp[0]->s_vec, sp[1]->s_vec, sp[0]->s_n);
}

void explosion_perform64(t_explosion *x, t_object *dsp64, double **ins,
                         long numins, double **outs, long numouts,
                         long sampleframes, long flags, void *userparam) {
  t_double *out0 = outs[0];
  t_double *out1 = outs[1];
  int n = sampleframes;
  double tmpOuts[2];

  while (n--) {
    SDTExplosion_dsp(x->blow, tmpOuts);
    *out0++ = tmpOuts[0];
    *out1++ = tmpOuts[1];
  }
}

void explosion_dsp64(t_explosion *x, t_object *dsp64, short *count,
                     double samplerate, long maxvectorsize, long flags) {
  SDT_setSampleRate(samplerate);
  object_method(dsp64, gensym("dsp_add64"), x, explosion_perform64, 0, NULL);
}

void C74_EXPORT ext_main(void *r) {
  t_class *c =
      class_new("sdt.explosion~", (method)explosion_new, (method)explosion_free,
                (long)sizeof(t_explosion), 0L, A_GIMME, 0);

  class_addmethod(c, (method)explosion_dsp, "dsp", A_CANT, 0);
  class_addmethod(c, (method)explosion_dsp64, "dsp64", A_CANT, 0);
  class_addmethod(c, (method)explosion_assist, "assist", A_CANT, 0);
  class_addmethod(c, (method)explosion_trigger, "bang", 0);
  class_addmethod(c, (method)SDT_fileusage, "fileusage", A_CANT, 0L);

  SDT_CLASS_KEY(explosion, "1")

  SDT_MAX_RO_ATTRIBUTE(c, explosion, MaxScatter, maxScatter, long, 0);
  SDT_MAX_RO_ATTRIBUTE(c, explosion, MaxDelay, maxDelay, long, 0);

  SDT_MAX_ATTRIBUTE(c, explosion, BlastTime, blastTime, float64, 0);
  SDT_MAX_ATTRIBUTE(c, explosion, ScatterTime, scatterTime, float64, 0);
  SDT_MAX_ATTRIBUTE(c, explosion, Dispersion, dispersion, float64, 0);
  SDT_MAX_ATTRIBUTE(c, explosion, Distance, distance, float64, 0);
  SDT_MAX_ATTRIBUTE(c, explosion, WaveSpeed, waveSpeed, float64, 0);
  SDT_MAX_ATTRIBUTE(c, explosion, WindSpeed, windSpeed, float64, 0);

  CLASS_ATTR_FILTER_MIN(c, "blastTime", 0.0);
  CLASS_ATTR_FILTER_MIN(c, "scatterTime", 0.0);
  CLASS_ATTR_FILTER_CLIP(c, "dispersion", 0.0, 1.0);
  CLASS_ATTR_FILTER_MIN(c, "distance", 0.0);
  CLASS_ATTR_FILTER_MIN(c, "waveSpeed", 0.0);
  CLASS_ATTR_FILTER_MIN(c, "windSpeed", 0.0);

  CLASS_ATTR_ORDER(c, "maxScatter", 0, "2");
  CLASS_ATTR_ORDER(c, "maxDelay", 0, "3");
  CLASS_ATTR_ORDER(c, "blastTime", 0, "4");
  CLASS_ATTR_ORDER(c, "scatterTime", 0, "5");
  CLASS_ATTR_ORDER(c, "dispersion", 0, "6");
  CLASS_ATTR_ORDER(c, "distance", 0, "7");
  CLASS_ATTR_ORDER(c, "waveSpeed", 0, "8");
  CLASS_ATTR_ORDER(c, "windSpeed", 0, "9");

  class_dspinit(c);
  class_register(CLASS_BOX, c);
  explosion_class = c;
}
