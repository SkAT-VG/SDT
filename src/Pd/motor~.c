#include "SDT/SDTCommon.h"
#include "SDT/SDTMotor.h"
#include "SDTCommonPd.h"
#ifdef NT
#pragma warning(disable : 4244)
#pragma warning(disable : 4305)
#endif

static t_class *motor_class;

typedef struct _motor {
  t_object obj;
  SDTMotor *motor;
  t_float f;
  t_inlet *in1;
  t_outlet *out0, *out1, *out2;
  const char *key;
} t_motor;

SDT_PD_SETTER(motor, Motor, motor, Cycle, )
SDT_PD_SETTER(motor, Motor, motor, Throttle, )
SDT_PD_SETTER(motor, Motor, motor, NCylinders, )
SDT_PD_SETTER(motor, Motor, motor, CylinderSize, )
SDT_PD_SETTER(motor, Motor, motor, CompressionRatio, )
SDT_PD_SETTER(motor, Motor, motor, SparkTime, )
SDT_PD_SETTER(motor, Motor, motor, Asymmetry, )
SDT_PD_SETTER(motor, Motor, motor, Backfire, )
SDT_PD_SETTER(motor, Motor, motor, IntakeSize, )
SDT_PD_SETTER(motor, Motor, motor, ExtractorSize, )
SDT_PD_SETTER(motor, Motor, motor, ExhaustSize, )
SDT_PD_SETTER(motor, Motor, motor, Expansion, )
SDT_PD_SETTER(motor, Motor, motor, MufflerSize, )
SDT_PD_SETTER(motor, Motor, motor, MufflerFeedback, )
SDT_PD_SETTER(motor, Motor, motor, OutletSize, )
SDT_PD_SETTER(motor, Motor, motor, Damp, update)
SDT_PD_SETTER(motor, Motor, motor, Dc, update)

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
  return (w + 8);
}

static void motor_dsp(t_motor *x, t_signal **sp) {
  SDT_setSampleRate(sp[0]->s_sr);
  SDTMotor_update(x->motor);
  dsp_add(motor_perform, 7, x, sp[0]->s_vec, sp[1]->s_vec, sp[2]->s_vec,
          sp[3]->s_vec, sp[4]->s_vec, sp[0]->s_n);
}

static void *motor_new(t_symbol *s, int argc, t_atom *argv) {
  SDT_PD_ARG_PARSE(2, A_SYMBOL, A_FLOAT)

  t_motor *x = (t_motor *)pd_new(motor_class);
  x->motor =
      SDTMotor_new(GET_ARG(1, atom_getfloat, SDT_MOTOR_MAXDELAY_DEFAULT));

  SDT_PD_REGISTER(Motor, motor, "motor", 0)

  x->in1 = inlet_new(&x->obj, &x->obj.ob_pd, &s_signal, &s_signal);
  x->out0 = outlet_new(&x->obj, gensym("signal"));
  x->out1 = outlet_new(&x->obj, gensym("signal"));
  x->out2 = outlet_new(&x->obj, gensym("signal"));
  return (x);
}

static void motor_free(t_motor *x) {
  inlet_free(x->in1);
  outlet_free(x->out0);
  outlet_free(x->out1);
  outlet_free(x->out2);
  SDT_PD_FREE(Motor, motor)
}

void motor_tilde_setup(void) {
  motor_class =
      class_new(gensym("motor~"), (t_newmethod)motor_new, (t_method)motor_free,
                sizeof(t_motor), CLASS_DEFAULT, A_GIMME, 0);
  CLASS_MAINSIGNALIN(motor_class, t_motor, f);
  class_addmethod(motor_class, (t_method)motor_setCycle, gensym("cycle"),
                  A_FLOAT, 0);
  class_addmethod(motor_class, (t_method)motor_setNCylinders,
                  gensym("nCylinders"), A_FLOAT, 0);
  class_addmethod(motor_class, (t_method)motor_setCylinderSize,
                  gensym("cylinderSize"), A_FLOAT, 0);
  class_addmethod(motor_class, (t_method)motor_setCompressionRatio,
                  gensym("compressionRatio"), A_FLOAT, 0);
  class_addmethod(motor_class, (t_method)motor_setSparkTime,
                  gensym("sparkTime"), A_FLOAT, 0);
  class_addmethod(motor_class, (t_method)motor_setAsymmetry,
                  gensym("asymmetry"), A_FLOAT, 0);
  class_addmethod(motor_class, (t_method)motor_setBackfire, gensym("backfire"),
                  A_FLOAT, 0);
  class_addmethod(motor_class, (t_method)motor_setIntakeSize,
                  gensym("intakeSize"), A_FLOAT, 0);
  class_addmethod(motor_class, (t_method)motor_setExtractorSize,
                  gensym("extractorSize"), A_FLOAT, 0);
  class_addmethod(motor_class, (t_method)motor_setExhaustSize,
                  gensym("exhaustSize"), A_FLOAT, 0);
  class_addmethod(motor_class, (t_method)motor_setExpansion,
                  gensym("expansion"), A_FLOAT, 0);
  class_addmethod(motor_class, (t_method)motor_setMufflerSize,
                  gensym("mufflerSize"), A_FLOAT, 0);
  class_addmethod(motor_class, (t_method)motor_setMufflerFeedback,
                  gensym("mufflerFeedback"), A_FLOAT, 0);
  class_addmethod(motor_class, (t_method)motor_setOutletSize,
                  gensym("outletSize"), A_FLOAT, 0);
  class_addmethod(motor_class, (t_method)motor_setDamp, gensym("damp"), A_FLOAT,
                  0);
  class_addmethod(motor_class, (t_method)motor_setDc, gensym("dc"), A_FLOAT, 0);
  class_addmethod(motor_class, (t_method)motor_dsp, gensym("dsp"), 0);
}
