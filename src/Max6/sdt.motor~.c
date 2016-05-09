#include "ext.h"
#include "ext_obex.h"
#include "z_dsp.h"
#include "SDT/SDTCommon.h"
#include "SDT/SDTMotor.h"

typedef struct _motor {
  t_pxobject ob;
  SDTMotor *motor;
  double cylinderSize, compressionRatio, sparkTime, asymmetry, backfire,
         intakeSize, extractorSize, exhaustSize, mufflerSize, outletSize,
         expansion, mufflerFeedback;
  long nCylinders, cycle;
} t_motor;

static t_class *motor_class = NULL;

void *motor_new(t_symbol *s, long argc, t_atom *argv)
{
  t_motor *x = (t_motor *)object_alloc(motor_class);
  long maxDelay;
  
  if (x) {
    dsp_setup((t_pxobject *)x, 2);
    outlet_new(x, "signal");
    outlet_new(x, "signal");
    outlet_new(x, "signal");
    if (argc > 0 && atom_gettype(&argv[0]) == A_LONG) {
      maxDelay = atom_getlong(&argv[0]);
    }
    else {
      maxDelay = 44100;
    }
    x->motor = SDTMotor_new(maxDelay);
    attr_args_process(x, argc, argv);
  }
  return (x);
}

void motor_free(t_motor *x) 
{
  dsp_free((t_pxobject *)x);
  SDTMotor_free(x->motor);
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
  } 
  else {
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

void motor_cycle(t_motor *x, void *attr, long ac, t_atom *av) {
  x->cycle = atom_getlong(av);
  if (x->cycle == 0) SDTMotor_setFourStroke(x->motor);
  else SDTMotor_setTwoStroke(x->motor);
}

void motor_nCylinders(t_motor *x, void *attr, long ac, t_atom *av) {
  x->nCylinders = atom_getlong(av);
  SDTMotor_setNCylinders(x->motor, x->nCylinders);
}

void motor_cylinderSize(t_motor *x, void *attr, long ac, t_atom *av) {
  x->cylinderSize = atom_getfloat(av);
  SDTMotor_setCylinderSize(x->motor, x->cylinderSize);
}

void motor_compressionRatio(t_motor *x, void *attr, long ac, t_atom *av) {
  x->compressionRatio = atom_getfloat(av);
  SDTMotor_setCompressionRatio(x->motor, x->compressionRatio);
}

void motor_sparkTime(t_motor *x, void *attr, long ac, t_atom *av) {
  x->sparkTime = atom_getfloat(av);
  SDTMotor_setSparkTime(x->motor, x->sparkTime);
}

void motor_asymmetry(t_motor *x, void *attr, long ac, t_atom *av) {
  x->asymmetry = atom_getfloat(av);
  SDTMotor_setAsymmetry(x->motor, x->asymmetry);
}

void motor_backfire(t_motor *x, void *attr, long ac, t_atom *av) {
  x->backfire = atom_getfloat(av);
  SDTMotor_setBackfire(x->motor, x->backfire);
}

void motor_intakeSize(t_motor *x, void *attr, long ac, t_atom *av) {
  x->intakeSize = atom_getfloat(av);
  SDTMotor_setIntakeSize(x->motor, x->intakeSize);
}

void motor_extractorSize(t_motor *x, void *attr, long ac, t_atom *av) {
  x->extractorSize = atom_getfloat(av);
  SDTMotor_setExtractorSize(x->motor, x->extractorSize);
}

void motor_exhaustSize(t_motor *x, void *attr, long ac, t_atom *av) {
  x->exhaustSize = atom_getfloat(av);
  SDTMotor_setExhaustSize(x->motor, x->exhaustSize);
}

void motor_expansion(t_motor *x, void *attr, long ac, t_atom *av) {
  x->expansion = atom_getfloat(av);
  SDTMotor_setExpansion(x->motor, x->expansion);
}

void motor_mufflerSize(t_motor *x, void *attr, long ac, t_atom *av) {
  x->mufflerSize = atom_getfloat(av);
  SDTMotor_setMufflerSize(x->motor, x->mufflerSize);
}

void motor_mufflerFeedback(t_motor *x, void *attr, long ac, t_atom *av) {
  x->mufflerFeedback = atom_getfloat(av);
  SDTMotor_setMufflerFeedback(x->motor, x->mufflerFeedback);
}

void motor_outletSize(t_motor *x, void *attr, long ac, t_atom *av) {
  x->outletSize = atom_getfloat(av);
  SDTMotor_setOutletSize(x->motor, x->outletSize);
}

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
  SDTMotor_setFilters(x->motor, 20.0, 20.0);
  dsp_add(motor_perform, 7, x, sp[0]->s_vec, sp[1]->s_vec, sp[2]->s_vec, sp[3]->s_vec, sp[4]->s_vec, sp[0]->s_n);
}

void motor_perform64(t_motor *x, t_object *dsp64, double **ins, long numins,
                     double **outs, long numouts, long sampleframes,
                     long flags, void *userparam) {
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

void motor_dsp64(t_motor *x, t_object *dsp64, short *count, double samplerate, long maxvectorsize, long flags) {
  SDT_setSampleRate(samplerate);
  SDTMotor_setFilters(x->motor, 20.0, 20.0);
  object_method(dsp64, gensym("dsp_add64"), x, motor_perform64, 0, NULL);
}

int C74_EXPORT main(void) {	
  t_class *c = class_new("sdt.motor~", (method)motor_new, (method)motor_free,
                         (long)sizeof(t_motor), 0L, A_GIMME, 0);

  class_addmethod(c, (method)motor_dsp, "dsp", A_CANT, 0);
  class_addmethod(c, (method)motor_dsp64, "dsp64", A_CANT, 0);
  class_addmethod(c, (method)motor_assist, "assist", A_CANT, 0);
  
  CLASS_ATTR_LONG(c, "cycle", 0, t_motor, cycle);
  CLASS_ATTR_LONG(c, "nCylinders", 0, t_motor, nCylinders);
  CLASS_ATTR_DOUBLE(c, "cylinderSize", 0, t_motor, cylinderSize);
  CLASS_ATTR_DOUBLE(c, "compressionRatio", 0, t_motor, compressionRatio);
  CLASS_ATTR_DOUBLE(c, "sparkTime", 0, t_motor, sparkTime);
  CLASS_ATTR_DOUBLE(c, "asymmetry", 0, t_motor, asymmetry);
  CLASS_ATTR_DOUBLE(c, "backfire", 0, t_motor, backfire);
  CLASS_ATTR_DOUBLE(c, "intakeSize", 0, t_motor, intakeSize);
  CLASS_ATTR_DOUBLE(c, "extractorSize", 0, t_motor, extractorSize);
  CLASS_ATTR_DOUBLE(c, "exhaustSize", 0, t_motor, exhaustSize);
  CLASS_ATTR_DOUBLE(c, "mufflerSize", 0, t_motor, mufflerSize);
  CLASS_ATTR_DOUBLE(c, "outletSize", 0, t_motor, outletSize);
  CLASS_ATTR_DOUBLE(c, "expansion", 0, t_motor, expansion);
  CLASS_ATTR_DOUBLE(c, "mufflerFeedback", 0, t_motor, mufflerFeedback);
  
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
  
  CLASS_ATTR_ACCESSORS(c, "cycle", NULL, (method)motor_cycle);
  CLASS_ATTR_ACCESSORS(c, "nCylinders", NULL, (method)motor_nCylinders);
  CLASS_ATTR_ACCESSORS(c, "cylinderSize", NULL, (method)motor_cylinderSize);
  CLASS_ATTR_ACCESSORS(c, "compressionRatio", NULL, (method)motor_compressionRatio);
  CLASS_ATTR_ACCESSORS(c, "sparkTime", NULL, (method)motor_sparkTime);
  CLASS_ATTR_ACCESSORS(c, "asymmetry", NULL, (method)motor_asymmetry);
  CLASS_ATTR_ACCESSORS(c, "backfire", NULL, (method)motor_backfire);
  CLASS_ATTR_ACCESSORS(c, "intakeSize", NULL, (method)motor_intakeSize);
  CLASS_ATTR_ACCESSORS(c, "extractorSize", NULL, (method)motor_extractorSize);
  CLASS_ATTR_ACCESSORS(c, "exhaustSize", NULL, (method)motor_exhaustSize);
  CLASS_ATTR_ACCESSORS(c, "mufflerSize", NULL, (method)motor_mufflerSize);
  CLASS_ATTR_ACCESSORS(c, "outletSize", NULL, (method)motor_outletSize);
  CLASS_ATTR_ACCESSORS(c, "expansion", NULL, (method)motor_expansion);
  CLASS_ATTR_ACCESSORS(c, "mufflerFeedback", NULL, (method)motor_mufflerFeedback);
  
  CLASS_ATTR_ORDER(c, "cycle", 0, "1");
  CLASS_ATTR_ORDER(c, "nCylinders", 0, "2");
  CLASS_ATTR_ORDER(c, "cylinderSize", 0, "3");
  CLASS_ATTR_ORDER(c, "compressionRatio", 0, "4");
  CLASS_ATTR_ORDER(c, "sparkTime", 0, "5");
  CLASS_ATTR_ORDER(c, "asymmetry", 0, "6");
  CLASS_ATTR_ORDER(c, "backfire", 0, "7");
  CLASS_ATTR_ORDER(c, "intakeSize", 0, "8");
  CLASS_ATTR_ORDER(c, "extractorSize", 0, "9");
  CLASS_ATTR_ORDER(c, "exhaustSize", 0, "10");
  CLASS_ATTR_ORDER(c, "mufflerSize", 0, "11");
  CLASS_ATTR_ORDER(c, "outletSize", 0, "12");
  CLASS_ATTR_ORDER(c, "expansion", 0, "13");
  CLASS_ATTR_ORDER(c, "mufflerFeedback", 0, "14");

  class_dspinit(c);
  class_register(CLASS_BOX, c);
  motor_class = c;

  return 0;
}