#include "SDTInteractors.h"
#include <math.h>
#include <stdlib.h>
#include "SDTCommon.h"
#include "SDTOscillators.h"
#include "SDTStructs.h"

#define MAX_ERROR 0.001
#define MAX_ITERATIONS 50

#define SDT_INTERACTOR Interactor
#define SDT_INTERACTOR_ATTRIBUTES(T, A)                 \
  A(T, contact0, int, FirstPoint, contact0, integer, 0) \
  A(T, contact1, int, SecondPoint, contact1, integer, 0)

struct SDTInteractor {
  SDTResonator *obj0, *obj1;
  long contact0, contact1;
  double energy;
  void *state;
  double (*computeForce)(SDTInteractor *x);
};

SDTInteractor *SDTInteractor_new() {
  SDTInteractor *x;

  x = (SDTInteractor *)malloc(sizeof(SDTInteractor));
  x->obj0 = NULL;
  x->obj1 = NULL;
  x->contact0 = 0;
  x->contact1 = 0;
  x->energy = 0.0;
  x->state = NULL;
  x->computeForce = NULL;
  return x;
}

void SDTInteractor_free(SDTInteractor *x) { free(x); }

void SDTInteractor_setFirstResonator(SDTInteractor *x, SDTResonator *p) {
  x->obj0 = p;
}

void SDTInteractor_setSecondResonator(SDTInteractor *x, SDTResonator *p) {
  x->obj1 = p;
}

void SDTInteractor_setFirstPoint(SDTInteractor *x, long l) { x->contact0 = l; }

void SDTInteractor_setSecondPoint(SDTInteractor *x, long l) { x->contact1 = l; }

SDTResonator *SDTInteractor_getFirstResonator(const SDTInteractor *x) {
  return x->obj0;
}

SDTResonator *SDTInteractor_getSecondResonator(const SDTInteractor *x) {
  return x->obj1;
}

long SDTInteractor_getFirstPoint(const SDTInteractor *x) { return x->contact0; }

long SDTInteractor_getSecondPoint(const SDTInteractor *x) {
  return x->contact1;
}

double SDTInteractor_computeForce(SDTInteractor *x) {
  double f, h, w, f0, f1;
  int count;

  f = x->computeForce(x);
  h = SDTResonator_computeEnergy(x->obj0, x->contact0, 0.0) +
      SDTResonator_computeEnergy(x->obj1, x->contact1, 0.0) + x->energy;
  w = SDTResonator_computeEnergy(x->obj0, x->contact0, f) +
      SDTResonator_computeEnergy(x->obj1, x->contact1, -f) - h;
  count = 0.0;
  if (w > 0.0) {
    f0 = 0.0;
    f1 = f;
    while ((w > 0.0 || w < -MAX_ERROR * h) && count < MAX_ITERATIONS) {
      f = (f0 + f1) / 2.0;
      w = SDTResonator_computeEnergy(x->obj0, x->contact0, f) +
          SDTResonator_computeEnergy(x->obj1, x->contact1, -f) - h;
      if (w < 0)
        f0 = f;
      else
        f1 = f;
      count++;
    }
  }
  x->energy = -w;
  return f;
}

void SDTInteractor_dsp(SDTInteractor *x, double f0, double v0, double s0,
                       double f1, double v1, double s1, double *outs) {
  double f, p;
  long pickup, nPickups0, nPickups1;

  // Apply external changes to first object
  if (x->obj0) SDTResonator_applyForce(x->obj0, x->contact0, f0);
  if (x->obj1) SDTResonator_applyForce(x->obj1, x->contact1, f1);
  if (s0 && x->obj0) SDTResonator_setFragmentSize(x->obj0, s0);
  if (s1 && x->obj1) SDTResonator_setFragmentSize(x->obj1, s1);
  if (v0 && x->obj0) {
    p = x->obj1 ? SDTResonator_getPosition(x->obj1, x->contact1) : 0.0;
    SDTResonator_setPosition(x->obj0, x->contact0, p);
    SDTResonator_setVelocity(x->obj0, x->contact0, v0);
  }
  if (v1 && x->obj1) {
    p = x->obj0 ? SDTResonator_getPosition(x->obj0, x->contact0) : 0.0;
    SDTResonator_setPosition(x->obj1, x->contact1, p);
    SDTResonator_setVelocity(x->obj1, x->contact1, v1);
  }
  // Compute internal forces
  if (x->obj0 && x->obj1) {
    f = SDTInteractor_computeForce(x);
    SDTResonator_applyForce(x->obj0, x->contact0, f);
    SDTResonator_applyForce(x->obj1, x->contact1, -f);
  }
  // Update state of first object
  nPickups0 = 0;
  if (x->obj0) {
    SDTResonator_dsp(x->obj0);
    nPickups0 = SDTResonator_getNPickups(x->obj0);
    for (pickup = 0; pickup < nPickups0; pickup++) {
      outs[pickup] = SDTResonator_getPosition(x->obj0, pickup);
    }
  }
  // Update state of second object
  nPickups1 = 0;
  if (x->obj1) {
    SDTResonator_dsp(x->obj1);
    nPickups1 = SDTResonator_getNPickups(x->obj1);
    for (pickup = 0; pickup < nPickups1; pickup++) {
      outs[nPickups0 + pickup] = SDTResonator_getPosition(x->obj1, pickup);
    }
  }
}

#define HASHMAP_SIZE 59

SDT_DEFINE_HASHMAP_GLOBAL(interactors0)
SDT_DEFINE_HASHMAP_GLOBAL(interactors1)

void SDT_updateInteractors(const char *key) {
  SDTResonator *resonator;
  SDTInteractor *interactor;

  if (interactors0) {
    resonator = SDT_getResonator(key);
    interactor = SDTHashmap_get(interactors0, key);
    if (interactor) SDTInteractor_setFirstResonator(interactor, resonator);
  }
  if (interactors1) {
    resonator = SDT_getResonator(key);
    interactor = SDTHashmap_get(interactors1, key);
    if (interactor) SDTInteractor_setSecondResonator(interactor, resonator);
  }
}

int SDT_registerInteractor(SDTInteractor *x, char *key0, char *key1) {
  SDTResonator *resonator0, *resonator1;

  if (!interactors0) interactors0 = SDTHashmap_new(HASHMAP_SIZE);
  if (!interactors1) interactors1 = SDTHashmap_new(HASHMAP_SIZE);
  if (SDTHashmap_get(interactors0, key0) || SDTHashmap_get(interactors1, key1))
    return 1;
  resonator0 = SDT_getResonator(key0);
  resonator1 = SDT_getResonator(key1);
  SDTInteractor_setFirstResonator(x, resonator0);
  SDTInteractor_setSecondResonator(x, resonator1);
  SDTHashmap_put(interactors0, key0, x);
  SDTHashmap_put(interactors1, key1, x);
  return 0;
}

SDTInteractor *SDT_getInteractor(const char *key0, const char *key1) {
  if (!interactors0 || !interactors1) return 0;
  SDTInteractor *x0, *x1;
  x0 = SDTHashmap_get(interactors0, key0);
  x1 = SDTHashmap_get(interactors1, key1);
  if (!x0 || !x1) return 0;
  if (x0 == x1) return x0;
  return 0;
}

int SDT_unregisterInteractor(char *key0, char *key1) {
  if (!interactors0 || !interactors1) return 1;
  if (!SDTHashmap_get(interactors0, key0) ||
      !SDTHashmap_get(interactors1, key1))
    return 1;
  SDTHashmap_del(interactors0, key0);
  SDTHashmap_del(interactors1, key1);
  if (SDTHashmap_empty(interactors0)) {
    SDT_LOGA(DEBUG, "Deleting hashmap (was emptied): %p\n", interactors0);
    SDTHashmap_free(interactors0);
    interactors0 = NULL;
  }
  if (SDTHashmap_empty(interactors1)) {
    SDT_LOGA(DEBUG, "Deleting hashmap (was emptied): %p\n", interactors1);
    SDTHashmap_free(interactors1);
    interactors1 = NULL;
  }
  return 0;
}

//-------------------------------------------------------------------------------------//

struct SDTImpact {
  double stiffness, dissipation, shape;
};

double SDTImpact_MarhefkaOrin(SDTInteractor *x) {
  SDTImpact *s = x->state;
  double p, v, f;

  p = SDTResonator_getPosition(x->obj1, x->contact1) -
      SDTResonator_getPosition(x->obj0, x->contact0);
  if (p <= 0.0) {
    x->energy = 0.0;
    return 0.0;
  }
  v = SDTResonator_getVelocity(x->obj1, x->contact1) -
      SDTResonator_getVelocity(x->obj0, x->contact0);
  f = s->stiffness * pow(p, s->shape) * (1.0 + s->dissipation * v);
  return f;
}

SDTInteractor *SDTImpact_new() {
  SDTInteractor *x;
  SDTImpact *s;

  x = SDTInteractor_new();
  s = (SDTImpact *)malloc(sizeof(SDTImpact));
  s->stiffness = 0.0;
  s->dissipation = 0.0;
  s->shape = 0.0;
  x->state = s;
  x->computeForce = SDTImpact_MarhefkaOrin;
  return x;
}

SDTInteractor *SDTImpact_copy(SDTInteractor *dest, const SDTInteractor *src) {
  SDTImpact_setStiffness(dest, SDTImpact_getStiffness(src));
  SDTImpact_setDissipation(dest, SDTImpact_getDissipation(src));
  SDTImpact_setShape(dest, SDTImpact_getShape(src));
  SDTFriction_setDissipation(dest, SDTFriction_getDissipation(src));
  SDTFriction_setViscosity(dest, SDTFriction_getViscosity(src));
  SDTFriction_setNoisiness(dest, SDTFriction_getNoisiness(src));
  SDTInteractor_setFirstResonator(dest, SDTInteractor_getFirstResonator(src));
  SDTInteractor_setSecondResonator(dest, SDTInteractor_getSecondResonator(src));
  SDTInteractor_setFirstPoint(dest, SDTInteractor_getFirstPoint(src));
  SDTInteractor_setSecondPoint(dest, SDTInteractor_getSecondPoint(src));

  return dest;
}

int SDTInteractor_isImpact(const SDTInteractor *x) {
  return x->computeForce == SDTImpact_MarhefkaOrin;
}

void SDTImpact_free(SDTInteractor *x) {
  free(x->state);
  SDTInteractor_free(x);
}

double SDTImpact_getStiffness(const SDTInteractor *x) {
  return ((SDTImpact *)x->state)->stiffness;
}

double SDTImpact_getDissipation(const SDTInteractor *x) {
  return ((SDTImpact *)x->state)->dissipation;
}

double SDTImpact_getShape(const SDTInteractor *x) {
  return ((SDTImpact *)x->state)->shape;
}

void SDTImpact_setStiffness(SDTInteractor *x, double f) {
  ((SDTImpact *)x->state)->stiffness = fmax(0.0, f);
}

void SDTImpact_setDissipation(SDTInteractor *x, double f) {
  ((SDTImpact *)x->state)->dissipation = fmax(0.0, f);
}

void SDTImpact_setShape(SDTInteractor *x, double f) {
  ((SDTImpact *)x->state)->shape = fmax(1.0, f);
}

json_value *SDTImpact_toJSON(const SDTInteractor *x, const char *key0,
                             const char *key1) {
  json_value *obj = json_object_new(0);

  json_object_push(obj, "stiffness",
                   json_double_new(SDTImpact_getStiffness(x)));
  json_object_push(obj, "dissipation",
                   json_double_new(SDTImpact_getDissipation(x)));
  json_object_push(obj, "shape", json_double_new(SDTImpact_getShape(x)));
  json_object_push(obj, "key0", json_string_new(key0));
  json_object_push(obj, "key1", json_string_new(key1));
  json_object_push(obj, "contact0",
                   json_integer_new(SDTInteractor_getFirstPoint(x)));
  json_object_push(obj, "contact1",
                   json_integer_new(SDTInteractor_getSecondPoint(x)));

  return obj;
}

SDTInteractor *SDTImpact_fromJSON(const json_value *x) {
  SDTInteractor *inter = SDTImpact_new();
  const json_value *v;

  v = SDTJSON_object_get_by_key(x, "stiffness");
  SDTImpact_setStiffness(inter, (v && (v->type == json_double)) ? v->u.dbl : 0);

  v = SDTJSON_object_get_by_key(x, "dissipation");
  SDTImpact_setDissipation(inter,
                           (v && (v->type == json_double)) ? v->u.dbl : 0);

  v = SDTJSON_object_get_by_key(x, "shape");
  SDTImpact_setShape(inter, (v && (v->type == json_double)) ? v->u.dbl : 0);

  v = SDTJSON_object_get_by_key(x, "key0");
  SDTInteractor_setFirstResonator(inter, (v && (v->type == json_string))
                                             ? SDT_getResonator(v->u.string.ptr)
                                             : 0);

  v = SDTJSON_object_get_by_key(x, "key1");
  SDTInteractor_setSecondResonator(
      inter,
      (v && (v->type == json_string)) ? SDT_getResonator(v->u.string.ptr) : 0);

  v = SDTJSON_object_get_by_key(x, "contact0");
  SDTInteractor_setFirstPoint(
      inter, (v && (v->type == json_integer)) ? v->u.integer : 0);

  v = SDTJSON_object_get_by_key(x, "contact1");
  SDTInteractor_setSecondPoint(
      inter, (v && (v->type == json_integer)) ? v->u.integer : 0);

  return inter;
}

//-------------------------------------------------------------------------------------//

struct SDTFriction {
  double fn, vs, ks, kd, kba, s0, s1, s2, s3, fs, fc, z;
};

double SDTFriction_ElastoPlastic(SDTInteractor *x) {
  SDTFriction *s = (SDTFriction *)x->state;
  double v, vRatio, vSgn, zSgn, zss, zba, alpha, dz, w, f;

  x->energy = 0.0;
  v = SDTResonator_getVelocity(x->obj1, x->contact1) -
      SDTResonator_getVelocity(x->obj0, x->contact0);
  if (s->fn <= 0.0) {
    s->z = 0.0;
    return 0.0;
  }
  vRatio = v / s->vs;
  vSgn = SDT_signum(v);
  zSgn = SDT_signum(s->z);
  zss = vSgn * (s->fc + (s->fs - s->fc) * exp(-vRatio * vRatio)) / s->s0;
  zba = vSgn * s->kba * s->fc / s->s0;
  if (vSgn != zSgn)
    alpha = 0.0;
  else if (fabs(s->z) < fabs(zba))
    alpha = 0.0;
  else if (fabs(s->z) < fabs(zss))
    alpha = 0.5 + 0.5 * sin(SDT_PI * (s->z - 0.5 * (zss + zba)) / (zss - zba));
  else
    alpha = 1.0;
  dz = v * (1.0 - alpha * s->z / zss);
  if (!isnormal(dz)) dz = 0.0;
  w = SDT_whiteNoise() * sqrt(fabs(v) * s->fn);
  f = s->s0 * s->z + s->s1 * dz + s->s2 * v + s->s3 * w;
  s->z += dz * SDT_timeStep;
  return f;
}

SDTInteractor *SDTFriction_new() {
  SDTInteractor *x;
  SDTFriction *s;

  x = SDTInteractor_new();
  s = (SDTFriction *)malloc(sizeof(SDTFriction));
  s->fn = 0.0;
  s->vs = 0.1;
  s->ks = 0.8;
  s->kd = 0.2;
  s->kba = 0.1;
  s->s0 = 1000.0;
  s->s1 = 10.0;
  s->s2 = 10.0;
  s->s3 = 0.5;
  s->fs = 0.0;
  s->fc = 0.0;
  s->z = 0.0;
  x->state = s;
  x->computeForce = SDTFriction_ElastoPlastic;
  return x;
}

SDTInteractor *SDTFriction_copy(SDTInteractor *dest, const SDTInteractor *src) {
  SDTFriction_setNormalForce(dest, SDTFriction_getNormalForce(src));
  SDTFriction_setStaticCoefficient(dest, SDTFriction_getStaticCoefficient(src));
  SDTFriction_setDynamicCoefficient(dest,
                                    SDTFriction_getDynamicCoefficient(src));
  SDTFriction_setBreakAway(dest, SDTFriction_getBreakAway(src));
  SDTFriction_setStiffness(dest, SDTFriction_getStiffness(src));
  SDTFriction_setDissipation(dest, SDTFriction_getDissipation(src));
  SDTFriction_setViscosity(dest, SDTFriction_getViscosity(src));
  SDTFriction_setNoisiness(dest, SDTFriction_getNoisiness(src));
  SDTInteractor_setFirstResonator(dest, SDTInteractor_getFirstResonator(src));
  SDTInteractor_setSecondResonator(dest, SDTInteractor_getSecondResonator(src));
  SDTInteractor_setFirstPoint(dest, SDTInteractor_getFirstPoint(src));
  SDTInteractor_setSecondPoint(dest, SDTInteractor_getSecondPoint(src));

  return dest;
}

int SDTInteractor_isFriction(const SDTInteractor *x) {
  return x->computeForce == SDTFriction_ElastoPlastic;
}

void SDTFriction_free(SDTInteractor *x) {
  free(x->state);
  SDTInteractor_free(x);
}

void SDTFriction_setNormalForce(SDTInteractor *x, double f) {
  SDTFriction *s = (SDTFriction *)x->state;
  s->fn = fmax(0.0, f);
  s->fs = s->fn * s->ks;
  s->fc = s->fn * s->kd;
}

void SDTFriction_setStribeckVelocity(SDTInteractor *x, double f) {
  ((SDTFriction *)x->state)->vs = fmax(0.0, f);
}

void SDTFriction_setStaticCoefficient(SDTInteractor *x, double f) {
  SDTFriction *s = (SDTFriction *)x->state;
  s->ks = SDT_fclip(f, 0.0, 1.0);
  s->fs = s->fn * s->ks;
}

void SDTFriction_setDynamicCoefficient(SDTInteractor *x, double f) {
  SDTFriction *s = (SDTFriction *)x->state;
  s->kd = SDT_fclip(f, 0.0, 1.0);
  s->fc = s->fn * s->kd;
}

void SDTFriction_setBreakAway(SDTInteractor *x, double f) {
  ((SDTFriction *)x->state)->kba = SDT_fclip(f, 0.0, 1.0);
}

void SDTFriction_setStiffness(SDTInteractor *x, double f) {
  ((SDTFriction *)x->state)->s0 = fmax(0.0, f);
}

void SDTFriction_setDissipation(SDTInteractor *x, double f) {
  ((SDTFriction *)x->state)->s1 = fmax(0.0, f);
}

void SDTFriction_setViscosity(SDTInteractor *x, double f) {
  ((SDTFriction *)x->state)->s2 = fmax(0.0, f);
}

void SDTFriction_setNoisiness(SDTInteractor *x, double f) {
  ((SDTFriction *)x->state)->s3 = fmax(0.0, f);
}

double SDTFriction_getNormalForce(const SDTInteractor *x) {
  return ((SDTFriction *)x->state)->fn;
}

double SDTFriction_getStribeckVelocity(const SDTInteractor *x) {
  return ((SDTFriction *)x->state)->vs;
}

double SDTFriction_getStaticCoefficient(const SDTInteractor *x) {
  return ((SDTFriction *)x->state)->ks;
}

double SDTFriction_getDynamicCoefficient(const SDTInteractor *x) {
  return ((SDTFriction *)x->state)->kd;
}

double SDTFriction_getBreakAway(const SDTInteractor *x) {
  return ((SDTFriction *)x->state)->kba;
}

double SDTFriction_getStiffness(const SDTInteractor *x) {
  return ((SDTFriction *)x->state)->s0;
}

double SDTFriction_getDissipation(const SDTInteractor *x) {
  return ((SDTFriction *)x->state)->s1;
}

double SDTFriction_getViscosity(const SDTInteractor *x) {
  return ((SDTFriction *)x->state)->s2;
}

double SDTFriction_getNoisiness(const SDTInteractor *x) {
  return ((SDTFriction *)x->state)->s3;
}

json_value *SDTFriction_toJSON(const SDTInteractor *x, const char *key0,
                               const char *key1) {
  json_value *obj = json_object_new(0);

  json_object_push(obj, "force",
                   json_double_new(SDTFriction_getNormalForce(x)));
  json_object_push(obj, "stribeck",
                   json_double_new(SDTFriction_getStribeckVelocity(x)));
  json_object_push(obj, "kStatic",
                   json_double_new(SDTFriction_getStaticCoefficient(x)));
  json_object_push(obj, "kDynamic",
                   json_double_new(SDTFriction_getDynamicCoefficient(x)));
  json_object_push(obj, "breakAway",
                   json_double_new(SDTFriction_getBreakAway(x)));
  json_object_push(obj, "stiffness",
                   json_double_new(SDTFriction_getStiffness(x)));
  json_object_push(obj, "dissipation",
                   json_double_new(SDTFriction_getDissipation(x)));
  json_object_push(obj, "viscosity",
                   json_double_new(SDTFriction_getViscosity(x)));
  json_object_push(obj, "noisiness",
                   json_double_new(SDTFriction_getNoisiness(x)));
  json_object_push(obj, "key0", json_string_new(key0));
  json_object_push(obj, "key1", json_string_new(key1));
  json_object_push(obj, "contact0",
                   json_integer_new(SDTInteractor_getFirstPoint(x)));
  json_object_push(obj, "contact1",
                   json_integer_new(SDTInteractor_getSecondPoint(x)));

  return obj;
}

SDTInteractor *SDTFriction_fromJSON(const json_value *x) {
  SDTInteractor *inter = SDTFriction_new();
  const json_value *v;

  v = SDTJSON_object_get_by_key(x, "force");
  SDTFriction_setNormalForce(inter,
                             (v && (v->type == json_double)) ? v->u.dbl : 0);

  v = SDTJSON_object_get_by_key(x, "stribeck");
  SDTFriction_setStribeckVelocity(
      inter, (v && (v->type == json_double)) ? v->u.dbl : 0);

  v = SDTJSON_object_get_by_key(x, "kStatic");
  SDTFriction_setStaticCoefficient(
      inter, (v && (v->type == json_double)) ? v->u.dbl : 0);

  v = SDTJSON_object_get_by_key(x, "kDynamic");
  SDTFriction_setDynamicCoefficient(
      inter, (v && (v->type == json_double)) ? v->u.dbl : 0);

  v = SDTJSON_object_get_by_key(x, "breakAway");
  SDTFriction_setBreakAway(inter,
                           (v && (v->type == json_double)) ? v->u.dbl : 0);

  v = SDTJSON_object_get_by_key(x, "stiffness");
  SDTFriction_setStiffness(inter,
                           (v && (v->type == json_double)) ? v->u.dbl : 0);

  v = SDTJSON_object_get_by_key(x, "dissipation");
  SDTFriction_setDissipation(inter,
                             (v && (v->type == json_double)) ? v->u.dbl : 0);

  v = SDTJSON_object_get_by_key(x, "viscosity");
  SDTFriction_setViscosity(inter,
                           (v && (v->type == json_double)) ? v->u.dbl : 0);

  v = SDTJSON_object_get_by_key(x, "noisiness");
  SDTFriction_setNoisiness(inter,
                           (v && (v->type == json_double)) ? v->u.dbl : 0);

  v = SDTJSON_object_get_by_key(x, "key0");
  SDTInteractor_setFirstResonator(inter, (v && (v->type == json_string))
                                             ? SDT_getResonator(v->u.string.ptr)
                                             : 0);

  v = SDTJSON_object_get_by_key(x, "key1");
  SDTInteractor_setSecondResonator(
      inter,
      (v && (v->type == json_string)) ? SDT_getResonator(v->u.string.ptr) : 0);

  v = SDTJSON_object_get_by_key(x, "contact0");
  SDTInteractor_setFirstPoint(
      inter, (v && (v->type == json_integer)) ? v->u.integer : 0);

  v = SDTJSON_object_get_by_key(x, "contact1");
  SDTInteractor_setSecondPoint(
      inter, (v && (v->type == json_integer)) ? v->u.integer : 0);

  return inter;
}