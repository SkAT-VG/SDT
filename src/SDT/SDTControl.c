#include <math.h>
#include <stdlib.h>
#include "SDTCommon.h"
#include "SDTControl.h"

#define UNDERSHOOT  0.1
#define OVERSHOOT  10.0

struct SDTCrumpling {
  double crushingEnergy, granularity, fragmentation,
         remainingEnergy;
};

SDTCrumpling *SDTCrumpling_new() {
  SDTCrumpling *x;
  
  x = (SDTCrumpling *)malloc(sizeof(SDTCrumpling));
  x->crushingEnergy = 0.0;
  x->granularity = 0.0;
  x->fragmentation = 0.0;
  x->remainingEnergy = 0.0;
  return x;
}

void SDTCrumpling_free(SDTCrumpling *x) {
  free(x);
}

void SDTCrumpling_setCrushingEnergy(SDTCrumpling *x, double f) {
  x->crushingEnergy = SDT_fclip(f, SDT_MICRO, 1.0);
}

void SDTCrumpling_setGranularity(SDTCrumpling *x, double f) {
  x->granularity = SDT_fclip(f, 0.0, 1.0);
}

void SDTCrumpling_setFragmentation(SDTCrumpling *x, double f) {
  x->fragmentation = SDT_fclip(f, 0.0, 1.0);
}

void SDTCrumpling_reset(SDTCrumpling *x, double *size, double *energy) {
  x->remainingEnergy = 1.0;
  *size = 0.5 + 0.5 * SDT_frand();
  *energy = x->crushingEnergy;
  x->remainingEnergy -= *energy;
}

void SDTCrumpling_discrete(SDTCrumpling *x, double *size, double *energy) {
  double success, fragment;
  
  *size = 0.0;
  *energy = 0.0;
  if (x->remainingEnergy > 0.0) {
    success = x->granularity * x->remainingEnergy;
    if (SDT_frand() < success) {
      fragment = 1.0 - x->fragmentation + x->fragmentation * x->remainingEnergy;
      *size = fmax(SDT_MICRO, fragment * (0.5 + 0.5 * SDT_frand()));
      *energy = x->crushingEnergy * SDT_fclip(SDT_expRand(1.0), UNDERSHOOT, OVERSHOOT);
      x->remainingEnergy -= *energy;
    }
  }
}

void SDTCrumpling_continuous(SDTCrumpling *x, double *size, double *energy) {
  double success, fragment;
  
  *size = 0.0;
  *energy = 0.0;
  success = x->granularity;
  if (SDT_frand() < success) {
    fragment = 1.0 - x->fragmentation + x->fragmentation * SDT_frand();
    *size = fmax(SDT_MICRO, fragment * (0.5 + 0.5 * SDT_frand()));
    *energy = x->crushingEnergy * SDT_fclip(SDT_expRand(1.0), UNDERSHOOT, OVERSHOOT);
  }
}

int SDTCrumpling_hasFinished(SDTCrumpling *x) {
  return x->remainingEnergy <= 0.0;
}

//-------------------------------------------------------------------------------------//

struct SDTRolling {
  double grain, depth, mass, velocity,
         gravity, kinetic, decay,
         groundTrace, ballFlight, damping;
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

void SDTRolling_free(SDTRolling *x) {
  free(x);
}

void SDTRolling_setGrain(SDTRolling *x, double f) {
  x->grain = SDT_fclip(f, 0.0, 1.0);
  x->decay = SDT_groundDecay(x->grain, x->velocity);
}

void SDTRolling_setDepth(SDTRolling *x, double f) {
  x->depth = fmax(f, 0.0);
}

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
    bump = (currGround - x->groundTrace) * x->depth * x->kinetic / sqrt(x->decay);
    x->ballFlight = 2.0 * bump;
    out += bump;
  }
  x->groundTrace = currGround;
  x->ballFlight = fmax(0.0, x->ballFlight - x->gravity);
  return out;
}

//-------------------------------------------------------------------------------------//

struct SDTScraping {
  double grain, force, velocity,
         decay, groundTrace;
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

void SDTScraping_free(SDTScraping *x) {
  free(x);
}

void SDTScraping_setGrain(SDTScraping *x, double f) {
  x->grain = SDT_fclip(f, 0.0, 1.0);
  x->decay = SDT_groundDecay(x->grain, x->velocity);
}

void SDTScraping_setForce(SDTScraping *x, double f) {
  x->force = fmax(f, 0.0);
}

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
