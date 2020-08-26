#include <math.h>
#include <stdlib.h>
#include "SDTCommon.h"
#include "SDTFilters.h"
#include "SDTOscillators.h"
#include "SDTDCMotor.h"
#include "SDTStructs.h"

#define HASHMAP_SIZE 59

struct SDTDCMotor {
  SDTComb *chassis;
  SDTTwoPoles *brushFilter, *airFilter;
  double rpm, load, size, reson, gearRatio, harshness,
         rotorGain, gearGain, brushGain, airGain,
         revPhase, rotorPhase, gearPhase;
  long coils;
};

SDTDCMotor *SDTDCMotor_new(long maxSize) {
  SDTDCMotor *x;
  
  x = (SDTDCMotor *)malloc(sizeof(SDTDCMotor));
  x->chassis = SDTComb_new(maxSize, maxSize);
  x->brushFilter = SDTTwoPoles_new();
  x->airFilter = SDTTwoPoles_new();
  x->revPhase = 0.0;
  x->rotorPhase = 0.0;
  x->gearPhase = 0.0;
  x->rpm = 0.0;
  x->load = 0.0;
  x->coils = 2;
  x->size = 0.2;
  x->reson = 0.8;
  x->gearRatio = 1.0;
  x->harshness = 0.5;
  x->rotorGain = 0.5;
  x->gearGain = 0.3;
  x->brushGain = 0.2;
  return x;
}

SDTDCMotor *SDTDCMotor_copy(SDTDCMotor *dest, const SDTDCMotor *src) {
  SDTDCMotor_setCoils(dest, SDTDCMotor_getCoils(src));
  SDTDCMotor_setSize(dest, SDTDCMotor_getSize(src));
  SDTDCMotor_setReson(dest, SDTDCMotor_getReson(src));
  SDTDCMotor_setGearRatio(dest, SDTDCMotor_getGearRatio(src));
  SDTDCMotor_setHarshness(dest, SDTDCMotor_getHarshness(src));
  SDTDCMotor_setRotorGain(dest, SDTDCMotor_getRotorGain(src));
  SDTDCMotor_setGearGain(dest, SDTDCMotor_getGearGain(src));
  SDTDCMotor_setBrushGain(dest, SDTDCMotor_getBrushGain(src));
  SDTDCMotor_setAirGain(dest, SDTDCMotor_getAirGain(src));
  return dest;
}

void SDTDCMotor_free(SDTDCMotor *x) {
  SDTComb_free(x->chassis);
  SDTTwoPoles_free(x->brushFilter);
  SDTTwoPoles_free(x->airFilter);
  free(x);
}

double SDTDCMotor_getRpm(const SDTDCMotor *x) {
  return x->rpm;
}

double SDTDCMotor_getLoad(const SDTDCMotor *x) {
  return x->load;
}

long SDTDCMotor_getCoils(const SDTDCMotor *x) {
  return x->coils;
}

double SDTDCMotor_getSize(const SDTDCMotor *x) {
  return x->size;
}

double SDTDCMotor_getReson(const SDTDCMotor *x) {
  return x->reson;
}

double SDTDCMotor_getGearRatio(const SDTDCMotor *x) {
  return x->gearRatio;
}

double SDTDCMotor_getHarshness(const SDTDCMotor *x) {
  return x->harshness;
}

double SDTDCMotor_getRotorGain(const SDTDCMotor *x) {
  return x->rotorGain;
}

double SDTDCMotor_getGearGain(const SDTDCMotor *x) {
  return x->gearGain;
}

double SDTDCMotor_getBrushGain(const SDTDCMotor *x) {
  return x->brushGain;
}

double SDTDCMotor_getAirGain(const SDTDCMotor *x) {
  return x->airGain;
}

void SDTDCMotor_setFilters(SDTDCMotor *x) {
  SDTComb_setYGain(x->chassis, x->reson);
  SDTComb_setYDelay(x->chassis, SDT_samplesInAir(x->size));
  SDTTwoPoles_resonant(x->brushFilter, 4000.0, 1.0);
  SDTTwoPoles_resonant(x->airFilter, 800.0, 1.0);
}

void SDTDCMotor_setRpm(SDTDCMotor *x, double f) {
  x->rpm = fmax(0.0, f);
}

void SDTDCMotor_setLoad(SDTDCMotor *x, double f) {
  x->load = SDT_fclip(f, 0.0, 1.0);
}

void SDTDCMotor_setCoils(SDTDCMotor *x, long l) {
  x->coils = l > 2 ? l : 2;
}

void SDTDCMotor_setSize(SDTDCMotor *x, double f) {
  x->size = fmax(f, 0.0);
  SDTComb_setYDelay(x->chassis, SDT_samplesInAir(x->size));
}

void SDTDCMotor_setReson(SDTDCMotor *x, double f) {
  x->reson = SDT_fclip(f, 0.0, 1.0);
  SDTComb_setYGain(x->chassis, x->reson);
}

void SDTDCMotor_setGearRatio(SDTDCMotor *x, double f) {
  x->gearRatio = fmax(f, 0.0);
}

void SDTDCMotor_setHarshness(SDTDCMotor *x, double f) {
  x->harshness = SDT_fclip(f, 0.0, 1.0);
}

void SDTDCMotor_setRotorGain(SDTDCMotor *x, double f) {
  x->rotorGain = SDT_fclip(f, 0.0, 1.0);
}

void SDTDCMotor_setGearGain(SDTDCMotor *x, double f) {
  x->gearGain = SDT_fclip(f, 0.0, 1.0);
}

void SDTDCMotor_setBrushGain(SDTDCMotor *x, double f) {
  x->brushGain = SDT_fclip(f, 0.0, 1.0);
}

void SDTDCMotor_setAirGain(SDTDCMotor *x, double f) {
  x->airGain = SDT_fclip(f, 0.0, 1.0);
}

double SDTDCMotor_dsp(SDTDCMotor *x) {
  double revStep, rotorStep, gearStep,
         rotor, gears, brushes, air,
         partPhase, partGain, totGain, outGain;
  int i;
  
  revStep = SDT_timeStep * x->rpm / 60.0;
  x->revPhase += revStep;
  x->revPhase -= (int)x->revPhase;
  rotorStep = revStep * x->coils * (1.0 + x->load * cos(SDT_TWOPI * x->revPhase));
  x->rotorPhase += rotorStep;
  x->rotorPhase -= (int)x->rotorPhase;
  gearStep = rotorStep * x->gearRatio;
  x->gearPhase += gearStep;
  x->gearPhase -= (int)x->gearPhase;
  rotor = 0.0;
  gears = 0.0;
  totGain = 0.0;
  for (i = 0; i < 16; i++) {
    partPhase = SDT_TWOPI * (i + 1);
    partGain = exp(-(1.0 - x->harshness) * i);
    if (rotorStep * partPhase < SDT_PI)
      rotor += cos(x->rotorPhase * partPhase) * partGain;
    if (gearStep * partPhase < SDT_PI)
      gears += cos(x->gearPhase * partPhase) * partGain;
    totGain += partGain;
  }
  rotor /= totGain;
  gears /= totGain;
  brushes = SDTTwoPoles_dsp(x->brushFilter, rotor * SDT_whiteNoise());
  air = SDTTwoPoles_dsp(x->airFilter, SDT_whiteNoise());
  rotor *= x->rotorGain;
  gears *= x->gearGain;
  brushes *= x->brushGain;
  air *= x->airGain;
  outGain = (1.0 - x->reson) * SDT_fclip(0.005 * rotorStep * SDT_sampleRate, 0.0, 1.0);
  return outGain * (SDTComb_dsp(x->chassis, rotor + gears + brushes) + air);
}

// ----------------------------------------------------------------------------

SDTHashmap *dcmotors = NULL;

int SDT_registerDCMotor(struct SDTDCMotor *x, char *key) {
  if (!dcmotors) dcmotors = SDTHashmap_new(HASHMAP_SIZE);
  if (SDTHashmap_put(dcmotors, key, x)) return 1;
  return 0;
}

SDTDCMotor *SDT_getDCMotor(const char *key) {
  return (dcmotors)? SDTHashmap_get(dcmotors, key) : 0;
}

int SDT_unregisterDCMotor(char *key) {
  if (!dcmotors) return 1;
  if (SDTHashmap_del(dcmotors, key)) return 1;
  return 0;
}

//-------------------------------------------------------------------------------------//

json_value *SDTDCMotor_toJSON(const SDTDCMotor *x) {
  json_value *obj = json_object_new(0);

  json_object_push(obj, "coils", json_integer_new(SDTDCMotor_getCoils(x)));
  json_object_push(obj, "size", json_double_new(SDTDCMotor_getSize(x)));
  json_object_push(obj, "reson", json_double_new(SDTDCMotor_getReson(x)));
  json_object_push(obj, "gearRatio", json_double_new(SDTDCMotor_getGearRatio(x)));
  json_object_push(obj, "harshness", json_double_new(SDTDCMotor_getHarshness(x)));
  json_object_push(obj, "rotorGain", json_double_new(SDTDCMotor_getRotorGain(x)));
  json_object_push(obj, "gearGain", json_double_new(SDTDCMotor_getGearGain(x)));
  json_object_push(obj, "brushGain", json_double_new(SDTDCMotor_getBrushGain(x)));
  json_object_push(obj, "airGain", json_double_new(SDTDCMotor_getAirGain(x)));

  return obj;
}

SDTDCMotor *SDTDCMotor_fromJSON(const json_value *x) {
  if (!x || x->type != json_object)
    return 0;

  const json_value *v;
  SDTDCMotor *m = SDTDCMotor_new(1);

  v = json_object_get_by_key(x, "coils");
  SDTDCMotor_setCoils(m, (v && (v->type == json_integer))? v->u.integer : 2);

  v = json_object_get_by_key(x, "size");
  SDTDCMotor_setSize(m, (v && (v->type == json_double))? v->u.dbl : 0.2);

  v = json_object_get_by_key(x, "reson");
  SDTDCMotor_setReson(m, (v && (v->type == json_double))? v->u.dbl : 0.8);

  v = json_object_get_by_key(x, "gearRatio");
  SDTDCMotor_setGearRatio(m, (v && (v->type == json_double))? v->u.dbl : 1.0);

  v = json_object_get_by_key(x, "harshness");
  SDTDCMotor_setHarshness(m, (v && (v->type == json_double))? v->u.dbl : 0.5);

  v = json_object_get_by_key(x, "rotorGain");
  SDTDCMotor_setRotorGain(m, (v && (v->type == json_double))? v->u.dbl : 0.5);

  v = json_object_get_by_key(x, "gearGain");
  SDTDCMotor_setGearGain(m, (v && (v->type == json_double))? v->u.dbl : 0.3);

  v = json_object_get_by_key(x, "brushGain");
  SDTDCMotor_setBrushGain(m, (v && (v->type == json_double))? v->u.dbl : 0.2);

  v = json_object_get_by_key(x, "airGain");
  SDTDCMotor_setAirGain(m, (v && (v->type == json_double))? v->u.dbl : 0.0);

  return m;
}