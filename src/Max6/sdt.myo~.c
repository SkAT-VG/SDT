#include "ext.h"
#include "ext_obex.h"
#include "z_dsp.h"
#include "SDT/SDTCommon.h"
#include "SDT/SDTAnalysis.h"

typedef struct _myoelastic {
  t_pxobject ob;
  SDTMyoelastic *myo;
  void *outlets[4], *send;
  double dcFrequency, lowFrequency, highFrequency, threshold, out[4];
} t_myoelastic;

static t_class *myoelastic_class = NULL;

void myoelastic_assist(t_myoelastic *x, void *b, long m, long a, char *s) {
  if (m == ASSIST_INLET) {
    sprintf(s, "(signal): Input\n"
               "Object attributes and messages (see help patch)");
  } 
  else {
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

void myoelastic_dcFrequency(t_myoelastic *x, void *attr, long ac, t_atom *av) {
  x->dcFrequency = atom_getfloat(av);
  SDTMyoelastic_setDcFrequency(x->myo, x->dcFrequency);
}

void myoelastic_lowFrequency(t_myoelastic *x, void *attr, long ac, t_atom *av) {
  x->lowFrequency = atom_getfloat(av);
  SDTMyoelastic_setLowFrequency(x->myo, x->lowFrequency);
}

void myoelastic_highFrequency(t_myoelastic *x, void *attr, long ac, t_atom *av) {
  x->highFrequency = atom_getfloat(av);
  SDTMyoelastic_setHighFrequency(x->myo, x->highFrequency);
}

void myoelastic_threshold(t_myoelastic *x, void *attr, long ac, t_atom *av) {
  x->threshold = atom_getfloat(av);
  SDTMyoelastic_setThreshold(x->myo, x->threshold);
}

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
    SDTMyoelastic_dsp(x->myo, x->out, *in++);
  }
  qelem_set(x->send);
  
  return w + 4;
}

void myoelastic_dsp(t_myoelastic *x, t_signal **sp, short *count) {
  SDT_setSampleRate(sp[0]->s_sr);
  SDTMyoelastic_setDcFrequency(x->myo, x->dcFrequency);
  SDTMyoelastic_setLowFrequency(x->myo, x->lowFrequency);
  SDTMyoelastic_setHighFrequency(x->myo, x->highFrequency);
  SDTMyoelastic_setThreshold(x->myo, x->threshold);
  dsp_add(myoelastic_perform, 3, x, sp[0]->s_vec, sp[0]->s_n);
}

void myoelastic_perform64(t_myoelastic *x, t_object *dsp64, double **ins, long numins, double **outs, long numouts, long sampleframes, long flags, void *userparam) {
  t_double *in = ins[0];
  int n = sampleframes;
  
  while (n--) {
    if (SDTMyoelastic_dsp(x->myo, x->out, *in++)) qelem_set(x->send);
  }
  
}

void myoelastic_dsp64(t_myoelastic *x, t_object *dsp64, short *count, double samplerate, long maxvectorsize, long flags) {
  SDT_setSampleRate(samplerate);
  SDTMyoelastic_setDcFrequency(x->myo, x->dcFrequency);
  SDTMyoelastic_setLowFrequency(x->myo, x->lowFrequency);
  SDTMyoelastic_setHighFrequency(x->myo, x->highFrequency);
  object_method(dsp64, gensym("dsp_add64"), x, myoelastic_perform64, 0, NULL);
}

void *myoelastic_new(t_symbol *s, long argc, t_atom *argv) {
  t_myoelastic *x;
  long tmpSize, windowSize;
  
  x = (t_myoelastic *)object_alloc(myoelastic_class);
  if (x) {
    dsp_setup((t_pxobject *)x, 1);
    if (argc > 0 && atom_gettype(&argv[0]) == A_LONG) {
      tmpSize = atom_getlong(&argv[0]);
      windowSize = SDT_nextPow2(tmpSize);
      if (tmpSize != windowSize) {
        post("sdt.myo~: Window size must be a power of 2, setting it to %d", windowSize);
      }
    }
    else {
      windowSize = 4096;
    }
    x->myo = SDTMyoelastic_new(windowSize);
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
  SDTMyoelastic_free(x->myo);
  object_free(x->outlets[0]);
  object_free(x->outlets[1]);
  object_free(x->outlets[2]);
  object_free(x->outlets[3]);
  qelem_free(x->send);
}

int C74_EXPORT main(void) {	
  t_class *c = class_new("sdt.myo~", (method)myoelastic_new, (method)myoelastic_free, (long)sizeof(t_myoelastic), 0L, A_GIMME, 0);
	
  class_addmethod(c, (method)myoelastic_dsp, "dsp", A_CANT, 0);
  class_addmethod(c, (method)myoelastic_dsp64, "dsp64", A_CANT, 0);
  class_addmethod(c, (method)myoelastic_assist, "assist", A_CANT, 0);
  
  CLASS_ATTR_DOUBLE(c, "dcFrequency", 0, t_myoelastic, dcFrequency);
  CLASS_ATTR_DOUBLE(c, "lowFrequency", 0, t_myoelastic, lowFrequency);
  CLASS_ATTR_DOUBLE(c, "highFrequency", 0, t_myoelastic, highFrequency);
  CLASS_ATTR_DOUBLE(c, "threshold", 0, t_myoelastic, threshold);
  
  CLASS_ATTR_FILTER_MIN(c, "dcFrequency", 0.0);
  CLASS_ATTR_FILTER_MIN(c, "lowFrequency", 0.0);
  CLASS_ATTR_FILTER_MIN(c, "highFrequency", 0.0);
  CLASS_ATTR_FILTER_MIN(c, "threshold", 0.0);
  
  CLASS_ATTR_ACCESSORS(c, "dcFrequency", NULL, (method)myoelastic_dcFrequency);
  CLASS_ATTR_ACCESSORS(c, "lowFrequency", NULL, (method)myoelastic_lowFrequency);
  CLASS_ATTR_ACCESSORS(c, "highFrequency", NULL, (method)myoelastic_highFrequency);
  CLASS_ATTR_ACCESSORS(c, "threshold", NULL, (method)myoelastic_threshold);
  
  class_dspinit(c);
  class_register(CLASS_BOX, c);
  myoelastic_class = c;

  return 0;
}