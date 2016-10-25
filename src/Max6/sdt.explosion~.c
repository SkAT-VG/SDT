#include "ext.h"
#include "ext_obex.h"
#include "z_dsp.h"
#include "SDT/SDTCommon.h"
#include "SDT/SDTGases.h"

typedef struct _explosion {
  t_pxobject ob;
  SDTExplosion *blow;
  double blastTime, scatterTime, dispersion, distance, waveSpeed, windSpeed;
} t_explosion;

static t_class *explosion_class = NULL;

void *explosion_new(t_symbol *s, long argc, t_atom *argv) {
  t_explosion *x = (t_explosion *)object_alloc(explosion_class);
  long maxScatter, maxDelay;
  
  if (x) {
    dsp_setup((t_pxobject *)x, 0);
    outlet_new(x, "signal");
    outlet_new(x, "signal");
    if (argc > 0 && atom_gettype(&argv[0]) == A_LONG) {
      maxScatter = atom_getlong(&argv[0]);
    }
    else {
      maxScatter = 44100;
    }
    if (argc > 1 && atom_gettype(&argv[1]) == A_LONG) {
      maxDelay = atom_getlong(&argv[1]);
    }
    else {
      maxDelay = 4410000;
    }
    x->blow = SDTExplosion_new(maxScatter, maxDelay);
    attr_args_process(x, argc, argv);
  }
  return (x);
}

void explosion_free(t_explosion *x)  {
	dsp_free((t_pxobject *)x);
    SDTExplosion_free(x->blow);
}

void explosion_assist(t_explosion *x, void *b, long m, long a, char *s) {
  if (m == ASSIST_INLET) { //inlet
    sprintf(s, "(bang): Triggers an explosion\n"
               "Object attributes and messages (see help patch)");
  } 
  else {
    sprintf(s, "(signal): Output sound");
  }
}

void explosion_blastTime(t_explosion *x, void *attr, long ac, t_atom *av) {
  x->blastTime = atom_getfloat(av);
  SDTExplosion_setBlastTime(x->blow, x->blastTime);
}

void explosion_scatterTime(t_explosion *x, void *attr, long ac, t_atom *av) {
  x->scatterTime = atom_getfloat(av);
  SDTExplosion_setScatterTime(x->blow, x->scatterTime);
}

void explosion_dispersion(t_explosion *x, void *attr, long ac, t_atom *av) {
  x->dispersion = atom_getfloat(av);
  SDTExplosion_setDispersion(x->blow, x->dispersion);
}

void explosion_distance(t_explosion *x, void *attr, long ac, t_atom *av) {
  x->distance = atom_getfloat(av);
  SDTExplosion_setDistance(x->blow, x->distance);
}

void explosion_waveSpeed(t_explosion *x, void *attr, long ac, t_atom *av) {
  x->waveSpeed = atom_getfloat(av);
  SDTExplosion_setWaveSpeed(x->blow, x->waveSpeed);
}

void explosion_windSpeed(t_explosion *x, void *attr, long ac, t_atom *av) {
  x->windSpeed = atom_getfloat(av);
  SDTExplosion_setWindSpeed(x->blow, x->windSpeed);
}

void explosion_update(t_explosion *x) {
  SDTExplosion_update(x->blow);
}

t_int *explosion_perform(t_int *w) {
  t_explosion *x = (t_explosion *)(w[1]);
  t_float *out0 = (t_float *)(w[2]);
  t_float *out1 = (t_float *)(w[3]);
  int n = (int)w[4];
  double tmpOuts[2];
  
  while (n--) {
    SDTExplosion_dsp(x->blow, tmpOuts);
    *out0++ = (float)tmpOuts[0];
    *out1++ = (float)tmpOuts[1];
  }

  return w + 5;
}

void explosion_dsp(t_explosion *x, t_signal **sp, short *count) {
  SDT_setSampleRate(sp[0]->s_sr);
  dsp_add(explosion_perform, 4, x, sp[0]->s_vec, sp[1]->s_vec, sp[0]->s_n);
}

void explosion_perform64(t_explosion *x, t_object *dsp64, double **ins, long numins, double **outs, long numouts, long sampleframes, long flags, void *userparam) {
  t_double *out0 = outs[0];
  t_double *out1 = outs[1];
  int n = sampleframes;
  double tmpOuts[2];
  
  while (n--) {
    SDTExplosion_dsp(x->blow, tmpOuts);
    *out0++ = tmpOuts[0];
    *out1++ = tmpOuts[1];
  }
}

void explosion_dsp64(t_explosion *x, t_object *dsp64, short *count, double samplerate, long maxvectorsize, long flags) {
  SDT_setSampleRate(samplerate);
  object_method(dsp64, gensym("dsp_add64"), x, explosion_perform64, 0, NULL);
}

int C74_EXPORT main(void)
{	
  t_class *c = class_new("sdt.explosion~", (method)explosion_new, (method)explosion_free, (long)sizeof(t_explosion), 0L, A_GIMME, 0);

  class_addmethod(c, (method)explosion_dsp, "dsp", A_CANT, 0);
  class_addmethod(c, (method)explosion_dsp64, "dsp64", A_CANT, 0);
  class_addmethod(c, (method)explosion_assist, "assist", A_CANT, 0);
  class_addmethod(c, (method)explosion_update, "bang", 0);
  
  CLASS_ATTR_DOUBLE(c, "blastTime", 0, t_explosion, blastTime);
  CLASS_ATTR_DOUBLE(c, "scatterTime", 0, t_explosion, scatterTime);
  CLASS_ATTR_DOUBLE(c, "dispersion", 0, t_explosion, dispersion);
  CLASS_ATTR_DOUBLE(c, "distance", 0, t_explosion, distance);
  CLASS_ATTR_DOUBLE(c, "waveSpeed", 0, t_explosion, waveSpeed);
  CLASS_ATTR_DOUBLE(c, "windSpeed", 0, t_explosion, windSpeed);
  
  CLASS_ATTR_FILTER_MIN(c, "blastTime", 0.0);
  CLASS_ATTR_FILTER_MIN(c, "scatterTime", 0.0);
  CLASS_ATTR_FILTER_CLIP(c, "dispersion", 0.0, 1.0);
  CLASS_ATTR_FILTER_MIN(c, "distance", 0.0);
  CLASS_ATTR_FILTER_MIN(c, "waveSpeed", 0.0);
  CLASS_ATTR_FILTER_MIN(c, "windSpeed", 0.0);
  
  CLASS_ATTR_ACCESSORS(c, "blastTime", NULL, (method)explosion_blastTime);
  CLASS_ATTR_ACCESSORS(c, "scatterTime", NULL, (method)explosion_scatterTime);
  CLASS_ATTR_ACCESSORS(c, "dispersion", NULL, (method)explosion_dispersion);
  CLASS_ATTR_ACCESSORS(c, "distance", NULL, (method)explosion_distance);
  CLASS_ATTR_ACCESSORS(c, "waveSpeed", NULL, (method)explosion_waveSpeed);
  CLASS_ATTR_ACCESSORS(c, "windSpeed", NULL, (method)explosion_windSpeed);
  
  CLASS_ATTR_ORDER(c, "blastTime", 0, "1");
  CLASS_ATTR_ORDER(c, "scatterTime", 0, "2");
  CLASS_ATTR_ORDER(c, "dispersion", 0, "3");
  CLASS_ATTR_ORDER(c, "distance", 0, "5");
  CLASS_ATTR_ORDER(c, "waveSpeed", 0, "6");
  CLASS_ATTR_ORDER(c, "windSpeed", 0, "7");
  
  class_dspinit(c);
  class_register(CLASS_BOX, c);
  explosion_class = c;

  return 0;
}


