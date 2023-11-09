#include "SDTLiquids.h"

#include <math.h>
#include <stdlib.h>

#include "SDTCommon.h"
#include "SDTFilters.h"
#include "SDTStructs.h"

#define MIN_RADIUS 0.00015
#define MAX_RADIUS 0.150
#define MAX_EXP 10.0
#define MAX_RISE 3.0
#define MAX_RATE 100000.0

struct SDTBubble {
  double radius, depth, riseFactor, amp, decay, gain, phaseStep, phaseRise,
      phase, out, lastOut;
};

SDTBubble *SDTBubble_new() {
  SDTBubble *x;

  x = (SDTBubble *)malloc(sizeof(SDTBubble));
  x->radius = 1.0;
  x->depth = 1.0;
  x->riseFactor = 0.0;
  x->amp = 0.0;
  x->decay = 0.0;
  x->gain = 0.0;
  x->phaseStep = 0.0;
  x->phaseRise = 0.0;
  x->phase = 0.0;
  x->out = 0.0;
  x->lastOut = 0.0;
  return x;
}

void SDTBubble_free(SDTBubble *x) { free(x); }

_SDT_COPY_FUNCTION(Bubble)

_SDT_HASHMAP_FUNCTIONS(Bubble)

json_value *SDTBubble_toJSON(const SDTBubble *x) {
  json_value *obj = json_object_new(0);
  json_object_push(obj, "radius", json_double_new(SDTBubble_getRadius(x)));
  json_object_push(obj, "riseFactor",
                   json_double_new(SDTBubble_getRiseFactor(x)));
  json_object_push(obj, "depth", json_double_new(SDTBubble_getDepth(x)));
  return obj;
}

SDTBubble *SDTBubble_fromJSON(const json_value *x) {
  if (!x || x->type != json_object) return 0;
  SDTBubble *y = SDTBubble_new();
  return SDTBubble_setParams(y, x, 0);
}

SDTBubble *SDTBubble_setParams(SDTBubble *x, const json_value *j,
                               unsigned char unsafe) {
  if (!x || !j || j->type != json_object) return 0;

  _SDT_SET_PARAM_FROM_JSON(Bubble, x, j, Radius, radius, integer);
  _SDT_SET_PARAM_FROM_JSON(Bubble, x, j, RiseFactor, riseFactor, integer);
  _SDT_SET_PARAM_FROM_JSON(Bubble, x, j, Depth, depth, integer);

  _SDT_SET_PARAM_FROM_JSON(Bubble, x, j, Radius, radius, double);
  _SDT_SET_PARAM_FROM_JSON(Bubble, x, j, RiseFactor, riseFactor, double);
  _SDT_SET_PARAM_FROM_JSON(Bubble, x, j, Depth, depth, double);

  return x;
}

double SDTBubble_getRadius(const SDTBubble *x) { return x->radius; }

double SDTBubble_getRiseFactor(const SDTBubble *x) { return x->riseFactor; }

double SDTBubble_getDepth(const SDTBubble *x) { return x->depth; }

void SDTBubble_setRadius(SDTBubble *x, double f) {
  x->radius = SDT_fclip(f, MIN_RADIUS, MAX_RADIUS);
}

void SDTBubble_setDepth(SDTBubble *x, double f) {
  x->depth = SDT_fclip(f, 0.0, 1.0);
}

void SDTBubble_setRiseFactor(SDTBubble *x, double f) {
  x->riseFactor = SDT_fclip(f, 0.0, MAX_RISE);
}

void SDTBubble_update(SDTBubble *x) {
  double pRadius;

  x->lastOut = x->out;
  pRadius = x->radius * sqrt(x->radius);
  x->amp = 17.2133 * pRadius * x->depth;
  x->decay = 0.13 / x->radius + 0.0072 / pRadius;
  x->gain = exp(-x->decay * SDT_timeStep);
  x->phaseStep = 3.0 / x->radius * SDT_timeStep;
  x->phaseRise = x->phaseStep * x->decay * x->riseFactor * SDT_timeStep;
  x->phase = 0.0;
}

void SDTBubble_normAmp(SDTBubble *x) { x->amp = 1.0; }

double SDTBubble_dsp(SDTBubble *x) {
  double alpha;

  if (x->amp < SDT_QUIET && x->phase > 1.0) return 0.0;
  alpha = x->phase < 1.0 ? x->phase : 1.0;
  x->out =
      (1.0 - alpha) * x->lastOut + alpha * x->amp * sin(SDT_TWOPI * x->phase);
  x->phase += x->phaseStep;
  x->phaseStep += x->phaseRise;
  x->amp *= x->gain;
  return x->out;
}

//-------------------------------------------------------------------------------------//

struct SDTFluidFlow {
  SDTBubble **bubbles;
  double minRadius, maxRadius, expRadius, minDepth, maxDepth, expDepth,
      riseFactor, riseCutoff, avgRate, success, gain;
  int nBubbles;
};

SDTFluidFlow *SDTFluidFlow_new(int nBubbles) {
  SDTFluidFlow *x;
  int i;

  x = (SDTFluidFlow *)malloc(sizeof(SDTFluidFlow));
  x->bubbles = (SDTBubble **)malloc(nBubbles * sizeof(SDTBubble *));
  for (i = 0; i < nBubbles; i++) {
    x->bubbles[i] = SDTBubble_new();
  }
  x->minRadius = 0.00015;
  x->maxRadius = 0.015;
  x->expRadius = 1.0;
  x->minDepth = 0.0;
  x->maxDepth = 1.0;
  x->expDepth = 1.0;
  x->riseFactor = 0.1;
  x->riseCutoff = 0.9;
  x->avgRate = 0.0;
  x->success = 0.0;
  x->gain = 1.0;
  x->nBubbles = nBubbles;

  return x;
}

void SDTFluidFlow_free(SDTFluidFlow *x) {
  int i;

  for (i = 0; i < x->nBubbles; i++) {
    SDTBubble_free(x->bubbles[i]);
  }
  free(x->bubbles);
  free(x);
}

void SDTFluidFlow_setNBubbles(SDTFluidFlow *x, int f) {
  for (unsigned int i = 0; i < x->nBubbles; i++) SDTBubble_free(x->bubbles[i]);
  free(x->bubbles);
  x->nBubbles = f;
  x->bubbles = (SDTBubble **)malloc(x->nBubbles * sizeof(SDTBubble *));
  for (unsigned int i = 0; i < x->nBubbles; i++)
    x->bubbles[i] = SDTBubble_new();
}

_SDT_COPY_FUNCTION(FluidFlow)

_SDT_HASHMAP_FUNCTIONS(FluidFlow)

json_value *SDTFluidFlow_toJSON(const SDTFluidFlow *x) {
  json_value *obj = json_object_new(0);

  json_object_push(obj, "nBubbles",
                   json_integer_new(SDTFluidFlow_getNBubbles(x)));
  json_object_push(obj, "avgRate", json_double_new(SDTFluidFlow_getAvgRate(x)));
  json_object_push(obj, "minRadius",
                   json_double_new(SDTFluidFlow_getMinRadius(x)));
  json_object_push(obj, "maxRadius",
                   json_double_new(SDTFluidFlow_getMaxRadius(x)));
  json_object_push(obj, "expRadius",
                   json_double_new(SDTFluidFlow_getExpRadius(x)));
  json_object_push(obj, "minDepth",
                   json_double_new(SDTFluidFlow_getMinDepth(x)));
  json_object_push(obj, "maxDepth",
                   json_double_new(SDTFluidFlow_getMaxDepth(x)));
  json_object_push(obj, "expDepth",
                   json_double_new(SDTFluidFlow_getExpDepth(x)));
  json_object_push(obj, "riseFactor",
                   json_double_new(SDTFluidFlow_getRiseFactor(x)));
  json_object_push(obj, "riseCutoff",
                   json_double_new(SDTFluidFlow_getRiseCutoff(x)));
  return obj;
}

SDTFluidFlow *SDTFluidFlow_fromJSON(const json_value *x) {
  if (!x || x->type != json_object) return 0;

  unsigned int nBubbles = SDT_FLUIDFLOW_NBUBBLES_DEFAULT;
  _SDT_GET_PARAM_FROM_JSON(nBubbles, x, nBubbles, integer);

  SDTFluidFlow *y = SDTFluidFlow_new(nBubbles);
  return SDTFluidFlow_setParams(y, x, 0);
}

SDTFluidFlow *SDTFluidFlow_setParams(SDTFluidFlow *x, const json_value *j,
                                     unsigned char unsafe) {
  if (!x || !j || j->type != json_object) return 0;

  _SDT_SET_UNSAFE_PARAM_FROM_JSON(FluidFlow, x, j, NBubbles, nBubbles, integer,
                                  unsafe);

  _SDT_SET_PARAM_FROM_JSON(FluidFlow, x, j, AvgRate, avgRate, integer);
  _SDT_SET_PARAM_FROM_JSON(FluidFlow, x, j, MinRadius, minRadius, integer);
  _SDT_SET_PARAM_FROM_JSON(FluidFlow, x, j, MaxRadius, maxRadius, integer);
  _SDT_SET_PARAM_FROM_JSON(FluidFlow, x, j, ExpRadius, expRadius, integer);
  _SDT_SET_PARAM_FROM_JSON(FluidFlow, x, j, MinDepth, minDepth, integer);
  _SDT_SET_PARAM_FROM_JSON(FluidFlow, x, j, MaxDepth, maxDepth, integer);
  _SDT_SET_PARAM_FROM_JSON(FluidFlow, x, j, ExpDepth, expDepth, integer);
  _SDT_SET_PARAM_FROM_JSON(FluidFlow, x, j, RiseFactor, riseFactor, integer);
  _SDT_SET_PARAM_FROM_JSON(FluidFlow, x, j, RiseCutoff, riseCutoff, integer);

  _SDT_SET_PARAM_FROM_JSON(FluidFlow, x, j, AvgRate, avgRate, double);
  _SDT_SET_PARAM_FROM_JSON(FluidFlow, x, j, MinRadius, minRadius, double);
  _SDT_SET_PARAM_FROM_JSON(FluidFlow, x, j, MaxRadius, maxRadius, double);
  _SDT_SET_PARAM_FROM_JSON(FluidFlow, x, j, ExpRadius, expRadius, double);
  _SDT_SET_PARAM_FROM_JSON(FluidFlow, x, j, MinDepth, minDepth, double);
  _SDT_SET_PARAM_FROM_JSON(FluidFlow, x, j, MaxDepth, maxDepth, double);
  _SDT_SET_PARAM_FROM_JSON(FluidFlow, x, j, ExpDepth, expDepth, double);
  _SDT_SET_PARAM_FROM_JSON(FluidFlow, x, j, RiseFactor, riseFactor, double);
  _SDT_SET_PARAM_FROM_JSON(FluidFlow, x, j, RiseCutoff, riseCutoff, double);

  return x;
}

int SDTFluidFlow_getNBubbles(const SDTFluidFlow *x) { return x->nBubbles; }

double SDTFluidFlow_getAvgRate(const SDTFluidFlow *x) { return x->avgRate; }

double SDTFluidFlow_getMinRadius(const SDTFluidFlow *x) { return x->minRadius; }

double SDTFluidFlow_getMaxRadius(const SDTFluidFlow *x) { return x->maxRadius; }

double SDTFluidFlow_getExpRadius(const SDTFluidFlow *x) { return x->expRadius; }

double SDTFluidFlow_getMinDepth(const SDTFluidFlow *x) { return x->minDepth; }

double SDTFluidFlow_getMaxDepth(const SDTFluidFlow *x) { return x->maxDepth; }

double SDTFluidFlow_getExpDepth(const SDTFluidFlow *x) { return x->expDepth; }

double SDTFluidFlow_getRiseFactor(const SDTFluidFlow *x) {
  return x->riseFactor;
}

double SDTFluidFlow_getRiseCutoff(const SDTFluidFlow *x) {
  return x->riseCutoff;
}

void SDTFluidFlow_setMinRadius(SDTFluidFlow *x, double f) {
  x->minRadius = SDT_fclip(f, MIN_RADIUS, x->maxRadius);
}

void SDTFluidFlow_setMaxRadius(SDTFluidFlow *x, double f) {
  x->maxRadius = SDT_fclip(f, x->minRadius, MAX_RADIUS);
  x->gain = MAX_RADIUS / x->maxRadius;
}

void SDTFluidFlow_setExpRadius(SDTFluidFlow *x, double f) {
  x->expRadius = SDT_fclip(f, 0.0, MAX_EXP);
}

void SDTFluidFlow_setMinDepth(SDTFluidFlow *x, double f) {
  x->minDepth = SDT_fclip(f, 0.0, x->maxDepth);
}

void SDTFluidFlow_setMaxDepth(SDTFluidFlow *x, double f) {
  x->maxDepth = SDT_fclip(f, x->minDepth, 1.0);
}

void SDTFluidFlow_setExpDepth(SDTFluidFlow *x, double f) {
  x->expDepth = SDT_fclip(f, 0.0, MAX_EXP);
}

void SDTFluidFlow_setRiseFactor(SDTFluidFlow *x, double f) {
  x->riseFactor = SDT_fclip(f, 0.0, MAX_RISE);
}

void SDTFluidFlow_setRiseCutoff(SDTFluidFlow *x, double f) {
  x->riseCutoff = SDT_fclip(f, 0.0, 1.0);
}

void SDTFluidFlow_setAvgRate(SDTFluidFlow *x, double f) {
  x->avgRate = SDT_fclip(f, 0.0, MAX_RATE);
  x->success = x->avgRate * SDT_timeStep;
}

double SDTFluidFlow_dsp(SDTFluidFlow *x) {
  SDTBubble *bubble;
  double minAmp, radius, depth, riseFactor, result;
  int i;

  if (SDT_frand() < x->success) {
    minAmp = x->bubbles[0]->amp;
    bubble = x->bubbles[0];
    for (i = 1; i < x->nBubbles; i++) {
      if (x->bubbles[i]->amp < minAmp) {
        minAmp = x->bubbles[i]->amp;
        bubble = x->bubbles[i];
      }
    }
    radius = SDT_scale(rand(), 0.0, RAND_MAX, x->minRadius, x->maxRadius,
                       x->expRadius);
    depth =
        SDT_scale(rand(), 0.0, RAND_MAX, x->minDepth, x->maxDepth, x->expDepth);
    riseFactor = depth > x->riseCutoff ? x->riseFactor : 0.0;
    SDTBubble_setRadius(bubble, radius);
    SDTBubble_setDepth(bubble, depth);
    SDTBubble_setRiseFactor(bubble, riseFactor);
    SDTBubble_update(bubble);
  }
  result = 0.0;
  for (i = 0; i < x->nBubbles; i++) {
    result += SDTBubble_dsp(x->bubbles[i]);
  }
  result *= x->gain;
  return result;
}
