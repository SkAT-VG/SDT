#include "SDT/SDTAnalysis.h"
#include "SDT/SDTCommon.h"
#include "SDTCommonMax.h"
#include "SDT_fileusage.h"
#include "ext.h"
#include "ext_obex.h"
#include "z_dsp.h"

typedef struct _pitch {
  t_pxobject ob;
  SDTPitch *pitch;
  void *outlets[2], *send;
  double outs[2];
  t_symbol *key;
} t_pitch;

static t_class *pitch_class = NULL;

void pitch_assist(t_pitch *x, void *b, long m, long a, char *s) {
  if (m == ASSIST_INLET) {
    sprintf(s,
            "(signal): Input\n"
            "Object attributes and messages (see help patch)");
  } else {
    switch (a) {
      case 0:
        sprintf(s, "(float): Estimated pitch (Hz)");
        break;
      case 1:
        sprintf(s, "(float): Pitch clarity [0,1]");
        break;
    }
  }
}

SDT_MAX_KEY(pitch, Pitch, pitch, "pitch~", "fundamental frequency estimator")

SDT_MAX_GETTER(pitch, Pitch, pitch, Size, long, )

SDT_MAX_ACCESSORS(pitch, Pitch, pitch, Overlap, float, , )
SDT_MAX_ACCESSORS(pitch, Pitch, pitch, Tolerance, float, , )

void pitch_send(t_pitch *x) {
  outlet_float(x->outlets[0], x->outs[0]);
  outlet_float(x->outlets[1], x->outs[1]);
}

t_int *pitch_perform(t_int *w) {
  t_pitch *x = (t_pitch *)(w[1]);
  t_float *in = (t_float *)(w[2]);
  int n = (int)w[3];

  while (n--) {
    if (SDTPitch_dsp(x->pitch, x->outs, *in++)) {
      qelem_set(x->send);
    }
  }

  return w + 4;
}

void pitch_dsp(t_pitch *x, t_signal **sp, short *count) {
  SDT_setSampleRate(sp[0]->s_sr);
  dsp_add(pitch_perform, 3, x, sp[0]->s_vec, sp[0]->s_n);
}

void pitch_perform64(t_pitch *x, t_object *dsp64, double **ins, long numins,
                     double **outs, long numouts, long sampleframes, long flags,
                     void *userparam) {
  t_double *in = ins[0];
  int n = sampleframes;

  while (n--) {
    if (SDTPitch_dsp(x->pitch, x->outs, *in++)) {
      qelem_set(x->send);
    }
  }
}

void pitch_dsp64(t_pitch *x, t_object *dsp64, short *count, double samplerate,
                 long maxvectorsize, long flags) {
  SDT_setSampleRate(samplerate);
  object_method(dsp64, gensym("dsp_add64"), x, pitch_perform64, 0, NULL);
}

void *pitch_new(t_symbol *s, long argc, t_atom *argv) {
  SDT_setupMaxLoggers();
  t_pitch *x;
  long tmpSize, windowSize;

  x = (t_pitch *)object_alloc(pitch_class);
  if (x) {
    dsp_setup((t_pxobject *)x, 1);
    if (argc > 0 && atom_gettype(&argv[0]) == A_LONG) {
      tmpSize = atom_getlong(&argv[0]);
      windowSize = SDT_nextPow2(tmpSize);
      if (tmpSize != windowSize) {
        post("sdt.pitch~: Window size must be a power of 2, setting it to %d",
             windowSize);
      }
    } else {
      windowSize = SDT_PITCH_SIZE_DEFAULT;
    }
    x->pitch = SDTPitch_new(windowSize);
    x->key = 0;
    x->outlets[1] = floatout(x);
    x->outlets[0] = floatout(x);
    x->send = qelem_new((t_object *)x, (method)pitch_send);
    attr_args_process(x, argc, argv);
  }
  return (x);
}

void pitch_free(t_pitch *x) {
  dsp_free((t_pxobject *)x);
  object_free(x->outlets[0]);
  object_free(x->outlets[1]);
  qelem_free(x->send);
  SDT_MAX_FREE(Pitch, pitch)
}

void C74_EXPORT ext_main(void *r) {
  t_class *c = class_new("sdt.pitch~", (method)pitch_new, (method)pitch_free,
                         (long)sizeof(t_pitch), 0L, A_GIMME, 0);

  class_addmethod(c, (method)pitch_dsp, "dsp", A_CANT, 0);
  class_addmethod(c, (method)pitch_dsp64, "dsp64", A_CANT, 0);
  class_addmethod(c, (method)pitch_assist, "assist", A_CANT, 0);
  class_addmethod(c, (method)SDT_fileusage, "fileusage", A_CANT, 0L);

  SDT_CLASS_KEY(pitch, "1")

  SDT_MAX_RO_ATTRIBUTE(c, pitch, Size, size, long, 0);
  SDT_MAX_ATTRIBUTE(c, pitch, Overlap, overlap, float64, 0);
  SDT_MAX_ATTRIBUTE(c, pitch, Tolerance, tolerance, float64, 0);

  CLASS_ATTR_ORDER(c, "size", 0, "2");

  class_dspinit(c);
  class_register(CLASS_BOX, c);
  pitch_class = c;
}
