/** \file windkarman~.c
 * Puredata external for the simulation of karman vortex sounds.
 *
 * \author Stefano Baldan (stefanobaldan@iuav.it)
 *
 *****************************************************************************/

#include "SDT/SDTCommon.h"
#include "SDT/SDTGases.h"
#include "SDTCommonPd.h"
#ifdef NT
#pragma warning(disable : 4244)
#pragma warning(disable : 4305)
#endif

static t_class *windkarman_class;

typedef struct _windkarman {
  t_object obj;
  SDTWindKarman *karman;
  t_float f;
  t_outlet *out;
  const char *key;
} t_windkarman;

SDT_PD_SETTER(windkarman, WindKarman, karman, Diameter, )

static t_int *windkarman_perform(t_int *w) {
  t_windkarman *x = (t_windkarman *)(w[1]);
  t_float *in = (t_float *)(w[2]);
  t_float *out = (t_float *)(w[3]);
  int n = (int)(w[4]);
  while (n--) {
    SDTWindKarman_setWindSpeed(x->karman, *in++);
    *out++ = (float)SDTWindKarman_dsp(x->karman);
  }
  return (w + 5);
}

static void windkarman_dsp(t_windkarman *x, t_signal **sp) {
  SDT_setSampleRate(sp[0]->s_sr);
  dsp_add(windkarman_perform, 4, x, sp[0]->s_vec, sp[1]->s_vec, sp[0]->s_n);
}

static void *windkarman_new(t_symbol *s, int argc, t_atom *argv) {
  SDT_PD_ARG_PARSE(1, A_SYMBOL)

  t_windkarman *x = (t_windkarman *)pd_new(windkarman_class);
  x->karman = SDTWindKarman_new();

  SDT_PD_REGISTER(WindKarman, karman, "wind Karman", 0)

  x->out = outlet_new(&x->obj, gensym("signal"));
  return (x);
}

static void windkarman_free(t_windkarman *x) {
  outlet_free(x->out);
  SDT_PD_FREE(WindKarman, karman)
}

void windkarman_tilde_setup(void) {
  windkarman_class =
      class_new(gensym("windkarman~"), (t_newmethod)windkarman_new,
                (t_method)windkarman_free, sizeof(t_windkarman), CLASS_DEFAULT,
                A_GIMME, 0);
  CLASS_MAINSIGNALIN(windkarman_class, t_windkarman, f);
  class_addmethod(windkarman_class, (t_method)windkarman_setDiameter,
                  gensym("diameter"), A_FLOAT, 0);
  class_addmethod(windkarman_class, (t_method)windkarman_dsp, gensym("dsp"), 0);
}
