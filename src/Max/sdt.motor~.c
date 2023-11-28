#include "SDT/SDTCommon.h"
#include "SDT/SDTMotor.h"
#include "SDTCommonMax.h"
#include "SDT_fileusage.h"
#include "ext.h"
#include "ext_obex.h"
#include "z_dsp.h"

typedef struct _motor {
  t_pxobject ob;
  SDTMotor *motor;
  t_symbol *key;
} t_motor;

static t_class *motor_class = NULL;

void *motor_new(t_symbol *s, long argc, t_atom *argv) {
  SDT_setupMaxLoggers();
  t_motor *x = (t_motor *)object_alloc(motor_class);
  long maxDelay;

  if (x) {
    dsp_setup((t_pxobject *)x, 2);
    outlet_new(x, "signal");
    outlet_new(x, "signal");
    outlet_new(x, "signal");
    if (argc > 0 && atom_gettype(&argv[0]) == A_LONG) {
      maxDelay = atom_getlong(&argv[0]);
    } else {
      maxDelay = 44100;
    }
    x->motor = SDTMotor_new(maxDelay);
    x->key = 0;
    attr_args_process(x, argc, argv);
  }
  return (x);
}

void motor_free(t_motor *x) {
  dsp_free((t_pxobject *)x);
  SDT_MAX_FREE(Motor, motor)
}

void motor_assist(t_motor *x, void *b, long m, long a, char *s) {
  if (m == ASSIST_INLET) {
    switch (a) {
      case 0:
        sprintf(s,
                "(signal): Revolutions per minute (RPM)\n"
                "Object attributes and messages (see help patch)");
        break;
      case 1:
        sprintf(s, "(signal): Throttle load [0.0 ~ 1.0]");
        break;
    }
  } else {
    switch (a) {
      case 0:
        sprintf(s, "(signal): Intake noise");
        break;
      case 1:
        sprintf(s, "(signal): Engine vibrations");
        break;
      case 2:
        sprintf(s, "(signal): Exhaust noise");
        break;
      default:
        break;
    }
  }
}

SDT_MAX_KEY(motor, Motor, motor, "motor~", "motor")

SDT_MAX_GETTER(motor, Motor, motor, MaxDelay, long, )
SDT_MAX_ACCESSORS(motor, Motor, motor, Cycle, long, , )
SDT_MAX_ACCESSORS(motor, Motor, motor, Throttle, float, , )
SDT_MAX_ACCESSORS(motor, Motor, motor, NCylinders, long, , )
SDT_MAX_ACCESSORS(motor, Motor, motor, CylinderSize, float, , )
SDT_MAX_ACCESSORS(motor, Motor, motor, CompressionRatio, float, , )
SDT_MAX_ACCESSORS(motor, Motor, motor, SparkTime, float, , )
SDT_MAX_ACCESSORS(motor, Motor, motor, Asymmetry, float, , )
SDT_MAX_ACCESSORS(motor, Motor, motor, Backfire, float, , )
SDT_MAX_ACCESSORS(motor, Motor, motor, IntakeSize, float, , )
SDT_MAX_ACCESSORS(motor, Motor, motor, ExtractorSize, float, , )
SDT_MAX_ACCESSORS(motor, Motor, motor, ExhaustSize, float, , )
SDT_MAX_ACCESSORS(motor, Motor, motor, Expansion, float, , )
SDT_MAX_ACCESSORS(motor, Motor, motor, MufflerSize, float, , )
SDT_MAX_ACCESSORS(motor, Motor, motor, MufflerFeedback, float, , )
SDT_MAX_ACCESSORS(motor, Motor, motor, OutletSize, float, , )
SDT_MAX_ACCESSORS(motor, Motor, motor, Damp, float, , update)
SDT_MAX_ACCESSORS(motor, Motor, motor, Dc, float, , update)

t_int *motor_perform(t_int *w) {
  t_motor *x = (t_motor *)(w[1]);
  t_float *in0 = (t_float *)(w[2]);
  t_float *in1 = (t_float *)(w[3]);
  t_float *out0 = (t_float *)(w[4]);
  t_float *out1 = (t_float *)(w[5]);
  t_float *out2 = (t_float *)(w[6]);
  int n = (int)w[7];
  double tmpOuts[3];

  while (n--) {
    SDTMotor_setRpm(x->motor, *in0++);
    SDTMotor_setThrottle(x->motor, *in1++);
    SDTMotor_dsp(x->motor, tmpOuts);
    *out0++ = (float)tmpOuts[0];
    *out1++ = (float)tmpOuts[1];
    *out2++ = (float)tmpOuts[2];
  }

  return w + 8;
}

void motor_dsp(t_motor *x, t_signal **sp, short *count) {
  SDT_setSampleRate(sp[0]->s_sr);
  SDTMotor_update(x->motor);
  dsp_add(motor_perform, 7, x, sp[0]->s_vec, sp[1]->s_vec, sp[2]->s_vec,
          sp[3]->s_vec, sp[4]->s_vec, sp[0]->s_n);
}

void motor_perform64(t_motor *x, t_object *dsp64, double **ins, long numins,
                     double **outs, long numouts, long sampleframes, long flags,
                     void *userparam) {
  t_double *in0 = ins[0];
  t_double *in1 = ins[1];
  t_double *out0 = outs[0];
  t_double *out1 = outs[1];
  t_double *out2 = outs[2];
  int n = sampleframes;
  double tmpOuts[3];

  while (n--) {
    SDTMotor_setRpm(x->motor, *in0++);
    SDTMotor_setThrottle(x->motor, *in1++);
    SDTMotor_dsp(x->motor, tmpOuts);
    *out0++ = tmpOuts[0];
    *out1++ = tmpOuts[1];
    *out2++ = tmpOuts[2];
  }
}

void motor_dsp64(t_motor *x, t_object *dsp64, short *count, double samplerate,
                 long maxvectorsize, long flags) {
  SDT_setSampleRate(samplerate);
  SDTMotor_update(x->motor);
  object_method(dsp64, gensym("dsp_add64"), x, motor_perform64, 0, NULL);
}

void C74_EXPORT ext_main(void *r) {
  t_class *c = class_new("sdt.motor~", (method)motor_new, (method)motor_free,
                         (long)sizeof(t_motor), 0L, A_GIMME, 0);

  class_addmethod(c, (method)motor_dsp, "dsp", A_CANT, 0);
  class_addmethod(c, (method)motor_dsp64, "dsp64", A_CANT, 0);
  class_addmethod(c, (method)motor_assist, "assist", A_CANT, 0);
  class_addmethod(c, (method)SDT_fileusage, "fileusage", A_CANT, 0L);

  SDT_CLASS_KEY(motor, "1")

  SDT_MAX_RO_ATTRIBUTE(c, motor, MaxDelay, maxDelay, long, 0);

  SDT_MAX_ATTRIBUTE(c, motor, Cycle, cycle, long, 0);
  SDT_MAX_ATTRIBUTE(c, motor, Throttle, throttle, float64, 0);
  SDT_MAX_ATTRIBUTE(c, motor, NCylinders, nCylinders, long, 0);
  SDT_MAX_ATTRIBUTE(c, motor, CylinderSize, cylinderSize, float64, 0);
  SDT_MAX_ATTRIBUTE(c, motor, CompressionRatio, compressionRatio, float64, 0);
  SDT_MAX_ATTRIBUTE(c, motor, SparkTime, sparkTime, float64, 0);
  SDT_MAX_ATTRIBUTE(c, motor, Asymmetry, asymmetry, float64, 0);
  SDT_MAX_ATTRIBUTE(c, motor, Backfire, backfire, float64, 0);
  SDT_MAX_ATTRIBUTE(c, motor, IntakeSize, intakeSize, float64, 0);
  SDT_MAX_ATTRIBUTE(c, motor, ExtractorSize, extractorSize, float64, 0);
  SDT_MAX_ATTRIBUTE(c, motor, ExhaustSize, exhaustSize, float64, 0);
  SDT_MAX_ATTRIBUTE(c, motor, Expansion, expansion, float64, 0);
  SDT_MAX_ATTRIBUTE(c, motor, MufflerSize, mufflerSize, float64, 0);
  SDT_MAX_ATTRIBUTE(c, motor, MufflerFeedback, mufflerFeedback, float64, 0);
  SDT_MAX_ATTRIBUTE(c, motor, OutletSize, outletSize, float64, 0);
  SDT_MAX_ATTRIBUTE(c, motor, Damp, damp, float64, 0);
  SDT_MAX_ATTRIBUTE(c, motor, Dc, dc, float64, 0);

  CLASS_ATTR_FILTER_CLIP(c, "cycle", 0, 1);
  CLASS_ATTR_FILTER_CLIP(c, "nCylinders", 1, 12);
  CLASS_ATTR_FILTER_MIN(c, "cylinderSize", 0.0);
  CLASS_ATTR_FILTER_CLIP(c, "compressionRatio", 5.0, 20.0);
  CLASS_ATTR_FILTER_CLIP(c, "sparkTime", 0.000001, 1.0);
  CLASS_ATTR_FILTER_CLIP(c, "asymmetry", 0.0, 1.0);
  CLASS_ATTR_FILTER_CLIP(c, "backfire", 0.0, 1.0);
  CLASS_ATTR_FILTER_MIN(c, "intakeSize", 0.0);
  CLASS_ATTR_FILTER_MIN(c, "extractorSize", 0.0);
  CLASS_ATTR_FILTER_MIN(c, "exhaustSize", 0.0);
  CLASS_ATTR_FILTER_MIN(c, "mufflerSize", 0.0);
  CLASS_ATTR_FILTER_MIN(c, "outletSize", 0.0);
  CLASS_ATTR_FILTER_CLIP(c, "expansion", 0.0, 1.0);
  CLASS_ATTR_FILTER_CLIP(c, "mufflerFeedback", 0.0, 1.0);
  CLASS_ATTR_FILTER_MIN(c, "damp", 0.0);
  CLASS_ATTR_FILTER_MIN(c, "dc", 0.0);

  CLASS_ATTR_ORDER(c, "cycle", 0, "2");
  CLASS_ATTR_ORDER(c, "nCylinders", 0, "3");
  CLASS_ATTR_ORDER(c, "cylinderSize", 0, "4");
  CLASS_ATTR_ORDER(c, "compressionRatio", 0, "5");
  CLASS_ATTR_ORDER(c, "sparkTime", 0, "6");
  CLASS_ATTR_ORDER(c, "asymmetry", 0, "7");
  CLASS_ATTR_ORDER(c, "backfire", 0, "8");
  CLASS_ATTR_ORDER(c, "intakeSize", 0, "9");
  CLASS_ATTR_ORDER(c, "extractorSize", 0, "10");
  CLASS_ATTR_ORDER(c, "exhaustSize", 0, "11");
  CLASS_ATTR_ORDER(c, "mufflerSize", 0, "12");
  CLASS_ATTR_ORDER(c, "outletSize", 0, "13");
  CLASS_ATTR_ORDER(c, "expansion", 0, "14");
  CLASS_ATTR_ORDER(c, "mufflerFeedback", 0, "15");
  CLASS_ATTR_ORDER(c, "damp", 0, "16");
  CLASS_ATTR_ORDER(c, "dc", 0, "17");

  class_dspinit(c);
  class_register(CLASS_BOX, c);
  motor_class = c;
}