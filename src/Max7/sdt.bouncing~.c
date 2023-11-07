#include "SDT/SDTCommon.h"
#include "SDT/SDTControl.h"
#include "SDTCommonMax.h"
#include "SDT_fileusage.h"
#include "ext.h"
#include "ext_obex.h"
#include "z_dsp.h"

typedef struct _bouncing {
  t_pxobject ob;
  void *velocity;
  SDTBouncing *bouncing;
  int reset;
  t_symbol *key;
} t_bouncing;

static t_class *bouncing_class = NULL;

void bouncing_assist(t_bouncing *x, void *b, long m, long a, char *s) {
  if (m == ASSIST_INLET) {
    sprintf(s,
            "(bang): Starts a bouncing process\n"
            "Object attributes and messages (see help patch)");
  } else {
    sprintf(s, "(signal): Impact velocity");
  }
}

void bouncing_bang(t_bouncing *x) { x->reset = 1; }

void *bouncing_new(t_symbol *s, short argc, t_atom *argv) {
  SDT_setupMaxLoggers();
  t_bouncing *x = (t_bouncing *)object_alloc(bouncing_class);
  if (x) {
    dsp_setup((t_pxobject *)x, 0);
    x->velocity = outlet_new(x, "signal");
    x->bouncing = SDTBouncing_new();
    x->reset = 0;
    x->key = 0;
    attr_args_process(x, argc, argv);
  }
  return (x);
}

void bouncing_free(t_bouncing *x) {
  dsp_free((t_pxobject *)x);
  SDT_MAX_FREE(Bouncing, bouncing)
  object_free(x->velocity);
}

SDT_MAX_KEY(bouncing, Bouncing, bouncing, "bouncing~", "bouncing process")

SDT_MAX_ACCESSORS(bouncing, Bouncing, bouncing, Restitution, float, , )
SDT_MAX_ACCESSORS(bouncing, Bouncing, bouncing, Height, float, , )
SDT_MAX_ACCESSORS(bouncing, Bouncing, bouncing, Irregularity, float, , )

t_int *bouncing_perform(t_int *w) {
  t_bouncing *x = (t_bouncing *)(w[1]);
  t_float *out = (t_float *)(w[2]);
  int n = (int)w[3];

  if (x->reset) {
    SDTBouncing_reset(x->bouncing);
    x->reset = 0;
  }
  while (n--) {
    *out++ = (float)SDTBouncing_dsp(x->bouncing);
  }
  return w + 4;
}

void bouncing_dsp(t_bouncing *x, t_signal **sp, short *count) {
  SDT_setSampleRate(sp[0]->s_sr);
  dsp_add(bouncing_perform, 3, x, sp[0]->s_vec, sp[0]->s_n);
}

void bouncing_perform64(t_bouncing *x, t_object *dsp64, double **ins,
                        long numins, double **outs, long numouts,
                        long sampleframes, long flags, void *userparam) {
  t_double *out = (t_double *)outs[0];
  int n = sampleframes;

  if (x->reset) {
    SDTBouncing_reset(x->bouncing);
    x->reset = 0;
  }
  while (n--) {
    *out++ = SDTBouncing_dsp(x->bouncing);
  }
}

void bouncing_dsp64(t_bouncing *x, t_object *dsp64, short *count,
                    double samplerate, long maxvectorsize, long flags) {
  SDT_setSampleRate(samplerate);
  object_method(dsp64, gensym("dsp_add64"), x, bouncing_perform64, 0, NULL);
}

void C74_EXPORT ext_main(void *r) {
  t_class *c =
      class_new("sdt.bouncing~", (method)bouncing_new, (method)bouncing_free,
                (long)sizeof(t_bouncing), 0L, A_GIMME, 0);

  class_addmethod(c, (method)bouncing_bang, "bang", 0);
  class_addmethod(c, (method)bouncing_dsp, "dsp", A_CANT, 0);
  class_addmethod(c, (method)bouncing_dsp64, "dsp64", A_CANT, 0);
  class_addmethod(c, (method)bouncing_assist, "assist", A_CANT, 0);
  class_addmethod(c, (method)SDT_fileusage, "fileusage", A_CANT, 0L);

  SDT_CLASS_KEY(bouncing, "1")

  SDT_MAX_ATTRIBUTE(c, bouncing, Restitution, restitution, float64, 0);
  SDT_MAX_ATTRIBUTE(c, bouncing, Height, height, float64, 0);
  SDT_MAX_ATTRIBUTE(c, bouncing, Irregularity, irregularity, float64, 0);

  CLASS_ATTR_FILTER_CLIP(c, "restitution", 0.0, 1.0);
  CLASS_ATTR_FILTER_MIN(c, "height", 0.0);
  CLASS_ATTR_FILTER_CLIP(c, "irregularity", 0.0, 1.0);

  CLASS_ATTR_ORDER(c, "restitution", 0, "2");
  CLASS_ATTR_ORDER(c, "height", 0, "3");
  CLASS_ATTR_ORDER(c, "irregularity", 0, "4");

  class_dspinit(c);
  class_register(CLASS_BOX, c);
  bouncing_class = c;
}
