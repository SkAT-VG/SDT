#include <math.h>
#include <stdlib.h>
#include "SDTCommon.h"
#include "SDTOscillators.h"

#define LCG_MULT    1664525
#define LCG_ADD  1013904223

unsigned int seed = 42;

//-------------------------------------------------------------------------------------//

struct SDTPinkNoise {
  double *octaves;
  int *steps, *offsets, n, count;
};

SDTPinkNoise *SDTPinkNoise_new(int nOctaves) {
  SDTPinkNoise *x;
  int i;

  x = (SDTPinkNoise *)malloc(sizeof(SDTPinkNoise));
  x->octaves = (double *)calloc(nOctaves, sizeof(double));
  x->steps = (int *)calloc(nOctaves, sizeof(int));
  x->offsets = (int *)calloc(nOctaves, sizeof(int));
  x->n = nOctaves;
  x->count = 0;
  for (i = 0; i < x->n; i++) {
    x->steps[i] = exp2(i);
    x->offsets[i] = x->steps[i] >> 1;
  }
  return x;
}

void SDTPinkNoise_free(SDTPinkNoise *x) {
  free(x->offsets);
  free(x->steps);
  free(x->octaves);
  free(x);
}

double SDTPinkNoise_dsp(SDTPinkNoise *x) {
  double result;
  int i;
  
  result = 0;
  for (i = 0; i < x->n; i++) {
    if ((x->count + x->offsets[i]) % x->steps[i] == 0) {
      x->octaves[i] = SDT_whiteNoise();
    }
    result += x->octaves[i];
  }
  result /= (double)x->n;
  x->count = (x->count + 1) % x->steps[x->n-1];
  return result;
}

//-------------------------------------------------------------------------------------//

double SDT_whiteNoise() {
  seed = seed * LCG_MULT + LCG_ADD;
  return (double)seed / (double)0x7FFFFFFF - 1.0;
}
