#include "SDT/SDTCommon.h"
#include "SDT/SDTControl.h"
#include "SDTCommonPd.h"
#ifdef NT
#pragma warning(disable : 4244)
#pragma warning(disable : 4305)
#endif

static t_class *scraping_class;

typedef struct _scraping {
  t_object obj;
  SDTScraping *scraping;
  t_float f;
  t_outlet *out;
  const char *key;
} t_scraping;

SDT_PD_SETTER(scraping, Scraping, scraping, Grain, )
SDT_PD_SETTER(scraping, Scraping, scraping, Force, )
SDT_PD_SETTER(scraping, Scraping, scraping, Velocity, )

t_int *scraping_perform(t_int *w) {
  t_scraping *x = (t_scraping *)(w[1]);
  t_float *in = (t_float *)(w[2]);
  t_float *out = (t_float *)(w[3]);
  int n = (int)w[4];

  while (n--) {
    *out++ = (t_float)SDTScraping_dsp(x->scraping, *in++);
  }
  return w + 5;
}

void scraping_dsp(t_scraping *x, t_signal **sp) {
  SDT_setSampleRate(sp[0]->s_sr);
  dsp_add(scraping_perform, 4, x, sp[0]->s_vec, sp[1]->s_vec, sp[0]->s_n);
}

void *scraping_new(t_symbol *s, long argc, t_atom *argv) {
  SDT_PD_ARG_PARSE(1, A_SYMBOL)

  t_scraping *x = (t_scraping *)pd_new(scraping_class);
  x->scraping = SDTScraping_new();

  SDT_PD_REGISTER(Scraping, scraping, "scraping process", 0)

  x->out = outlet_new(&x->obj, gensym("signal"));
  return x;
}

void scraping_free(t_scraping *x) {
  SDT_PD_FREE(Scraping, scraping)
  outlet_free(x->out);
}

void scraping_tilde_setup(void) {
  scraping_class = class_new(gensym("scraping~"), (t_newmethod)scraping_new,
                             (t_method)scraping_free, (long)sizeof(t_scraping),
                             CLASS_DEFAULT, A_GIMME, 0);
  CLASS_MAINSIGNALIN(scraping_class, t_scraping, f);
  class_addmethod(scraping_class, (t_method)scraping_setGrain, gensym("grain"),
                  A_FLOAT, 0);
  class_addmethod(scraping_class, (t_method)scraping_setForce, gensym("force"),
                  A_FLOAT, 0);
  class_addmethod(scraping_class, (t_method)scraping_setVelocity,
                  gensym("velocity"), A_FLOAT, 0);
  class_addmethod(scraping_class, (t_method)scraping_dsp, gensym("dsp"), 0);
}