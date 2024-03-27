#include "SDT/SDTCommon.h"
#include "SDT/SDTControl.h"
#include "SDTCommonMax.h"
#include "SDT_fileusage.h"
#include "ext.h"
#include "ext_obex.h"
#include "z_dsp.h"

typedef struct _scraping {
  t_pxobject ob;
  SDTScraping *scraping;
  t_symbol *key;
} t_scraping;

static t_class *scraping_class = NULL;

void *scraping_new(t_symbol *s, long argc, t_atom *argv) {
  SDT_setupMaxLoggers();
  t_scraping *x;

  x = (t_scraping *)object_alloc(scraping_class);
  if (x) {
    dsp_setup((t_pxobject *)x, 1);
    outlet_new(x, "signal");
    x->scraping = SDTScraping_new();
    x->key = 0;
    attr_args_process(x, argc, argv);
  }
  return (x);
}

void scraping_free(t_scraping *x) {
  dsp_free((t_pxobject *)x);
  SDT_MAX_FREE(Scraping, scraping)
}

void scraping_assist(t_scraping *x, void *b, long m, long a, char *s) {
  if (m == ASSIST_INLET) {
    sprintf(s,
            "(signal): Surface profile\n"
            "Object attributes and messages (see help patch)");
  } else {
    sprintf(s, "(signal): Applied force on resonator");
  }
}

SDT_MAX_KEY(scraping, Scraping, scraping, "scraping~", "scraping process")

SDT_MAX_ACCESSORS(scraping, Scraping, scraping, Grain, float, , )
SDT_MAX_ACCESSORS(scraping, Scraping, scraping, Force, float, , )
SDT_MAX_ACCESSORS(scraping, Scraping, scraping, Velocity, float, , )

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
  // SDTScraping_update(x->scraping);
  dsp_add(scraping_perform, 4, x, sp[0]->s_vec, sp[1]->s_vec, sp[0]->s_n);
}

void scraping_perform64(t_scraping *x, t_object *dsp64, double **ins,
                        long numins, double **outs, long numouts,
                        long sampleframes, long flags, void *userparam) {
  t_double *in = ins[0];
  t_double *out = outs[0];
  int n = sampleframes;

  while (n--) {
    *out++ = SDTScraping_dsp(x->scraping, *in++);
  }
}

void scraping_dsp64(t_scraping *x, t_object *dsp64, short *count,
                    double samplerate, long maxvectorsize, long flags) {
  SDT_setSampleRate(samplerate);
  object_method(dsp64, gensym("dsp_add64"), x, scraping_perform64, 0, NULL);
}

void C74_EXPORT ext_main(void *r) {
  t_class *c =
      class_new("sdt.scraping~", (method)scraping_new, (method)scraping_free,
                (long)sizeof(t_scraping), 0L, A_GIMME, 0);

  class_addmethod(c, (method)scraping_dsp, "dsp", A_CANT, 0);
  class_addmethod(c, (method)scraping_dsp64, "dsp64", A_CANT, 0);
  class_addmethod(c, (method)scraping_assist, "assist", A_CANT, 0);
  class_addmethod(c, (method)SDT_fileusage, "fileusage", A_CANT, 0L);

  SDT_CLASS_KEY(scraping, "1")

  SDT_MAX_ATTRIBUTE(c, scraping, Grain, grain, float64, 0);
  SDT_MAX_ATTRIBUTE(c, scraping, Force, force, float64, 0);
  SDT_MAX_ATTRIBUTE(c, scraping, Velocity, velocity, float64, 0);

  CLASS_ATTR_FILTER_CLIP(c, "grain", 0.0, 1.0);
  CLASS_ATTR_FILTER_MIN(c, "force", 0.0);
  CLASS_ATTR_FILTER_MIN(c, "velocity", 0.0);

  CLASS_ATTR_ORDER(c, "grain", 0, "2");
  CLASS_ATTR_ORDER(c, "force", 0, "3");
  CLASS_ATTR_ORDER(c, "velocity", 0, "4");

  class_dspinit(c);
  class_register(CLASS_BOX, c);
  scraping_class = c;
}
