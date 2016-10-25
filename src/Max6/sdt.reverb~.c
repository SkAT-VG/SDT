#include "ext.h"
#include "ext_obex.h"
#include "z_dsp.h"
#include "SDT/SDTCommon.h"
#include "SDT/SDTEffects.h"

typedef struct _reverb {
  t_pxobject ob;
  SDTReverb *reverb;
  double xSize, ySize, zSize, randomness, time, time1k;
} t_reverb;

static t_class *reverb_class = NULL;

void *reverb_new(t_symbol *s, long argc, t_atom *argv) {
  t_reverb *x = (t_reverb *)object_alloc(reverb_class);
  long maxDelay;
  
  if (x) {
    dsp_setup((t_pxobject *)x, 1);
    outlet_new(x, "signal");
    if (argc > 0 && atom_gettype(&argv[0]) == A_LONG) {
      maxDelay = atom_getlong(&argv[0]);
    }
    else {
      maxDelay = 44100;
    }
    x->reverb = SDTReverb_new(maxDelay);
    attr_args_process(x, argc, argv);
  }
  return (x);
}

void reverb_free(t_reverb *x) {
  dsp_free((t_pxobject *)x);
  SDTReverb_free(x->reverb);
}

void reverb_assist(t_reverb *x, void *b, long m, long a, char *s) {
  if (m == ASSIST_INLET) { //inlet
    sprintf(s, "(signal): Input\n"
               "Object attributes and messages (see help patch)");
  } 
  else {
    sprintf(s, "(signal): Output sound");
  }
}

void reverb_xSize(t_reverb *x, void *attr, long ac, t_atom *av) {
    x->xSize = atom_getfloat(av);
    SDTReverb_setXSize(x->reverb, x->xSize);
    SDTReverb_update(x->reverb);
}

void reverb_ySize(t_reverb *x, void *attr, long ac, t_atom *av) {
    x->ySize = atom_getfloat(av);
    SDTReverb_setYSize(x->reverb, x->ySize);
    SDTReverb_update(x->reverb);
}

void reverb_zSize(t_reverb *x, void *attr, long ac, t_atom *av) {
    x->zSize = atom_getfloat(av);
    SDTReverb_setZSize(x->reverb, x->zSize);
    SDTReverb_update(x->reverb);
}

void reverb_randomness(t_reverb *x, void *attr, long ac, t_atom *av) {
    x->randomness = atom_getfloat(av);
    SDTReverb_setRandomness(x->reverb, x->randomness);
    SDTReverb_update(x->reverb);
}

void reverb_time(t_reverb *x, void *attr, long ac, t_atom *av) {
    x->time = atom_getfloat(av);
	SDTReverb_setTime(x->reverb, x->time);
	SDTReverb_update(x->reverb);
}

void reverb_time1k(t_reverb *x, void *attr, long ac, t_atom *av) {
    x->time1k = atom_getfloat(av);
	SDTReverb_setTime1k(x->reverb, x->time1k);
	SDTReverb_update(x->reverb);
}

t_int *reverb_perform(t_int *w) {
  t_reverb *x = (t_reverb *)(w[1]);
  t_float *in = (t_float *)(w[2]);
  t_float *out = (t_float *)(w[3]);
  int n = (int)w[4];
	
  while (n--) {
    *out++ = (float)SDTReverb_dsp(x->reverb, *in++);
  }

  return w + 5;
}

void reverb_dsp(t_reverb *x, t_signal **sp, short *count) {
  SDT_setSampleRate(sp[0]->s_sr);
  SDTReverb_setXSize(x->reverb, x->xSize);
  SDTReverb_setYSize(x->reverb, x->ySize);
  SDTReverb_setZSize(x->reverb, x->zSize);
  SDTReverb_setRandomness(x->reverb, x->randomness);
  SDTReverb_setTime(x->reverb, x->time);
  SDTReverb_setTime1k(x->reverb, x->time1k);
  SDTReverb_update(x->reverb);
  dsp_add(reverb_perform, 4, x, sp[0]->s_vec, sp[1]->s_vec, sp[0]->s_n);
}

void reverb_perform64(t_reverb *x, t_object *dsp64, double **ins, long numins,
                      double **outs, long numouts, long sampleframes,
                      long flags, void *userparam) {
  t_double *in = ins[0];
  t_double *out = outs[0];
  int n = sampleframes;
	
  while (n--) {
    *out++ = SDTReverb_dsp(x->reverb, *in++);
  }
}

void reverb_dsp64(t_reverb *x, t_object *dsp64, short *count, double samplerate,
                  long maxvectorsize, long flags) {
  SDT_setSampleRate(samplerate);
  SDTReverb_setXSize(x->reverb, x->xSize);
  SDTReverb_setYSize(x->reverb, x->ySize);
  SDTReverb_setZSize(x->reverb, x->zSize);
  SDTReverb_setRandomness(x->reverb, x->randomness);
  SDTReverb_setTime(x->reverb, x->time);
  SDTReverb_setTime1k(x->reverb, x->time1k);
  SDTReverb_update(x->reverb);
  object_method(dsp64, gensym("dsp_add64"), x, reverb_perform64, 0, NULL);
}

int C74_EXPORT main(void) {	
  t_class *c = class_new("sdt.reverb~", (method)reverb_new, (method)reverb_free,
                         (long)sizeof(t_reverb), 0L, A_GIMME, 0);
	
  class_addmethod(c, (method)reverb_dsp, "dsp", A_CANT, 0);
  class_addmethod(c, (method)reverb_dsp64, "dsp64", A_CANT, 0);
  class_addmethod(c, (method)reverb_assist, "assist",	A_CANT, 0);

  CLASS_ATTR_DOUBLE(c, "xSize", 0, t_reverb, xSize);
  CLASS_ATTR_DOUBLE(c, "ySize", 0, t_reverb, ySize);
  CLASS_ATTR_DOUBLE(c, "zSize", 0, t_reverb, zSize);
  CLASS_ATTR_DOUBLE(c, "randomness", 0, t_reverb, randomness);
  CLASS_ATTR_DOUBLE(c, "time", 0, t_reverb, time);
  CLASS_ATTR_DOUBLE(c, "time1k", 0, t_reverb, time1k);
  
  CLASS_ATTR_FILTER_MIN(c, "xSize", 0.0);
  CLASS_ATTR_FILTER_MIN(c, "ySize", 0.0);
  CLASS_ATTR_FILTER_MIN(c, "zSize", 0.0);
  CLASS_ATTR_FILTER_CLIP(c, "randomness", 0.0, 1.0);
  CLASS_ATTR_FILTER_MIN(c, "time", 0.0);
  CLASS_ATTR_FILTER_MIN(c, "time1k", 0.0);
  
  CLASS_ATTR_ACCESSORS(c, "xSize", NULL, (method)reverb_xSize);
  CLASS_ATTR_ACCESSORS(c, "ySize", NULL, (method)reverb_ySize);
  CLASS_ATTR_ACCESSORS(c, "zSize", NULL, (method)reverb_zSize);
  CLASS_ATTR_ACCESSORS(c, "randomness", NULL, (method)reverb_randomness);
  CLASS_ATTR_ACCESSORS(c, "time", NULL, (method)reverb_time);
  CLASS_ATTR_ACCESSORS(c, "time1k", NULL, (method)reverb_time1k);
  
  CLASS_ATTR_ORDER(c, "xSize", 0, "1");
  CLASS_ATTR_ORDER(c, "ySize", 0, "2");
  CLASS_ATTR_ORDER(c, "zSize", 0, "3");
  CLASS_ATTR_ORDER(c, "randomness", 0, "4");
  CLASS_ATTR_ORDER(c, "time", 0, "5");
  CLASS_ATTR_ORDER(c, "time1k", 0, "6");

  class_dspinit(c);
  class_register(CLASS_BOX, c);
  reverb_class = c;

  return 0;
}