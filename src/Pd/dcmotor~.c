#include "m_pd.h"
#include "SDT/SDTCommon.h"
#include "SDT/SDTDCMotor.h"
#ifdef NT
#pragma warning( disable : 4244 )
#pragma warning( disable : 4305 )
#endif

static t_class *dcmotor_class;

typedef struct _dcmotor {
  t_object obj;
  SDTDCMotor *motor;
  t_float f;
  t_inlet *in;
  t_outlet *out;
} t_dcmotor;

void dcmotor_coils(t_dcmotor *x, t_float f) {
  SDTDCMotor_setCoils(x->motor, f);
}

void dcmotor_size(t_dcmotor *x, t_float f) {
  SDTDCMotor_setSize(x->motor, f);
}

void dcmotor_reson(t_dcmotor *x, t_float f) {
  SDTDCMotor_setReson(x->motor, f);
}

void dcmotor_gearRatio(t_dcmotor *x, t_float f) {
  SDTDCMotor_setGearRatio(x->motor, f);
}

void dcmotor_harshness(t_dcmotor *x, t_float f) {
  SDTDCMotor_setHarshness(x->motor, f);
}

void dcmotor_rotorGain(t_dcmotor *x, t_float f) {
  SDTDCMotor_setRotorGain(x->motor, f);
}

void dcmotor_gearGain(t_dcmotor *x, t_float f) {
  SDTDCMotor_setGearGain(x->motor, f);
}

void dcmotor_brushGain(t_dcmotor *x, t_float f) {
  SDTDCMotor_setBrushGain(x->motor, f);
}

void dcmotor_airGain(t_dcmotor *x, t_float f) {
  SDTDCMotor_setAirGain(x->motor, f);
}

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
  return (w+6);
}

static void dcmotor_dsp(t_dcmotor *x, t_signal **sp) {
  SDT_setSampleRate(sp[0]->s_sr);
  SDTDCMotor_setFilters(x->motor);
  dsp_add(dcmotor_perform, 5, x, sp[0]->s_vec, sp[1]->s_vec, sp[2]->s_vec, sp[0]->s_n);
}

static void *dcmotor_new(t_symbol *s, int argc, t_atom *argv) {
  t_dcmotor *x = (t_dcmotor *)pd_new(dcmotor_class);
  x->in = inlet_new(&x->obj, &x->obj.ob_pd, &s_signal, &s_signal);
  x->out = outlet_new(&x->obj, gensym("signal"));
  if (argc > 0 && argv[0].a_type == A_FLOAT) {
    x->motor = SDTDCMotor_new(atom_getfloat(argv));
  }
  else {
    x->motor = SDTDCMotor_new(48000);
  }
  return (x);
}

static void dcmotor_free(t_dcmotor *x) {
  inlet_free(x->in);
  outlet_free(x->out);
  SDTDCMotor_free(x->motor);
}

void dcmotor_tilde_setup(void) {
  dcmotor_class = class_new(gensym("dcmotor~"), (t_newmethod)dcmotor_new, (t_method)dcmotor_free, sizeof(t_dcmotor), CLASS_DEFAULT, A_GIMME, 0);
  CLASS_MAINSIGNALIN(dcmotor_class, t_dcmotor, f);
  class_addmethod(dcmotor_class, (t_method)dcmotor_coils, gensym("coils"), A_FLOAT, 0);
  class_addmethod(dcmotor_class, (t_method)dcmotor_size, gensym("size"), A_FLOAT, 0);
  class_addmethod(dcmotor_class, (t_method)dcmotor_reson, gensym("reson"), A_FLOAT, 0);
  class_addmethod(dcmotor_class, (t_method)dcmotor_gearRatio, gensym("gearRatio"), A_FLOAT, 0);
  class_addmethod(dcmotor_class, (t_method)dcmotor_harshness, gensym("harshness"), A_FLOAT, 0);
  class_addmethod(dcmotor_class, (t_method)dcmotor_rotorGain, gensym("rotorGain"), A_FLOAT, 0);
  class_addmethod(dcmotor_class, (t_method)dcmotor_gearGain, gensym("gearGain"), A_FLOAT, 0);
  class_addmethod(dcmotor_class, (t_method)dcmotor_brushGain, gensym("brushGain"), A_FLOAT, 0);
  class_addmethod(dcmotor_class, (t_method)dcmotor_airGain, gensym("airGain"), A_FLOAT, 0);
  class_addmethod(dcmotor_class, (t_method)dcmotor_dsp, gensym("dsp"), 0);
}
