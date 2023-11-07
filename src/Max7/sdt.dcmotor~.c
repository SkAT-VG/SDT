#include <string.h>

#include "SDT/SDTCommon.h"
#include "SDT/SDTDCMotor.h"
#include "SDTCommonMax.h"
#include "SDT_fileusage.h"
#include "ext.h"
#include "ext_obex.h"
#include "z_dsp.h"

typedef struct _dcmotor {
  t_pxobject ob;
  SDTDCMotor *motor;
  t_symbol *key;
} t_dcmotor;

static t_class *dcmotor_class = NULL;

void *dcmotor_new(t_symbol *s, long argc, t_atom *argv) {
  SDT_setupMaxLoggers();
  t_dcmotor *x = (t_dcmotor *)object_alloc(dcmotor_class);
  long maxDelay;

  if (x) {
    dsp_setup((t_pxobject *)x, 2);
    outlet_new(x, "signal");
    if (argc > 0 && atom_gettype(&argv[0]) == A_LONG) {
      maxDelay = atom_getlong(&argv[0]);
    } else {
      maxDelay = 44100;
    }
    x->motor = SDTDCMotor_new(maxDelay);
    x->key = 0;
    attr_args_process(x, argc, argv);
  }
  return (x);
}

void dcmotor_free(t_dcmotor *x) {
  dsp_free((t_pxobject *)x);
  SDT_MAX_FREE(DCMotor, motor)
}

void dcmotor_assist(t_dcmotor *x, void *b, long m, long a, char *s) {
  if (m == ASSIST_INLET) {  // inlet
    switch (a) {
      case 0:
        sprintf(s,
                "(signal): RPM\n"
                "Object attributes and messages (see help patch)");
        break;
      case 1:
        sprintf(s, "(signal): Load [0.0 ~ 1.0]");
        break;
    }
  } else {
    sprintf(s, "(signal): Output sound");
  }
}

SDT_MAX_KEY(dcmotor, DCMotor, motor, "dcmotor~", "electric motor")

SDT_MAX_GETTER(dcmotor, DCMotor, motor, MaxSize, long, )
SDT_MAX_ACCESSORS(dcmotor, DCMotor, motor, Coils, long, , )
SDT_MAX_ACCESSORS(dcmotor, DCMotor, motor, Size, float, , )
SDT_MAX_ACCESSORS(dcmotor, DCMotor, motor, Reson, float, , )
SDT_MAX_ACCESSORS(dcmotor, DCMotor, motor, GearRatio, float, , )
SDT_MAX_ACCESSORS(dcmotor, DCMotor, motor, Harshness, float, , )
SDT_MAX_ACCESSORS(dcmotor, DCMotor, motor, RotorGain, float, , )
SDT_MAX_ACCESSORS(dcmotor, DCMotor, motor, GearGain, float, , )
SDT_MAX_ACCESSORS(dcmotor, DCMotor, motor, BrushGain, float, , )
SDT_MAX_ACCESSORS(dcmotor, DCMotor, motor, AirGain, float, , )

t_int *dcmotor_perform(t_int *w) {
  t_dcmotor *x = (t_dcmotor *)(w[1]);
  t_float *in0 = (t_float *)(w[2]);
  t_float *in1 = (t_float *)(w[3]);
  t_float *out = (t_float *)(w[4]);
  int n = (int)w[5];

  while (n--) {
    SDTDCMotor_setRpm(x->motor, *in0++);
    SDTDCMotor_setLoad(x->motor, *in1++);
    *out++ = (float)SDTDCMotor_dsp(x->motor);
  }

  return w + 6;
}

void dcmotor_dsp(t_dcmotor *x, t_signal **sp, short *count) {
  SDT_setSampleRate(sp[0]->s_sr);
  SDTDCMotor_update(x->motor);
  dsp_add(dcmotor_perform, 5, x, sp[0]->s_vec, sp[1]->s_vec, sp[2]->s_vec,
          sp[0]->s_n);
}

void dcmotor_perform64(t_dcmotor *x, t_object *dsp64, double **ins, long numins,
                       double **outs, long numouts, long sampleframes,
                       long flags, void *userparam) {
  t_double *in0 = ins[0];
  t_double *in1 = ins[1];
  t_double *out = outs[0];
  int n = sampleframes;

  while (n--) {
    SDTDCMotor_setRpm(x->motor, *in0++);
    SDTDCMotor_setLoad(x->motor, *in1++);
    *out++ = SDTDCMotor_dsp(x->motor);
  }
}

void dcmotor_dsp64(t_dcmotor *x, t_object *dsp64, short *count,
                   double samplerate, long maxvectorsize, long flags) {
  SDT_setSampleRate(samplerate);
  SDTDCMotor_update(x->motor);
  object_method(dsp64, gensym("dsp_add64"), x, dcmotor_perform64, 0, NULL);
}

void C74_EXPORT ext_main(void *r) {
  t_class *c =
      class_new("sdt.dcmotor~", (method)dcmotor_new, (method)dcmotor_free,
                (long)sizeof(t_dcmotor), 0L, A_GIMME, 0);

  class_addmethod(c, (method)dcmotor_dsp, "dsp", A_CANT, 0);
  class_addmethod(c, (method)dcmotor_dsp64, "dsp64", A_CANT, 0);
  class_addmethod(c, (method)dcmotor_assist, "assist", A_CANT, 0);
  class_addmethod(c, (method)SDT_fileusage, "fileusage", A_CANT, 0L);

  SDT_CLASS_KEY(dcmotor, "1")

  SDT_MAX_RO_ATTRIBUTE(c, dcmotor, MaxSize, maxSize, long, 0);
  SDT_MAX_ATTRIBUTE(c, dcmotor, Coils, coils, long, 0);
  SDT_MAX_ATTRIBUTE(c, dcmotor, Size, size, float64, 0);
  SDT_MAX_ATTRIBUTE(c, dcmotor, Reson, reson, float64, 0);
  SDT_MAX_ATTRIBUTE(c, dcmotor, GearRatio, gearRatio, float64, 0);
  SDT_MAX_ATTRIBUTE(c, dcmotor, Harshness, harshness, float64, 0);
  SDT_MAX_ATTRIBUTE(c, dcmotor, RotorGain, rotorGain, float64, 0);
  SDT_MAX_ATTRIBUTE(c, dcmotor, GearGain, gearGain, float64, 0);
  SDT_MAX_ATTRIBUTE(c, dcmotor, BrushGain, brushGain, float64, 0);
  SDT_MAX_ATTRIBUTE(c, dcmotor, AirGain, airGain, float64, 0);

  CLASS_ATTR_FILTER_MIN(c, "coils", 2);
  CLASS_ATTR_FILTER_MIN(c, "size", 0.0);
  CLASS_ATTR_FILTER_CLIP(c, "reson", 0.0, 1.0);
  CLASS_ATTR_FILTER_MIN(c, "gearRatio", 0.0);
  CLASS_ATTR_FILTER_CLIP(c, "harshness", 0.0, 1.0);
  CLASS_ATTR_FILTER_CLIP(c, "rotorGain", 0.0, 1.0);
  CLASS_ATTR_FILTER_CLIP(c, "gearGain", 0.0, 1.0);
  CLASS_ATTR_FILTER_CLIP(c, "brushGain", 0.0, 1.0);
  CLASS_ATTR_FILTER_CLIP(c, "airGain", 0.0, 1.0);

  CLASS_ATTR_ORDER(c, "maxSize", 0, "2");
  CLASS_ATTR_ORDER(c, "coils", 0, "3");
  CLASS_ATTR_ORDER(c, "size", 0, "4");
  CLASS_ATTR_ORDER(c, "reson", 0, "5");
  CLASS_ATTR_ORDER(c, "gearRatio", 0, "6");
  CLASS_ATTR_ORDER(c, "harshness", 0, "7");
  CLASS_ATTR_ORDER(c, "rotorGain", 0, "8");
  CLASS_ATTR_ORDER(c, "gearGain", 0, "9");
  CLASS_ATTR_ORDER(c, "brushGain", 0, "10");
  CLASS_ATTR_ORDER(c, "airGain", 0, "11");

  class_dspinit(c);
  class_register(CLASS_BOX, c);
  dcmotor_class = c;
}