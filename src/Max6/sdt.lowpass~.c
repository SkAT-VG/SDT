#include "ext.h"
#include "ext_obex.h"
#include "z_dsp.h"
#include "SDT/SDTCommon.h"
#include "SDT/SDTFilters.h"

typedef struct _lowpass {
  t_pxobject ob;
  SDTBiquad *lowpass;
  double cutoff;
} t_lowpass;

static t_class *lowpass_class = NULL;

void *lowpass_new(t_symbol *s, long argc, t_atom *argv) {
  t_lowpass *x = (t_lowpass *)object_alloc(lowpass_class);
  long nSections;
  
  if (x) {
    dsp_setup((t_pxobject *)x, 1);
    outlet_new(x, "signal");
    if (argc > 0 && atom_gettype(&argv[0]) == A_LONG) {
      nSections = atom_getlong(&argv[0]);
    }
    else {
      nSections = 1;
    }
    x->lowpass = SDTBiquad_new(nSections);
    attr_args_process(x, argc, argv);
  }
  return (x);
}

void lowpass_free(t_lowpass *x) {
  dsp_free((t_pxobject *)x);
  SDTBiquad_free(x->lowpass);
}

void lowpass_assist(t_lowpass *x, void *b, long m, long a, char *s) {
  if (m == ASSIST_INLET) { //inlet
    sprintf(s, "(signal): Input\n"
               "Object attributes and messages (see help patch)");
  } 
  else {
    sprintf(s, "(signal): Output sound");
  }
}

void lowpass_cutoff(t_lowpass *x, void *attr, long ac, t_atom *av) {
    x->cutoff = atom_getfloat(av);
    SDTBiquad_butterworthHP(x->lowpass, x->cutoff);
}

t_int *lowpass_perform(t_int *w) {
  t_lowpass *x = (t_lowpass *)(w[1]);
  t_float *in = (t_float *)(w[2]);
  t_float *out = (t_float *)(w[3]);
  int n = (int)w[4];
	
  while (n--) {
    *out++ = (float)SDTBiquad_dsp(x->lowpass, *in++);
  }

  return w + 5;
}

void lowpass_dsp(t_lowpass *x, t_signal **sp, short *count) {
  SDT_setSampleRate(sp[0]->s_sr);
  SDTBiquad_butterworthHP(x->lowpass, x->cutoff);
  dsp_add(lowpass_perform, 4, x, sp[0]->s_vec, sp[1]->s_vec, sp[0]->s_n);
}

void lowpass_perform64(t_lowpass *x, t_object *dsp64, double **ins, long numins,
                      double **outs, long numouts, long sampleframes,
                      long flags, void *userparam) {
  t_double *in = ins[0];
  t_double *out = outs[0];
  int n = sampleframes;
	
  while (n--) {
    *out++ = SDTBiquad_dsp(x->lowpass, *in++);
  }
}

void lowpass_dsp64(t_lowpass *x, t_object *dsp64, short *count, double samplerate,
                  long maxvectorsize, long flags) {
  SDT_setSampleRate(samplerate);
  SDTBiquad_butterworthHP(x->lowpass, x->cutoff);
  object_method(dsp64, gensym("dsp_add64"), x, lowpass_perform64, 0, NULL);
}

int C74_EXPORT main(void) {	
  t_class *c = class_new("sdt.lowpass~", (method)lowpass_new, (method)lowpass_free,
                         (long)sizeof(t_lowpass), 0L, A_GIMME, 0);
	
  class_addmethod(c, (method)lowpass_dsp, "dsp", A_CANT, 0);
  class_addmethod(c, (method)lowpass_dsp64, "dsp64", A_CANT, 0);
  class_addmethod(c, (method)lowpass_assist, "assist",	A_CANT, 0);

  CLASS_ATTR_DOUBLE(c, "cutoff", 0, t_lowpass, cutoff);
  CLASS_ATTR_FILTER_MIN(c, "cutoff", 0.0);
  CLASS_ATTR_ACCESSORS(c, "cutoff", NULL, (method)lowpass_cutoff);

  class_dspinit(c);
  class_register(CLASS_BOX, c);
  lowpass_class = c;

  return 0;
}