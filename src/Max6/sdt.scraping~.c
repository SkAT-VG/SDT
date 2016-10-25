#include "ext.h"
#include "ext_obex.h"
#include "z_dsp.h"
#include "SDT/SDTCommon.h"
#include "SDT/SDTControl.h"

typedef struct _scraping {
  t_pxobject ob;
  SDTScraping *scraping;
  double grain, force, velocity;
} t_scraping;

static t_class *scraping_class = NULL;

void *scraping_new(t_symbol *s, long argc, t_atom *argv) {
  t_scraping *x;
  
  x = (t_scraping *)object_alloc(scraping_class);
  if (x) {
    dsp_setup((t_pxobject *)x, 1);
    outlet_new(x, "signal");
    x->scraping = SDTScraping_new();
    attr_args_process(x, argc, argv);
  }
  return (x);
}

void scraping_free(t_scraping *x) {
  dsp_free((t_pxobject *)x);
  SDTScraping_free(x->scraping);
}

void scraping_assist(t_scraping *x, void *b, long m, long a, char *s) {
  if (m == ASSIST_INLET) {
    sprintf(s, "(signal): Surface profile\n"
               "Object attributes and messages (see help patch)");
  } 
  else {
    sprintf(s, "(signal): Applied force on resonator");
  }
}

void scraping_grain(t_scraping *x, void *attr, long ac, t_atom *av) {
  x->grain = atom_getfloat(av);
  SDTScraping_setGrain(x->scraping, x->grain);
}

void scraping_force(t_scraping *x, void *attr, long ac, t_atom *av) {
  x->force = atom_getfloat(av);
  SDTScraping_setForce(x->scraping, x->force);
}

void scraping_velocity(t_scraping *x, void *attr, long ac, t_atom *av) {
  x->velocity = atom_getfloat(av);
  SDTScraping_setVelocity(x->scraping, x->velocity);
}

t_int *scraping_perform(t_int *w) {
  t_scraping *x = (t_scraping *)(w[1]);
  t_float *in = (t_float *)(w[2]);
  t_float *out = (t_float *)(w[3]);
  int n = (int)w[4];
  
  while (n--) {
    *out++ = (float)SDTScraping_dsp(x->scraping, *in++);
  }

  return w + 5;
}

void scraping_dsp(t_scraping *x, t_signal **sp, short *count) {
  SDT_setSampleRate(sp[0]->s_sr);
  //SDTScraping_update(x->scraping);
  dsp_add(scraping_perform, 4, x, sp[0]->s_vec, sp[1]->s_vec, sp[0]->s_n);
}

void scraping_perform64(t_scraping *x, t_object *dsp64, double **ins, long numins, double **outs, long numouts, long sampleframes, long flags, void *userparam) {
  t_double *in = ins[0];
  t_double *out = outs[0];
  int n = sampleframes;
  
  while (n--) {
    *out++ = SDTScraping_dsp(x->scraping, *in++);
  }
}

void scraping_dsp64(t_scraping *x, t_object *dsp64, short *count, double samplerate, long maxvectorsize, long flags) {
  SDT_setSampleRate(samplerate);
  object_method(dsp64, gensym("dsp_add64"), x, scraping_perform64, 0, NULL);
}

int C74_EXPORT main(void) {	
  t_class *c = class_new("sdt.scraping~", (method)scraping_new, (method)scraping_free, (long)sizeof(t_scraping), 0L, A_GIMME, 0);
	
  class_addmethod(c, (method)scraping_dsp, "dsp", A_CANT, 0);
  class_addmethod(c, (method)scraping_dsp64, "dsp64", A_CANT, 0);
  class_addmethod(c, (method)scraping_assist, "assist", A_CANT, 0);
  
  CLASS_ATTR_DOUBLE(c, "grain", 0, t_scraping, grain);
  CLASS_ATTR_DOUBLE(c, "force", 0, t_scraping, force);
  CLASS_ATTR_DOUBLE(c, "velocity", 0, t_scraping, velocity);
  
  CLASS_ATTR_FILTER_CLIP(c, "grain", 0.0, 1.0);
  CLASS_ATTR_FILTER_MIN(c, "force", 0.0);
  CLASS_ATTR_FILTER_MIN(c, "velocity", 0.0);
  
  CLASS_ATTR_ACCESSORS(c, "grain", NULL, (method)scraping_grain);
  CLASS_ATTR_ACCESSORS(c, "force", NULL, (method)scraping_force);
  CLASS_ATTR_ACCESSORS(c, "velocity", NULL, (method)scraping_velocity);
   
  CLASS_ATTR_ORDER(c, "grain", 0, "1");
  CLASS_ATTR_ORDER(c, "force", 0, "2");
  CLASS_ATTR_ORDER(c, "velocity", 0, "3");
  
  
  class_dspinit(c);
  class_register(CLASS_BOX, c);
  scraping_class = c;

  return 0;
}