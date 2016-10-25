#include <math.h>
#include <stdlib.h>
#include "SDTCommon.h"
#include "SDTResonators.h"

#define MAX_POS 10000

struct SDTResonator {
  double *ps[2], *vs, *fs, *freqs, *decays, **weights, fragmentSize;
  int nModes, nPickups, activeModes;
};

SDTResonator *SDTResonator_new(unsigned int nModes, unsigned int nPickups) {
  SDTResonator *x;
  int pickup, mode;
  
  x = (SDTResonator *)malloc(sizeof(SDTResonator));
  x->ps[0] = (double *)malloc(nModes * sizeof(double));
  x->ps[1] = (double *)malloc(nModes * sizeof(double));
  x->vs = (double *)malloc(nModes * sizeof(double));
  x->fs = (double *)malloc(nModes * sizeof(double));
  x->freqs = (double *)malloc(nModes * sizeof(double));
  x->decays = (double *)malloc(nModes * sizeof(double));
  x->weights = (double **)malloc(nPickups * sizeof(double *));
  for (mode = 0; mode < nModes; mode++) {
    x->ps[0][mode] = 0.0;
    x->ps[1][mode] = 0.0;
    x->vs[mode] = 0.0;
    x->fs[mode] = 0.0;
    x->freqs[mode] = 0.0;
    x->decays[mode] = 0.0;
  }
  for (pickup = 0; pickup < nPickups; pickup++) {
    x->weights[pickup] = (double *)malloc(nModes * sizeof(double));
    for (mode = 0; mode < nModes; mode++) {
      x->weights[pickup][mode] = 0.0;
    }
  }
  x->fragmentSize = 1.0;
  x->nModes = nModes;
  x->nPickups = nPickups;
  x->activeModes = nModes;
  return x;
}

void SDTResonator_free(SDTResonator *x) {
  int pickup;
  
  free(x->ps[0]);
  free(x->ps[1]);
  free(x->vs);
  free(x->fs);
  free(x->freqs);
  free(x->decays);
  for (pickup = 0; pickup < x->nPickups; pickup++) {
    free(x->weights[pickup]);
  }
  free(x->weights);
  free(x);
}

double SDTResonator_getPosition(SDTResonator *x, unsigned int pickup) {
  double out, limit, p;
  int mode;
  
  out = 0.0;
  if (x->fragmentSize > 0.0 && pickup < x->nPickups) { 
    for (mode = 0; mode < x->activeModes; mode++) {
      limit = MAX_POS * x->fragmentSize / x->weights[pickup][mode];
      p = SDT_fclip(x->ps[0][mode], -limit, limit);
      if (p != x->ps[0][mode]) {
        x->ps[0][mode] = p;
        x->ps[1][mode] = p;
        x->vs[mode] = 0.0;
      }
      out += p * x->weights[pickup][mode];
    }
    out /= x->fragmentSize;
  }
  return out;
}

double SDTResonator_getVelocity(SDTResonator *x, unsigned int pickup) {
  double out;
  int mode;
  
  out = 0.0;
  if (pickup < x->nPickups) { 
    for (mode = 0; mode < x->activeModes; mode++) {
      out += x->vs[mode] * x->weights[pickup][mode];
    }
  }
  if (x->fragmentSize > 0.0) out /= x->fragmentSize;
  return out;
}

double SDTResonator_getMass(SDTResonator *x, unsigned int pickup) {
  double out;
  int mode;
  
  out = 0.0;
  if (pickup < x->nPickups) { 
    for (mode = 0; mode < x->activeModes; mode++) {
      out += x->weights[pickup][mode];
    }
  }
  return out;
}

double SDTResonator_getMomentum(SDTResonator *x) {
  double out;
  int mode;
  
  out = 0.0;
  for (mode = 0; mode < x->activeModes; mode++) {
    out += x->vs[mode];
  }
  return out;
}

double SDTResonator_getNModes(SDTResonator *x) {
  return x->nModes;
}

double SDTResonator_getNPickups(SDTResonator *x) {
  return x->nPickups;
}

void SDTResonator_setPosition(SDTResonator *x, unsigned int pickup, unsigned int mode, double f) {
  if (mode < x->nModes && pickup < x->nPickups && x->weights[pickup][mode] > 0.0) {
    x->ps[0][mode] = f * x->fragmentSize / x->weights[pickup][mode];
    x->ps[1][mode] = x->ps[0][mode] - x->vs[mode] * SDT_timeStep;
  }
}

void SDTResonator_setVelocity(SDTResonator *x, unsigned int pickup, unsigned int mode, double f) {
  if (mode < x->nModes && pickup < x->nPickups && x->weights[pickup][mode] > 0.0) {
    x->vs[mode] = f * x->fragmentSize / x->weights[pickup][mode];
    x->ps[1][mode] = x->ps[0][mode] - x->vs[mode] * SDT_timeStep;
  }
}

void SDTResonator_setFrequency(SDTResonator *x, unsigned int mode, double f) {
  if (mode < x->nModes) {
    x->freqs[mode] = SDT_fclip(f, 0.0, 0.5 * SDT_sampleRate);
  }
}

void SDTResonator_setDecay(SDTResonator *x, unsigned int mode, double f) {
  if (mode < x->nModes) {
    x->decays[mode] = fmax(0.0, f);
  }
}

void SDTResonator_setWeight(SDTResonator *x, unsigned int pickup, unsigned int mode, double f) {
  double ratio;
  
  if (mode < x->nModes && pickup < x->nPickups) {
    ratio = x->weights[pickup][mode];
    x->weights[pickup][mode] = fmax(0.0, f);
    ratio /= x->weights[pickup][mode];
    if (!isnormal(ratio)) ratio = 0.0;
    x->ps[0][mode] *= ratio;
    x->ps[1][mode] *= ratio;
    x->vs[mode] *= ratio;
  }
}

void SDTResonator_setMass(SDTResonator *x, unsigned int pickup, unsigned int mode, double f) {
  double weight;
  
  weight = f > 0.0 ? 1.0 / f : 0.0;
  SDTResonator_setWeight(x, pickup, mode, weight);
}

void SDTResonator_setFragmentSize(SDTResonator *x, double f) {
  double ratio;
  int mode;
  
  ratio = 1.0 / x->fragmentSize;
  x->fragmentSize = SDT_fclip(f, 0.0, 1.0);
  ratio *= x->fragmentSize;
  if (!isnormal(ratio)) ratio = 0.0;
  for (mode = 0; mode < x->nModes; mode++) {
    x->ps[0][mode] *= ratio;
    x->ps[1][mode] *= ratio;
    x->vs[mode] *= ratio;
  }
}

void SDTResonator_setActiveModes(SDTResonator *x, unsigned int i) {
  x->activeModes = SDT_clip(i, 0, x->nModes);
}

void SDTResonator_applyForce(SDTResonator *x, unsigned int pickup, double f) {
  double totalWeight;
  int mode;
  
  if (pickup < x->nPickups && isnormal(f)) {
    totalWeight = 0.0;
    for (mode = 0; mode < x->activeModes; mode++) {
      totalWeight += x->weights[pickup][mode];
    }
    for (mode = 0; mode < x->activeModes; mode++) {
      if (totalWeight > 0.0) x->fs[mode] += f * x->weights[pickup][mode] / totalWeight;
      else x->fs[mode] += f / x->activeModes;
    }
  }
}

void SDTResonator_dsp(SDTResonator *x) {
  double w, g, r, cosw, sinw, tsinw, b1, a1, a2, b0v, b1v, p;
  int mode;
  
  for (mode = 0; mode < x->activeModes; mode++) {
    w = SDT_TWOPI * x->freqs[mode] * SDT_timeStep / x->fragmentSize;
    if (w > SDT_PI) {
      x->ps[0][mode] = 0.0;
      x->ps[1][mode] = 0.0;
      x->vs[mode] = 0.0;
    }
    else {
      g = x->decays[mode] > 0.0 ? 2.0 / (x->decays[mode] * x->fragmentSize) : 0.0;
      r = exp(-g * SDT_timeStep);
      if (w > 0.0) {
        cosw = cos(w);
        sinw = sin(w);
        tsinw = sinw * SDT_timeStep;
        b1 = r * sinw * SDT_timeStep * SDT_timeStep / w;
        a1 = -2.0 * r * cosw;
        a2 = r * r;
        b0v = w * cosw / tsinw - g;
        b1v = -r * w / tsinw;
      }
      else {
        b1 = r * SDT_timeStep * SDT_timeStep;
        a1 = -2.0 * r;
        a2 = r * r;
        b0v = 1.0 / SDT_timeStep - g;
        b1v = -r / SDT_timeStep;
      }
      p = b1 * x->fs[mode] - a1 * x->ps[0][mode] - a2 * x->ps[1][mode];
      x->vs[mode] = b0v * p + b1v * x->ps[0][mode];
      x->ps[1][mode] = x->ps[0][mode];
      x->ps[0][mode] = p;
    }
    x->fs[mode] = 0.0;
  }
}