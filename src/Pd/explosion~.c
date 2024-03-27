#include "SDT/SDTCommon.h"
#include "SDT/SDTGases.h"
#include "SDTCommonPd.h"
#ifdef NT
#pragma warning(disable : 4244)
#pragma warning(disable : 4305)
#endif

static t_class *explosion_class;

typedef struct _explosion {
  t_object obj;
  SDTExplosion *explosion;
  t_outlet *out0, *out1;
  const char *key;
} t_explosion;

SDT_PD_SETTER(explosion, Explosion, explosion, BlastTime, )
SDT_PD_SETTER(explosion, Explosion, explosion, ScatterTime, )
SDT_PD_SETTER(explosion, Explosion, explosion, Dispersion, )
SDT_PD_SETTER(explosion, Explosion, explosion, Distance, )
SDT_PD_SETTER(explosion, Explosion, explosion, WaveSpeed, )
SDT_PD_SETTER(explosion, Explosion, explosion, WindSpeed, )

void explosion_trigger(t_explosion *x) { SDTExplosion_trigger(x->explosion); }

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
  return (w + 5);
}

static void explosion_dsp(t_explosion *x, t_signal **sp) {
  SDT_setSampleRate(sp[0]->s_sr);
  dsp_add(explosion_perform, 4, x, sp[0]->s_vec, sp[1]->s_vec, sp[0]->s_n);
}

static void *explosion_new(t_symbol *s, int argc, t_atom *argv) {
  SDT_PD_ARG_PARSE(3, A_SYMBOL, A_FLOAT, A_FLOAT)

  t_explosion *x = (t_explosion *)pd_new(explosion_class);
  t_float maxScatter, maxDelay;
  maxScatter = GET_ARG(1, atom_getfloat, SDT_EXPLOSION_MAX_SCATTER_DEFAULT);
  maxDelay = GET_ARG(2, atom_getfloat, SDT_EXPLOSION_MAX_DELAY_DEFAULT);
  x->explosion = SDTExplosion_new(maxScatter, maxDelay);

  SDT_PD_REGISTER(Explosion, explosion, "explosion", 0)

  x->out0 = outlet_new(&x->obj, gensym("signal"));
  x->out1 = outlet_new(&x->obj, gensym("signal"));
  return (x);
}

static void explosion_free(t_explosion *x) {
  outlet_free(x->out0);
  outlet_free(x->out1);
  SDT_PD_FREE(Explosion, explosion)
}

void explosion_tilde_setup(void) {
  explosion_class = class_new(gensym("explosion~"), (t_newmethod)explosion_new,
                              (t_method)explosion_free, sizeof(t_explosion),
                              CLASS_DEFAULT, A_GIMME, 0);
  class_addmethod(explosion_class, (t_method)explosion_trigger, gensym("bang"),
                  0);
  class_addmethod(explosion_class, (t_method)explosion_setBlastTime,
                  gensym("blastTime"), A_FLOAT, 0);
  class_addmethod(explosion_class, (t_method)explosion_setScatterTime,
                  gensym("scatterTime"), A_FLOAT, 0);
  class_addmethod(explosion_class, (t_method)explosion_setDispersion,
                  gensym("dispersion"), A_FLOAT, 0);
  class_addmethod(explosion_class, (t_method)explosion_setDistance,
                  gensym("distance"), A_FLOAT, 0);
  class_addmethod(explosion_class, (t_method)explosion_setWaveSpeed,
                  gensym("waveSpeed"), A_FLOAT, 0);
  class_addmethod(explosion_class, (t_method)explosion_setWindSpeed,
                  gensym("windSpeed"), A_FLOAT, 0);
  class_addmethod(explosion_class, (t_method)explosion_dsp, gensym("dsp"), 0);
}
