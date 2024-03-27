#include "SDT/SDTAnalysis.h"
#include "SDT/SDTCommon.h"
#include "SDTCommonMax.h"
#include "SDT_fileusage.h"
#include "ext.h"
#include "ext_obex.h"
#include "z_dsp.h"

typedef struct _zerocrossing {
  t_pxobject ob;
  SDTZeroCrossing *zerox;
  void *outlet, *send;
  double out;
  t_symbol *key;
} t_zerocrossing;

static t_class *zerocrossing_class = NULL;

void zerocrossing_assist(t_zerocrossing *x, void *b, long m, long a, char *s) {
  if (m == ASSIST_INLET) {
    sprintf(s,
            "(signal): Input\n"
            "Object attributes and messages (see help patch)");
  } else {
    sprintf(s, "(float): Normalized zero crossing rate [0,1]");
  }
}

SDT_MAX_KEY(zerocrossing, ZeroCrossing, zerox, "zerox~",
            "zero crossing rate detector")

SDT_MAX_GETTER(zerocrossing, ZeroCrossing, zerox, Size, long, )

SDT_MAX_ACCESSORS(zerocrossing, ZeroCrossing, zerox, Overlap, float, , )

void zerocrossing_send(t_zerocrossing *x) { outlet_float(x->outlet, x->out); }

t_int *zerocrossing_perform(t_int *w) {
  t_zerocrossing *x = (t_zerocrossing *)(w[1]);
  t_float *in = (t_float *)(w[2]);
  int n = (int)w[3];

  while (n--) {
    if (SDTZeroCrossing_dsp(x->zerox, &x->out, *in++)) {
      qelem_set(x->send);
    }
  }

  return w + 4;
}

void zerocrossing_dsp(t_zerocrossing *x, t_signal **sp, short *count) {
  SDT_setSampleRate(sp[0]->s_sr);
  dsp_add(zerocrossing_perform, 3, x, sp[0]->s_vec, sp[0]->s_n);
}

void zerocrossing_perform64(t_zerocrossing *x, t_object *dsp64, double **ins,
                            long numins, double **outs, long numouts,
                            long sampleframes, long flags, void *userparam) {
  t_double *in = ins[0];
  int n = sampleframes;

  while (n--) {
    if (SDTZeroCrossing_dsp(x->zerox, &x->out, *in++)) {
      qelem_set(x->send);
    }
  }
}

void zerocrossing_dsp64(t_zerocrossing *x, t_object *dsp64, short *count,
                        double samplerate, long maxvectorsize, long flags) {
  SDT_setSampleRate(samplerate);
  object_method(dsp64, gensym("dsp_add64"), x, zerocrossing_perform64, 0, NULL);
}

void *zerocrossing_new(t_symbol *s, long argc, t_atom *argv) {
  SDT_setupMaxLoggers();
  t_zerocrossing *x;
  long windowSize;

  x = (t_zerocrossing *)object_alloc(zerocrossing_class);
  if (x) {
    dsp_setup((t_pxobject *)x, 1);
    if (argc > 0 && atom_gettype(&argv[0]) == A_LONG) {
      windowSize = atom_getlong(&argv[0]);
    } else {
      windowSize = SDT_ZEROCROSSING_SIZE_DEFAULT;
    }
    x->zerox = SDTZeroCrossing_new(windowSize);
    x->key = 0;
    x->outlet = floatout(x);
    x->send = qelem_new((t_object *)x, (method)zerocrossing_send);
    x->out = 0.0;
    attr_args_process(x, argc, argv);
  }
  return (x);
}

void zerocrossing_free(t_zerocrossing *x) {
  dsp_free((t_pxobject *)x);
  SDT_MAX_FREE(ZeroCrossing, zerox)
  object_free(x->outlet);
  qelem_free(x->send);
}

void C74_EXPORT ext_main(void *r) {
  t_class *c = class_new("sdt.zerox~", (method)zerocrossing_new,
                         (method)zerocrossing_free,
                         (long)sizeof(t_zerocrossing), 0L, A_GIMME, 0);

  class_addmethod(c, (method)zerocrossing_dsp, "dsp", A_CANT, 0);
  class_addmethod(c, (method)zerocrossing_dsp64, "dsp64", A_CANT, 0);
  class_addmethod(c, (method)zerocrossing_assist, "assist", A_CANT, 0);
  class_addmethod(c, (method)SDT_fileusage, "fileusage", A_CANT, 0L);

  SDT_CLASS_KEY(zerocrossing, "1")

  SDT_MAX_RO_ATTRIBUTE(c, zerocrossing, Size, size, long, 0);
  SDT_MAX_ATTRIBUTE(c, zerocrossing, Overlap, overlap, float64, 0);

  CLASS_ATTR_ORDER(c, "size", 0, "2");

  class_dspinit(c);
  class_register(CLASS_BOX, c);
  zerocrossing_class = c;
}
