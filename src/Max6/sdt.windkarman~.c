#include "ext.h"
#include "ext_obex.h"
#include "z_dsp.h"
#include "SDT/SDTCommon.h"
#include "SDT/SDTGases.h"

typedef struct _windkarman {
	t_pxobject ob;
	SDTWindKarman *karman;
	double diameter;
} t_windkarman;

static t_class *windkarman_class = NULL;

void *windkarman_new(t_symbol *s, long argc, t_atom *argv) {
  t_windkarman *x = (t_windkarman *)object_alloc(windkarman_class);

  if (x) {
    dsp_setup((t_pxobject *)x, 1);
    outlet_new(x, "signal");
    x->karman = SDTWindKarman_new();
    attr_args_process(x, argc, argv);
  }
  return (x);
}

void windkarman_free(t_windkarman *x) {
  dsp_free((t_pxobject *)x);
  SDTWindKarman_free(x->karman);
}

void windkarman_assist(t_windkarman *x, void *b, long m, long a, char *s) {
  if (m == ASSIST_INLET) { //inlet
    sprintf(s, "(signal): Wind speed [0.0 ~ 1.0]\n"
               "Object attributes and messages (see help patch)");
  } 
  else {
    sprintf(s, "(signal): Output sound");
  }
}

void windkarman_diameter(t_windkarman *x, void *attr, long ac, t_atom *av) {
  x->diameter = atom_getfloat(av);
  SDTWindKarman_setDiameter(x->karman, 0.001 * x->diameter);
}

t_int *windkarman_perform(t_int *w) {
  t_windkarman *x = (t_windkarman *)(w[1]);
  t_float *inL = (t_float *)(w[2]);
  t_float *outL = (t_float *)(w[3]);
  int n = (int)w[4];

  while (n--) {
    SDTWindKarman_setWindSpeed(x->karman, *inL++);
    *outL++ = (float)SDTWindKarman_dsp(x->karman);
  }
  
  return w + 5;
}

void windkarman_dsp(t_windkarman *x, t_signal **sp, short *count) {
  SDT_setSampleRate(sp[0]->s_sr);
  dsp_add(windkarman_perform, 4, x, sp[0]->s_vec, sp[1]->s_vec, sp[0]->s_n);
}

void windkarman_perform64(t_windkarman *x, t_object *dsp64, double **ins, long numins, double **outs, long numouts, long sampleframes, long flags, void *userparam) {
  t_double *inL = ins[0];
  t_double *outL = outs[0];
  int n = sampleframes;
	
  while (n--) {
    SDTWindKarman_setWindSpeed(x->karman, *inL++);
    *outL++ = SDTWindKarman_dsp(x->karman);
  }
}

void windkarman_dsp64(t_windkarman *x, t_object *dsp64, short *count, double samplerate, long maxvectorsize, long flags) {
  SDT_setSampleRate(samplerate);
  object_method(dsp64, gensym("dsp_add64"), x, windkarman_perform64, 0, NULL);
}

int C74_EXPORT main(void) {	
  t_class *c = class_new("sdt.windkarman~", (method)windkarman_new, (method)windkarman_free, (long)sizeof(t_windkarman), 0L, A_GIMME, 0);

  class_addmethod(c, (method)windkarman_dsp, "dsp", A_CANT, 0);
  class_addmethod(c, (method)windkarman_dsp64, "dsp64", A_CANT, 0);
  class_addmethod(c, (method)windkarman_assist, "assist", A_CANT, 0);

  CLASS_ATTR_DOUBLE(c, "diameter", 0, t_windkarman, diameter);
  CLASS_ATTR_FILTER_MIN(c, "diameter", 0.001);
  CLASS_ATTR_ACCESSORS(c, "diameter", NULL, (method)windkarman_diameter);

  class_dspinit(c);
  class_register(CLASS_BOX, c);
  windkarman_class = c;

  return 0;
}



