#include "SDT/SDTAnalysis.h"
#include "SDT/SDTCommon.h"
#include "SDTCommonMax.h"
#include "SDT_fileusage.h"
#include "ext.h"
#include "ext_obex.h"
#include "z_dsp.h"

typedef struct _myoelastic {
  t_pxobject ob;
  SDTMyoelastic *myo;
  void *outlets[4], *send;
  double out[4];
  t_symbol *key;
} t_myoelastic;

static t_class *myoelastic_class = NULL;

void myoelastic_assist(t_myoelastic *x, void *b, long m, long a, char *s) {
  if (m == ASSIST_INLET) {
    sprintf(s,
            "(signal): Input\n"
            "Object attributes and messages (see help patch)");
  } else {
    switch (a) {
      case 0:
        sprintf(s, "(float): Slow myoelastic activity");
        break;
      case 1:
        sprintf(s, "(float): Slow myoelastic frequency (Hz)");
        break;
      case 2:
        sprintf(s, "(float): Fast myoelastic activity");
        break;
      case 3:
        sprintf(s, "(float): Fast myoelastic frequency (Hz)");
        break;
    }
  }
}

SDT_MAX_KEY(myoelastic, Myoelastic, myo, "myo~", "myoelastic feature extractor")

SDT_MAX_ACCESSORS(myoelastic, Myoelastic, myo, DcFrequency, float, , update)
SDT_MAX_ACCESSORS(myoelastic, Myoelastic, myo, LowFrequency, float, , update)
SDT_MAX_ACCESSORS(myoelastic, Myoelastic, myo, HighFrequency, float, , update)
SDT_MAX_ACCESSORS(myoelastic, Myoelastic, myo, Threshold, float, , update)

void myoelastic_send(t_myoelastic *x) {
  outlet_float(x->outlets[0], x->out[0]);
  outlet_float(x->outlets[1], x->out[1]);
  outlet_float(x->outlets[2], x->out[2]);
  outlet_float(x->outlets[3], x->out[3]);
}

t_int *myoelastic_perform(t_int *w) {
  t_myoelastic *x = (t_myoelastic *)(w[1]);
  t_float *in = (t_float *)(w[2]);
  int n = (int)w[3];

  while (n--) {
    if (SDTMyoelastic_dsp(x->myo, x->out, *in++)) {
      qelem_set(x->send);
    }
  }

  return w + 4;
}

void myoelastic_dsp(t_myoelastic *x, t_signal **sp, short *count) {
  SDT_setSampleRate(sp[0]->s_sr);
  SDTMyoelastic_update(x->myo);
  dsp_add(myoelastic_perform, 3, x, sp[0]->s_vec, sp[0]->s_n);
}

void myoelastic_perform64(t_myoelastic *x, t_object *dsp64, double **ins,
                          long numins, double **outs, long numouts,
                          long sampleframes, long flags, void *userparam) {
  t_double *in = ins[0];
  int n = sampleframes;

  while (n--) {
    if (SDTMyoelastic_dsp(x->myo, x->out, *in++)) {
      qelem_set(x->send);
    }
  }
}

void myoelastic_dsp64(t_myoelastic *x, t_object *dsp64, short *count,
                      double samplerate, long maxvectorsize, long flags) {
  SDT_setSampleRate(samplerate);
  SDTMyoelastic_update(x->myo);
  object_method(dsp64, gensym("dsp_add64"), x, myoelastic_perform64, 0, NULL);
}

void *myoelastic_new(t_symbol *s, long argc, t_atom *argv) {
  SDT_setupMaxLoggers();
  t_myoelastic *x;

  x = (t_myoelastic *)object_alloc(myoelastic_class);
  if (x) {
    dsp_setup((t_pxobject *)x, 1);
    x->myo = SDTMyoelastic_new();
    x->key = 0;
    x->outlets[3] = floatout(x);
    x->outlets[2] = floatout(x);
    x->outlets[1] = floatout(x);
    x->outlets[0] = floatout(x);
    x->send = qelem_new((t_object *)x, (method)myoelastic_send);
    x->out[0] = 0.0;
    x->out[1] = 0.0;
    x->out[2] = 0.0;
    x->out[3] = 0.0;
    attr_args_process(x, argc, argv);
  }
  return (x);
}

void myoelastic_free(t_myoelastic *x) {
  dsp_free((t_pxobject *)x);
  SDT_MAX_FREE(Myoelastic, myo)
  object_free(x->outlets[0]);
  object_free(x->outlets[1]);
  object_free(x->outlets[2]);
  object_free(x->outlets[3]);
  qelem_free(x->send);
}

void C74_EXPORT ext_main(void *r) {
  t_class *c =
      class_new("sdt.myo~", (method)myoelastic_new, (method)myoelastic_free,
                (long)sizeof(t_myoelastic), 0L, A_GIMME, 0);

  class_addmethod(c, (method)myoelastic_dsp, "dsp", A_CANT, 0);
  class_addmethod(c, (method)myoelastic_dsp64, "dsp64", A_CANT, 0);
  class_addmethod(c, (method)myoelastic_assist, "assist", A_CANT, 0);
  class_addmethod(c, (method)SDT_fileusage, "fileusage", A_CANT, 0L);

  SDT_CLASS_KEY(myoelastic, "1")

  SDT_MAX_ATTRIBUTE(c, myoelastic, DcFrequency, dcFrequency, float64, 0);
  SDT_MAX_ATTRIBUTE(c, myoelastic, LowFrequency, lowFrequency, float64, 0);
  SDT_MAX_ATTRIBUTE(c, myoelastic, HighFrequency, highFrequency, float64, 0);
  SDT_MAX_ATTRIBUTE(c, myoelastic, Threshold, threshold, float64, 0);

  class_dspinit(c);
  class_register(CLASS_BOX, c);
  myoelastic_class = c;
}
