#include "ext.h"
#include "ext_obex.h"
#include "z_dsp.h"
#include "SDT/SDTCommon.h"
#include "SDT/SDTAnalysis.h"

typedef struct _spectralfeats {
  t_pxobject ob;
  SDTSpectralFeats *feats;
  void *outlet, *send;
  double overlap, minFreq, maxFreq, outs[8];
} t_spectralfeats;

static t_class *spectralfeats_class = NULL;

void spectralfeats_assist(t_spectralfeats *x, void *b, long m, long a, char *s) {
  if (m == ASSIST_INLET) {
    sprintf(s, "(signal): Input\n"
               "Object attributes and messages (see help patch)");
  } 
  else {
    sprintf(s, "(symbol, float): Audio descriptors");
  }
}

void spectralfeats_overlap(t_spectralfeats *x, void *attr, long ac, t_atom *av) {
  x->overlap = atom_getfloat(av);
  SDTSpectralFeats_setOverlap(x->feats, x->overlap);
}

void spectralfeats_minFreq(t_spectralfeats *x, void *attr, long ac, t_atom *av) {
  x->minFreq = atom_getfloat(av);
  SDTSpectralFeats_setMinFreq(x->feats, x->minFreq);
}

void spectralfeats_maxFreq(t_spectralfeats *x, void *attr, long ac, t_atom *av) {
  x->maxFreq = atom_getfloat(av);
  SDTSpectralFeats_setMaxFreq(x->feats, x->maxFreq);
}

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
  SDTSpectralFeats_setOverlap(x->feats, x->overlap);
  SDTSpectralFeats_setMinFreq(x->feats, x->minFreq);
  SDTSpectralFeats_setMaxFreq(x->feats, x->maxFreq);
  dsp_add(spectralfeats_perform, 3, x, sp[0]->s_vec, sp[0]->s_n);
}

void spectralfeats_perform64(t_spectralfeats *x, t_object *dsp64, double **ins, long numins, double **outs, long numouts, long sampleframes, long flags, void *userparam) {
  t_double *in = ins[0];
  int n = sampleframes;
  
  while (n--) {
    if (SDTSpectralFeats_dsp(x->feats, x->outs, *in++)) {
      qelem_set(x->send);
    }
  }
}

void spectralfeats_dsp64(t_spectralfeats *x, t_object *dsp64, short *count, double samplerate, long maxvectorsize, long flags) {
  SDT_setSampleRate(samplerate);
  SDTSpectralFeats_setOverlap(x->feats, x->overlap);
  SDTSpectralFeats_setMinFreq(x->feats, x->minFreq);
  SDTSpectralFeats_setMaxFreq(x->feats, x->maxFreq);
  object_method(dsp64, gensym("dsp_add64"), x, spectralfeats_perform64, 0, NULL);
}

void *spectralfeats_new(t_symbol *s, long argc, t_atom *argv) {
  t_spectralfeats *x;
  long tmpSize, windowSize;
  
  x = (t_spectralfeats *)object_alloc(spectralfeats_class);
  if (x) {
    dsp_setup((t_pxobject *)x, 1);
    if (argc > 0 && atom_gettype(&argv[0]) == A_LONG) {
      tmpSize = atom_getlong(&argv[0]);
      windowSize = SDT_nextPow2(tmpSize);
      if (tmpSize != windowSize) {
        post("sdt.spectralfeats~: Window size must be a power of 2, setting it to %d", windowSize);
      }
    }
    else {
      windowSize = 1024;
    }
    x->feats = SDTSpectralFeats_new(windowSize);
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
  SDTSpectralFeats_free(x->feats);
}

int C74_EXPORT main(void) {	
  t_class *c = class_new("sdt.spectralfeats~", (method)spectralfeats_new, (method)spectralfeats_free, (long)sizeof(t_spectralfeats), 0L, A_GIMME, 0);
	
  class_addmethod(c, (method)spectralfeats_dsp, "dsp", A_CANT, 0);
  class_addmethod(c, (method)spectralfeats_dsp64, "dsp64", A_CANT, 0);
  class_addmethod(c, (method)spectralfeats_assist, "assist", A_CANT, 0);
  
  CLASS_ATTR_DOUBLE(c, "overlap", 0, t_spectralfeats, overlap);
  CLASS_ATTR_DOUBLE(c, "minFreq", 0, t_spectralfeats, minFreq);
  CLASS_ATTR_DOUBLE(c, "maxFreq", 0, t_spectralfeats, maxFreq);
  
  CLASS_ATTR_FILTER_CLIP(c, "overlap", 0.0, 1.0);
  CLASS_ATTR_FILTER_MIN(c, "minFreq", 0.0);
  CLASS_ATTR_FILTER_MIN(c, "maxFreq", 0.0);
  
  CLASS_ATTR_ACCESSORS(c, "overlap", NULL, (method)spectralfeats_overlap);
  CLASS_ATTR_ACCESSORS(c, "minFreq", NULL, (method)spectralfeats_minFreq);
  CLASS_ATTR_ACCESSORS(c, "maxFreq", NULL, (method)spectralfeats_maxFreq);
  
  CLASS_ATTR_ORDER(c, "overlap", 0, "1");
  CLASS_ATTR_ORDER(c, "minFreq", 0, "2");
  CLASS_ATTR_ORDER(c, "maxFreq", 0, "3");
  
  class_dspinit(c);
  class_register(CLASS_BOX, c);
  spectralfeats_class = c;

  return 0;
}