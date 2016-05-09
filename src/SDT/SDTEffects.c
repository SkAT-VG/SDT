#include <math.h>
#include <stdlib.h>
#include <string.h>
#include "SDTCommon.h"
#include "SDTFilters.h"
#include "SDTEffects.h"

double modes[15][3] = {{1,0,0},{0,2,1},{1,0,1},
                       {2,1,0},{0,1,1},{1,1,1},
                       {1,1,0},{0,1,2},{1,2,1},
                       {1,2,0},{0,0,1},{2,1,1},
                       {0,1,0},{1,0,2},{2,0,1}};
                     
struct SDTReverb {
  SDTDelay *delays[15];
  SDTOnePole *filters[15];
  double g[15], v[30], r[15],
         xSize, ySize, zSize, randomness, time, time1k;
};

SDTReverb *SDTReverb_new(long maxDelay) {
  SDTReverb *x;
  int i;
  
  x = (SDTReverb *)malloc(sizeof(SDTReverb));
  for (i = 0; i < 15; i++) {
    x->delays[i] = SDTDelay_new(maxDelay);
    x->filters[i] = SDTOnePole_new();
    x->g[i] = 0.0;
    x->v[i] = 0.0;
    x->v[i+15] = 0.0;
    x->r[i] = 2.0 * SDT_frand() - 1.0;
  }
  x->xSize = 4.0;
  x->ySize = 5.0;
  x->zSize = 3.0;
  x->randomness = 0.0;
  x->time = 4.0;
  x->time1k = 3.6;
  return x;
}

void SDTReverb_free(SDTReverb *x) {
  int i;
  
  for (i = 0; i < 15; i++) {
    SDTDelay_free(x->delays[i]);
    SDTOnePole_free(x->filters[i]);
  }
  free(x);
}

void SDTReverb_update(SDTReverb *x) {
  double xMode, yMode, zMode, freq, delay, gi, gw, a, b, c, d;
  int i;
  
  for (i = 0; i < 15; i++) {
    xMode = modes[i][0] / x->xSize;
    yMode = modes[i][1] / x->ySize;
    zMode = modes[i][2] / x->zSize;
    freq = 0.5 * SDT_MACH1 * sqrt(xMode * xMode + yMode * yMode + zMode * zMode);
    delay = SDT_sampleRate * (1.0 + x->randomness * x->r[i]) / freq;
    SDTDelay_setDelay(x->delays[i], delay);
    gi = fmax(0.0, pow(10.0, -3.0 * delay * SDT_timeStep / x->time));
    x->g[i] = gi;
    gw = fmax(0.0, pow(10.0, -3.0 * delay * SDT_timeStep / fmin(x->time1k, x->time)) / gi);
    a = gw * gw - 1.0;
    b = (gw * gw * cos(SDT_TWOPI * 1000 * SDT_timeStep) - 1.0);
    c = a;
    d = fmin(0.0, (-b - sqrt(b * b - a * c)) / a);
    SDTOnePole_setFeedback(x->filters[i], d);
  }
}

void SDTReverb_setXSize(SDTReverb *x, double f) {
  x->xSize = fmax(0.0, f);
}

void SDTReverb_setYSize(SDTReverb *x, double f) {
  x->ySize = fmax(0.0, f);
}

void SDTReverb_setZSize(SDTReverb *x, double f) {
  x->zSize = fmax(0.0, f);
}

void SDTReverb_setRandomness(SDTReverb *x, double f) {
  x->randomness = SDT_fclip(f, 0.0, 1.0);
}

void SDTReverb_setTime(SDTReverb *x, double f) {
  x->time = fmax(0.0, f);
}

void SDTReverb_setTime1k(SDTReverb *x, double f) {
  x->time1k = fmax(0.0, f);
}

double SDTReverb_dsp(SDTReverb *x, double in) {
  double a, b, c, d, *s, out;
  int i;
  
  out = 0.0;

  for (i = 0; i < 15; i++) {
    s = &x->v[i];
    b = s[1] + s[2] + s[3] + s[5] + s[6] + s[9] + s[11];
    c = s[0] + s[4] + s[7] + s[8] + s[10] + s[12] + s[13] + s[14];
    a = 0.25 * (b - c);
    d = SDTDelay_dsp(x->delays[i], in + a);
    x->v[i] = x->g[i] * SDTOnePole_dsp(x->filters[i], d);
    out += x->v[i];
  }
  memcpy(&x->v[15], x->v, 14 * sizeof(double));
  return out / 15.0;
}

//-------------------------------------------------------------------------------------//

struct SDTPitchShift {
  double *buf, *win, ratio, r;
  long size, w;
};

SDTPitchShift *SDTPitchShift_new(long size) {
  SDTPitchShift *x;
  long i;

  size = fmax(3, size + (size % 3));
  x = (SDTPitchShift *)malloc(sizeof(SDTPitchShift));
  x->buf = (double *)malloc(size * sizeof(double));
  x->win = (double *)malloc(size * sizeof(double));
  for (i = 0; i < size; i++) {
    x->buf[i] = 0.0;
    x->win[i] = sin(SDT_TWOPI * i / size);
  }
  x->ratio = 1.0;
  x->r = 0.0;
  x->size = size;
  x->w = 0;
  return x;
}

void SDTPitchShift_free(SDTPitchShift *x) {
  free(x->buf);
  free(x->win);
  free(x);
}

void SDTPitchShift_setRatio(SDTPitchShift *x, double f) {
  while (f < 0) f += x->size;
  x->ratio = f;
}

double SDTPitchShift_dsp(SDTPitchShift *x, double in) {
  double out;
  long r0, r1, r2, d0, d1, d2;

  x->buf[x->w] = in;
  r0 = (long)x->r;
  r1 = (r0 + x->size / 3) % x->size;
  r2 = (r0 + 2 * x->size / 3) % x->size;
  d0 = (x->size + r0 - x->w) % x->size;
  d1 = (x->size + r1 - x->w) % x->size;
  d2 = (x->size + r2 - x->w) % x->size;
  out = (x->win[d0] * x->buf[r0] + x->win[d0]) + 
        (x->win[d1] * x->buf[r1] + x->win[d1]) +
        (x->win[d2] * x->buf[r2] + x->win[d2]);
  x->w = (x->w + 1) % x->size;
  x->r = fmod(x->r + x->ratio, x->size);
  return out;
}