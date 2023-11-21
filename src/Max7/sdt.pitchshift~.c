#include "SDT/SDTCommon.h"
#include "SDT/SDTEffects.h"
#include "SDTCommonMax.h"
#include "SDT_fileusage.h"
#include "ext.h"
#include "ext_obex.h"
#include "z_dsp.h"

typedef struct _pitchshift {
  t_pxobject ob;
  SDTPitchShift *shift;
  t_symbol *key;
} t_pitchshift;

static t_class *pitchshift_class = NULL;

void *pitchshift_new(t_symbol *s, long argc, t_atom *argv) {
  SDT_setupMaxLoggers();
  t_pitchshift *x = (t_pitchshift *)object_alloc(pitchshift_class);
  long size, oversample;

  if (x) {
    dsp_setup((t_pxobject *)x, 1);
    outlet_new(x, "signal");
    if (argc > 0 && atom_gettype(&argv[0]) == A_LONG) {
      size = atom_getlong(&argv[0]);
    } else {
      size = 2048;
    }
    if (argc > 1 && atom_gettype(&argv[1]) == A_LONG) {
      oversample = atom_getlong(&argv[1]);
    } else {
      oversample = 4;
    }
    x->shift = SDTPitchShift_new(size, oversample);
    x->key = 0;
    attr_args_process(x, argc, argv);
  }
  return (x);
}

void pitchshift_free(t_pitchshift *x) {
  dsp_free((t_pxobject *)x);
  SDT_MAX_FREE(PitchShift, shift)
}

void pitchshift_assist(t_pitchshift *x, void *b, long m, long a, char *s) {
  if (m == ASSIST_INLET) {  // inlet
    sprintf(s,
            "(signal): Input\n"
            "Object attributes and messages (see help patch)");
  } else {
    sprintf(s, "(signal): Output sound");
  }
}

SDT_MAX_KEY(pitchshift, PitchShift, shift, "pitchshift~", "pitch shifter")

SDT_MAX_GETTER(pitchshift, PitchShift, shift, Size, long, )
SDT_MAX_GETTER(pitchshift, PitchShift, shift, Oversample, long, )

SDT_MAX_ACCESSORS(pitchshift, PitchShift, shift, Overlap, float, , )
SDT_MAX_ACCESSORS(pitchshift, PitchShift, shift, Ratio, float, , )

t_int *pitchshift_perform(t_int *w) {
  t_pitchshift *x = (t_pitchshift *)(w[1]);
  t_float *in = (t_float *)(w[2]);
  t_float *out = (t_float *)(w[3]);
  int n = (int)w[4];

  while (n--) {
    *out++ = (float)SDTPitchShift_dsp(x->shift, *in++);
  }

  return w + 5;
}

void pitchshift_dsp(t_pitchshift *x, t_signal **sp, short *count) {
  SDT_setSampleRate(sp[0]->s_sr);
  dsp_add(pitchshift_perform, 4, x, sp[0]->s_vec, sp[1]->s_vec, sp[0]->s_n);
}

void pitchshift_perform64(t_pitchshift *x, t_object *dsp64, double **ins,
                          long numins, double **outs, long numouts,
                          long sampleframes, long flags, void *userparam) {
  t_double *in = ins[0];
  t_double *out = outs[0];
  int n = sampleframes;

  while (n--) {
    *out++ = SDTPitchShift_dsp(x->shift, *in++);
  }
}

void pitchshift_dsp64(t_pitchshift *x, t_object *dsp64, short *count,
                      double samplerate, long maxvectorsize, long flags) {
  SDT_setSampleRate(samplerate);
  object_method(dsp64, gensym("dsp_add64"), x, pitchshift_perform64, 0, NULL);
}

void C74_EXPORT ext_main(void *r) {
  t_class *c = class_new("sdt.pitchshift~", (method)pitchshift_new,
                         (method)pitchshift_free, (long)sizeof(t_pitchshift),
                         0L, A_GIMME, 0);

  class_addmethod(c, (method)pitchshift_dsp, "dsp", A_CANT, 0);
  class_addmethod(c, (method)pitchshift_dsp64, "dsp64", A_CANT, 0);
  class_addmethod(c, (method)pitchshift_assist, "assist", A_CANT, 0);
  class_addmethod(c, (method)SDT_fileusage, "fileusage", A_CANT, 0L);

  SDT_CLASS_KEY(pitchshift, "1")

  SDT_MAX_RO_ATTRIBUTE(c, pitchshift, Size, size, long, 0);
  SDT_MAX_RO_ATTRIBUTE(c, pitchshift, Oversample, oversample, long, 0);
  SDT_MAX_ATTRIBUTE(c, pitchshift, Overlap, overlap, float64, 0);
  SDT_MAX_ATTRIBUTE(c, pitchshift, Ratio, ratio, float64, 0);

  CLASS_ATTR_FILTER_CLIP(c, "ratio", 0.125, 8.0);
  CLASS_ATTR_FILTER_CLIP(c, "overlap", 0.5, 0.875);

  CLASS_ATTR_ORDER(c, "size", 0, "2");
  CLASS_ATTR_ORDER(c, "oversample", 0, "3");
  CLASS_ATTR_ORDER(c, "overlap", 0, "4");
  CLASS_ATTR_ORDER(c, "ratio", 0, "5");

  class_dspinit(c);
  class_register(CLASS_BOX, c);
  pitchshift_class = c;
}
