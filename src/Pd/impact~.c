#include "m_pd.h"
#include "SDT/SDTCommon.h"
#include "SDT/SDTSolids.h"
#ifdef NT
#pragma warning( disable : 4244 )
#pragma warning( disable : 4305 )
#endif

static t_class *impact_class;

typedef struct _impact {
  t_object obj;
  SDTInteractor *impact;
  char *key0, *key1;
  t_float f;
  t_inlet *in1, *in2, *in3, *in4, *in5;
  t_outlet **outs;
  t_float **outBuffers;
  long nOuts;
} t_impact;

void impact_stiffness(t_impact *x, t_float f) {
  SDTImpact_setStiffness(x->impact, f);
}

void impact_dissipation(t_impact *x, t_float f) {
    SDTImpact_setDissipation(x->impact, f);
}

void impact_shape(t_impact *x, t_float f) {
    SDTImpact_setShape(x->impact, f);
}

void impact_contact0(t_impact *x, t_float f) {
  SDTInteractor_setFirstPoint(x->impact, f);
}

void impact_contact1(t_impact *x, t_float f) {
  SDTInteractor_setSecondPoint(x->impact, f);
}

t_int *impact_perform(t_int *w) {
  t_impact *x = (t_impact *)(w[1]);
  t_float *in0 = (t_float *)(w[2]);
  t_float *in1 = (t_float *)(w[3]);
  t_float *in2 = (t_float *)(w[4]);
  t_float *in3 = (t_float *)(w[5]);
  t_float *in4 = (t_float *)(w[6]);
  t_float *in5 = (t_float *)(w[7]);
  int n = (int)w[8];
  double tmpOuts[2 * SDT_MAX_PICKUPS];
  int i, k;
  
  for (k = 0; k < n; k++) {
    SDTInteractor_dsp(x->impact, *in0++, *in1++, *in2++, *in3++, *in4++, *in5++, tmpOuts);
    for (i = 0; i < x->nOuts; i++) {
      x->outBuffers[i][k] = (t_float)tmpOuts[i];
    }
  }
  return w + 9;
}

void impact_dsp(t_impact *x, t_signal **sp) {
  int i;
  
  SDT_setSampleRate(sp[0]->s_sr);
  for (i = 0; i < x->nOuts; i++) {
    x->outBuffers[i] = sp[6+i]->s_vec;
  }
  dsp_add(impact_perform, 8, x, sp[0]->s_vec, sp[1]->s_vec, sp[2]->s_vec,
          sp[3]->s_vec, sp[4]->s_vec, sp[5]->s_vec, sp[0]->s_n);
}

void *impact_new(t_symbol *s, long argc, t_atom *argv) {
  t_impact *x;
  int i;
  
  if (argc < 3 || argv[0].a_type != A_SYMBOL || argv[1].a_type != A_SYMBOL || argv[2].a_type != A_FLOAT) {
    error("sdt.impact~: Please provide the id of the first resonator as first argument, "
          "the id of the second resonator as second argument "
          "and the number of available outlets as third argument.");
    return NULL;
  }
  x = (t_impact *)pd_new(impact_class);
  x->impact = SDTImpact_new();
  x->key0 = (char *)(atom_getsymbol(argv)->s_name);
  x->key1 = (char *)(atom_getsymbol(argv + 1)->s_name);
  if (SDT_registerInteractor(x->impact, x->key0, x->key1)) {
    error("sdt.impact~: Error registering the interaction. Probably a duplicate id?");
    SDTImpact_free(x->impact);
    return NULL;
  }
  x->in1 = inlet_new(&x->obj, &x->obj.ob_pd, &s_signal, &s_signal);
  x->in2 = inlet_new(&x->obj, &x->obj.ob_pd, &s_signal, &s_signal);
  x->in3 = inlet_new(&x->obj, &x->obj.ob_pd, &s_signal, &s_signal);
  x->in4 = inlet_new(&x->obj, &x->obj.ob_pd, &s_signal, &s_signal);
  x->in5 = inlet_new(&x->obj, &x->obj.ob_pd, &s_signal, &s_signal);
  x->nOuts = atom_getint(argv + 2);
  x->outs = (t_outlet **)getbytes(x->nOuts * sizeof(t_outlet *));
  x->outBuffers = (t_float **)getbytes(x->nOuts * sizeof(t_float *));
  for (i = 0; i < x->nOuts; i++) { 
    x->outs[i] = outlet_new(&x->obj, gensym("signal"));
  }
  return x;
}

void impact_free(t_impact *x) {
  int i;
  
  SDT_unregisterInteractor(x->key0, x->key1);
  SDTImpact_free(x->impact);
  inlet_free(x->in1);
  inlet_free(x->in2);
  inlet_free(x->in3);
  inlet_free(x->in4);
  inlet_free(x->in5);
  for (i = 0; i < x->nOuts; i++) {
    outlet_free(x->outs[i]);
  }
  freebytes(x->outs, x->nOuts * sizeof(t_outlet *));
  freebytes(x->outBuffers, x->nOuts * sizeof(t_float *));
}

void impact_tilde_setup(void) {	
  impact_class = class_new(gensym("impact~"), (t_newmethod)impact_new, (t_method)impact_free,
                           (long)sizeof(t_impact), CLASS_DEFAULT, A_GIMME, 0);
  CLASS_MAINSIGNALIN(impact_class, t_impact, f);
  class_addmethod(impact_class, (t_method)impact_stiffness, gensym("stiffness"), A_FLOAT, 0);
  class_addmethod(impact_class, (t_method)impact_dissipation, gensym("dissipation"), A_FLOAT, 0);
  class_addmethod(impact_class, (t_method)impact_shape, gensym("shape"), A_FLOAT, 0);
  class_addmethod(impact_class, (t_method)impact_contact0, gensym("contact0"), A_FLOAT, 0);
  class_addmethod(impact_class, (t_method)impact_contact1, gensym("contact1"), A_FLOAT, 0);
  class_addmethod(impact_class, (t_method)impact_dsp, gensym("dsp"), 0);
}