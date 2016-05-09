#include "m_pd.h"
#include "SDT/SDTCommon.h"
#include "SDT/SDTControl.h"
#ifdef NT
#pragma warning( disable : 4244 )
#pragma warning( disable : 4305 )
#endif

static t_class *scraping_class;

typedef struct _scraping {
  t_object obj;
  SDTScraping *scraping;
  t_float f;
  t_outlet *out;
} t_scraping;

void scraping_grain(t_scraping *x, t_float f) {
  SDTScraping_setGrain(x->scraping, f);
}

void scraping_force(t_scraping *x, t_float f) {
  SDTScraping_setForce(x->scraping, f);
}

void scraping_velocity(t_scraping *x, t_float f) {
  SDTScraping_setVelocity(x->scraping, f);
}

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
  t_scraping *x;
  
  x = (t_scraping *)pd_new(scraping_class);
  x->scraping = SDTScraping_new(); 
  x->out = outlet_new(&x->obj, gensym("signal"));
  return x;
}

void scraping_free(t_scraping *x) {
  SDTScraping_free(x->scraping);
  outlet_free(x->out);
}

void scraping_tilde_setup(void) {	
  scraping_class = class_new(gensym("scraping~"), (t_newmethod)scraping_new, (t_method)scraping_free,
                           (long)sizeof(t_scraping), CLASS_DEFAULT, A_GIMME, 0);
  CLASS_MAINSIGNALIN(scraping_class, t_scraping, f);
  class_addmethod(scraping_class, (t_method)scraping_grain, gensym("grain"), A_FLOAT, 0);
  class_addmethod(scraping_class, (t_method)scraping_force, gensym("force"), A_FLOAT, 0);
  class_addmethod(scraping_class, (t_method)scraping_velocity, gensym("velocity"), A_FLOAT, 0);
  class_addmethod(scraping_class, (t_method)scraping_dsp, gensym("dsp"), 0);
}