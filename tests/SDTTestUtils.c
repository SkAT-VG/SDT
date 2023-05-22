#include "SDT/SDTCommon.h"
#include "SDTTestUtils.h"
#include <stdlib.h>
#include <time.h>
#include <math.h>

struct SDTRandomSequence {
  unsigned int i;
  unsigned int n;
  union {
    float f;
    int i;
  } min;
  union {
    float f;
    int i;
  } max;
  unsigned char integer;
};

SDTRandomSequence *SDTRandomIntSequence_new(unsigned int n, int min, int max) {
  SDTRandomSequence *x;
  
  x = (SDTRandomSequence *)malloc(sizeof(SDTRandomSequence));
  x->i = 0;
  x->n = n;
  x->min.i = min;
  x->max.i = max;
  x->integer = 1;
  return x;
}

SDTRandomSequence *SDTRandomFloatSequence_new(unsigned int n, float min, float max)
{
  SDTRandomSequence *x;
  
  x = (SDTRandomSequence *)malloc(sizeof(SDTRandomSequence));
  x->i = 0;
  x->n = n;
  x->min.f = min;
  x->max.f = max;
  x->integer = 0;
  return x;
}

void SDTRandomSequence_free(SDTRandomSequence *x)
{
  free(x);
}

static int SDTRandom_get(SDTRandomSequence *x)
{
  srand(x->i);
  return rand();
}

unsigned int SDTRandomSequence_index(SDTRandomSequence *x)
{
  return x->i;
}

unsigned char SDTRandomSequence_done(SDTRandomSequence *x)
{
  return x->i > x->n;
}

static int SDTRandomInt_get(SDTRandomSequence *x)
{
  int r = SDTRandom_get(x);
  int d = x->max.i - x->min.i;
  r %= d;
  r += x->min.i;
  return r;
}

int SDTRandomIntSequence_start(SDTRandomSequence *x) {
  x->i = 1;
  return SDTRandomInt_get(x);
}

int SDTRandomIntSequence_next(SDTRandomSequence *x)
{
  x->i = x->i + 1;
  return SDTRandomInt_get(x);
}

static float SDTRandomFloat_get(SDTRandomSequence *x)
{
  float r = (float) SDTRandom_get(x) / (RAND_MAX / (x->max.f - x->min.f));
  r += x->min.f;
  return r;
}

float SDTRandomFloatSequence_start(SDTRandomSequence *x)
{
  x->i = 1;
  return SDTRandomFloat_get(x);
}

float SDTRandomFloatSequence_next(SDTRandomSequence *x)
{
  x->i = x->i + 1;
  return SDTRandomFloat_get(x);
}


static float SDTRandomFloat_getLog(SDTRandomSequence *x)
{
  float log_min = logf(x->min.f);
  float log_max = logf(x->max.f);
  float r = (float) SDTRandom_get(x) / (RAND_MAX / (log_max - log_min));
  r += log_min;
  return expf(r);
}

float SDTRandomFloatSequence_startLog(SDTRandomSequence *x)
{
  x->i = 1;
  return SDTRandomFloat_getLog(x);
}

float SDTRandomFloatSequence_nextLog(SDTRandomSequence *x)
{
  x->i = x->i + 1;
  return SDTRandomFloat_getLog(x);
}
