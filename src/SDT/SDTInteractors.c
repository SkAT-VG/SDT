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

#define SDT_IMPACT Impact
#define SDT_IMPACT_ATTRIBUTES(T, A)                        \
  A(T, shape, double, Shape, shape, double, 0)             \
  A(T, stiffness, double, Stiffness, stiffness, double, 0) \
  A(T, dissipation, double, Dissipation, dissipation, double, 0)

#define SDT_FRICTION Friction
#define SDT_FRICTION_ATTRIBUTES(T, A)                     \
  A(T, , double, NormalForce, force, double, 0)           \
  A(T, , double, StribeckVelocity, stribeck, double, 0)   \
  A(T, , double, StaticCoefficient, kStatic, double, 0)   \
  A(T, , double, DynamicCoefficient, kDynamic, double, 0) \
  A(T, , double, BreakAway, breakAway, double, 0)         \
  A(T, , double, Stiffness, stiffness, double, 0)         \
  A(T, , double, Dissipation, dissipation, double, 0)     \
  A(T, , double, Viscosity, viscosity, double, 0)         \
  A(T, , double, Noisiness, noisiness, double, 0)

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

void SDTInteractor_free(SDTInteractor *x) {
  if (x->state) {
    free(x->state);
    x->state = NULL;
  }
  free(x);
}

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

SDTInteractor *SDTInteractor_copy(SDTInteractor *dest, const SDTInteractor *src,
                                  unsigned char unsafe) {
  if (dest->computeForce && dest->computeForce == src->computeForce) {
    SDTInteractor_setFirstResonator(dest, SDTInteractor_getFirstResonator(src));
    SDTInteractor_setSecondResonator(dest,
                                     SDTInteractor_getSecondResonator(src));
    json_value *j = SDTInteractor_toJSON(src);
    SDTInteractor_setParams(dest, j, unsafe);
    json_builder_free(j);
  } else {
    SDT_LOG(ERROR,
            "Copy won't be performed because source and destination of "
            "SDTInteractor_copy() are interactors of different types.\n");
  }
  return dest;
}

/** @brief Set impact state from a JSON object.
@param[in] x Pointer to the interactor
@param[in] j JSON object
@param[in] unsafe If false, do not perform any memory-related changes
@return Pointer to destination instance */
static SDTInteractor *_SDTImpact_setStateParams(SDTInteractor *x,
                                                const json_value *j,
                                                unsigned char unsafe);

/** @brief Set friction state from a JSON object.
@param[in] x Pointer to the interactor
@param[in] j JSON object
@param[in] unsafe If false, do not perform any memory-related changes
@return Pointer to destination instance */
static SDTInteractor *_SDTFriction_setStateParams(SDTInteractor *x,
                                                  const json_value *j,
                                                  unsigned char unsafe);

/** @brief Implement resonator setting from JSON for interactors
@param[in] VAR Structure variable identifier
@param[in] JVAR JSON variable identifier
@param[in] CATTR C attribute name
@param[in] KEY JSON attribute key */
#define _SDT_INTERACTOR_SET_RESONATOR_FROM_KEY(VAR, JVAR, CATTR, KEY) \
  {                                                                   \
    const json_value *v_##KEY;                                        \
    SDTResonator *r_##KEY;                                            \
    if ((v_##KEY = SDTJSON_object_get_by_key(JVAR, #KEY)) &&          \
        (v_##KEY->type == json_string) &&                             \
        (r_##KEY = SDT_getResonator(v_##KEY->u.string.ptr))) {        \
      SDTInteractor_set##CATTR(VAR, r_##KEY);                         \
    }                                                                 \
  }

SDTInteractor *SDTInteractor_setParams(SDTInteractor *x, const json_value *j,
                                       unsigned char unsafe) {
  if (!x || !j || j->type != json_object) return 0;

  _SDT_SET_PARAM_FROM_JSON(Interactor, x, j, FirstPoint, contact0, integer);
  _SDT_SET_PARAM_FROM_JSON(Interactor, x, j, SecondPoint, contact1, integer);

  _SDT_INTERACTOR_SET_RESONATOR_FROM_KEY(x, j, FirstResonator, key0);
  _SDT_INTERACTOR_SET_RESONATOR_FROM_KEY(x, j, SecondResonator, key1);

  if (SDTInteractor_isImpact(x)) _SDTImpact_setStateParams(x, j, unsafe);
  if (SDTInteractor_isFriction(x)) _SDTFriction_setStateParams(x, j, unsafe);

  return x;
}

/** @brief Add impact state to a JSON object.
@param[in] x Pointer to the interactor
@param[in] JSON object */
static json_value *_SDTImpact_addStateToJSON(const SDTInteractor *x,
                                             json_value *j);

/** @brief Add friction state to a JSON object.
@param[in] x Pointer to the interactor
@param[in] JSON object */
static json_value *_SDTFriction_addStateToJSON(const SDTInteractor *x,
                                               json_value *j);

json_value *SDTInteractor_toJSON(const SDTInteractor *x) {
  json_value *obj = json_object_new(0);
  json_object_push(obj, "contact0",
                   json_integer_new(SDTInteractor_getFirstPoint(x)));
  json_object_push(obj, "contact1",
                   json_integer_new(SDTInteractor_getSecondPoint(x)));

  if (SDTInteractor_isImpact(x)) _SDTImpact_addStateToJSON(x, obj);
  if (SDTInteractor_isFriction(x)) _SDTFriction_addStateToJSON(x, obj);

  return obj;
}

static SDTHashmap *hashmap_interactors0 = NULL;
static SDTHashmap *hashmap_interactors1 = NULL;

int SDT_registerInteractor(SDTInteractor *x, const char *key0,
                           const char *key1) {
  if (!hashmap_interactors0)
    hashmap_interactors0 = SDTHashmap_new(SDT_HASHMAP_SIZE_DEFAULT);
  if (!hashmap_interactors1)
    hashmap_interactors1 = SDTHashmap_new(SDT_HASHMAP_SIZE_DEFAULT);
  if (SDTHashmap_get(hashmap_interactors0, key0)) {
    SDT_LOGA(WARN, "Not registering. First key already present: %s\n", key0);
    return 1;
  }
  if (SDTHashmap_get(hashmap_interactors1, key1)) {
    SDT_LOGA(WARN, "Not registering. Second key already present: %s\n", key1);
    return 1;
  }

  SDTHashmap_put(hashmap_interactors0, key0, x);
  SDTHashmap_put(hashmap_interactors1, key1, x);
  SDT_updateInteractors(key0);
  SDT_updateInteractors(key1);
  return 0;
}

SDTInteractor *SDT_getInteractor(const char *key0, const char *key1) {
  if (!hashmap_interactors0 || !hashmap_interactors1) return 0;
  SDTInteractor *x0 = SDTHashmap_get(hashmap_interactors0, key0);
  return (x0 && x0 == SDTHashmap_get(hashmap_interactors1, key1)) ? x0 : 0;
}

#define _SDT_POP_INTERACTOR_HASHMAP(I)                      \
  SDTHashmap_del(hashmap_interactors##I, key##I);           \
  if (SDTHashmap_empty(hashmap_interactors##I)) {           \
    SDT_LOGA(DEBUG, "Deleting hashmap (was emptied): %p\n", \
             hashmap_interactors##I);                       \
    SDTHashmap_free(hashmap_interactors##I);                \
    hashmap_interactors##I = NULL;                          \
  }                                                         \
  SDT_updateInteractors(key##I);

int SDT_unregisterInteractor(const char *key0, const char *key1) {
  if (!SDT_getInteractor(key0, key1)) return 1;
  _SDT_POP_INTERACTOR_HASHMAP(0)
  _SDT_POP_INTERACTOR_HASHMAP(1)
  return 0;
}

#define _SDT_ORDINAL_0 First
#define _SDT_ORDINAL_1 Second
#define _SDT_ORDINAL(I) _SDT_ORDINAL_##I
#define _SDT_UPDATE_INTERACTORS(I)                                           \
  if (hashmap_interactors##I) {                                              \
    SDTResonator *resonator = SDT_getResonator(key);                         \
    SDTInteractor *interactor = SDTHashmap_get(hashmap_interactors##I, key); \
    if (interactor) {                                                        \
      CONCAT(CONCAT(SDTInteractor_set, _SDT_ORDINAL(I)), Resonator)          \
      (interactor, resonator);                                               \
    }                                                                        \
  }

void SDT_updateInteractors(const char *key) {
  _SDT_UPDATE_INTERACTORS(0)
  _SDT_UPDATE_INTERACTORS(1)
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

SDTInteractor *SDTImpact_copy(SDTInteractor *dest, const SDTInteractor *src,
                              unsigned char unsafe) {
  return SDTInteractor_copy(dest, src, unsafe);
}

int SDTInteractor_isImpact(const SDTInteractor *x) {
  return x->computeForce == SDTImpact_MarhefkaOrin;
}

void SDTImpact_free(SDTInteractor *x) { SDTInteractor_free(x); }

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

static json_value *_SDTImpact_addStateToJSON(const SDTInteractor *x,
                                             json_value *j) {
  json_object_push(j, "stiffness", json_double_new(SDTImpact_getStiffness(x)));
  json_object_push(j, "dissipation",
                   json_double_new(SDTImpact_getDissipation(x)));
  json_object_push(j, "shape", json_double_new(SDTImpact_getShape(x)));
  return j;
}

static SDTInteractor *_SDTImpact_setStateParams(SDTInteractor *x,
                                                const json_value *j,
                                                unsigned char unsafe) {
  _SDT_SET_DOUBLE_FROM_JSON(Impact, x, j, Stiffness, stiffness);
  _SDT_SET_DOUBLE_FROM_JSON(Impact, x, j, Dissipation, dissipation);
  _SDT_SET_DOUBLE_FROM_JSON(Impact, x, j, Shape, shape);
  return x;
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

SDTInteractor *SDTFriction_copy(SDTInteractor *dest, const SDTInteractor *src,
                                unsigned char unsafe) {
  return SDTInteractor_copy(dest, src, unsafe);
}

int SDTInteractor_isFriction(const SDTInteractor *x) {
  return x->computeForce == SDTFriction_ElastoPlastic;
}

void SDTFriction_free(SDTInteractor *x) { SDTInteractor_free(x); }

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

static json_value *_SDTFriction_addStateToJSON(const SDTInteractor *x,
                                               json_value *j) {
  json_object_push(j, "force", json_double_new(SDTFriction_getNormalForce(x)));
  json_object_push(j, "stribeck",
                   json_double_new(SDTFriction_getStribeckVelocity(x)));
  json_object_push(j, "kStatic",
                   json_double_new(SDTFriction_getStaticCoefficient(x)));
  json_object_push(j, "kDynamic",
                   json_double_new(SDTFriction_getDynamicCoefficient(x)));
  json_object_push(j, "breakAway",
                   json_double_new(SDTFriction_getBreakAway(x)));
  json_object_push(j, "stiffness",
                   json_double_new(SDTFriction_getStiffness(x)));
  json_object_push(j, "dissipation",
                   json_double_new(SDTFriction_getDissipation(x)));
  json_object_push(j, "viscosity",
                   json_double_new(SDTFriction_getViscosity(x)));
  json_object_push(j, "noisiness",
                   json_double_new(SDTFriction_getNoisiness(x)));
  return j;
}

static SDTInteractor *_SDTFriction_setStateParams(SDTInteractor *x,
                                                  const json_value *j,
                                                  unsigned char unsafe) {
  _SDT_SET_DOUBLE_FROM_JSON(Friction, x, j, NormalForce, force);
  _SDT_SET_DOUBLE_FROM_JSON(Friction, x, j, StribeckVelocity, stribeck);
  _SDT_SET_DOUBLE_FROM_JSON(Friction, x, j, StaticCoefficient, kStatic);
  _SDT_SET_DOUBLE_FROM_JSON(Friction, x, j, DynamicCoefficient, kDynamic);
  _SDT_SET_DOUBLE_FROM_JSON(Friction, x, j, BreakAway, breakAway);
  _SDT_SET_DOUBLE_FROM_JSON(Friction, x, j, Stiffness, stiffness);
  _SDT_SET_DOUBLE_FROM_JSON(Friction, x, j, Dissipation, dissipation);
  _SDT_SET_DOUBLE_FROM_JSON(Friction, x, j, Viscosity, viscosity);
  _SDT_SET_DOUBLE_FROM_JSON(Friction, x, j, Noisiness, noisiness);
  return x;
}
