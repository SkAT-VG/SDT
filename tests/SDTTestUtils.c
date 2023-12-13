#include "SDTTestUtils.h"

#include <math.h>
#include <stdlib.h>
#include <time.h>

#include "SDT/SDTCommon.h"

typedef enum SDTRandomSequenceType {
  SDT_RANDOM_INT,
  SDT_RANDOM_FLOAT,
  SDT_RANDOM_LOG,
  SDT_RANDOM_EXP
} SDTRandomSequenceType;

struct SDTRandomSequence {
  unsigned int i;
  unsigned int n;
  union {
    float f;
    int i;
  } a;
  union {
    float f;
    int i;
  } b;
  SDTRandomSequenceType t;
  unsigned int base;
};

void SDTRandomSequence_free(SDTRandomSequence *x) { free(x); }

void SDTRandomSequence_setBase(SDTRandomSequence *x, unsigned int b) {
  x->base = b;
}

unsigned int SDTRandomSequence_index(SDTRandomSequence *x) { return x->i; }

unsigned char SDTRandomSequence_done(SDTRandomSequence *x) {
  return x->i >= x->n;
}

SDTRandomSequence *SDTRandomSequence_newInt(unsigned int n, int min, int max) {
  SDTRandomSequence *x = (SDTRandomSequence *)malloc(sizeof(SDTRandomSequence));
  x->i = 0;
  x->n = n;
  x->a.i = min;
  x->b.i = max;
  x->t = SDT_RANDOM_INT;
  x->base = 1;
  return x;
}

static int SDTRandomSequence_getInt(SDTRandomSequence *x) {
  int left, right, r;
  if (x->t != SDT_RANDOM_INT) {
    SDT_LOG(WARN,
            "Calling SDTRandomSequence_getInt() on a non-integer sequence\n");
    left = (int)round(x->a.f);
    right = (int)round(x->b.f);
  } else {
    left = x->a.i;
    right = x->b.i;
  }
  if (left == right) {
    left = 0;
    if (!right) right = 1;
  }
  if (left > right) {
    r = left;
    left = right;
    right = r;
  }

  srand(x->i + x->base);
  r = rand();
  r %= right - left;
  r += left;
  return r;
}

int SDTRandomSequence_startInt(SDTRandomSequence *x) {
  x->i = 0;
  return SDTRandomSequence_getInt(x);
}

int SDTRandomSequence_nextInt(SDTRandomSequence *x) {
  x->i = x->i + 1;
  return SDTRandomSequence_getInt(x);
}

SDTRandomSequence *SDTRandomSequence_newFloat(unsigned int n, float min,
                                              float max) {
  SDTRandomSequence *x = (SDTRandomSequence *)malloc(sizeof(SDTRandomSequence));
  x->i = 0;
  x->n = n;
  x->a.f = min;
  x->b.f = max;
  x->t = SDT_RANDOM_FLOAT;
  x->base = 1;
  return x;
}

SDTRandomSequence *SDTRandomSequence_newLog(unsigned int n, float min,
                                            float max) {
  SDTRandomSequence *x = (SDTRandomSequence *)malloc(sizeof(SDTRandomSequence));
  x->i = 0;
  x->n = n;
  x->a.f = min;
  x->b.f = max;
  x->t = SDT_RANDOM_LOG;
  x->base = 1;
  return x;
}

SDTRandomSequence *SDTRandomSequence_newExp(unsigned int n, float min,
                                            float rate) {
  SDTRandomSequence *x = (SDTRandomSequence *)malloc(sizeof(SDTRandomSequence));
  x->i = 0;
  x->n = n;
  x->a.f = min;
  x->b.f = rate;
  x->t = SDT_RANDOM_EXP;
  x->base = 1;
  return x;
}

static float SDTRandomSequence_getFloat(SDTRandomSequence *x) {
  srand(x->i + x->base);
  float r;
  switch (x->t) {
    case SDT_RANDOM_INT:
      SDT_LOG(WARN,
              "Calling SDTRandomSequence_getFloat() on an integer sequence\n");
      r = SDT_frand() * (x->b.i - x->a.i) + x->a.i;
      break;
    case SDT_RANDOM_FLOAT:
      r = SDT_frand() * (x->b.f - x->a.f) + x->a.f;
      break;
    case SDT_RANDOM_LOG:
      r = expf(SDT_frand() * (logf(x->b.f) - logf(x->a.f)) + logf(x->a.f));
      break;
    case SDT_RANDOM_EXP:
      r = SDT_expRand(x->b.f) + x->a.f;
      break;
    default:
      SDT_LOG(WARN, "Unrecognized SDTRandomSequence type\n");
      r = 0.0f;
  }
  return r;
}

float SDTRandomSequence_startFloat(SDTRandomSequence *x) {
  x->i = 0;
  return SDTRandomSequence_getFloat(x);
}

float SDTRandomSequence_nextFloat(SDTRandomSequence *x) {
  x->i = x->i + 1;
  return SDTRandomSequence_getFloat(x);
}
