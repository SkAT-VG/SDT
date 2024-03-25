#include "SDT/SDTCommon.h"
#include "SDT/SDTInteractors.h"
#include "SDTCommonPd.h"
#include "m_pd.h"
#ifdef NT
#pragma warning(disable : 4244)
#pragma warning(disable : 4305)
#endif

static t_class *friction_class;

typedef struct _friction {
  t_object obj;
  SDTInteractor *friction;
  char *key0, *key1;
  t_float f;
  t_inlet *in1, *in2, *in3, *in4, *in5;
  t_outlet **outs;
  t_float **outBuffers;
  long nOuts;
} t_friction;

SDT_PD_SETTER(friction, Friction, friction, NormalForce, )
SDT_PD_SETTER(friction, Friction, friction, StribeckVelocity, )
SDT_PD_SETTER(friction, Friction, friction, StaticCoefficient, )
SDT_PD_SETTER(friction, Friction, friction, DynamicCoefficient, )
SDT_PD_SETTER(friction, Friction, friction, Stiffness, )
SDT_PD_SETTER(friction, Friction, friction, Dissipation, )
SDT_PD_SETTER(friction, Friction, friction, Viscosity, )
SDT_PD_SETTER(friction, Friction, friction, Noisiness, )
SDT_PD_SETTER(friction, Friction, friction, BreakAway, )
SDT_PD_SETTER(friction, Interactor, friction, FirstPoint, )
SDT_PD_SETTER(friction, Interactor, friction, SecondPoint, )

t_int *friction_perform(t_int *w) {
  t_friction *x = (t_friction *)(w[1]);
  t_float *in0 = (t_float *)(w[2]);
  t_float *in1 = (t_float *)(w[3]);
  t_float *in2 = (t_float *)(w[4]);
  t_float *in3 = (t_float *)(w[5]);
  t_float *in4 = (t_float *)(w[6]);
  t_float *in5 = (t_float *)(w[7]);
  int n = (int)w[8];
  double tmpOuts[2 * SDT_RESONATOR_NPICKUPS_MAX];
  int i, k;

  for (k = 0; k < n; k++) {
    SDTInteractor_dsp(x->friction, *in0++, *in1++, *in2++, *in3++, *in4++,
                      *in5++, tmpOuts);
    for (i = 0; i < x->nOuts; i++) {
      x->outBuffers[i][k] = (t_float)tmpOuts[i];
    }
  }
  return w + 9;
}

void friction_dsp(t_friction *x, t_signal **sp) {
  int i;

  SDT_setSampleRate(sp[0]->s_sr);
  for (i = 0; i < x->nOuts; i++) {
    x->outBuffers[i] = sp[6 + i]->s_vec;
  }
  dsp_add(friction_perform, 8, x, sp[0]->s_vec, sp[1]->s_vec, sp[2]->s_vec,
          sp[3]->s_vec, sp[4]->s_vec, sp[5]->s_vec, sp[0]->s_n);
}

void *friction_new(t_symbol *s, long argc, t_atom *argv) {
  t_friction *x;
  int i;

  if (argc < 3 || argv[0].a_type != A_SYMBOL || argv[1].a_type != A_SYMBOL ||
      argv[2].a_type != A_FLOAT) {
    pd_error(
        NULL,
        "sdt.friction~: Please provide the id of the first resonator as first "
        "argument, "
        "the id of the second resonator as second argument "
        "and the number of available outlets as third argument.");
    return NULL;
  }
  x = (t_friction *)pd_new(friction_class);
  x->friction = SDTFriction_new();
  x->key0 = (char *)(atom_getsymbol(argv)->s_name);
  x->key1 = (char *)(atom_getsymbol(argv + 1)->s_name);
  if (SDT_registerInteractor(x->friction, x->key0, x->key1)) {
    pd_error(x,
             "sdt.friction~: Error registering the interaction. Probably a "
             "duplicate id?");
    SDTFriction_free(x->friction);
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

void friction_free(t_friction *x) {
  int i;

  SDT_unregisterInteractor(x->key0, x->key1);
  SDTFriction_free(x->friction);
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

void friction_tilde_setup(void) {
  friction_class = class_new(gensym("friction~"), (t_newmethod)friction_new,
                             (t_method)friction_free, (long)sizeof(t_friction),
                             CLASS_DEFAULT, A_GIMME, 0);
  CLASS_MAINSIGNALIN(friction_class, t_friction, f);
  class_addmethod(friction_class, (t_method)friction_setNormalForce,
                  gensym("force"), A_FLOAT, 0);
  class_addmethod(friction_class, (t_method)friction_setStribeckVelocity,
                  gensym("stribeck"), A_FLOAT, 0);
  class_addmethod(friction_class, (t_method)friction_setStaticCoefficient,
                  gensym("kStatic"), A_FLOAT, 0);
  class_addmethod(friction_class, (t_method)friction_setDynamicCoefficient,
                  gensym("kDynamic"), A_FLOAT, 0);
  class_addmethod(friction_class, (t_method)friction_setStiffness,
                  gensym("stiffness"), A_FLOAT, 0);
  class_addmethod(friction_class, (t_method)friction_setDissipation,
                  gensym("dissipation"), A_FLOAT, 0);
  class_addmethod(friction_class, (t_method)friction_setViscosity,
                  gensym("viscosity"), A_FLOAT, 0);
  class_addmethod(friction_class, (t_method)friction_setNoisiness,
                  gensym("noisiness"), A_FLOAT, 0);
  class_addmethod(friction_class, (t_method)friction_setBreakAway,
                  gensym("breakAway"), A_FLOAT, 0);
  class_addmethod(friction_class, (t_method)friction_setFirstPoint,
                  gensym("contact0"), A_FLOAT, 0);
  class_addmethod(friction_class, (t_method)friction_setSecondPoint,
                  gensym("contact1"), A_FLOAT, 0);
  class_addmethod(friction_class, (t_method)friction_dsp, gensym("dsp"), 0);
}
