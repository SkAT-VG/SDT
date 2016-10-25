#include <limits.h>
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

unsigned int SDT_bitReverse(unsigned int u, unsigned int bits) {
  u = ((u >> 0x01) & 0x55555555) | ((u & 0x55555555) << 0x01);
  u = ((u >> 0x02) & 0x33333333) | ((u & 0x33333333) << 0x02); 
  u = ((u >> 0x04) & 0x0F0F0F0F) | ((u & 0x0F0F0F0F) << 0x04);
  u = ((u >> 0x08) & 0x00FF00FF) | ((u & 0x00FF00FF) << 0x08);
  u = ( u >> 0x10              ) | ( u               << 0x10);
  return u >> (sizeof(u) * CHAR_BIT - bits);
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
  return rand() / ((double)RAND_MAX + 1);
}

double SDT_gravity(double mass) {
  return SDT_EARTH * mass;
}

void SDT_hanning(double *sig, int n) {
  int i, j;
  double scale;

  for (i = 0; i < n / 2; i++) {
    j = n - i - 1;
    scale = 0.5 - 0.5 * cos(SDT_TWOPI * i / (n - 1));
    sig[i] *= scale;
    sig[j] *= scale;
  }
}

void SDT_haar(double *sig, long n) {
  double tmp[n];
  long x, i, j, k, l;
  
  memcpy(tmp, sig, n * sizeof(double)); 
  n /= 2;
  for (x = 0; x < n; x++) {
    i = x;
    j = i + n;
    k = 2 * x;
    l = k + 1;
    sig[i] = (tmp[k] + tmp[l]) / SDT_SQRT2;
    sig[j] = (tmp[k] - tmp[l]) / SDT_SQRT2;
  }
}

void SDT_ihaar(double *sig, long n) {
  double tmp[n];
  long x, i, j, k, l;
  
  memcpy(tmp, sig, n * sizeof(double)); 
  n /= 2;
  for (x = 0; x < n; x++) {
    i = 2 * x;
    j = i + 1;
    k = x;
    l = k + n;
    sig[i] = (tmp[k] + tmp[l]) / SDT_SQRT2;
    sig[j] = (tmp[k] - tmp[l]) / SDT_SQRT2;
  }
}

double SDT_kinetic(double mass, double velocity) {
  return 0.5 * mass * velocity * velocity;
}

unsigned int SDT_nextPow2(unsigned int u) {
  return 1 << (unsigned int)ceil(log2(u));
}

double SDT_normalize(double x, double min, double max) {
  return (x - min) / (max - min);
}

void SDT_normalizeWindow(double *sig, int n) {
  double sum;
  int i;
  
  sum = 0.0;
  for (i = 0; i < n; i++) {
    sum += sig[i];
  }
  for (i = 0; i < n; i++) {
    sig[i] /= sum;
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