#include "m_pd.h"
#include "SDT/SDTCommon.h"
#include "SDT/SDTMotor.h"
#ifdef NT
#pragma warning( disable : 4244 )
#pragma warning( disable : 4305 )
#endif

static t_class *motor_class;

typedef struct _motor {
  t_object obj;
  SDTMotor *motor;
  t_float f;
  t_inlet *in1;
  t_outlet *out0, *out1, *out2;
} t_motor;

void motor_cycle(t_motor *x, t_float f) {
  if (f == 0.0) SDTMotor_setFourStroke(x->motor);
  else SDTMotor_setTwoStroke(x->motor);
}

void motor_nCylinders(t_motor *x, t_float f) {
  SDTMotor_setNCylinders(x->motor, (int)f);
}

void motor_cylinderSize(t_motor *x, t_float f) {
  SDTMotor_setCylinderSize(x->motor, f);
}

void motor_compressionRatio(t_motor *x, t_float f) {
  SDTMotor_setCompressionRatio(x->motor, f);
}

void motor_sparkTime(t_motor *x, t_float f) {
  SDTMotor_setSparkTime(x->motor, f);
}

void motor_asymmetry(t_motor *x, t_float f) {
  SDTMotor_setAsymmetry(x->motor, f);
}

void motor_backfire(t_motor *x, t_float f) {
  SDTMotor_setBackfire(x->motor, f);
}

void motor_intakeSize(t_motor *x, t_float f) {
  SDTMotor_setIntakeSize(x->motor, f);
}

void motor_extractorSize(t_motor *x, t_float f) {
  SDTMotor_setExtractorSize(x->motor, f);
}

void motor_exhaustSize(t_motor *x, t_float f) {
  SDTMotor_setExhaustSize(x->motor, f);
}

void motor_expansion(t_motor *x, t_float f) {
  SDTMotor_setExpansion(x->motor, f);
}

void motor_mufflerSize(t_motor *x, t_float f) {
  SDTMotor_setMufflerSize(x->motor, f);
}

void motor_mufflerFeedback(t_motor *x, t_float f) {
  SDTMotor_setMufflerFeedback(x->motor, f);
}

void motor_outletSize(t_motor *x, t_float f) {
  SDTMotor_setOutletSize(x->motor, f);
}

static t_int *motor_perform(t_int *w) { 
  t_motor *x = (t_motor *)(w[1]);
  t_float *in0 = (t_float *)(w[2]);
  t_float *in1 = (t_float *)(w[3]);
  t_float *out0 = (t_float *)(w[4]);
  t_float *out1 = (t_float *)(w[5]);
  t_float *out2 = (t_float *)(w[6]);
  int n = (int)(w[7]);
  double tmpOuts[3];
  while (n--) {
    SDTMotor_setRpm(x->motor, *in0++);
    SDTMotor_setThrottle(x->motor, *in1++);
    SDTMotor_dsp(x->motor, tmpOuts);
    *out0++ = tmpOuts[0];
    *out1++ = tmpOuts[1];
    *out2++ = tmpOuts[2];
  }
  return (w+8);
}

static void motor_dsp(t_motor *x, t_signal **sp) {
  SDT_setSampleRate(sp[0]->s_sr);
  SDTMotor_setFilters(x->motor, 20.0, 20.0);
  dsp_add(motor_perform, 7, x, sp[0]->s_vec, sp[1]->s_vec, sp[2]->s_vec, sp[3]->s_vec, sp[4]->s_vec, sp[0]->s_n);
}

static void *motor_new(t_symbol *s, int argc, t_atom *argv) {
  t_motor *x = (t_motor *)pd_new(motor_class);
  x->in1 = inlet_new(&x->obj, &x->obj.ob_pd, &s_signal, &s_signal);
  x->out0 = outlet_new(&x->obj, gensym("signal"));
  x->out1 = outlet_new(&x->obj, gensym("signal"));
  x->out2 = outlet_new(&x->obj, gensym("signal"));
  if (argc > 0 && argv[0].a_type == A_FLOAT) {
    x->motor = SDTMotor_new(atom_getfloat(argv));
  }
  else {
    x->motor = SDTMotor_new(44100);
  }
  return (x);
}

static void motor_free(t_motor *x) {
  inlet_free(x->in1);
  outlet_free(x->out0);
  outlet_free(x->out1);
  outlet_free(x->out2);
  SDTMotor_free(x->motor);
}

void motor_tilde_setup(void) {
  motor_class = class_new(gensym("motor~"), (t_newmethod)motor_new, (t_method)motor_free, sizeof(t_motor), CLASS_DEFAULT, A_GIMME, 0);
  CLASS_MAINSIGNALIN(motor_class, t_motor, f);
  class_addmethod(motor_class, (t_method)motor_cycle, gensym("cycle"), A_FLOAT, 0);
  class_addmethod(motor_class, (t_method)motor_nCylinders, gensym("nCylinders"), A_FLOAT, 0);
  class_addmethod(motor_class, (t_method)motor_cylinderSize, gensym("cylinderSize"), A_FLOAT, 0);
  class_addmethod(motor_class, (t_method)motor_compressionRatio, gensym("compressionRatio"), A_FLOAT, 0);
  class_addmethod(motor_class, (t_method)motor_sparkTime, gensym("sparkTime"), A_FLOAT, 0);
  class_addmethod(motor_class, (t_method)motor_asymmetry, gensym("asymmetry"), A_FLOAT, 0);
  class_addmethod(motor_class, (t_method)motor_backfire, gensym("backfire"), A_FLOAT, 0);
  class_addmethod(motor_class, (t_method)motor_intakeSize, gensym("intakeSize"), A_FLOAT, 0);
  class_addmethod(motor_class, (t_method)motor_extractorSize, gensym("extractorSize"), A_FLOAT, 0);
  class_addmethod(motor_class, (t_method)motor_exhaustSize, gensym("exhaustSize"), A_FLOAT, 0);
  class_addmethod(motor_class, (t_method)motor_expansion, gensym("expansion"), A_FLOAT, 0);
  class_addmethod(motor_class, (t_method)motor_mufflerSize, gensym("mufflerSize"), A_FLOAT, 0);
  class_addmethod(motor_class, (t_method)motor_mufflerFeedback, gensym("mufflerFeedback"), A_FLOAT, 0);
  class_addmethod(motor_class, (t_method)motor_outletSize, gensym("outletSize"), A_FLOAT, 0);
  class_addmethod(motor_class, (t_method)motor_dsp, gensym("dsp"), 0);
}
