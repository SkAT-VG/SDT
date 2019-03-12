#include "m_pd.h"
#include "SDT/SDTCommon.h"
#include "SDT/SDTModalTracker.h"
#ifdef NT
#pragma warning( disable : 4244 )
#pragma warning( disable : 4305 )
#endif

static t_class *modaltracker_class;

typedef struct _modaltracker {
  t_object obj;
  SDTModalTracker *modaltracker;
  t_float f;
  t_outlet *out0, *out1;
  int nModes, nSamples, pickup, isRecording; 
} t_modaltracker;

void modaltracker_overlap(t_modaltracker *x, t_float f) {
  SDTModalTracker_setOverlap(x->modaltracker, f);
}

void modaltracker_pickup(t_modaltracker *x, t_float f) {
  x->pickup = SDT_clip(f, 0, x->nModes);
}

void modaltracker_clear(t_modaltracker *x) {
  SDTModalTracker_clearSamples(x->modaltracker, x->nSamples);
}

void modaltracker_start(t_modaltracker *x) {
  modaltracker_clear(x);
  x->isRecording = 1;
}

void modaltracker_stop(t_modaltracker *x) {
  SDTModalTracker_update(x->modaltracker);
  x->isRecording = 0;
  outlet_bang(x->out1);
}

void modaltracker_bang(t_modaltracker *x) {
  double mags[x->nModes], freqs[x->nModes], decays[x->nModes];
  t_atom magAtoms[x->nModes + 1], freqAtoms[x->nModes], decayAtoms[x->nModes];
  int i;

  if (x->isRecording) modaltracker_stop(x);
  SDTModalTracker_static(x->modaltracker, mags, freqs, decays);
  SETFLOAT(&magAtoms[0], x->pickup);
  for (i = 0; i < x->nModes; i++) {
    SETFLOAT(&magAtoms[i + 1], mags[i]);
    SETFLOAT(&freqAtoms[i], freqs[i]);
    SETFLOAT(&decayAtoms[i], decays[i]);
  }
  outlet_anything(x->out0, gensym("pickup"), x->nModes + 1, magAtoms);
  outlet_anything(x->out0, gensym("freqs"), x->nModes, freqAtoms);
  outlet_anything(x->out0, gensym("decays"), x->nModes, decayAtoms);
}

void modaltracker_float(t_modaltracker *x, t_float f) {
  double mags[x->nModes], freqs[x->nModes];
  t_atom magAtoms[x->nModes + 1], freqAtoms[x->nModes], decayAtoms[x->nModes];
  int i;

  if (x->isRecording) modaltracker_stop(x);
  SDTModalTracker_dynamic(x->modaltracker, f, mags, freqs);
  SETFLOAT(&magAtoms[0], x->pickup);
  for (i = 0; i < x->nModes; i++) {
    SETFLOAT(&magAtoms[i + 1], mags[i]);
    SETFLOAT(&freqAtoms[i], freqs[i]);
    SETFLOAT(&decayAtoms[i], 0.0);
  }
  outlet_anything(x->out0, gensym("pickup"), x->nModes + 1, magAtoms);
  outlet_anything(x->out0, gensym("freqs"), x->nModes, freqAtoms);
  outlet_anything(x->out0, gensym("decays"), x->nModes, decayAtoms);
}

t_int *modaltracker_perform(t_int *w) {
  t_modaltracker *x = (t_modaltracker *)(w[1]);
  t_float *in = (t_float *)(w[2]);
  int n = (int)w[3];
  double samples[n];
  int i, samplesRead;

  if (x->isRecording) {
    for (i = 0; i < n; i++) samples[i] = in[i];
    samplesRead = SDTModalTracker_readSamples(x->modaltracker, samples, n);
    if (!samplesRead) {
      modaltracker_stop(x);
    }
  }
  return w + 4;
}

void modaltracker_dsp(t_modaltracker *x, t_signal **sp) {
  SDT_setSampleRate(sp[0]->s_sr);
  dsp_add(modaltracker_perform, 3, x, sp[0]->s_vec, sp[0]->s_n);
}

void *modaltracker_new(t_symbol *s, long argc, t_atom *argv) {
  int nModes, nSamples, tmpSize, windowSize;
  t_modaltracker *x = (t_modaltracker *)pd_new(modaltracker_class);
  nModes = argc > 0 && argv[0].a_type == A_FLOAT ? atom_getfloat(&argv[0]) : 8;
  nSamples = argc > 1 && argv[1].a_type == A_FLOAT ? atom_getfloat(&argv[1]) : 441000;
  if (argc > 2 && argv[2].a_type == A_FLOAT) {
    tmpSize = atom_getfloat(&argv[2]);
    windowSize = SDT_nextPow2(tmpSize);
    if (tmpSize != windowSize) {
      post("sdt.modaltracker~: Window size must be a power of 2, setting it to %d", windowSize);
    }
  }
  else {
    windowSize = 1024;
  }
  x->modaltracker = SDTModalTracker_new(nModes, nSamples, windowSize);
  x->out0 = outlet_new(&x->obj, NULL);
  x->out1 = outlet_new(&x->obj, gensym("bang"));
  x->nModes = nModes;
  x->nSamples = nSamples;
  x->isRecording = 0;
  return (x);
}

void modaltracker_free(t_modaltracker *x) {
  outlet_free(x->out0);
  outlet_free(x->out1);
  SDTModalTracker_free(x->modaltracker);
}

void modaltracker_tilde_setup(void) {	
  modaltracker_class = class_new(gensym("modaltracker~"), (t_newmethod)modaltracker_new, (t_method)modaltracker_free, sizeof(t_modaltracker), CLASS_DEFAULT, A_GIMME, 0);
  CLASS_MAINSIGNALIN(modaltracker_class, t_modaltracker, f);
  class_addmethod(modaltracker_class, (t_method)modaltracker_overlap, gensym("overlap"), A_FLOAT, 0);
  class_addmethod(modaltracker_class, (t_method)modaltracker_pickup, gensym("pickup"), A_FLOAT, 0);
  class_addmethod(modaltracker_class, (t_method)modaltracker_clear, gensym("clear"), 0);
  class_addmethod(modaltracker_class, (t_method)modaltracker_start, gensym("start"), 0);
  class_addmethod(modaltracker_class, (t_method)modaltracker_stop, gensym("stop"), 0);
  class_addmethod(modaltracker_class, (t_method)modaltracker_bang, gensym("bang"), 0);
  class_addmethod(modaltracker_class, (t_method)modaltracker_float, gensym("float"), A_FLOAT, 0);
  class_addmethod(modaltracker_class, (t_method)modaltracker_dsp, gensym("dsp"), 0);
}