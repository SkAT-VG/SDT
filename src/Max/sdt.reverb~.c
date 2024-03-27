#include "SDT/SDTCommon.h"
#include "SDT/SDTEffects.h"
#include "SDTCommonMax.h"
#include "SDT_fileusage.h"
#include "ext.h"
#include "ext_obex.h"
#include "z_dsp.h"

typedef struct _reverb {
  t_pxobject ob;
  SDTReverb *reverb;
  t_symbol *key;
} t_reverb;

static t_class *reverb_class = NULL;

void *reverb_new(t_symbol *s, long argc, t_atom *argv) {
  SDT_setupMaxLoggers();
  t_reverb *x = (t_reverb *)object_alloc(reverb_class);
  long maxDelay;

  if (x) {
    dsp_setup((t_pxobject *)x, 1);
    outlet_new(x, "signal");
    if (argc > 0 && atom_gettype(&argv[0]) == A_LONG) {
      maxDelay = atom_getlong(&argv[0]);
    } else {
      maxDelay = 44100;
    }
    x->reverb = SDTReverb_new(maxDelay);
    x->key = 0;
    attr_args_process(x, argc, argv);
  }
  return (x);
}

void reverb_free(t_reverb *x) {
  dsp_free((t_pxobject *)x);
  SDT_MAX_FREE(Reverb, reverb)
}

void reverb_assist(t_reverb *x, void *b, long m, long a, char *s) {
  if (m == ASSIST_INLET) {  // inlet
    sprintf(s,
            "(signal): Input\n"
            "Object attributes and messages (see help patch)");
  } else {
    sprintf(s, "(signal): Output sound");
  }
}

SDT_MAX_KEY(reverb, Reverb, reverb, "reverb~", "reverb")

SDT_MAX_ACCESSORS(reverb, Reverb, reverb, XSize, float, , update)
SDT_MAX_ACCESSORS(reverb, Reverb, reverb, YSize, float, , update)
SDT_MAX_ACCESSORS(reverb, Reverb, reverb, ZSize, float, , update)
SDT_MAX_ACCESSORS(reverb, Reverb, reverb, Randomness, float, , update)
SDT_MAX_ACCESSORS(reverb, Reverb, reverb, Time, float, , update)
SDT_MAX_ACCESSORS(reverb, Reverb, reverb, Time1k, float, , update)

t_int *reverb_perform(t_int *w) {
  t_reverb *x = (t_reverb *)(w[1]);
  t_float *in = (t_float *)(w[2]);
  t_float *out = (t_float *)(w[3]);
  int n = (int)w[4];

  while (n--) {
    *out++ = (float)SDTReverb_dsp(x->reverb, *in++);
  }

  return w + 5;
}

void reverb_dsp(t_reverb *x, t_signal **sp, short *count) {
  SDT_setSampleRate(sp[0]->s_sr);
  SDTReverb_update(x->reverb);
  dsp_add(reverb_perform, 4, x, sp[0]->s_vec, sp[1]->s_vec, sp[0]->s_n);
}

void reverb_perform64(t_reverb *x, t_object *dsp64, double **ins, long numins,
                      double **outs, long numouts, long sampleframes,
                      long flags, void *userparam) {
  t_double *in = ins[0];
  t_double *out = outs[0];
  int n = sampleframes;

  while (n--) {
    *out++ = SDTReverb_dsp(x->reverb, *in++);
  }
}

void reverb_dsp64(t_reverb *x, t_object *dsp64, short *count, double samplerate,
                  long maxvectorsize, long flags) {
  SDT_setSampleRate(samplerate);
  SDTReverb_update(x->reverb);
  object_method(dsp64, gensym("dsp_add64"), x, reverb_perform64, 0, NULL);
}

void C74_EXPORT ext_main(void *r) {
  t_class *c = class_new("sdt.reverb~", (method)reverb_new, (method)reverb_free,
                         (long)sizeof(t_reverb), 0L, A_GIMME, 0);

  class_addmethod(c, (method)reverb_dsp, "dsp", A_CANT, 0);
  class_addmethod(c, (method)reverb_dsp64, "dsp64", A_CANT, 0);
  class_addmethod(c, (method)reverb_assist, "assist", A_CANT, 0);
  class_addmethod(c, (method)SDT_fileusage, "fileusage", A_CANT, 0L);

  SDT_CLASS_KEY(reverb, "1")

  SDT_MAX_ATTRIBUTE(c, reverb, XSize, xSize, float64, 0);
  SDT_MAX_ATTRIBUTE(c, reverb, YSize, ySize, float64, 0);
  SDT_MAX_ATTRIBUTE(c, reverb, ZSize, zSize, float64, 0);
  SDT_MAX_ATTRIBUTE(c, reverb, Randomness, randomness, float64, 0);
  SDT_MAX_ATTRIBUTE(c, reverb, Time, time, float64, 0);
  SDT_MAX_ATTRIBUTE(c, reverb, Time1k, time1k, float64, 0);

  CLASS_ATTR_FILTER_MIN(c, "xSize", 0.0);
  CLASS_ATTR_FILTER_MIN(c, "ySize", 0.0);
  CLASS_ATTR_FILTER_MIN(c, "zSize", 0.0);
  CLASS_ATTR_FILTER_CLIP(c, "randomness", 0.0, 1.0);
  CLASS_ATTR_FILTER_MIN(c, "time", 0.0);
  CLASS_ATTR_FILTER_MIN(c, "time1k", 0.0);

  CLASS_ATTR_ORDER(c, "xSize", 0, "2");
  CLASS_ATTR_ORDER(c, "ySize", 0, "3");
  CLASS_ATTR_ORDER(c, "zSize", 0, "4");
  CLASS_ATTR_ORDER(c, "randomness", 0, "5");
  CLASS_ATTR_ORDER(c, "time", 0, "6");
  CLASS_ATTR_ORDER(c, "time1k", 0, "7");

  class_dspinit(c);
  class_register(CLASS_BOX, c);
  reverb_class = c;
}