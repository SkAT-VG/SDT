#include "SDTMotor.h"

#include <math.h>
#include <stdlib.h>

#include "SDTCommon.h"
#include "SDTFilters.h"
#include "SDTOscillators.h"
#include "SDTStructs.h"

#define MAX_CYLINDERS 12
#define N_MUFFLERS 4
#define METAL_FEED 0.9
#define MUFFLER_FEED 0.5
#define JOINT_FEED 0.1
#define AIR_FEED -0.5

struct SDTMotor {
  void (*cycle)(double phase, double *pressure, double *inValve,
                double *outValve);
  SDTWaveguide *intakes[MAX_CYLINDERS], *cylinders[MAX_CYLINDERS],
      *extractors[MAX_CYLINDERS], *exhaust, *mufflers[N_MUFFLERS], *outlet;
  SDTOnePole *air, *walls;
  SDTDCFilter *intakeDC, *vibrationsDC, *outletDC;
  double rpm, throttle, phase, step, cylinderSize, compressionRatio, sparkTime,
      asymmetry, backfire, backfireRate, revIntakes, vibrations, fwdExtractors,
      revMufflers, fwdMufflers, fwdOutlet, damp, dc;
  unsigned char isRevvingDown, isBackfiring;
  int nCylinders;
};

void fourStroke(double phase, double *pressure, double *inValve,
                double *outValve) {
  double w;

  w = 2.0 * SDT_TWOPI * phase;
  *pressure = cos(w);
  *inValve = sin(w) * (phase > 0.5 && phase < 0.75);
  *outValve = -sin(w) * (phase > 0.25 && phase < 0.5);
}

void twoStroke(double phase, double *pressure, double *inValve,
               double *outValve) {
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
  x->intakeDC = SDTDCFilter_new();
  x->vibrationsDC = SDTDCFilter_new();
  x->outletDC = SDTDCFilter_new();
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
  x->damp = 20.0;
  x->dc = 20.0;
  return x;
}

void SDTMotor_setMaxDelay(SDTMotor *x, long f) {
  double intake_size = SDTMotor_getIntakeSize(x);
  double extractor_size = SDTMotor_getExtractorSize(x);
  double exhaust_size = SDTMotor_getExhaustSize(x);
  double expansion = SDTMotor_getExpansion(x);
  double muffler_size = SDTMotor_getMufflerSize(x);
  double muffler_feedback = SDTMotor_getMufflerFeedback(x);
  double outlet_size = SDTMotor_getOutletSize(x);

  for (unsigned int i = 0; i < MAX_CYLINDERS; i++) {
    SDTWaveguide_free(x->intakes[i]);
    SDTWaveguide_free(x->cylinders[i]);
    SDTWaveguide_free(x->extractors[i]);

    x->intakes[i] = SDTWaveguide_new(f);
    SDTWaveguide_setRevFeedback(x->intakes[i], AIR_FEED);
    x->cylinders[i] = SDTWaveguide_new(f);
    x->extractors[i] = SDTWaveguide_new(f);
    SDTWaveguide_setFwdFeedback(x->extractors[i], JOINT_FEED);
  }

  SDTWaveguide_free(x->exhaust);
  x->exhaust = SDTWaveguide_new(f);
  SDTWaveguide_setRevFeedback(x->exhaust, JOINT_FEED);
  SDTWaveguide_setFwdFeedback(x->exhaust, MUFFLER_FEED);

  for (unsigned int i = 0; i < N_MUFFLERS; i++) {
    SDTWaveguide_free(x->mufflers[i]);
    x->mufflers[i] = SDTWaveguide_new(f);
    SDTWaveguide_setRevFeedback(x->mufflers[i], MUFFLER_FEED);
    SDTWaveguide_setFwdFeedback(x->mufflers[i], MUFFLER_FEED);
  }

  SDTWaveguide_free(x->outlet);
  x->outlet = SDTWaveguide_new(f);
  SDTWaveguide_setRevFeedback(x->outlet, MUFFLER_FEED);
  SDTWaveguide_setFwdFeedback(x->outlet, AIR_FEED);

  SDTMotor_setIntakeSize(x, intake_size);
  SDTMotor_setExtractorSize(x, extractor_size);
  SDTMotor_setExhaustSize(x, exhaust_size);
  SDTMotor_setExpansion(x, expansion);
  SDTMotor_setMufflerSize(x, muffler_size);
  SDTMotor_setMufflerFeedback(x, muffler_feedback);
  SDTMotor_setOutletSize(x, outlet_size);
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
  SDTDCFilter_free(x->intakeDC);
  SDTDCFilter_free(x->vibrationsDC);
  SDTDCFilter_free(x->outletDC);
  free(x);
}

void SDTMotor_setCycle(SDTMotor *x, double f) {
  if (f == 0.0)
    SDTMotor_setFourStroke(x);
  else
    SDTMotor_setTwoStroke(x);
}

_SDT_COPY_FUNCTION(Motor)

_SDT_HASHMAP_FUNCTIONS(Motor)

json_value *SDTMotor_toJSON(const SDTMotor *x) {
  json_value *obj = json_object_new(0);

  json_object_push(obj, "maxDelay", json_integer_new(SDTMotor_getMaxDelay(x)));
  json_object_push(obj, "cycle", json_double_new(SDTMotor_getCycle(x)));
  json_object_push(obj, "nCylinders",
                   json_integer_new(SDTMotor_getNCylinders(x)));
  json_object_push(obj, "cylinderSize",
                   json_double_new(SDTMotor_getCylinderSize(x)));
  json_object_push(obj, "compressionRatio",
                   json_double_new(SDTMotor_getCompressionRatio(x)));
  json_object_push(obj, "sparkTime", json_double_new(SDTMotor_getSparkTime(x)));
  json_object_push(obj, "asymmetry", json_double_new(SDTMotor_getAsymmetry(x)));
  json_object_push(obj, "backfire", json_double_new(SDTMotor_getBackfire(x)));
  json_object_push(obj, "intakeSize",
                   json_double_new(SDTMotor_getIntakeSize(x)));
  json_object_push(obj, "extractorSize",
                   json_double_new(SDTMotor_getExtractorSize(x)));
  json_object_push(obj, "exhaustSize",
                   json_double_new(SDTMotor_getExhaustSize(x)));
  json_object_push(obj, "expansion", json_double_new(SDTMotor_getExpansion(x)));
  json_object_push(obj, "mufflerSize",
                   json_double_new(SDTMotor_getMufflerSize(x)));
  json_object_push(obj, "mufflerFeedback",
                   json_double_new(SDTMotor_getMufflerFeedback(x)));
  json_object_push(obj, "outletSize",
                   json_double_new(SDTMotor_getOutletSize(x)));
  json_object_push(obj, "throttle", json_double_new(SDTMotor_getThrottle(x)));
  json_object_push(obj, "damp", json_double_new(SDTMotor_getDamp(x)));
  json_object_push(obj, "dc", json_double_new(SDTMotor_getDc(x)));

  return obj;
}

SDTMotor *SDTMotor_fromJSON(const json_value *x) {
  if (!x || x->type != json_object) return 0;

  unsigned int maxDelay = SDT_MOTOR_MAXDELAY_DEFAULT;
  _SDT_GET_PARAM_FROM_JSON(maxDelay, x, maxDelay, integer);

  SDTMotor *y = SDTMotor_new(maxDelay);
  return SDTMotor_setParams(y, x, 0);
}

SDTMotor *SDTMotor_setParams(SDTMotor *x, const json_value *j,
                             unsigned char unsafe) {
  if (!x || !j || j->type != json_object) return 0;

  _SDT_SET_UNSAFE_PARAM_FROM_JSON(Motor, x, j, MaxDelay, maxDelay, integer,
                                  unsafe);

  _SDT_SET_PARAM_FROM_JSON(Motor, x, j, NCylinders, nCylinders, integer);

  _SDT_SET_DOUBLE_FROM_JSON(Motor, x, j, Cycle, cycle);
  _SDT_SET_DOUBLE_FROM_JSON(Motor, x, j, CylinderSize, cylinderSize);
  _SDT_SET_DOUBLE_FROM_JSON(Motor, x, j, CompressionRatio, compressionRatio);
  _SDT_SET_DOUBLE_FROM_JSON(Motor, x, j, SparkTime, sparkTime);
  _SDT_SET_DOUBLE_FROM_JSON(Motor, x, j, Asymmetry, asymmetry)
  _SDT_SET_DOUBLE_FROM_JSON(Motor, x, j, Backfire, backfire);
  _SDT_SET_DOUBLE_FROM_JSON(Motor, x, j, IntakeSize, intakeSize);
  _SDT_SET_DOUBLE_FROM_JSON(Motor, x, j, ExtractorSize, extractorSize);
  _SDT_SET_DOUBLE_FROM_JSON(Motor, x, j, ExhaustSize, exhaustSize);
  _SDT_SET_DOUBLE_FROM_JSON(Motor, x, j, Expansion, expansion);
  _SDT_SET_DOUBLE_FROM_JSON(Motor, x, j, MufflerSize, mufflerSize);
  _SDT_SET_DOUBLE_FROM_JSON(Motor, x, j, MufflerFeedback, mufflerFeedback);
  _SDT_SET_DOUBLE_FROM_JSON(Motor, x, j, OutletSize, outletSize);
  _SDT_SET_DOUBLE_FROM_JSON(Motor, x, j, Throttle, throttle);
  _SDT_SET_DOUBLE_FROM_JSON(Motor, x, j, Damp, damp);
  _SDT_SET_DOUBLE_FROM_JSON(Motor, x, j, Dc, dc);

  return x;
}

long SDTMotor_getMaxDelay(const SDTMotor *x) {
  return SDTWaveguide_getMaxDelay(x->outlet);
}

double SDTMotor_getThrottle(const SDTMotor *x) { return x->throttle; }

double SDTMotor_getCycle(const SDTMotor *x) { return x->step == 60.0; }

int SDTMotor_getNCylinders(const SDTMotor *x) { return x->nCylinders; }

double SDTMotor_getCylinderSize(const SDTMotor *x) { return x->cylinderSize; }

double SDTMotor_getCompressionRatio(const SDTMotor *x) {
  return x->compressionRatio;
}

double SDTMotor_getSparkTime(const SDTMotor *x) { return x->sparkTime; }

double SDTMotor_getAsymmetry(const SDTMotor *x) { return x->asymmetry; }

double SDTMotor_getBackfire(const SDTMotor *x) { return x->backfire; }

double SDTMotor_getIntakeSize(const SDTMotor *x) {
  int i = 0, sign;
  sign = (i % 2) * 2 - 1;
  double coeff = sign * floor(i / 2 + 1) / MAX_CYLINDERS;
  return SDT_samplesInAir_inv(SDTWaveguide_getDelay(x->intakes[i]) /
                              (1 + coeff));
}

double SDTMotor_getExtractorSize(const SDTMotor *x) {
  int i = 0, sign;
  sign = (i % 2) * 2 - 1;
  double coeff = sign * floor(i / 2 + 1) / MAX_CYLINDERS;
  return SDT_samplesInAir_inv(SDTWaveguide_getDelay(x->extractors[i]) /
                              (1 + coeff));
}

double SDTMotor_getExhaustSize(const SDTMotor *x) {
  return SDT_samplesInAir_inv(SDTWaveguide_getDelay(x->exhaust));
}

double SDTMotor_getExpansion(const SDTMotor *x) {
  return SDTWaveguide_getRevFeedback(x->exhaust);
}

double SDTMotor_getMufflerSize(const SDTMotor *x) {
  int i = 0;
  double coeff = (0.7 + 0.6 * i / (N_MUFFLERS - 1));
  return SDT_samplesInAir_inv(SDTWaveguide_getDelay(x->mufflers[i]) / coeff);
}

double SDTMotor_getMufflerFeedback(const SDTMotor *x) {
  return SDTWaveguide_getFwdFeedback(x->exhaust);
}

double SDTMotor_getOutletSize(const SDTMotor *x) {
  return SDT_samplesInAir_inv(SDTWaveguide_getDelay(x->outlet));
}

double SDTMotor_getDamp(const SDTMotor *x) { return x->damp; }

double SDTMotor_getDc(const SDTMotor *x) { return x->dc; }

void SDTMotor_setDamp(SDTMotor *x, double f) { x->damp = f; }

void SDTMotor_setDc(SDTMotor *x, double f) { x->dc = f; }

void SDTMotor_setFilters(SDTMotor *x, double damp, double dc) {
  SDTMotor_setDamp(x, damp);
  SDTMotor_setDc(x, dc);
  SDTMotor_update(x);
}

void SDTMotor_update(SDTMotor *x) {
  SDTOnePole_lowpass(x->air, x->damp);
  SDTOnePole_lowpass(x->walls, x->damp);
  SDTDCFilter_setFrequency(x->intakeDC, x->dc);
  SDTDCFilter_setFrequency(x->vibrationsDC, x->dc);
  SDTDCFilter_setFrequency(x->outletDC, x->dc);
}

void SDTMotor_setRpm(SDTMotor *x, double f) {
  f = fmax(0.0, f);
  if ((int)f < (int)x->rpm) {
    x->isRevvingDown = 1;
  } else if ((int)f > (int)x->rpm) {
    x->backfireRate = x->backfire;
    x->isRevvingDown = 0;
  } else {
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
  x->backfire = f;  // SDT_fclip(f, 0.0, 1.0);
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
    SDTWaveguide_setDelay(x->mufflers[i],
                          f * (0.7 + 0.6 * i / (N_MUFFLERS - 1)));
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
  double position, asymmetry, phase, backfire, spark, pressure, chamber,
      inValve, outValve, inValveFeed, outValveFeed, fwdIn, revIn;
  int i;

  x->revIntakes = 0.0;
  x->vibrations = 0.0;
  x->fwdExtractors = 0.0;
  for (i = 0; i < x->nCylinders; i++) {
    position = (i + 0.5) / (double)x->nCylinders;
    asymmetry =
        0.5 * x->asymmetry * sin(SDT_TWOPI * position) / (double)x->nCylinders;
    phase = fmod(x->phase + position + asymmetry, 1.0);
    spark = sin(SDT_TWOPI * phase / x->sparkTime) * (phase < x->sparkTime) *
            x->throttle;
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
  backfire =
      sin(SDT_TWOPI * x->phase / x->sparkTime) * (x->phase < x->sparkTime);
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
    fwdIn = SDTWaveguide_getFwdOut(x->exhaust) / N_MUFFLERS +
            backfire * x->isBackfiring;
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
  outs[0] = SDTDCFilter_dsp(x->intakeDC, x->revIntakes);
  outs[1] = SDTDCFilter_dsp(x->vibrationsDC, x->vibrations);
  outs[2] = SDTDCFilter_dsp(x->outletDC, x->fwdOutlet);
}
