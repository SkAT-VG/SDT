#include <math.h>
#include <stdlib.h>
#include "SDTCommon.h"
#include "SDTOscillators.h"
#include "SDTStructs.h"
#include "SDTResonators.h"
#include "SDTInteractors.h"

#define MAX_ERROR 0.001
#define MAX_ITERATIONS 50

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
  free(x);
}

void SDTInteractor_setFirstResonator(SDTInteractor *x, SDTResonator *p) {
  x->obj0 = p;
}

void SDTInteractor_setSecondResonator(SDTInteractor *x, SDTResonator *p) {
  x->obj1 = p;
}

void SDTInteractor_setFirstPoint(SDTInteractor *x, long l) {
  x->contact0 = l;
}

void SDTInteractor_setSecondPoint(SDTInteractor *x, long l) {
  x->contact1 = l;
}

double SDTInteractor_computeForce(SDTInteractor *x) {
  double f, h, w, f0, f1;
  int count;
  
  f = x->computeForce(x);
  h = SDTResonator_computeEnergy(x->obj0, x->contact0, 0.0) + SDTResonator_computeEnergy(x->obj1, x->contact1, 0.0) + x->energy;
  w = SDTResonator_computeEnergy(x->obj0, x->contact0, f) + SDTResonator_computeEnergy(x->obj1, x->contact1, -f) - h;
  count = 0.0;
  if (w > 0.0) {
    f0 = 0.0;
    f1 = f;
    while ((w > 0.0 || w < -MAX_ERROR * h) && count < MAX_ITERATIONS) {
      f = (f0 + f1) / 2.0;
      w = SDTResonator_computeEnergy(x->obj0, x->contact0, f) + SDTResonator_computeEnergy(x->obj1, x->contact1, -f) - h;
      if (w < 0) f0 = f;
      else f1 = f;
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

//-------------------------------------------------------------------------------------//

struct SDTImpact {
  double stiffness, dissipation, shape;
};

double SDTImpact_MarhefkaOrin(SDTInteractor *x) {
  SDTImpact *s = x->state;
  double p, v, f;
  
  p = SDTResonator_getPosition(x->obj1, x->contact1) - SDTResonator_getPosition(x->obj0, x->contact0);
  if (p <= 0.0) {
    x->energy = 0.0;
    return 0.0;
  }
  v = SDTResonator_getVelocity(x->obj1, x->contact1) - SDTResonator_getVelocity(x->obj0, x->contact0);
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

void SDTImpact_free(SDTInteractor *x) {
  free(x->state);
  SDTInteractor_free(x);
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

//-------------------------------------------------------------------------------------//

struct SDTFriction {
  double fn, vs, ks, kd, kba,
         s0, s1, s2, s3,
         fs, fc, z;
};

double SDTFriction_ElastoPlastic(SDTInteractor *x) {
  SDTFriction *s = (SDTFriction *)x->state;
  double v, vRatio, vSgn, zSgn, zss, zba, alpha, dz, w, f;
  
  x->energy = 0.0;
  v = SDTResonator_getVelocity(x->obj1, x->contact1) - SDTResonator_getVelocity(x->obj0, x->contact0);
  if (s->fn <= 0.0) {
    s->z = 0.0;
    return 0.0;
  }
  vRatio = v / s->vs;
  vSgn = SDT_signum(v);
  zSgn = SDT_signum(s->z);
  zss = vSgn * (s->fc + (s->fs - s->fc) * exp(-vRatio * vRatio)) / s->s0;
  zba = vSgn * s->kba * s->fc / s->s0;
  if (vSgn != zSgn) alpha = 0.0;
  else if (fabs(s->z) < fabs(zba)) alpha = 0.0;
  else if (fabs(s->z) < fabs(zss)) alpha = 0.5 + 0.5 * sin(SDT_PI * (s->z - 0.5 * (zss + zba)) / (zss - zba));
  else alpha = 1.0;
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
