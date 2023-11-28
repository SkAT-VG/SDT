#include "SDTResonators.h"

#include <math.h>
#include <stdlib.h>
#include <string.h>

#include "SDTCommon.h"
#include "SDTSolids.h"
#include "SDTStructs.h"

#define MAX_POS 10000.0

struct SDTResonator {
  double fragmentSize, *freqs, *decays, *weights, **gains, *m, *k, *b1, *a1,
      *a2, *b0v, *b1v, *p0, *p1, *v, *f;
  int nModes, nPickups, activeModes;
};

static double modalPosition(const SDTResonator *x, unsigned int mode,
                            double f) {
  return SDT_fclip(
      x->b1[mode] * f - x->a1[mode] * x->p0[mode] - x->a2[mode] * x->p1[mode],
      -MAX_POS, MAX_POS);
}

static double modalVelocity(const SDTResonator *x, unsigned int mode,
                            double p) {
  return x->b0v[mode] * p + x->b1v[mode] * x->p0[mode];
}

static double modalEnergy(const SDTResonator *x, unsigned int mode, double p,
                          double v) {
  return 0.5 * (x->k[mode] * p * p + x->m[mode] * v * v);
}

static void distributeForce(const SDTResonator *x, unsigned int pickup,
                            double *fs, double f) {
  int mode;

  for (mode = 0; mode < x->activeModes; mode++) {
    fs[mode] = x->gains[pickup][x->nModes] > 0.0
                   ? f * x->gains[pickup][mode] / x->gains[pickup][x->nModes]
                   : f / x->activeModes;
  }
}

static void updateState(SDTResonator *x, unsigned int mode) {
  x->p1[mode] = (x->v[mode] - x->b0v[mode] * x->p0[mode]) / x->b1v[mode];
}

static void updateMode(SDTResonator *x, unsigned int mode) {
  double u, w, wt, m, k, d, g, r, coswt, sincwt, tsincwt;

  u = sqrt(x->fragmentSize);
  w = SDT_TWOPI * x->freqs[mode];
  wt = w * SDT_timeStep / u;
  m = x->weights[mode] * x->fragmentSize;
  k = w * w * x->weights[mode];
  if (wt < acos(-0.9995) && m > SDT_MICRO) {
    d = x->decays[mode] * u;
    g = d > 0.0 ? 2.0 / d : 0.0;
    r = exp(-g * SDT_timeStep);
    coswt = cos(wt);
    sincwt = wt > 0.0 ? sin(wt) / wt : 1.0;
    tsincwt = sincwt * SDT_timeStep;
    x->b1[mode] = r * sincwt * SDT_timeStep * SDT_timeStep / m;
    x->a1[mode] = -2.0 * r * coswt;
    x->a2[mode] = r * r;
    x->b0v[mode] = coswt / tsincwt - g;
    x->b1v[mode] = -r / tsincwt;
    x->v[mode] *= sqrt(x->m[mode] / m);
    x->p0[mode] *= k > 0.0 ? sqrt(x->k[mode] / k) : 1.0;
    updateState(x, mode);
    x->m[mode] = m;
    x->k[mode] = k;
  } else {
    x->m[mode] = 0.0;
    x->k[mode] = 0.0;
    x->b1[mode] = 0.0;
    x->a1[mode] = 0.0;
    x->a2[mode] = 0.0;
    x->b0v[mode] = 0.0;
    x->b1v[mode] = 0.0;
  }
}

static void updatePickup(SDTResonator *x, unsigned int pickup) {
  int mode;

  x->gains[pickup][x->nModes] = 0.0;
  for (mode = 0; mode < x->activeModes; mode++) {
    x->gains[pickup][x->nModes] += x->gains[pickup][mode];
  }
}

static void updateModes(SDTResonator *x) {
  int mode;

  for (mode = 0; mode < x->activeModes; mode++) {
    updateMode(x, mode);
  }
}

static void updatePickups(SDTResonator *x) {
  int pickup;

  for (pickup = 0; pickup < x->nPickups; pickup++) {
    updatePickup(x, pickup);
  }
}

void SDTResonator_update(SDTResonator *x) {
  updateModes(x);
  updatePickups(x);
}

SDTResonator *SDTResonator_new(unsigned int nModes, unsigned int nPickups) {
  SDTResonator *x;
  int pickup, mode;

  x = (SDTResonator *)malloc(sizeof(SDTResonator));
  x->freqs = (double *)malloc(nModes * sizeof(double));
  x->decays = (double *)malloc(nModes * sizeof(double));
  x->weights = (double *)malloc(nModes * sizeof(double));
  x->gains = (double **)malloc(nPickups * sizeof(double *));
  for (pickup = 0; pickup < nPickups; pickup++) {
    x->gains[pickup] = (double *)malloc((nModes + 1) * sizeof(double));
  }
  x->m = (double *)malloc(nModes * sizeof(double));
  x->k = (double *)malloc(nModes * sizeof(double));
  x->b1 = (double *)malloc(nModes * sizeof(double));
  x->a1 = (double *)malloc(nModes * sizeof(double));
  x->a2 = (double *)malloc(nModes * sizeof(double));
  x->b0v = (double *)malloc(nModes * sizeof(double));
  x->b1v = (double *)malloc(nModes * sizeof(double));
  x->p0 = (double *)malloc(nModes * sizeof(double));
  x->p1 = (double *)malloc(nModes * sizeof(double));
  x->v = (double *)malloc(nModes * sizeof(double));
  x->f = (double *)malloc(nModes * sizeof(double));
  x->fragmentSize = 0.0;
  for (mode = 0; mode < nModes; mode++) {
    x->freqs[mode] = 0.0;
    x->decays[mode] = 0.0;
    x->weights[mode] = 0.0;
    x->m[mode] = 0.0;
    x->k[mode] = 0.0;
    x->b1[mode] = 0.0;
    x->a1[mode] = 0.0;
    x->a2[mode] = 0.0;
    x->b0v[mode] = 0.0;
    x->b1v[mode] = 0.0;
    x->p0[mode] = 0.0;
    x->p1[mode] = 0.0;
    x->v[mode] = 0.0;
    x->f[mode] = 0.0;
  }
  for (pickup = 0; pickup < nPickups; pickup++) {
    for (mode = 0; mode <= nModes; mode++) {
      x->gains[pickup][mode] = 0.0;
    }
  }
  x->nModes = nModes;
  x->nPickups = nPickups;
  x->activeModes = 0;
  return x;
}

void SDTResonator_free(SDTResonator *x) {
  int pickup;

  free(x->freqs);
  free(x->decays);
  free(x->weights);
  for (pickup = 0; pickup < x->nPickups; pickup++) {
    free(x->gains[pickup]);
  }
  free(x->gains);
  free(x->m);
  free(x->k);
  free(x->b1);
  free(x->a1);
  free(x->a2);
  free(x->b0v);
  free(x->b1v);
  free(x->p0);
  free(x->p1);
  free(x->v);
  free(x->f);
  free(x);
}

void SDTResonator_setNPickups(SDTResonator *x, int f) {
  if (f == x->nPickups) return;

  if (f > x->nPickups) {
    double **new_gains = (double **)malloc(f * sizeof(double *));
    int pickup = 0;
    // Copy over first old arrays
    for (; pickup < x->nPickups; pickup++) {
      new_gains[pickup] = x->gains[pickup];
    }
    free(x->gains);
    x->gains = new_gains;
    // Allocate and clear new arrays
    for (; pickup < f; pickup++) {
      new_gains[pickup] = (double *)malloc((x->nModes + 1) * sizeof(double));
      for (int mode = 0; mode <= x->nModes; mode++) {
        new_gains[pickup][mode] = 0.0;
      }
    }
  } else {
    // Deallocate last old arrays
    for (int pickup = f; pickup < x->nPickups; pickup++) {
      free(x->gains[pickup]);
    }
  }

  x->nPickups = f;
  SDTResonator_update(x);
}

#define _SDTResonator_setNModes_loopHelp(X)         \
  __new_mem = (double *)malloc(f * sizeof(double)); \
  for (mode = 0; mode < x->nModes; mode++) {        \
    __new_mem[mode] = x->X[mode];                   \
  }                                                 \
  for (; mode < f; mode++) {                        \
    __new_mem[mode] = 0.0;                          \
  }                                                 \
  free(x->X);                                       \
  x->X = __new_mem;

void SDTResonator_setNModes(SDTResonator *x, int f) {
  if (f == x->nModes) return;

  if (f > x->nModes) {
    double *__new_mem;
    int mode;
    _SDTResonator_setNModes_loopHelp(freqs);
    _SDTResonator_setNModes_loopHelp(decays);
    _SDTResonator_setNModes_loopHelp(weights);
    _SDTResonator_setNModes_loopHelp(m);
    _SDTResonator_setNModes_loopHelp(k);
    _SDTResonator_setNModes_loopHelp(b1);
    _SDTResonator_setNModes_loopHelp(a1);
    _SDTResonator_setNModes_loopHelp(a2);
    _SDTResonator_setNModes_loopHelp(b0v);
    _SDTResonator_setNModes_loopHelp(b1v);
    _SDTResonator_setNModes_loopHelp(p0);
    _SDTResonator_setNModes_loopHelp(p1);
    _SDTResonator_setNModes_loopHelp(v);
    _SDTResonator_setNModes_loopHelp(f);
    for (int pickup = 0; pickup < x->nPickups; pickup++) {
      _SDTResonator_setNModes_loopHelp(gains[pickup]);
    }
  }  // Else, just update nModes, no deallocation needed

  x->nModes = f;
  SDTResonator_update(x);
}

_SDT_COPY_FUNCTION(Resonator)

static SDTHashmap *hashmap_Resonator = NULL;

int SDT_registerResonator(SDTResonator *x, const char *key) {
  if (!hashmap_Resonator) hashmap_Resonator = SDTHashmap_new(59);
  if (SDTHashmap_put(hashmap_Resonator, key, x)) {
    SDT_LOGA(WARN, "Not registering. Key already present: %s\n", key);
    return 1;
  }
  SDT_updateInteractors(key);
  return 0;
}

SDTResonator *SDT_getResonator(const char *key) {
  return (hashmap_Resonator) ? SDTHashmap_get(hashmap_Resonator, key) : 0;
}

int SDT_unregisterResonator(const char *key) {
  if (!hashmap_Resonator) return 1;
  if (SDTHashmap_del(hashmap_Resonator, key)) return 1;
  if (SDTHashmap_empty(hashmap_Resonator)) {
    SDT_LOGA(DEBUG, "Deleting hashmap (was emptied): %p\n", hashmap_Resonator);
    SDTHashmap_free(hashmap_Resonator);
    hashmap_Resonator = NULL;
  }
  SDT_updateInteractors(key);
  return 0;
}

double SDTResonator_getPosition(const SDTResonator *x, unsigned int pickup) {
  double out;
  int mode;

  out = 0.0;
  if (pickup < x->nPickups) {
    for (mode = 0; mode < x->activeModes; mode++) {
      out += x->p0[mode] * x->gains[pickup][mode];
    }
  }
  return out;
}

double SDTResonator_getVelocity(const SDTResonator *x, unsigned int pickup) {
  double out;
  int mode;

  out = 0.0;
  if (pickup < x->nPickups) {
    for (mode = 0; mode < x->activeModes; mode++) {
      out += x->v[mode] * x->gains[pickup][mode];
    }
  }
  return out;
}

double SDTResonator_getFrequency(const SDTResonator *x, unsigned int mode) {
  return (mode < x->nModes) ? x->freqs[mode] : 0.0;
}

double SDTResonator_getDecay(const SDTResonator *x, unsigned int mode) {
  return (mode < x->nModes) ? x->decays[mode] : 0.0;
}

double SDTResonator_getWeight(const SDTResonator *x, unsigned int mode) {
  return (mode < x->nModes) ? x->weights[mode] : 0.0;
}

double SDTResonator_getGain(const SDTResonator *x, unsigned int pickup,
                            unsigned int mode) {
  return ((mode < x->nModes) && (pickup < x->nPickups)) ? x->gains[pickup][mode]
                                                        : 0.0;
}

int SDTResonator_getNPickups(const SDTResonator *x) { return x->nPickups; }

int SDTResonator_getNModes(const SDTResonator *x) { return x->nModes; }

int SDTResonator_getActiveModes(const SDTResonator *x) {
  return x->activeModes;
}

double SDTResonator_getFragmentSize(const SDTResonator *x) {
  return x->fragmentSize;
}

void SDTResonator_setPosition(SDTResonator *x, unsigned int pickup, double f) {
  int mode;

  if (pickup < x->nPickups && x->gains[pickup][x->nModes] > 0.0) {
    for (mode = 0; mode < x->activeModes; mode++) {
      x->p0[mode] = f / x->gains[pickup][x->nModes];
      updateState(x, mode);
    }
  }
}

void SDTResonator_setVelocity(SDTResonator *x, unsigned int pickup, double f) {
  int mode;

  if (pickup < x->nPickups && x->gains[pickup][x->nModes] > 0.0) {
    for (mode = 0; mode < x->activeModes; mode++) {
      x->v[mode] = f / x->gains[pickup][x->nModes];
      updateState(x, mode);
    }
  }
}

void SDTResonator_setFrequency(SDTResonator *x, unsigned int mode, double f) {
  if (mode < x->nModes) {
    x->freqs[mode] = f;
    updateMode(x, mode);
  }
}

void SDTResonator_setDecay(SDTResonator *x, unsigned int mode, double f) {
  if (mode < x->nModes) {
    x->decays[mode] = fmax(0.0, f);
    updateMode(x, mode);
  }
}

void SDTResonator_setWeight(SDTResonator *x, unsigned int mode, double f) {
  if (mode < x->nModes) {
    x->weights[mode] = fmax(0.0, f);
    updateMode(x, mode);
  }
}

void SDTResonator_setGain(SDTResonator *x, unsigned int pickup,
                          unsigned int mode, double f) {
  if (mode < x->nModes && pickup < x->nPickups) {
    x->gains[pickup][mode] = fmax(f, 0.0);
    updatePickup(x, pickup);
  }
}

void SDTResonator_setFragmentSize(SDTResonator *x, double f) {
  x->fragmentSize = SDT_fclip(f, 0.0, 1.0);
  updateModes(x);
}

void SDTResonator_setActiveModes(SDTResonator *x, unsigned int i) {
  x->activeModes = SDT_clip(i, 0, x->nModes);
  SDTResonator_update(x);
}

void SDTResonator_applyForce(SDTResonator *x, unsigned int pickup, double f) {
  double fs[x->activeModes];
  int mode;

  if (pickup < x->nPickups) {
    if (!isnormal(f)) f = 0.0;
    distributeForce(x, pickup, fs, f);
    for (mode = 0; mode < x->activeModes; mode++) {
      x->f[mode] += fs[mode];
    }
  }
}

double SDTResonator_computeEnergy(SDTResonator *x, unsigned int pickup,
                                  double f) {
  double out, fs[x->activeModes], p, v;
  int mode;

  out = 0.0;
  if (pickup < x->nPickups) {
    if (!isnormal(f)) f = 0.0;
    distributeForce(x, pickup, fs, f);
    for (mode = 0; mode < x->activeModes; mode++) {
      p = modalPosition(x, mode, x->f[mode] + fs[mode]);
      v = modalVelocity(x, mode, p);
      out += modalEnergy(x, mode, p, v) * x->gains[pickup][mode];
    }
  }
  return out;
}

void SDTResonator_dsp(SDTResonator *x) {
  double p;
  int mode;

  for (mode = 0; mode < x->activeModes; mode++) {
    p = modalPosition(x, mode, x->f[mode]);
    x->v[mode] = modalVelocity(x, mode, p);
    x->p1[mode] = x->p0[mode];
    x->p0[mode] = p;
    x->f[mode] = 0.0;
  }
}

//-------------------------------------------------------------------------------------//

#define _SDTResonator_toArrayJSON(ATTR)                                  \
  json_value *_SDTResonator_to##ATTR##JSON(const SDTResonator *x) {      \
    json_value *a = json_array_new(0);                                   \
    const int n_modes = SDTResonator_getNModes(x);                       \
    for (int n = 0; n < n_modes; ++n) {                                  \
      json_array_push(a, json_double_new(SDTResonator_get##ATTR(x, n))); \
    }                                                                    \
    return a;                                                            \
  }

_SDTResonator_toArrayJSON(Frequency);
_SDTResonator_toArrayJSON(Decay);
_SDTResonator_toArrayJSON(Weight);

json_value *_SDTResonator_toGainJSON(const SDTResonator *x) {
  json_value *a = json_array_new(0), *ap;
  const int n_modes = SDTResonator_getNModes(x);
  const int n_pups = SDTResonator_getNPickups(x);
  int n, p;
  for (p = 0; p < n_pups; ++p) {
    ap = json_array_new(0);
    for (n = 0; n < n_modes; ++n) {
      json_array_push(ap, json_double_new(SDTResonator_getGain(x, p, n)));
    }
    json_array_push(a, ap);
  }
  return a;
}

json_value *SDTResonator_toJSON(const SDTResonator *x) {
  json_value *obj = json_object_new(0);

  // Array members
  json_object_push(obj, "freqs", _SDTResonator_toFrequencyJSON(x));
  json_object_push(obj, "decays", _SDTResonator_toDecayJSON(x));
  json_object_push(obj, "weights", _SDTResonator_toWeightJSON(x));

  // Array of arrays
  json_object_push(obj, "gains", _SDTResonator_toGainJSON(x));

  // Scalar members
  json_object_push(obj, "nModes", json_integer_new(SDTResonator_getNModes(x)));
  json_object_push(obj, "nPickups",
                   json_integer_new(SDTResonator_getNPickups(x)));
  json_object_push(obj, "activeModes",
                   json_integer_new(SDTResonator_getActiveModes(x)));
  json_object_push(obj, "fragmentSize",
                   json_double_new(SDTResonator_getFragmentSize(x)));
  return obj;
}

SDTResonator *SDTResonator_fromJSON(const json_value *x) {
  if (!x || x->type != json_object) return 0;

  int nModes = SDT_RESONATOR_NMODES_DEFAULT;
  int nPickups = SDT_RESONATOR_NPICKUPS_DEFAULT;
  _SDT_GET_PARAM_FROM_JSON(nModes, x, nModes, integer);
  _SDT_GET_PARAM_FROM_JSON(nPickups, x, nPickups, integer);

  SDTResonator *y = SDTResonator_new(nModes, nPickups);
  return SDTResonator_setParams(y, x, 0);
}

SDTResonator *SDTResonator_setParams(SDTResonator *x, const json_value *j,
                                     unsigned char unsafe) {
  // Set n modes/pickups (unsafe)
  _SDT_SET_UNSAFE_PARAM_FROM_JSON(Resonator, x, j, NModes, nModes, integer,
                                  unsafe);
  _SDT_SET_UNSAFE_PARAM_FROM_JSON(Resonator, x, j, NPickups, nPickups, integer,
                                  unsafe);
  // Scalar members
  _SDT_SET_PARAM_FROM_JSON(Resonator, x, j, ActiveModes, activeModes, integer);
  _SDT_SET_DOUBLE_FROM_JSON(Resonator, x, j, FragmentSize, fragmentSize);

  // Array members
  unsigned int mode, pickup;
  const json_value *v_f = SDTJSON_object_get_by_key(j, "freqs");
  const json_value *v_d = SDTJSON_object_get_by_key(j, "decays");
  const json_value *v_w = SDTJSON_object_get_by_key(j, "weights");
  for (mode = 0; mode < x->nModes; ++mode) {
    SDTResonator_setFrequency(
        x, mode,
        SDTJSON_array_get_number(v_f, mode,
                                 SDTResonator_getFrequency(x, mode)));
    SDTResonator_setDecay(
        x, mode,
        SDTJSON_array_get_number(v_d, mode, SDTResonator_getDecay(x, mode)));
    SDTResonator_setWeight(
        x, mode,
        SDTJSON_array_get_number(v_w, mode, SDTResonator_getWeight(x, mode)));
  }

  // Array of arrays
  const json_value *v_g = SDTJSON_object_get_by_key(j, "gains");
  if (v_g && v_g->type == json_array) {
    for (pickup = 0; pickup < x->nPickups; ++pickup) {
      for (mode = 0; mode < x->nModes; ++mode) {
        SDTResonator_setGain(
            x, pickup, mode,
            SDTJSON_array_get_number(v_g->u.array.values[pickup], mode,
                                     SDTResonator_getGain(x, pickup, mode)));
      }
    }
  }

  SDTResonator_update(x);
  return x;
}
