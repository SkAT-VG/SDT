#include <math.h>
#include <stdlib.h>
#include "SDTCommon.h"
#include "SDTResonators.h"

#define MAX_POS 10000.0

struct SDTResonator {
  double fragmentSize, *freqs, *decays, *weights, **gains,
         *m, *k, *b1, *a1, *a2, *b0v, *b1v,
         *p0, *p1, *v, *f;
  int nModes, nPickups, activeModes;
};

double modalPosition(SDTResonator *x, unsigned int mode, double f) {
  return SDT_fclip(x->b1[mode] * f - x->a1[mode] * x->p0[mode] - x->a2[mode] * x->p1[mode], -MAX_POS, MAX_POS);
}

double modalVelocity(SDTResonator *x, unsigned int mode, double p) {
  return x->b0v[mode] * p + x->b1v[mode] * x->p0[mode];
}

double modalEnergy(SDTResonator *x, unsigned int mode, double p, double v) {
  return 0.5 * (x->k[mode] * p * p + x->m[mode] * v * v);
}

void distributeForce(SDTResonator *x, unsigned int pickup, double *fs, double f) {
  int mode;
  
  for (mode = 0; mode < x->activeModes; mode++) {
    fs[mode] = x->gains[pickup][x->nModes] > 0.0 ?
               f * x->gains[pickup][mode] / x->gains[pickup][x->nModes] :
               f / x->activeModes;
  }
}

void updateState(SDTResonator *x, unsigned int mode) {
  x->p1[mode] = (x->v[mode] - x->b0v[mode] * x->p0[mode]) / x->b1v[mode];
}

void updateMode(SDTResonator *x, unsigned int mode) {
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
  }
  else {
    x->m[mode] = 0.0;
    x->k[mode] = 0.0;
    x->b1[mode] = 0.0;
    x->a1[mode] = 0.0;
    x->a2[mode] = 0.0;
    x->b0v[mode] = 0.0;
    x->b1v[mode] = 0.0;
  }
}

void updatePickup(SDTResonator *x, unsigned int pickup) {
  int mode;
  
  x->gains[pickup][x->nModes] = 0.0;
  for (mode = 0; mode < x->activeModes; mode++) {
    x->gains[pickup][x->nModes] += x->gains[pickup][mode];
  }
}

void updateModes(SDTResonator *x) {
  int mode;
  
  for (mode = 0; mode < x->activeModes; mode++) {
    updateMode(x, mode);
  }
}

void updatePickups(SDTResonator *x) {
  int pickup;
  
  for (pickup = 0; pickup < x->nPickups; pickup++) {
    updatePickup(x, pickup);
  }
}

void updateAll(SDTResonator *x) {
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
  x->activeModes = 0.0;
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

double SDTResonator_getPosition(SDTResonator *x, unsigned int pickup) {
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

double SDTResonator_getVelocity(SDTResonator *x, unsigned int pickup) {
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

int SDTResonator_getNPickups(SDTResonator *x) {
  return x->nPickups;
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
    x->freqs[mode] = SDT_fclip(f, 0.0, 0.5 * SDT_sampleRate);
  }
  updateMode(x, mode);
}

void SDTResonator_setDecay(SDTResonator *x, unsigned int mode, double f) {
  if (mode < x->nModes) {
    x->decays[mode] = fmax(0.0, f);
  }
  updateMode(x, mode);
}

void SDTResonator_setWeight(SDTResonator *x, unsigned int mode, double f) {
  if (mode < x->nModes) {
    x->weights[mode] = fmax(0.0, f);
  }
  updateMode(x, mode);
}

void SDTResonator_setGain(SDTResonator *x, unsigned int pickup, unsigned int mode, double f) {
  if (mode < x->nModes && pickup < x->nPickups) {
    x->gains[pickup][mode] = fmax(f, 0.0);
  }
  updatePickup(x, pickup);
}

void SDTResonator_setFragmentSize(SDTResonator *x, double f) {
  x->fragmentSize = SDT_fclip(f, 0.0, 1.0);
  updateModes(x);
}

void SDTResonator_setActiveModes(SDTResonator *x, unsigned int i) {
  x->activeModes = SDT_clip(i, 0, x->nModes);
  updateAll(x);
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

double SDTResonator_computeEnergy(SDTResonator *x, unsigned int pickup, double f) {
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