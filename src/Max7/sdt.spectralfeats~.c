#include "SDT/SDTAnalysis.h"
#include "SDT/SDTCommon.h"
#include "SDTCommonMax.h"
#include "SDT_fileusage.h"
#include "ext.h"
#include "ext_obex.h"
#include "z_dsp.h"

typedef struct _spectralfeats {
  t_pxobject ob;
  SDTSpectralFeats *feats;
  void *outlet, *send;
  double outs[8];
  t_symbol *key;
} t_spectralfeats;

static t_class *spectralfeats_class = NULL;

void spectralfeats_assist(t_spectralfeats *x, void *b, long m, long a,
                          char *s) {
  if (m == ASSIST_INLET) {
    sprintf(s,
            "(signal): Input\n"
            "Object attributes and messages (see help patch)");
  } else {
    sprintf(s, "(symbol, float): Audio descriptors");
  }
}

SDT_MAX_KEY(spectralfeats, SpectralFeats, feats, "spectralfeats",
            "spectral features extractor")

SDT_MAX_GETTER(spectralfeats, SpectralFeats, feats, Size, long, )

SDT_MAX_ACCESSORS(spectralfeats, SpectralFeats, feats, Overlap, float, , )
SDT_MAX_ACCESSORS(spectralfeats, SpectralFeats, feats, MinFreq, float, , )
SDT_MAX_ACCESSORS(spectralfeats, SpectralFeats, feats, MaxFreq, float, , )

void spectralfeats_send(t_spectralfeats *x) {
  t_atom argv[1];

  atom_setfloat(argv, x->outs[0]);
  outlet_anything(x->outlet, gensym("magnitude"), 1, argv);
  atom_setfloat(argv, x->outs[1]);
  outlet_anything(x->outlet, gensym("centroid"), 1, argv);
  atom_setfloat(argv, x->outs[2]);
  outlet_anything(x->outlet, gensym("spread"), 1, argv);
  atom_setfloat(argv, x->outs[3]);
  outlet_anything(x->outlet, gensym("skewness"), 1, argv);
  atom_setfloat(argv, x->outs[4]);
  outlet_anything(x->outlet, gensym("kurtosis"), 1, argv);
  atom_setfloat(argv, x->outs[5]);
  outlet_anything(x->outlet, gensym("flatness"), 1, argv);
  atom_setfloat(argv, x->outs[6]);
  outlet_anything(x->outlet, gensym("flux"), 1, argv);
  atom_setfloat(argv, x->outs[7]);
  outlet_anything(x->outlet, gensym("onset"), 1, argv);
}

t_int *spectralfeats_perform(t_int *w) {
  t_spectralfeats *x = (t_spectralfeats *)(w[1]);
  t_float *in = (t_float *)(w[2]);
  int n = (int)w[3];

  while (n--) {
    if (SDTSpectralFeats_dsp(x->feats, x->outs, *in++)) {
      qelem_set(x->send);
    }
  }

  return w + 4;
}

void spectralfeats_dsp(t_spectralfeats *x, t_signal **sp, short *count) {
  SDT_setSampleRate(sp[0]->s_sr);
  dsp_add(spectralfeats_perform, 3, x, sp[0]->s_vec, sp[0]->s_n);
}

void spectralfeats_perform64(t_spectralfeats *x, t_object *dsp64, double **ins,
                             long numins, double **outs, long numouts,
                             long sampleframes, long flags, void *userparam) {
  t_double *in = ins[0];
  int n = sampleframes;

  while (n--) {
    if (SDTSpectralFeats_dsp(x->feats, x->outs, *in++)) {
      qelem_set(x->send);
    }
  }
}

void spectralfeats_dsp64(t_spectralfeats *x, t_object *dsp64, short *count,
                         double samplerate, long maxvectorsize, long flags) {
  SDT_setSampleRate(samplerate);
  object_method(dsp64, gensym("dsp_add64"), x, spectralfeats_perform64, 0,
                NULL);
}

void *spectralfeats_new(t_symbol *s, long argc, t_atom *argv) {
  SDT_setupMaxLoggers();
  t_spectralfeats *x;
  long tmpSize, windowSize;

  x = (t_spectralfeats *)object_alloc(spectralfeats_class);
  if (x) {
    dsp_setup((t_pxobject *)x, 1);
    if (argc > 0 && atom_gettype(&argv[0]) == A_LONG) {
      tmpSize = atom_getlong(&argv[0]);
      windowSize = SDT_nextPow2(tmpSize);
      if (tmpSize != windowSize) {
        post(
            "sdt.spectralfeats~: Window size must be a power of 2, setting it "
            "to %d",
            windowSize);
      }
    } else {
      windowSize = SDT_SPECTRALFEATS_SIZE_DEFAULT;
    }
    x->feats = SDTSpectralFeats_new(windowSize);
    x->key = 0;
    x->outlet = outlet_new((t_object *)x, NULL);
    x->send = qelem_new((t_object *)x, (method)spectralfeats_send);
    attr_args_process(x, argc, argv);
  }
  return (x);
}

void spectralfeats_free(t_spectralfeats *x) {
  dsp_free((t_pxobject *)x);
  object_free(x->outlet);
  qelem_free(x->send);
  SDT_MAX_FREE(SpectralFeats, feats)
}

void C74_EXPORT ext_main(void *r) {
  t_class *c = class_new("sdt.spectralfeats~", (method)spectralfeats_new,
                         (method)spectralfeats_free,
                         (long)sizeof(t_spectralfeats), 0L, A_GIMME, 0);

  class_addmethod(c, (method)spectralfeats_dsp, "dsp", A_CANT, 0);
  class_addmethod(c, (method)spectralfeats_dsp64, "dsp64", A_CANT, 0);
  class_addmethod(c, (method)spectralfeats_assist, "assist", A_CANT, 0);
  class_addmethod(c, (method)SDT_fileusage, "fileusage", A_CANT, 0L);

  SDT_CLASS_KEY(spectralfeats, "1")

  SDT_MAX_RO_ATTRIBUTE(c, spectralfeats, Size, size, long, 0);
  SDT_MAX_ATTRIBUTE(c, spectralfeats, Overlap, overlap, float64, 0);
  SDT_MAX_ATTRIBUTE(c, spectralfeats, MinFreq, minFreq, float64, 0);
  SDT_MAX_ATTRIBUTE(c, spectralfeats, MaxFreq, maxFreq, float64, 0);

  CLASS_ATTR_ORDER(c, "size", 0, "2");

  class_dspinit(c);
  class_register(CLASS_BOX, c);
  spectralfeats_class = c;
}
