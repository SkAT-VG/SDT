#include "ext.h"
#include "ext_obex.h"
#include "z_dsp.h"
#include "SDT/SDTCommon.h"
#include "SDT/SDTDemix.h"

typedef struct _demix {
  t_pxobject ob;
  SDTDemix *demix;
  double overlap, noiseThreshold, tonalThreshold;
} t_demix;

static t_class *demix_class = NULL;

void *demix_new(t_symbol *s, long argc, t_atom *argv) {
  t_demix *x = (t_demix *)object_alloc(demix_class);
  long tmpSize, windowSize, kernelRadius;
  
  if (x) {
    dsp_setup((t_pxobject *)x, 1);
    outlet_new(x, "signal");
    outlet_new(x, "signal");
    outlet_new(x, "signal");
    if (argc > 0 && atom_gettype(&argv[0]) == A_LONG) {
      tmpSize = atom_getlong(&argv[0]);
      windowSize = SDT_nextPow2(tmpSize);
      if (tmpSize != windowSize) {
        post("sdt.demix~: Window size must be a power of 2, setting it to %d", windowSize);
      }
    }
    else {
      windowSize = 1024;
    }
    if (argc > 1 && atom_gettype(&argv[1]) == A_LONG) {
      kernelRadius = atom_getlong(&argv[1]);
    }
    else {
      kernelRadius = 2;
    }
    x->demix = SDTDemix_new(windowSize, kernelRadius);
    attr_args_process(x, argc, argv);
  }
  return (x);
}

void demix_free(t_demix *x) {
  dsp_free((t_pxobject *)x);
  SDTDemix_free(x->demix);
}

void demix_assist(t_demix *x, void *b, long m, long a, char *s) {
  if (m == ASSIST_INLET) { //inlet
    sprintf(s, "(signal): Input\n"
               "Object attributes and messages (see help patch)");
  } 
  else {
    switch (a) {
      case 0:
        sprintf(s, "(signal): Transients");
        break;
      case 1:
        sprintf(s, "(signal): Stationary components");
        break;
      case 2:
        sprintf(s, "(signal): Residual");
        break;
      default:
        break;
    }    
  }
}

void demix_overlap(t_demix *x, void *attr, long ac, t_atom *av) {
  x->overlap = atom_getfloat(av);
  SDTDemix_setOverlap(x->demix, x->overlap);
}

void demix_noiseThreshold(t_demix *x, void *attr, long ac, t_atom *av) {
  x->noiseThreshold = atom_getfloat(av);
  SDTDemix_setNoiseThreshold(x->demix, x->noiseThreshold);
}

void demix_tonalThreshold(t_demix *x, void *attr, long ac, t_atom *av) {
  x->tonalThreshold = atom_getfloat(av);
  SDTDemix_setTonalThreshold(x->demix, x->tonalThreshold);
}

t_int *demix_perform(t_int *w) {
  t_demix *x = (t_demix *)(w[1]);
  t_float *in = (t_float *)(w[2]);
  t_float *out0 = (t_float *)(w[3]);
  t_float *out1 = (t_float *)(w[4]);
  t_float *out2 = (t_float *)(w[5]);
  int n = (int)w[6];
  double tmpOuts[3];
  
  while (n--) {
    SDTDemix_dsp(x->demix, tmpOuts, *in++);
    *out0++ = (float)tmpOuts[0];
    *out1++ = (float)tmpOuts[1];
    *out2++ = (float)tmpOuts[2];
  }

  return w + 7;
}

void demix_dsp(t_demix *x, t_signal **sp, short *count) {
  SDT_setSampleRate(sp[0]->s_sr);
  dsp_add(demix_perform, 6, x, sp[0]->s_vec, sp[1]->s_vec, sp[2]->s_vec, sp[3]->s_vec, sp[0]->s_n);
}

void demix_perform64(t_demix *x, t_object *dsp64, double **ins, long numins,
                      double **outs, long numouts, long sampleframes,
                      long flags, void *userparam) {
  t_double *in = ins[0];
  t_double *out0 = outs[0];
  t_double *out1 = outs[1];
  t_double *out2 = outs[2];
  int n = sampleframes;
  double tmpOuts[3];
  
  while (n--) {
    SDTDemix_dsp(x->demix, tmpOuts, *in++);
    *out0++ = tmpOuts[0];
    *out1++ = tmpOuts[1];
    *out2++ = tmpOuts[2];
  }
}

void demix_dsp64(t_demix *x, t_object *dsp64, short *count, double samplerate,
                  long maxvectorsize, long flags) {
  SDT_setSampleRate(samplerate);
  object_method(dsp64, gensym("dsp_add64"), x, demix_perform64, 0, NULL);
}

int C74_EXPORT main(void) {	
  t_class *c = class_new("sdt.demix~", (method)demix_new, (method)demix_free,
                         (long)sizeof(t_demix), 0L, A_GIMME, 0);
	
  class_addmethod(c, (method)demix_dsp, "dsp", A_CANT, 0);
  class_addmethod(c, (method)demix_dsp64, "dsp64", A_CANT, 0);
  class_addmethod(c, (method)demix_assist, "assist", A_CANT, 0);

  CLASS_ATTR_DOUBLE(c, "overlap", 0, t_demix, overlap);
  CLASS_ATTR_DOUBLE(c, "noiseThreshold", 0, t_demix, noiseThreshold);
  CLASS_ATTR_DOUBLE(c, "tonalThreshold", 0, t_demix, tonalThreshold);
  
  CLASS_ATTR_FILTER_CLIP(c, "overlap", 0.5, 1.0);
  CLASS_ATTR_FILTER_CLIP(c, "noiseThreshold", 0.0, 1.0);
  CLASS_ATTR_FILTER_CLIP(c, "tonalThreshold", 0.0, 1.0);
  
  CLASS_ATTR_ACCESSORS(c, "overlap", NULL, (method)demix_overlap);
  CLASS_ATTR_ACCESSORS(c, "noiseThreshold", NULL, (method)demix_noiseThreshold);
  CLASS_ATTR_ACCESSORS(c, "tonalThreshold", NULL, (method)demix_tonalThreshold);
  
  CLASS_ATTR_ORDER(c, "overlap", 0, "1");
  CLASS_ATTR_ORDER(c, "noiseThreshold", 0, "2");
  CLASS_ATTR_ORDER(c, "tonalThreshold", 0, "3");

  class_dspinit(c);
  class_register(CLASS_BOX, c);
  demix_class = c;

  return 0;
}
