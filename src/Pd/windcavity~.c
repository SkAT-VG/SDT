/** \file windcavity~.c
 * Puredata external for the simulation of gas flowing through resonating
 *cavities.
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

static t_class *windcavity_class;

typedef struct _windcavity {
  t_object obj;
  SDTWindCavity *cavity;
  t_float f;
  t_outlet *out;
  const char *key;
} t_windcavity;

SDT_PD_SETTER(windcavity, WindCavity, cavity, Length, )
SDT_PD_SETTER(windcavity, WindCavity, cavity, Diameter, )

static t_int *windcavity_perform(t_int *w) {
  t_windcavity *x = (t_windcavity *)(w[1]);
  t_float *in = (t_float *)(w[2]);
  t_float *out = (t_float *)(w[3]);
  int n = (int)(w[4]);
  while (n--) {
    SDTWindCavity_setWindSpeed(x->cavity, *in++);
    *out++ = (float)SDTWindCavity_dsp(x->cavity);
  }
  return (w + 5);
}

static void windcavity_dsp(t_windcavity *x, t_signal **sp) {
  SDT_setSampleRate(sp[0]->s_sr);
  dsp_add(windcavity_perform, 4, x, sp[0]->s_vec, sp[1]->s_vec, sp[0]->s_n);
}

static void *windcavity_new(t_symbol *s, int argc, t_atom *argv) {
  SDT_PD_ARG_PARSE(2, A_SYMBOL, A_FLOAT)

  t_windcavity *x = (t_windcavity *)pd_new(windcavity_class);
  x->cavity = SDTWindCavity_new(
      GET_ARG(1, atom_getfloat, SDT_WINDCAVITY_MAXDELAY_DEFAULT));

  SDT_PD_REGISTER(WindCavity, cavity, "wind cavity", 0)

  x->out = outlet_new(&x->obj, gensym("signal"));
  return (x);
}

static void windcavity_free(t_windcavity *x) {
  outlet_free(x->out);
  SDT_PD_FREE(WindCavity, cavity)
}

void windcavity_tilde_setup(void) {
  windcavity_class =
      class_new(gensym("windcavity~"), (t_newmethod)windcavity_new,
                (t_method)windcavity_free, sizeof(t_windcavity), CLASS_DEFAULT,
                A_GIMME, 0);
  CLASS_MAINSIGNALIN(windcavity_class, t_windcavity, f);
  class_addmethod(windcavity_class, (t_method)windcavity_setLength,
                  gensym("length"), A_FLOAT, 0);
  class_addmethod(windcavity_class, (t_method)windcavity_setDiameter,
                  gensym("diameter"), A_FLOAT, 0);
  class_addmethod(windcavity_class, (t_method)windcavity_dsp, gensym("dsp"), 0);
}
