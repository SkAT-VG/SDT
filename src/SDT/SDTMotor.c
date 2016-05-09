#include <math.h>
#include <stdlib.h>
#include "SDTCommon.h"
#include "SDTFilters.h"
#include "SDTOscillators.h"
#include "SDTMotor.h"

#define MAX_CYLINDERS 12
#define N_MUFFLERS 4
#define METAL_FEED 0.9
#define MUFFLER_FEED 0.5
#define JOINT_FEED 0.1
#define AIR_FEED -0.5

struct SDTMotor {
  void (*cycle)(double phase, double *pressure, double *inValve, double *outValve);
  SDTWaveguide *intakes[MAX_CYLINDERS], *cylinders[MAX_CYLINDERS],
             *extractors[MAX_CYLINDERS], *exhaust, *mufflers[N_MUFFLERS], *outlet;
  SDTOnePole *air, *walls, *intakeDC, *vibrationsDC, *outletDC;
  double rpm, throttle, phase, step,
         cylinderSize, compressionRatio, sparkTime, asymmetry, backfire, backfireRate,
         revIntakes, vibrations, fwdExtractors, revMufflers, fwdMufflers, fwdOutlet;
  unsigned char isRevvingDown, isBackfiring;
  int nCylinders;
};

void fourStroke(double phase, double *pressure, double *inValve, double *outValve) {
  double w;
  
  w = 2.0 * SDT_TWOPI * phase;
  *pressure = cos(w);
  *inValve = sin(w) * (phase > 0.5 && phase < 0.75);
  *outValve = -sin(w) * (phase > 0.25 && phase < 0.5);
}

void twoStroke(double phase, double *pressure, double *inValve, double *outValve) {
  double w;
  
  w = SDT_TWOPI * phase;
  *pressure = cos(w);
  *inValve = SDT_fclip(SDT_scale(*pressure, -0.33, -1, 0, 1, 1), 0, 1);
  *outValve = SDT_fclip(SDT_scale(*pressure, 0.34, -1, 0, 2, 1), 0, 1);
}

SDTMotor *SDTMotor_new(long maxDelay) {
  SDTMotor *x;
  int i;
  
  x = (SDTMotor *)malloc(sizeof(SDTMotor));
  x->cycle = &fourStroke;
  for (i = 0; i < MAX_CYLINDERS; i++) {
    x->intakes[i] = SDTWaveguide_new(maxDelay);
    SDTWaveguide_setRevFeedback(x->intakes[i], AIR_FEED);
    x->cylinders[i] = SDTWaveguide_new(maxDelay);
    x->extractors[i] = SDTWaveguide_new(maxDelay);
    SDTWaveguide_setFwdFeedback(x->extractors[i], JOINT_FEED);
  }
  x->exhaust = SDTWaveguide_new(maxDelay);
  SDTWaveguide_setRevFeedback(x->exhaust, JOINT_FEED);
  SDTWaveguide_setFwdFeedback(x->exhaust, MUFFLER_FEED);
  for (i = 0; i < N_MUFFLERS; i++) {
    x->mufflers[i] = SDTWaveguide_new(maxDelay);
    SDTWaveguide_setRevFeedback(x->mufflers[i], MUFFLER_FEED);
    SDTWaveguide_setFwdFeedback(x->mufflers[i], MUFFLER_FEED);
  }
  x->outlet = SDTWaveguide_new(maxDelay);
  SDTWaveguide_setRevFeedback(x->outlet, MUFFLER_FEED);
  SDTWaveguide_setFwdFeedback(x->outlet, AIR_FEED);
  x->air = SDTOnePole_new();
  x->walls = SDTOnePole_new();
  x->intakeDC = SDTOnePole_new();
  x->vibrationsDC = SDTOnePole_new();
  x->outletDC = SDTOnePole_new();
  x->rpm = 700.0;
  x->throttle = 0.0;
  x->phase = 0.0;
  x->step = 120.0;
  x->cylinderSize = 500.0;
  x->compressionRatio = 10.0;
  x->sparkTime = 0.1;
  x->asymmetry = 0.1;
  x->backfire = 0.0;
  x->backfireRate = 0.0;
  x->isRevvingDown = 0;
  x->isBackfiring = 0;
  x->nCylinders = 4;
  return x;
}

void SDTMotor_free(SDTMotor *x) {
  int i;
  
  for (i = 0; i < MAX_CYLINDERS; i++) {
    SDTWaveguide_free(x->intakes[i]);
    SDTWaveguide_free(x->cylinders[i]);
    SDTWaveguide_free(x->extractors[i]);
  }
  SDTWaveguide_free(x->exhaust);
  for (i = 0; i < N_MUFFLERS; i++) {
    SDTWaveguide_free(x->mufflers[i]);
  }
  SDTWaveguide_free(x->outlet);
  SDTOnePole_free(x->air);
  SDTOnePole_free(x->walls);
  SDTOnePole_free(x->intakeDC);
  SDTOnePole_free(x->vibrationsDC);
  SDTOnePole_free(x->outletDC);
  free(x);
}

void SDTMotor_setFilters(SDTMotor *x, double damp, double dc) {
  SDTOnePole_lowpass(x->air, damp);
  SDTOnePole_lowpass(x->walls, damp);
  SDTOnePole_lowpass(x->intakeDC, dc);
  SDTOnePole_lowpass(x->vibrationsDC, dc);
  SDTOnePole_lowpass(x->outletDC, dc);
}

void SDTMotor_setRpm(SDTMotor *x, double f) {
  f = fmax(0.0, f);
  if ((int)f < (int)x->rpm) {
    x->isRevvingDown = 1;
  }
  else if ((int)f > (int)x->rpm) {
    x->backfireRate = x->backfire;
    x->isRevvingDown = 0;
  }
  else {
    x->isRevvingDown = 0;
  }
  x->rpm = f;
}

void SDTMotor_setThrottle(SDTMotor *x, double f) {
  x->throttle = SDT_fclip(f, 0.0, 1.0);
}

void SDTMotor_setFourStroke(SDTMotor *x) {
  x->cycle = &fourStroke;
  x->step = 120.0;
}

void SDTMotor_setTwoStroke(SDTMotor *x) {
  x->cycle = &twoStroke;
  x->step = 60.0;
}

void SDTMotor_setNCylinders(SDTMotor *x, int i) {
  x->nCylinders = SDT_clip(i, 1, MAX_CYLINDERS);
}

void SDTMotor_setCylinderSize(SDTMotor *x, double f) {
  x->cylinderSize = SDT_samplesInAir(0.01 * pow(f, 1.0 / 3.0));
}

void SDTMotor_setCompressionRatio(SDTMotor *x, double f) {
  x->compressionRatio = fmax(1.0, f);
}

void SDTMotor_setSparkTime(SDTMotor *x, double f) {
  x->sparkTime = SDT_fclip(f, SDT_MICRO, 1.0);
}

void SDTMotor_setAsymmetry(SDTMotor *x, double f) {
  x->asymmetry = SDT_fclip(f, 0.0, 1.0);
}

void SDTMotor_setBackfire(SDTMotor *x, double f) {
  x->backfire = f;//SDT_fclip(f, 0.0, 1.0);
}

void SDTMotor_setIntakeSize(SDTMotor *x, double f) {
  double coeff;
  int i, sign;
  
  f = SDT_samplesInAir(f);
  for (i = 0; i < MAX_CYLINDERS; i++) {
    sign = (i % 2) * 2 - 1;
    coeff = sign * floor(i / 2 + 1) / MAX_CYLINDERS;
    SDTWaveguide_setDelay(x->intakes[i], f * (1.0 + coeff));
  }
}

void SDTMotor_setExtractorSize(SDTMotor *x, double f) {
  double coeff;
  int i, sign;
  
  f = SDT_samplesInAir(f);
  for (i = 0; i < MAX_CYLINDERS; i++) {
    sign = (i % 2) * 2 - 1;
    coeff = sign * floor(i / 2 + 1) / MAX_CYLINDERS;
    SDTWaveguide_setDelay(x->extractors[i], f * (1.0 + coeff));
  }
}

void SDTMotor_setExhaustSize(SDTMotor *x, double f) {
  SDTWaveguide_setDelay(x->exhaust, SDT_samplesInAir(f));
}

void SDTMotor_setExpansion(SDTMotor *x, double f) {
  int i;
  
  f = SDT_fclip(f, 0.0, 1.0);
  for (i = 0; i < MAX_CYLINDERS; i++) {
    SDTWaveguide_setFwdFeedback(x->extractors[i], -f);
  }
  SDTWaveguide_setRevFeedback(x->exhaust, f);
}

void SDTMotor_setMufflerSize(SDTMotor *x, double f) {
  int i;
  
  f = SDT_samplesInAir(f);
  for (i = 0; i < N_MUFFLERS; i++) {
    SDTWaveguide_setDelay(x->mufflers[i], f * (0.7 + 0.6 * i / (N_MUFFLERS - 1)));
  }
}

void SDTMotor_setMufflerFeedback(SDTMotor *x, double f) {
  int i;
  
  f = SDT_fclip(f, 0.0, 1.0);
  SDTWaveguide_setFwdFeedback(x->exhaust, f);
  for (i = 0; i < N_MUFFLERS; i++) {
    SDTWaveguide_setRevFeedback(x->mufflers[i], f);
    SDTWaveguide_setFwdFeedback(x->mufflers[i], f);
  }
  SDTWaveguide_setRevFeedback(x->outlet, f);
}

void SDTMotor_setOutletSize(SDTMotor *x, double f) {
  SDTWaveguide_setDelay(x->outlet, SDT_samplesInAir(f));
}

void SDTMotor_dsp(SDTMotor *x, double *outs) {
  double position, asymmetry, phase,
         backfire, spark, pressure, chamber, inValve, outValve,
         inValveFeed, outValveFeed,
         fwdIn, revIn;
  int i;
  
  x->revIntakes = 0.0;
  x->vibrations = 0.0;
  x->fwdExtractors = 0.0;
  for (i = 0; i < x->nCylinders; i++) {
    position = (i + 0.5) / (double)x->nCylinders;
    asymmetry = 0.5 * x->asymmetry * sin(SDT_TWOPI * position) / (double)x->nCylinders;
    phase = fmod(x->phase + position + asymmetry, 1.0);
    spark = sin(SDT_TWOPI * phase / x->sparkTime) * (phase < x->sparkTime) * x->throttle;
    x->cycle(phase, &pressure, &inValve, &outValve);
    chamber = 1.0 - (pressure * 0.5 + 0.5) * (1.0 - 1.0 / x->compressionRatio);
    inValveFeed = inValve * JOINT_FEED + (1.0 - inValve) * METAL_FEED;
    outValveFeed = outValve * JOINT_FEED + (1.0 - outValve) * METAL_FEED;
    SDTWaveguide_setDelay(x->cylinders[i], x->cylinderSize * chamber);
    SDTWaveguide_setFwdFeedback(x->intakes[i], inValveFeed);
    SDTWaveguide_setRevFeedback(x->cylinders[i], inValveFeed);
    SDTWaveguide_setFwdFeedback(x->cylinders[i], outValveFeed);
    SDTWaveguide_setRevFeedback(x->extractors[i], outValveFeed);
    // intakes
    fwdIn = inValve * SDTOnePole_dsp(x->air, SDT_whiteNoise());
    revIn = SDTWaveguide_getRevOut(x->cylinders[i]);
    SDTWaveguide_dsp(x->intakes[i], fwdIn, revIn);
    x->revIntakes += SDTWaveguide_getRevOut(x->intakes[i]);
    // cylinders
    fwdIn = spark + pressure + SDTWaveguide_getFwdOut(x->intakes[i]);
    revIn = SDTWaveguide_getRevOut(x->extractors[i]);
    SDTWaveguide_dsp(x->cylinders[i], fwdIn, revIn);
    x->vibrations += pressure + inValve + outValve + spark;
    // extractors
    fwdIn = SDTWaveguide_getFwdOut(x->cylinders[i]);
    revIn = SDTWaveguide_getRevOut(x->exhaust) / x->nCylinders;
    SDTWaveguide_dsp(x->extractors[i], fwdIn, revIn);
    x->fwdExtractors += SDTWaveguide_getFwdOut(x->extractors[i]);
  }
  x->vibrations = SDTOnePole_dsp(x->walls, x->vibrations);
  // exhaust
  fwdIn = x->fwdExtractors;
  revIn = x->revMufflers;
  SDTWaveguide_dsp(x->exhaust, fwdIn, revIn);
  // backfiring
  backfire = sin(SDT_TWOPI * x->phase / x->sparkTime) * (x->phase < x->sparkTime);
  x->phase = x->phase + x->rpm / x->step * SDT_timeStep;
  if (x->phase > 1.0) {
    x->isBackfiring = SDT_frand() < x->backfireRate * x->isRevvingDown;
    if (x->isBackfiring) {
      x->backfireRate *= x->backfire;
    }
  }
  x->phase = fmod(x->phase, 1.0);
  // muffler
  x->revMufflers = 0.0;
  x->fwdMufflers = 0.0;
  for (i = 0; i < N_MUFFLERS; i++) {
    fwdIn = SDTWaveguide_getFwdOut(x->exhaust) / N_MUFFLERS + backfire * x->isBackfiring;
    revIn = SDTWaveguide_getRevOut(x->outlet) / N_MUFFLERS;
    SDTWaveguide_dsp(x->mufflers[i], fwdIn, revIn);
    x->revMufflers += SDTWaveguide_getRevOut(x->mufflers[i]);
    x->fwdMufflers += SDTWaveguide_getFwdOut(x->mufflers[i]);
  }
  fwdIn = x->fwdMufflers;
  revIn = 0.0;
  SDTWaveguide_dsp(x->outlet, fwdIn, revIn);
  x->fwdOutlet = SDTWaveguide_getFwdOut(x->outlet);
  // remove DC offset
  outs[0] = x->revIntakes - SDTOnePole_dsp(x->intakeDC, x->revIntakes);
  outs[1] = x->vibrations - SDTOnePole_dsp(x->vibrationsDC, x->vibrations);
  outs[2] = x->fwdOutlet - SDTOnePole_dsp(x->outletDC, x->fwdOutlet);
}
