#include "m_pd.h"
#include "SDT/SDTCommon.h"
#include "SDT/SDTGases.h"
#ifdef NT
#pragma warning( disable : 4244 )
#pragma warning( disable : 4305 )
#endif

static t_class *explosion_class;

typedef struct _explosion {
  t_object obj;
  SDTExplosion *explosion;
  t_outlet *out0, *out1;
} t_explosion;

void explosion_blastTime(t_explosion *x, t_float f) {
  SDTExplosion_setBlastTime(x->explosion, f);
}

void explosion_scatterTime(t_explosion *x, t_float f) {
  SDTExplosion_setScatterTime(x->explosion, f);
}

void explosion_dispersion(t_explosion *x, t_float f) {
  SDTExplosion_setDispersion(x->explosion, f);
}

void explosion_distance(t_explosion *x, t_float f) {
  SDTExplosion_setDistance(x->explosion, f);
}

void explosion_waveSpeed(t_explosion *x, t_float f) {
  SDTExplosion_setWaveSpeed(x->explosion, f);
}

void explosion_windSpeed(t_explosion *x, t_float f) {
  SDTExplosion_setWindSpeed(x->explosion, f);
}

void explosion_update(t_explosion *x) {
  SDTExplosion_update(x->explosion);
}

static t_int *explosion_perform(t_int *w) { 
  t_explosion *x = (t_explosion *)(w[1]);
  t_float *out0 = (t_float *)(w[2]);
  t_float *out1 = (t_float *)(w[3]);
  int n = (int)(w[4]);
  double tmpOuts[2];
  while (n--) {
    SDTExplosion_dsp(x->explosion, tmpOuts);
    *out0++ = tmpOuts[0];
    *out1++ = tmpOuts[1];
  }
  return (w+5);
}

static void explosion_dsp(t_explosion *x, t_signal **sp) {
  SDT_setSampleRate(sp[0]->s_sr);
  dsp_add(explosion_perform, 4, x, sp[0]->s_vec, sp[1]->s_vec, sp[0]->s_n);
}

static void *explosion_new(t_symbol *s, int argc, t_atom *argv) {
  t_float maxScatter, maxDelay;
  t_explosion *x = (t_explosion *)pd_new(explosion_class);
  x->out0 = outlet_new(&x->obj, gensym("signal"));
  x->out1 = outlet_new(&x->obj, gensym("signal"));
  if (argc > 0 && argv[0].a_type == A_FLOAT) {
    maxScatter = atom_getfloat(&argv[0]);
  }
  else {
    maxScatter = 44100.0;
  }
  if (argc > 1 && argv[1].a_type == A_FLOAT) {
    maxDelay = atom_getfloat(&argv[1]);
  }
  else {
    maxDelay = 441000.0;
  }
  x->explosion = SDTExplosion_new(maxScatter, maxDelay);
  return (x);
}

static void explosion_free(t_explosion *x) {
  outlet_free(x->out0);
  outlet_free(x->out1);
  SDTExplosion_free(x->explosion);
}

void explosion_tilde_setup(void) {
  explosion_class = class_new(gensym("explosion~"), (t_newmethod)explosion_new, (t_method)explosion_free, sizeof(t_explosion), CLASS_DEFAULT, A_GIMME, 0);
  class_addmethod(explosion_class, (t_method)explosion_update, gensym("bang"), 0);
  class_addmethod(explosion_class, (t_method)explosion_blastTime, gensym("blastTime"), A_FLOAT, 0);
  class_addmethod(explosion_class, (t_method)explosion_scatterTime, gensym("scatterTime"), A_FLOAT, 0);
  class_addmethod(explosion_class, (t_method)explosion_dispersion, gensym("dispersion"), A_FLOAT, 0);
  class_addmethod(explosion_class, (t_method)explosion_distance, gensym("distance"), A_FLOAT, 0);
  class_addmethod(explosion_class, (t_method)explosion_waveSpeed, gensym("waveSpeed"), A_FLOAT, 0);
  class_addmethod(explosion_class, (t_method)explosion_windSpeed, gensym("windSpeed"), A_FLOAT, 0);
  class_addmethod(explosion_class, (t_method)explosion_dsp, gensym("dsp"), 0);
}
