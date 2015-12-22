#include <math.h>
#include <stdlib.h>
#include <string.h>
#include "SDTCommon.h"

double SDT_sampleRate = 0.0;
double SDT_timeStep = 0.0;

void SDT_setSampleRate(double sampleRate) {
  SDT_sampleRate = sampleRate;
  SDT_timeStep = 1.0 / sampleRate;
}

long SDT_clip(long x, long min, long max) {
  if (x < min) x = min;
  else if (x > max) x = max;
  return x;
}

double SDT_expRand(double lambda) {
  return -log(1.0 - SDT_frand()) / lambda;
}

double SDT_fclip(double x, double min, double max) {
  x = fmax(min, x);
  x = fmin(x, max);
  return x;
}

double SDT_frand() {
  return (double)rand() / ((double)RAND_MAX + (double)1);
}

double SDT_gravity(double mass) {
  return SDT_EARTH * mass;
}

double SDT_groundDecay(double grain, double velocity) {
  return SDT_fclip(2.0 * grain * fabs(velocity), 0.0, 2.0);
}

void SDT_hanning(double *sig, int n) {
  int i, j;
  double scale;

  for (i = 0; i < n / 2; i++) {
    j = n - i - 1;
    scale = 0.5 * (1 - cos(SDT_TWOPI * i / (n - 1)));
    sig[i] *= scale;
    sig[j] *= scale;
  }
}

void SDT_haar(double *sig, long n, char verse) {
  double tmp[n];
  long x, i, j, k, l;
  
  memcpy(tmp, sig, n * sizeof(double)); 
  n /= 2;
  for (x = 0; x < n; x++) {
    if (verse == 0) {
      i = x;
      j = i + n;
      k = 2 * x;
      l = k + 1;
    }
    else {
      i = 2 * x;
      j = i + 1;
      k = x;
      l = k + n;
    }
    sig[i] = (tmp[k] + tmp[l]) / SDT_SQRT2;
    sig[j] = (tmp[k] - tmp[l]) / SDT_SQRT2;
  }
}

double SDT_kinetic(double mass, double velocity) {
  return 0.5 * mass * velocity * velocity;
}

double SDT_normalize(double x, double min, double max) {
  return (x - min) / (max - min);
}

void SDT_RK4(void *x, int argc, double *argv, void (*f)(void*, double *)) {
  double k[4][argc];
  int i;
  
  for (i = 0; i < argc; i++) {
    k[0][i] = argv[i];
  }
  f(x, k[0]);
  for (i = 0; i < argc; i++) {
    k[1][i] = argv[i] + 0.5 * SDT_timeStep * k[0][i];
  }
  f(x, k[1]);
  for (i = 0; i < argc; i++) {
    k[2][i] = argv[i] + 0.5 * SDT_timeStep * k[1][i];
  }
  f(x, k[2]);
  for (i = 0; i < argc; i++) {
    k[3][i] = argv[i] + SDT_timeStep * k[2][i];
  }
  f(x, k[3]);
  for (i = 0; i < argc; i++) {
    argv[i] += SDT_timeStep * (k[0][i] + 2.0 * (k[1][i] + k[2][i]) + k[3][i]) / 6;
  }
}

double SDT_samplesInAir(double length) {
  return fmax(0.0, length) / SDT_MACH1 * SDT_sampleRate;
}

double SDT_scale(double x, double srcMin, double srcMax,
                 double dstMin, double dstMax, double gamma) {
  return pow((x - srcMin) / (srcMax - srcMin), gamma) * (dstMax - dstMin) + dstMin;
}

int SDT_signum(double x) {
  int result;
  
  if (x < 0) result = -1;
  else if (x == 0) result = 0;
  else result = 1;
  return result;
}
