#include "SDTControl.h"

#include <math.h>
#include <stdlib.h>

#include "SDTCommon.h"
#include "SDTStructs.h"

#define UNDERSHOOT 0.1
#define OVERSHOOT 10.0

double SDT_groundDecay(double grain, double velocity) {
  return SDT_fclip(2.0 * grain * fabs(velocity), 0.0, 2.0);
}

struct SDTBouncing {
  double restitution, height, irregularity, targetVelocity, currentVelocity;
};

SDTBouncing *SDTBouncing_new() {
  SDTBouncing *x;

  x = (SDTBouncing *)malloc(sizeof(SDTBouncing));
  x->restitution = 0.0;
  x->height = 0.0;
  x->irregularity = 0.0;
  x->targetVelocity = 0.0;
  x->currentVelocity = 0.0;
  return x;
}

void SDTBouncing_free(SDTBouncing *x) { free(x); }

_SDT_COPY_FUNCTION(Bouncing)

_SDT_HASHMAP_FUNCTIONS(Bouncing)

json_value *SDTBouncing_toJSON(const SDTBouncing *x) {
  json_value *obj = json_object_new(0);
  json_object_push(obj, "restitution",
                   json_double_new(SDTBouncing_getRestitution(x)));
  json_object_push(obj, "height", json_double_new(SDTBouncing_getHeight(x)));
  json_object_push(obj, "irregularity",
                   json_double_new(SDTBouncing_getIrregularity(x)));
  return obj;
}

SDTBouncing *SDTBouncing_fromJSON(const json_value *x) {
  if (!x || x->type != json_object) return 0;
  SDTBouncing *y = SDTBouncing_new();
  return SDTBouncing_setParams(y, x, 0);
}

SDTBouncing *SDTBouncing_setParams(SDTBouncing *x, const json_value *j,
                                   unsigned char unsafe) {
  if (!x || !j || j->type != json_object) return 0;

  _SDT_SET_DOUBLE_FROM_JSON(Bouncing, x, j, Restitution, restitution);
  _SDT_SET_DOUBLE_FROM_JSON(Bouncing, x, j, Height, height);
  _SDT_SET_DOUBLE_FROM_JSON(Bouncing, x, j, Irregularity, irregularity);

  return x;
}

double SDTBouncing_getRestitution(const SDTBouncing *x) {
  return x->restitution;
}

double SDTBouncing_getHeight(const SDTBouncing *x) { return x->height; }

double SDTBouncing_getIrregularity(const SDTBouncing *x) {
  return x->irregularity;
}

void SDTBouncing_setRestitution(SDTBouncing *x, double f) {
  x->restitution = SDT_fclip(f, 0.0, 1.0);
}

void SDTBouncing_setHeight(SDTBouncing *x, double f) {
  x->height = fmax(f, 0.0);
}

void SDTBouncing_setIrregularity(SDTBouncing *x, double f) {
  x->irregularity = SDT_fclip(f, 0.0, 1.0);
}

void SDTBouncing_reset(SDTBouncing *x) {
  x->targetVelocity = sqrt(2.0 * x->height * SDT_EARTH);
  x->currentVelocity = 0.0;
}

double SDTBouncing_dsp(SDTBouncing *x) {
  double v;

  v = 0.0;
  if (x->targetVelocity > SDT_MICRO) {
    x->currentVelocity += SDT_timeStep * SDT_EARTH;
    if (x->currentVelocity > x->targetVelocity) {
      v = x->targetVelocity;
      x->targetVelocity *=
          x->restitution * (1.0 - x->irregularity * SDT_frand());
      x->currentVelocity -= v + x->targetVelocity;
    }
  }
  return v;
}

int SDTBouncing_hasFinished(SDTBouncing *x) { return x->targetVelocity <= 0.0; }

//-------------------------------------------------------------------------------------//

struct SDTBreaking {
  double storedEnergy, crushingEnergy, granularity, fragmentation,
      remainingEnergy;
};

SDTBreaking *SDTBreaking_new() {
  SDTBreaking *x;

  x = (SDTBreaking *)malloc(sizeof(SDTBreaking));
  x->storedEnergy = 0.0;
  x->crushingEnergy = 0.0;
  x->granularity = 0.0;
  x->fragmentation = 0.0;
  x->remainingEnergy = 0.0;
  return x;
}

void SDTBreaking_free(SDTBreaking *x) { free(x); }

_SDT_COPY_FUNCTION(Breaking)

_SDT_HASHMAP_FUNCTIONS(Breaking)

json_value *SDTBreaking_toJSON(const SDTBreaking *x) {
  json_value *obj = json_object_new(0);
  json_object_push(obj, "storedEnergy",
                   json_double_new(SDTBreaking_getStoredEnergy(x)));
  json_object_push(obj, "crushingEnergy",
                   json_double_new(SDTBreaking_getCrushingEnergy(x)));
  json_object_push(obj, "granularity",
                   json_double_new(SDTBreaking_getGranularity(x)));
  json_object_push(obj, "fragmentation",
                   json_double_new(SDTBreaking_getFragmentation(x)));
  return obj;
}

SDTBreaking *SDTBreaking_fromJSON(const json_value *x) {
  if (!x || x->type != json_object) return 0;
  SDTBreaking *y = SDTBreaking_new();
  return SDTBreaking_setParams(y, x, 0);
}

SDTBreaking *SDTBreaking_setParams(SDTBreaking *x, const json_value *j,
                                   unsigned char unsafe) {
  if (!x || !j || j->type != json_object) return 0;

  _SDT_SET_DOUBLE_FROM_JSON(Breaking, x, j, StoredEnergy, storedEnergy);
  _SDT_SET_DOUBLE_FROM_JSON(Breaking, x, j, CrushingEnergy, crushingEnergy);
  _SDT_SET_DOUBLE_FROM_JSON(Breaking, x, j, Granularity, granularity);
  _SDT_SET_DOUBLE_FROM_JSON(Breaking, x, j, Fragmentation, fragmentation);

  return x;
}

double SDTBreaking_getStoredEnergy(const SDTBreaking *x) {
  return x->storedEnergy;
}

double SDTBreaking_getCrushingEnergy(const SDTBreaking *x) {
  return x->crushingEnergy;
}

double SDTBreaking_getGranularity(const SDTBreaking *x) {
  return x->granularity;
}

double SDTBreaking_getFragmentation(const SDTBreaking *x) {
  return x->fragmentation;
}

void SDTBreaking_setStoredEnergy(SDTBreaking *x, double f) {
  x->storedEnergy = fmax(SDT_MICRO, f);
}

void SDTBreaking_setCrushingEnergy(SDTBreaking *x, double f) {
  x->crushingEnergy = fmax(SDT_MICRO, f);
}

void SDTBreaking_setGranularity(SDTBreaking *x, double f) {
  x->granularity = SDT_fclip(f, 0.0, 1.0);
}

void SDTBreaking_setFragmentation(SDTBreaking *x, double f) {
  x->fragmentation = SDT_fclip(f, 0.0, 1.0);
}

void SDTBreaking_reset(SDTBreaking *x) { x->remainingEnergy = 1.0; }

int SDTBreaking_hasFinished(SDTBreaking *x) {
  return x->remainingEnergy <= x->crushingEnergy / x->storedEnergy;
}

void SDTBreaking_dsp(SDTBreaking *x, double *outs) {
  double success, fragment, energy, size;

  energy = 0.0;
  size = 0.0;
  if (!SDTBreaking_hasFinished(x)) {
    success = x->granularity * x->remainingEnergy;
    if (SDT_frand() < success) {
      fragment = 1.0 - x->fragmentation + x->fragmentation * x->remainingEnergy;
      energy = x->crushingEnergy * x->remainingEnergy *
               SDT_fclip(SDT_expRand(1.45), UNDERSHOOT, OVERSHOOT);
      size = fmax(SDT_MICRO, fragment * (0.5 + 0.5 * SDT_frand()));
      x->remainingEnergy -= energy / x->storedEnergy;
    }
  } else {
    x->remainingEnergy = 0.0;
  }
  outs[0] = energy;
  outs[1] = size;
}

//-------------------------------------------------------------------------------------//

struct SDTCrumpling {
  double crushingEnergy, granularity, fragmentation;
};

SDTCrumpling *SDTCrumpling_new() {
  SDTCrumpling *x;

  x = (SDTCrumpling *)malloc(sizeof(SDTCrumpling));
  x->crushingEnergy = 0.0;
  x->granularity = 0.0;
  x->fragmentation = 0.0;
  return x;
}

void SDTCrumpling_free(SDTCrumpling *x) { free(x); }

_SDT_COPY_FUNCTION(Crumpling)

_SDT_HASHMAP_FUNCTIONS(Crumpling)

json_value *SDTCrumpling_toJSON(const SDTCrumpling *x) {
  json_value *obj = json_object_new(0);
  json_object_push(obj, "crushingEnergy",
                   json_double_new(SDTCrumpling_getCrushingEnergy(x)));
  json_object_push(obj, "granularity",
                   json_double_new(SDTCrumpling_getGranularity(x)));
  json_object_push(obj, "fragmentation",
                   json_double_new(SDTCrumpling_getFragmentation(x)));
  return obj;
}

SDTCrumpling *SDTCrumpling_fromJSON(const json_value *x) {
  if (!x || x->type != json_object) return 0;
  SDTCrumpling *y = SDTCrumpling_new();
  return SDTCrumpling_setParams(y, x, 0);
}

SDTCrumpling *SDTCrumpling_setParams(SDTCrumpling *x, const json_value *j,
                                     unsigned char unsafe) {
  if (!x || !j || j->type != json_object) return 0;

  _SDT_SET_DOUBLE_FROM_JSON(Crumpling, x, j, CrushingEnergy, crushingEnergy);
  _SDT_SET_DOUBLE_FROM_JSON(Crumpling, x, j, Granularity, granularity);
  _SDT_SET_DOUBLE_FROM_JSON(Crumpling, x, j, Fragmentation, fragmentation);

  return x;
}

double SDTCrumpling_getCrushingEnergy(const SDTCrumpling *x) {
  return x->crushingEnergy;
}

double SDTCrumpling_getGranularity(const SDTCrumpling *x) {
  return x->granularity;
}

double SDTCrumpling_getFragmentation(const SDTCrumpling *x) {
  return x->fragmentation;
}

void SDTCrumpling_setCrushingEnergy(SDTCrumpling *x, double f) {
  x->crushingEnergy = fmax(SDT_MICRO, f);
}

void SDTCrumpling_setGranularity(SDTCrumpling *x, double f) {
  x->granularity = SDT_fclip(f, 0.0, 1.0);
}

void SDTCrumpling_setFragmentation(SDTCrumpling *x, double f) {
  x->fragmentation = SDT_fclip(f, 0.0, 1.0);
}

void SDTCrumpling_dsp(SDTCrumpling *x, double *outs) {
  double success, fragment, energy, size;

  energy = 0.0;
  size = 0.0;
  success = x->granularity;
  if (SDT_frand() < success) {
    fragment = 1.0 - x->fragmentation + x->fragmentation * SDT_frand();
    energy =
        x->crushingEnergy * SDT_fclip(SDT_expRand(1.45), UNDERSHOOT, OVERSHOOT);
    size = fmax(SDT_MICRO, fragment * (0.5 + 0.5 * SDT_frand()));
  }
  outs[0] = energy;
  outs[1] = size;
}

//-------------------------------------------------------------------------------------//

struct SDTRolling {
  double grain, depth, mass, velocity, gravity, kinetic, decay, groundTrace,
      ballFlight, damping;
};

SDTRolling *SDTRolling_new() {
  SDTRolling *x;

  x = (SDTRolling *)malloc(sizeof(SDTRolling));
  x->grain = 0.0;
  x->depth = 0.0;
  x->mass = 0.0;
  x->velocity = 0.0;
  x->gravity = 0.0;
  x->kinetic = 0.0;
  x->decay = 0.0;
  x->groundTrace = 0.0;
  x->ballFlight = 0.0;
  return x;
}
void SDTRolling_free(SDTRolling *x) { free(x); }

_SDT_COPY_FUNCTION(Rolling)

_SDT_HASHMAP_FUNCTIONS(Rolling)

double SDTRolling_getGrain(const SDTRolling *x) { return x->grain; }

double SDTRolling_getDepth(const SDTRolling *x) { return x->depth; }

double SDTRolling_getMass(const SDTRolling *x) { return x->mass; }

double SDTRolling_getVelocity(const SDTRolling *x) { return x->velocity; }

json_value *SDTRolling_toJSON(const SDTRolling *x) {
  json_value *obj = json_object_new(0);
  json_object_push(obj, "grain", json_double_new(SDTRolling_getGrain(x)));
  json_object_push(obj, "depth", json_double_new(SDTRolling_getDepth(x)));
  json_object_push(obj, "mass", json_double_new(SDTRolling_getMass(x)));
  json_object_push(obj, "velocity", json_double_new(SDTRolling_getVelocity(x)));
  return obj;
}

SDTRolling *SDTRolling_fromJSON(const json_value *x) {
  if (!x || x->type != json_object) return 0;
  SDTRolling *y = SDTRolling_new();
  return SDTRolling_setParams(y, x, 0);
}

SDTRolling *SDTRolling_setParams(SDTRolling *x, const json_value *j,
                                 unsigned char unsafe) {
  if (!x || !j || j->type != json_object) return 0;

  _SDT_SET_DOUBLE_FROM_JSON(Rolling, x, j, Grain, grain);
  _SDT_SET_DOUBLE_FROM_JSON(Rolling, x, j, Depth, depth);
  _SDT_SET_DOUBLE_FROM_JSON(Rolling, x, j, Mass, mass);
  _SDT_SET_DOUBLE_FROM_JSON(Rolling, x, j, Velocity, velocity);
  return x;
}

void SDTRolling_setGrain(SDTRolling *x, double f) {
  x->grain = SDT_fclip(f, 0.0, 1.0);
  x->decay = SDT_groundDecay(x->grain, x->velocity);
}

void SDTRolling_setDepth(SDTRolling *x, double f) { x->depth = fmax(f, 0.0); }

void SDTRolling_setMass(SDTRolling *x, double f) {
  x->mass = fmax(f, 0.0);
  x->gravity = SDT_gravity(x->mass);
  x->kinetic = SDT_kinetic(x->mass, x->velocity);
}

void SDTRolling_setVelocity(SDTRolling *x, double f) {
  x->velocity = f;
  x->kinetic = SDT_kinetic(x->mass, x->velocity);
  x->decay = SDT_groundDecay(x->grain, x->velocity);
}

double SDTRolling_dsp(SDTRolling *x, double in) {
  double out, currGround, bump;

  out = -x->gravity;
  currGround = fmax(x->groundTrace - x->decay, in);
  if (currGround > x->groundTrace && !x->ballFlight && x->decay) {
    bump =
        (currGround - x->groundTrace) * x->depth * x->kinetic / sqrt(x->decay);
    x->ballFlight = 2.0 * bump;
    out += bump;
  }
  x->groundTrace = currGround;
  x->ballFlight = fmax(0.0, x->ballFlight - x->gravity);
  return out;
}

//-------------------------------------------------------------------------------------//

struct SDTScraping {
  double grain, force, velocity, decay, groundTrace;
};

SDTScraping *SDTScraping_new() {
  SDTScraping *x;

  x = (SDTScraping *)malloc(sizeof(SDTScraping));
  x->grain = 0.0;
  x->force = 0.0;
  x->velocity = 0.0;
  x->decay = 0.0;
  x->groundTrace = 0.0;
  return x;
}

void SDTScraping_free(SDTScraping *x) { free(x); }

_SDT_COPY_FUNCTION(Scraping)

_SDT_HASHMAP_FUNCTIONS(Scraping)

double SDTScraping_getGrain(const SDTScraping *x) { return x->grain; }

double SDTScraping_getForce(const SDTScraping *x) { return x->force; }

double SDTScraping_getVelocity(const SDTScraping *x) { return x->velocity; }

json_value *SDTScraping_toJSON(const SDTScraping *x) {
  json_value *obj = json_object_new(0);
  json_object_push(obj, "grain", json_double_new(SDTScraping_getGrain(x)));
  json_object_push(obj, "force", json_double_new(SDTScraping_getForce(x)));
  json_object_push(obj, "velocity",
                   json_double_new(SDTScraping_getVelocity(x)));
  return obj;
}

SDTScraping *SDTScraping_fromJSON(const json_value *x) {
  if (!x || x->type != json_object) return 0;

  SDTScraping *y = SDTScraping_new();
  return SDTScraping_setParams(y, x, 0);
}

SDTScraping *SDTScraping_setParams(SDTScraping *x, const json_value *j,
                                   unsigned char unsafe) {
  if (!x || !j || j->type != json_object) return 0;

  _SDT_SET_DOUBLE_FROM_JSON(Scraping, x, j, Grain, grain);
  _SDT_SET_DOUBLE_FROM_JSON(Scraping, x, j, Force, force);
  _SDT_SET_DOUBLE_FROM_JSON(Scraping, x, j, Velocity, velocity);

  return x;
}

void SDTScraping_setGrain(SDTScraping *x, double f) {
  x->grain = SDT_fclip(f, 0.0, 1.0);
  x->decay = SDT_groundDecay(x->grain, x->velocity);
}

void SDTScraping_setForce(SDTScraping *x, double f) { x->force = fmax(f, 0.0); }

void SDTScraping_setVelocity(SDTScraping *x, double f) {
  x->velocity = f;
  x->decay = SDT_groundDecay(x->grain, x->velocity);
}

double SDTScraping_dsp(SDTScraping *x, double in) {
  double out, currGround, bump;

  out = 0.0;
  currGround = fmax(x->groundTrace - x->decay, in);
  if (currGround > x->groundTrace && x->decay) {
    bump = (currGround - x->groundTrace) / sqrt(x->decay);
    out -= x->force * x->velocity * x->velocity * bump;
  }
  x->groundTrace = currGround;
  return out;
}
