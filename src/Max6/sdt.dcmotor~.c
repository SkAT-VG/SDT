#include <string.h>
#include "ext.h"
#include "ext_obex.h"
#include "z_dsp.h"
#include "SDT/SDTCommon.h"
#include "SDT/SDTDCMotor.h"

typedef struct _dcmotor {
  t_pxobject ob;
  SDTDCMotor *motor;
  double size, reson, gearRatio, noisiness, harshness,
         rotorGain, gearGain, brushGain, airGain;
  long coils;
} t_dcmotor;

static t_class *dcmotor_class = NULL;

void *dcmotor_new(t_symbol *s, long argc, t_atom *argv) {
  t_dcmotor *x = (t_dcmotor *)object_alloc(dcmotor_class);
  long maxDelay;

  if (x) {
    dsp_setup((t_pxobject *)x, 2);
    outlet_new(x, "signal");
    if (argc > 0 && atom_gettype(&argv[0]) == A_LONG) {
      maxDelay = atom_getlong(&argv[0]);
    }
    else {
      maxDelay = 44100;
    }
    x->motor = SDTDCMotor_new(maxDelay);
    attr_args_process(x, argc, argv);
  }
  return (x);
}

void dcmotor_free(t_dcmotor *x)  {
  dsp_free((t_pxobject *)x);
  SDTDCMotor_free(x->motor);
}

void dcmotor_assist(t_dcmotor *x, void *b, long m, long a, char *s) {
  if (m == ASSIST_INLET) { //inlet
    switch (a) {
      case 0:
        sprintf(s, "(signal): RPM\n"
                   "Object attributes and messages (see help patch)");
        break;
      case 1:
        sprintf(s, "(signal): Load [0.0 ~ 1.0]");
        break;
    }
  } 
  else {
    sprintf(s, "(signal): Output sound");
  }
}

void dcmotor_coils(t_dcmotor *x, void *attr, long ac, t_atom *av) {
  x->coils = atom_getlong(av);
  SDTDCMotor_setCoils(x->motor, x->coils);
}

void dcmotor_size(t_dcmotor *x, void *attr, long ac, t_atom *av) {
  x->size = atom_getfloat(av);
  SDTDCMotor_setSize(x->motor, x->size);
}

void dcmotor_reson(t_dcmotor *x, void *attr, long ac, t_atom *av) {
  x->reson = atom_getfloat(av);
  SDTDCMotor_setReson(x->motor, x->reson);
}

void dcmotor_gearRatio(t_dcmotor *x, void *attr, long ac, t_atom *av) {
  x->gearRatio = atom_getfloat(av);
  SDTDCMotor_setGearRatio(x->motor, x->gearRatio);
}

void dcmotor_harshness(t_dcmotor *x, void *attr, long ac, t_atom *av) {
  x->harshness = atom_getfloat(av);
  SDTDCMotor_setHarshness(x->motor, x->harshness);
}

void dcmotor_rotorGain(t_dcmotor *x, void *attr, long ac, t_atom *av) {
  x->rotorGain = atom_getfloat(av);
  SDTDCMotor_setRotorGain(x->motor, x->rotorGain);
}

void dcmotor_gearGain(t_dcmotor *x, void *attr, long ac, t_atom *av) {
  x->gearGain = atom_getfloat(av);
  SDTDCMotor_setGearGain(x->motor, x->gearGain);
}

void dcmotor_brushGain(t_dcmotor *x, void *attr, long ac, t_atom *av) {
  x->brushGain = atom_getfloat(av);
  SDTDCMotor_setBrushGain(x->motor, x->brushGain);
}

void dcmotor_airGain(t_dcmotor *x, void *attr, long ac, t_atom *av) {
  x->airGain = atom_getfloat(av);
  SDTDCMotor_setAirGain(x->motor, x->airGain);
}

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
  SDTDCMotor_setFilters(x->motor);
  dsp_add(dcmotor_perform, 5, x, sp[0]->s_vec, sp[1]->s_vec, sp[2]->s_vec, sp[0]->s_n);
}

void dcmotor_perform64(t_dcmotor *x, t_object *dsp64, double **ins, long numins, double **outs, long numouts, long sampleframes, long flags, void *userparam)
{
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

void dcmotor_dsp64(t_dcmotor *x, t_object *dsp64, short *count, double samplerate, long maxvectorsize, long flags)
{
  SDT_setSampleRate(samplerate);
  SDTDCMotor_setFilters(x->motor);
  object_method(dsp64, gensym("dsp_add64"), x, dcmotor_perform64, 0, NULL);
}

int C74_EXPORT main(void)
{  
  t_class *c = class_new("sdt.dcmotor~", (method)dcmotor_new, (method)dcmotor_free, (long)sizeof(t_dcmotor), 0L, A_GIMME, 0);
  
  class_addmethod(c, (method)dcmotor_dsp, "dsp", A_CANT, 0);
  class_addmethod(c, (method)dcmotor_dsp64, "dsp64", A_CANT, 0);
  class_addmethod(c, (method)dcmotor_assist, "assist", A_CANT, 0);
  
  CLASS_ATTR_LONG(c, "coils", 0, t_dcmotor, coils);
  CLASS_ATTR_DOUBLE(c, "size", 0, t_dcmotor, size);
  CLASS_ATTR_DOUBLE(c, "reson", 0, t_dcmotor, reson);
  CLASS_ATTR_DOUBLE(c, "gearRatio", 0, t_dcmotor, gearRatio);
  CLASS_ATTR_DOUBLE(c, "harshness", 0, t_dcmotor, harshness);
  CLASS_ATTR_DOUBLE(c, "rotorGain", 0, t_dcmotor, rotorGain);
  CLASS_ATTR_DOUBLE(c, "gearGain", 0, t_dcmotor, gearGain);
  CLASS_ATTR_DOUBLE(c, "brushGain", 0, t_dcmotor, brushGain);
  CLASS_ATTR_DOUBLE(c, "airGain", 0, t_dcmotor, airGain);
  
  CLASS_ATTR_FILTER_MIN(c, "coils", 2);
  CLASS_ATTR_FILTER_MIN(c, "size", 0.0);
  CLASS_ATTR_FILTER_CLIP(c, "reson", 0.0, 1.0);
  CLASS_ATTR_FILTER_MIN(c, "gearRatio", 0.0);
  CLASS_ATTR_FILTER_CLIP(c, "harshness", 0.0, 1.0);
  CLASS_ATTR_FILTER_CLIP(c, "rotorGain", 0.0, 1.0);
  CLASS_ATTR_FILTER_CLIP(c, "gearGain", 0.0, 1.0);
  CLASS_ATTR_FILTER_CLIP(c, "brushGain", 0.0, 1.0);
  CLASS_ATTR_FILTER_CLIP(c, "airGain", 0.0, 1.0);
  
  CLASS_ATTR_ACCESSORS(c, "coils", NULL, (method)dcmotor_coils);
  CLASS_ATTR_ACCESSORS(c, "size", NULL, (method)dcmotor_size);
  CLASS_ATTR_ACCESSORS(c, "reson", NULL, (method)dcmotor_reson);
  CLASS_ATTR_ACCESSORS(c, "gearRatio", NULL, (method)dcmotor_gearRatio);
  CLASS_ATTR_ACCESSORS(c, "harshness", NULL, (method)dcmotor_harshness);
  CLASS_ATTR_ACCESSORS(c, "rotorGain", NULL, (method)dcmotor_rotorGain);
  CLASS_ATTR_ACCESSORS(c, "gearGain", NULL, (method)dcmotor_gearGain);
  CLASS_ATTR_ACCESSORS(c, "brushGain", NULL, (method)dcmotor_brushGain);
  CLASS_ATTR_ACCESSORS(c, "airGain", NULL, (method)dcmotor_airGain);
  
  CLASS_ATTR_ORDER(c, "coils", 0, "1");
  CLASS_ATTR_ORDER(c, "size", 0, "2");
  CLASS_ATTR_ORDER(c, "reson", 0, "3");
  CLASS_ATTR_ORDER(c, "gearRatio", 0, "4");
  CLASS_ATTR_ORDER(c, "harshness", 0, "5");
  CLASS_ATTR_ORDER(c, "rotorGain", 0, "6");
  CLASS_ATTR_ORDER(c, "gearGain", 0, "7");
  CLASS_ATTR_ORDER(c, "brushGain", 0, "8");
  CLASS_ATTR_ORDER(c, "airGain", 0, "9");
  
  class_dspinit(c);
  class_register(CLASS_BOX, c);
  dcmotor_class = c;

  return 0;
}