#include "SDT/SDTCommon.h"
#include "SDT/SDTDCMotor.h"
#include "SDTCommonPd.h"
#ifdef NT
#pragma warning(disable : 4244)
#pragma warning(disable : 4305)
#endif

static t_class *dcmotor_class;

typedef struct _dcmotor {
  t_object obj;
  SDTDCMotor *motor;
  const char *key;
  t_float f;
  t_inlet *in;
  t_outlet *out;
} t_dcmotor;

SDT_PD_SETTER(dcmotor, DCMotor, motor, Coils, )
SDT_PD_SETTER(dcmotor, DCMotor, motor, Size, )
SDT_PD_SETTER(dcmotor, DCMotor, motor, Reson, )
SDT_PD_SETTER(dcmotor, DCMotor, motor, GearRatio, )
SDT_PD_SETTER(dcmotor, DCMotor, motor, Harshness, )
SDT_PD_SETTER(dcmotor, DCMotor, motor, RotorGain, )
SDT_PD_SETTER(dcmotor, DCMotor, motor, GearGain, )
SDT_PD_SETTER(dcmotor, DCMotor, motor, BrushGain, )
SDT_PD_SETTER(dcmotor, DCMotor, motor, AirGain, )

static t_int *dcmotor_perform(t_int *w) {
  t_dcmotor *x = (t_dcmotor *)(w[1]);
  t_float *in0 = (t_float *)(w[2]);
  t_float *in1 = (t_float *)(w[3]);
  t_float *out = (t_float *)(w[4]);
  int n = (int)(w[5]);
  while (n--) {
    SDTDCMotor_setRpm(x->motor, *in0++);
    SDTDCMotor_setLoad(x->motor, *in1++);
    *out++ = SDTDCMotor_dsp(x->motor);
  }
  return (w + 6);
}

static void dcmotor_dsp(t_dcmotor *x, t_signal **sp) {
  SDT_setSampleRate(sp[0]->s_sr);
  SDTDCMotor_update(x->motor);
  dsp_add(dcmotor_perform, 5, x, sp[0]->s_vec, sp[1]->s_vec, sp[2]->s_vec,
          sp[0]->s_n);
}

static void *dcmotor_new(t_symbol *s, int argc, t_atom *argv) {
  SDT_PD_ARG_PARSE(2, A_SYMBOL, A_FLOAT)

  t_dcmotor *x = (t_dcmotor *)pd_new(dcmotor_class);
  x->motor =
      SDTDCMotor_new(GET_ARG(1, atom_getfloat, SDT_DCMOTOR_MAXSIZE_DEFAULT));

  SDT_PD_REGISTER(DCMotor, motor, "electric motor", 0)

  x->in = inlet_new(&x->obj, &x->obj.ob_pd, &s_signal, &s_signal);
  x->out = outlet_new(&x->obj, gensym("signal"));
  return (x);
}

static void dcmotor_free(t_dcmotor *x) {
  inlet_free(x->in);
  outlet_free(x->out);
  SDT_PD_FREE(DCMotor, motor)
}

void dcmotor_tilde_setup(void) {
  dcmotor_class = class_new(gensym("dcmotor~"), (t_newmethod)dcmotor_new,
                            (t_method)dcmotor_free, sizeof(t_dcmotor),
                            CLASS_DEFAULT, A_GIMME, 0);
  CLASS_MAINSIGNALIN(dcmotor_class, t_dcmotor, f);
  class_addmethod(dcmotor_class, (t_method)dcmotor_setCoils, gensym("coils"),
                  A_FLOAT, 0);
  class_addmethod(dcmotor_class, (t_method)dcmotor_setSize, gensym("size"),
                  A_FLOAT, 0);
  class_addmethod(dcmotor_class, (t_method)dcmotor_setReson, gensym("reson"),
                  A_FLOAT, 0);
  class_addmethod(dcmotor_class, (t_method)dcmotor_setGearRatio,
                  gensym("gearRatio"), A_FLOAT, 0);
  class_addmethod(dcmotor_class, (t_method)dcmotor_setHarshness,
                  gensym("harshness"), A_FLOAT, 0);
  class_addmethod(dcmotor_class, (t_method)dcmotor_setRotorGain,
                  gensym("rotorGain"), A_FLOAT, 0);
  class_addmethod(dcmotor_class, (t_method)dcmotor_setGearGain,
                  gensym("gearGain"), A_FLOAT, 0);
  class_addmethod(dcmotor_class, (t_method)dcmotor_setBrushGain,
                  gensym("brushGain"), A_FLOAT, 0);
  class_addmethod(dcmotor_class, (t_method)dcmotor_setAirGain,
                  gensym("airGain"), A_FLOAT, 0);
  class_addmethod(dcmotor_class, (t_method)dcmotor_dsp, gensym("dsp"), 0);
}
