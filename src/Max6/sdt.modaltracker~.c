#include "ext.h"
#include "ext_obex.h"
#include "z_dsp.h"
#include "SDT/SDTCommon.h"
#include "SDT/SDTModalTracker.h"

typedef struct _modaltracker {
  t_pxobject ob;
  SDTModalTracker *modaltracker;
  void *outlet0, *outlet1;
  double overlap;
  long nModes, nSamples, pickup, isRecording; 
} t_modaltracker;

static t_class *modaltracker_class = NULL;

void modaltracker_assist(t_modaltracker *x, void *b, long m, long a, char *s) {
  if (m == ASSIST_INLET) {
    sprintf(s, "(signal): Input\n"
               "(bang): Send synthesis parameters through main outlet"
               "Object attributes and messages (see help patch)");
  } 
  else {
    switch (a) {
      case 0:
        sprintf(s, "(list): Parameters for a sdt.modal~ object");
        break;
      case 1:
        sprintf(s, "(bang): Triggers when recording stops");
        break;
    }
  }
}

void modaltracker_overlap(t_modaltracker *x, void *attr, long ac, t_atom *av) {
  x->overlap = atom_getfloat(av);
  SDTModalTracker_setOverlap(x->modaltracker, x->overlap);
}

void modaltracker_pickup(t_modaltracker *x, void *attr, long ac, t_atom *av) {
  x->pickup = SDT_clip(atom_getlong(av), 0, x->nModes - 1);
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
  outlet_bang(x->outlet1);
}

void modaltracker_bang(t_modaltracker *x) {
  double mags[x->nModes], freqs[x->nModes], decays[x->nModes];
  t_atom magAtoms[x->nModes], freqAtoms[x->nModes], decayAtoms[x->nModes];
  char pickupString[16];
  int i;

  if (x->isRecording) modaltracker_stop(x);
  SDTModalTracker_static(x->modaltracker, mags, freqs, decays);
  for (i = 0; i < x->nModes; i++) {
    atom_setfloat(&magAtoms[i], mags[i]);
    atom_setfloat(&freqAtoms[i], freqs[i]);
    atom_setfloat(&decayAtoms[i], decays[i]);
  }
  sprintf(pickupString, "pickup%ld", x->pickup);
  outlet_anything(x->outlet0, gensym(pickupString), x->nModes, magAtoms);
  outlet_anything(x->outlet0, gensym("freqs"), x->nModes, freqAtoms);
  outlet_anything(x->outlet0, gensym("decays"), x->nModes, decayAtoms);
}

void modaltracker_float(t_modaltracker *x, t_float f) {
  double mags[x->nModes], freqs[x->nModes];
  t_atom magAtoms[x->nModes], freqAtoms[x->nModes], decayAtoms[x->nModes];
  char pickupString[16];
  int i;

  if (x->isRecording) modaltracker_stop(x);
  SDTModalTracker_dynamic(x->modaltracker, f, mags, freqs);
  for (i = 0; i < x->nModes; i++) {
    atom_setfloat(&magAtoms[i], mags[i]);
    atom_setfloat(&freqAtoms[i], freqs[i]);
    atom_setfloat(&decayAtoms[i], 0.0);
  }
  sprintf(pickupString, "pickup%ld", x->pickup);
  outlet_anything(x->outlet0, gensym(pickupString), x->nModes, magAtoms);
  outlet_anything(x->outlet0, gensym("freqs"), x->nModes, freqAtoms);
  outlet_anything(x->outlet0, gensym("decays"), x->nModes, decayAtoms);
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
  SDTModalTracker_setOverlap(x->modaltracker, x->overlap);
  dsp_add(modaltracker_perform, 3, x, sp[0]->s_vec, sp[0]->s_n);
}

void modaltracker_perform64(t_modaltracker *x, t_object *dsp64, double **ins, long numins, double **outs, long numouts, long sampleframes, long flags, void *userparam) {
  t_double *in = ins[0];
  int n = sampleframes;
  int samplesRead;
  
  if (x->isRecording) {
    samplesRead = SDTModalTracker_readSamples(x->modaltracker, in, n);
    if (!samplesRead) {
      modaltracker_stop(x);
    }
  }
}

void modaltracker_dsp64(t_modaltracker *x, t_object *dsp64, short *count, double samplerate, long maxvectorsize, long flags) {
  SDT_setSampleRate(samplerate);
  SDTModalTracker_setOverlap(x->modaltracker, x->overlap);
  object_method(dsp64, gensym("dsp_add64"), x, modaltracker_perform64, 0, NULL);
}

void *modaltracker_new(t_symbol *s, long argc, t_atom *argv) {
  int nModes, nSamples, tmpSize, windowSize;
  t_modaltracker *x = (t_modaltracker *)object_alloc(modaltracker_class);
  if (x) {
    dsp_setup((t_pxobject *)x, 1);
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
    x->outlet1 = bangout(&x->ob);
    x->outlet0 = outlet_new(&x->ob, NULL);
    x->nModes = nModes;
    x->nSamples = nSamples;
    x->isRecording = 0;
    attr_args_process(x, argc, argv);
  }
  return (x);
}

void modaltracker_free(t_modaltracker *x) {
  dsp_free((t_pxobject *)x);
  object_free(x->outlet0);
  object_free(x->outlet1);
  SDTModalTracker_free(x->modaltracker);
}

int C74_EXPORT main(void) {	
  t_class *c = class_new("sdt.modaltracker~", (method)modaltracker_new, (method)modaltracker_free, (long)sizeof(t_modaltracker), 0L, A_GIMME, 0);
	
  class_addmethod(c, (method)modaltracker_dsp, "dsp", A_CANT, 0);
  class_addmethod(c, (method)modaltracker_dsp64, "dsp64", A_CANT, 0);
  class_addmethod(c, (method)modaltracker_assist, "assist", A_CANT, 0);
  class_addmethod(c, (method)modaltracker_clear, "clear", 0);
  class_addmethod(c, (method)modaltracker_start, "start", 0);
  class_addmethod(c, (method)modaltracker_stop, "stop", 0);
  class_addmethod(c, (method)modaltracker_bang, "bang", 0);
  class_addmethod(c, (method)modaltracker_float, "float", A_FLOAT, 0);
  
  CLASS_ATTR_DOUBLE(c, "overlap", 0, t_modaltracker, overlap);
  CLASS_ATTR_LONG(c, "pickup", 0, t_modaltracker, pickup);
  
  CLASS_ATTR_FILTER_CLIP(c, "overlap", 0.0, 1.0);
  
  CLASS_ATTR_ACCESSORS(c, "overlap", NULL, (method)modaltracker_overlap);
  CLASS_ATTR_ACCESSORS(c, "pickup", NULL, (method)modaltracker_pickup);
  
  CLASS_ATTR_ORDER(c, "overlap", 0, "1");
  CLASS_ATTR_ORDER(c, "pickup", 0, "2");
  
  class_dspinit(c);
  class_register(CLASS_BOX, c);
  modaltracker_class = c;

  return 0;
}