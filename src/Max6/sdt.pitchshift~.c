#include "ext.h"
#include "ext_obex.h"
#include "z_dsp.h"
#include "SDT/SDTCommon.h"
#include "SDT/SDTEffects.h"

typedef struct _pitchshift {
	t_pxobject ob;
	SDTPitchShift *shift;
	double ratio, overlap;
} t_pitchshift;

static t_class *pitchshift_class = NULL;

void *pitchshift_new(t_symbol *s, long argc, t_atom *argv) {
  t_pitchshift *x = (t_pitchshift *)object_alloc(pitchshift_class);
  long size, oversample;
  
  if (x) {
    dsp_setup((t_pxobject *)x, 1);
    outlet_new(x, "signal");
    if (argc > 0 && atom_gettype(&argv[0]) == A_LONG) {
      size = atom_getlong(&argv[0]);
    }
    else {
      size = 2048;
    }
    if (argc > 1 && atom_gettype(&argv[1]) == A_LONG) {
      oversample = atom_getlong(&argv[1]);
    }
    else {
      oversample = 4;
    }
    x->shift = SDTPitchShift_new(size, oversample);
    attr_args_process(x, argc, argv);
  }
  return (x);
}

void pitchshift_free(t_pitchshift *x) {
  dsp_free((t_pxobject *)x);
  SDTPitchShift_free(x->shift);
}

void pitchshift_assist(t_pitchshift *x, void *b, long m, long a, char *s) {
  if (m == ASSIST_INLET) { //inlet
    sprintf(s, "(signal): Input\n"
               "Object attributes and messages (see help patch)");
  } 
  else {
    sprintf(s, "(signal): Output sound");
  }
}

void pitchshift_ratio(t_pitchshift *x, void *attr, long ac, t_atom *av) {
  x->ratio = atom_getfloat(av);
  SDTPitchShift_setRatio(x->shift, x->ratio);
}

void pitchshift_overlap(t_pitchshift *x, void *attr, long ac, t_atom *av) {
  x->overlap = atom_getfloat(av);
  SDTPitchShift_setOverlap(x->shift, x->overlap);
}

t_int *pitchshift_perform(t_int *w) {
  t_pitchshift *x = (t_pitchshift *)(w[1]);
  t_float *in = (t_float *)(w[2]);
  t_float *out = (t_float *)(w[3]);
  int n = (int)w[4];
  
  while (n--) {
    *out++ = (float)SDTPitchShift_dsp(x->shift, *in++);
  }
  
  return w + 5;
}

void pitchshift_dsp(t_pitchshift *x, t_signal **sp, short *count) {
  SDT_setSampleRate(sp[0]->s_sr);
  dsp_add(pitchshift_perform, 4, x, sp[0]->s_vec, sp[1]->s_vec, sp[0]->s_n);
}

void pitchshift_perform64(t_pitchshift *x, t_object *dsp64, double **ins, long numins, double **outs, long numouts, long sampleframes, long flags, void *userparam) {
  t_double *in = ins[0];
  t_double *out = outs[0];
  int n = sampleframes;
  
  while (n--) {
    *out++ = SDTPitchShift_dsp(x->shift, *in++);
  }
}

void pitchshift_dsp64(t_pitchshift *x, t_object *dsp64, short *count, double samplerate, long maxvectorsize, long flags) {
  SDT_setSampleRate(samplerate);
  object_method(dsp64, gensym("dsp_add64"), x, pitchshift_perform64, 0, NULL);
}

int C74_EXPORT main(void) {	
  t_class *c = class_new("sdt.pitchshift~", (method)pitchshift_new, (method)pitchshift_free, (long)sizeof(t_pitchshift), 0L, A_GIMME, 0);

  class_addmethod(c, (method)pitchshift_dsp, "dsp", A_CANT, 0);
  class_addmethod(c, (method)pitchshift_dsp64, "dsp64", A_CANT, 0);
  class_addmethod(c, (method)pitchshift_assist, "assist", A_CANT, 0);

  CLASS_ATTR_DOUBLE(c, "ratio", 0, t_pitchshift, ratio);
  CLASS_ATTR_DOUBLE(c, "overlap", 0, t_pitchshift, overlap);
  
  CLASS_ATTR_FILTER_CLIP(c, "ratio", 0.125, 8.0);
  CLASS_ATTR_FILTER_CLIP(c, "overlap", 0.5, 0.875);
  
  CLASS_ATTR_ACCESSORS(c, "ratio", NULL, (method)pitchshift_ratio);
  CLASS_ATTR_ACCESSORS(c, "overlap", NULL, (method)pitchshift_overlap);
  
  class_dspinit(c);
  class_register(CLASS_BOX, c);
  pitchshift_class = c;

  return 0;
}



