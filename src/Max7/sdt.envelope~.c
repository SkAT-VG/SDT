#include "SDT/SDTCommon.h"
#include "SDT/SDTFilters.h"
#include "SDTCommonMax.h"
#include "SDT_fileusage.h"
#include "ext.h"
#include "ext_obex.h"
#include "z_dsp.h"

typedef struct _envelope {
  t_pxobject ob;
  SDTEnvelope *envelope;
  t_symbol *key;
} t_envelope;

static t_class *envelope_class = NULL;

void *envelope_new(t_symbol *s, long argc, t_atom *argv) {
  SDT_setupMaxLoggers();
  t_envelope *x;

  x = (t_envelope *)object_alloc(envelope_class);
  if (x) {
    dsp_setup((t_pxobject *)x, 1);
    outlet_new(x, "signal");
    x->envelope = SDTEnvelope_new();
    x->key = 0;
    attr_args_process(x, argc, argv);
  }
  return (x);
}

void envelope_free(t_envelope *x) {
  dsp_free((t_pxobject *)x);
  SDT_MAX_FREE(Envelope, envelope)
}

void envelope_assist(t_envelope *x, void *b, long m, long a, char *s) {
  if (m == ASSIST_INLET) {
    sprintf(s,
            "(signal): Input\n"
            "Object attributes and messages (see help patch)");
  } else {
    sprintf(s, "(signal): Amplitude envelope");
  }
}

SDT_MAX_KEY(envelope, Envelope, envelope, "envelope~", "envelope filter")

// Attack and release to ms for backwards compatibility
SDT_MAX_ACCESSORS(envelope, Envelope, envelope, Attack, float, 1000.0, )
SDT_MAX_ACCESSORS(envelope, Envelope, envelope, Release, float, 1000.0, )

t_int *envelope_perform(t_int *w) {
  t_envelope *x = (t_envelope *)(w[1]);
  t_float *in = (t_float *)(w[2]);
  t_float *out = (t_float *)(w[3]);
  int n = (int)w[4];

  while (n--) {
    *out++ = (float)SDTEnvelope_dsp(x->envelope, *in++);
  }
  return w + 5;
}

void envelope_dsp(t_envelope *x, t_signal **sp, short *count) {
  SDT_setSampleRate(sp[0]->s_sr);
  dsp_add(envelope_perform, 4, x, sp[0]->s_vec, sp[1]->s_vec, sp[0]->s_n);
}

void envelope_perform64(t_envelope *x, t_object *dsp64, double **ins,
                        long numins, double **outs, long numouts,
                        long sampleframes, long flags, void *userparam) {
  t_double *in = ins[0];
  t_double *out = outs[0];
  int n = sampleframes;

  while (n--) {
    *out++ = SDTEnvelope_dsp(x->envelope, *in++);
  }
}

void envelope_dsp64(t_envelope *x, t_object *dsp64, short *count,
                    double samplerate, long maxvectorsize, long flags) {
  SDT_setSampleRate(samplerate);
  object_method(dsp64, gensym("dsp_add64"), x, envelope_perform64, 0, NULL);
}

void C74_EXPORT ext_main(void *r) {
  t_class *c =
      class_new("sdt.envelope~", (method)envelope_new, (method)envelope_free,
                (long)sizeof(t_envelope), 0L, A_GIMME, 0);
  class_addmethod(c, (method)envelope_dsp, "dsp", A_CANT, 0);
  class_addmethod(c, (method)envelope_dsp64, "dsp64", A_CANT, 0);
  class_addmethod(c, (method)envelope_assist, "assist", A_CANT, 0);
  class_addmethod(c, (method)SDT_fileusage, "fileusage", A_CANT, 0L);

  SDT_CLASS_KEY(envelope, "1")

  SDT_MAX_ATTRIBUTE(c, envelope, Attack, attack, float64, 0);
  SDT_MAX_ATTRIBUTE(c, envelope, Release, release, float64, 0);

  CLASS_ATTR_FILTER_MIN(c, "attack", 0.0);
  CLASS_ATTR_FILTER_MIN(c, "release", 0.0);

  CLASS_ATTR_ORDER(c, "attack", 0, "2");
  CLASS_ATTR_ORDER(c, "release", 0, "3");

  class_dspinit(c);
  class_register(CLASS_BOX, c);
  envelope_class = c;
}
