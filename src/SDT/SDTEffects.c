#include <math.h>
#include <stdlib.h>
#include <string.h>
#include "SDTCommon.h"
#include "SDTComplex.h"
#include "SDTFilters.h"
#include "SDTFFT.h"
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
  double *buf, *win, *dWin, *pow, *fqs,
         *aFrame, *dFrame, *sFrame, *phs, *out,
	     ratio, gain;
  SDTComplex *aFFT, *dFFT, *sFFT;
  SDTFFT *fftPlan;
  int i, j, size, winSize, fftSize, hopSize;
};

SDTPitchShift *SDTPitchShift_new(int size, int oversample) {
  SDTPitchShift *x;
  int i, winSize, fftSize;

  winSize = size * oversample;
  fftSize = winSize / 2 + 1;
  x = (SDTPitchShift *)malloc(sizeof(SDTPitchShift));
  x->buf = (double *)malloc(size * sizeof(double));
  x->win = (double *)malloc(size * sizeof(double));
  x->dWin = (double *)malloc(size * sizeof(double));
  x->pow = (double *)malloc(fftSize * sizeof(double));
  x->fqs = (double *)malloc(fftSize * sizeof(double));
  x->aFrame = (double *)malloc(winSize * sizeof(double));
  x->dFrame = (double *)malloc(winSize * sizeof(double));
  x->sFrame = (double *)malloc(winSize * sizeof(double));
  x->phs = (double *)malloc(fftSize * sizeof(double));
  x->out = (double *)malloc(size * sizeof(double));
  x->aFFT = (SDTComplex *)malloc(fftSize * sizeof(SDTComplex));
  x->dFFT = (SDTComplex *)malloc(fftSize * sizeof(SDTComplex));
  x->sFFT = (SDTComplex *)malloc(fftSize * sizeof(SDTComplex));
  for (i = 0; i < size; i++) {
    x->buf[i] = 0.0;
    x->win[i] = 0.5 - 0.5 * cos(SDT_TWOPI * i / size);
    x->dWin[i] = SDT_PI / size * sin(SDT_TWOPI * i / size);
    x->out[i] = 0.0;
  }
  for (i = 0; i < winSize; i++) {
    x->aFrame[i] = 0.0;
    x->dFrame[i] = 0.0;
    x->sFrame[i] = 0.0;
  }
  for (i = 0; i < fftSize; i++) {
    x->pow[i] = 0.0;
    x->fqs[i] = SDT_TWOPI * i / winSize;
    x->phs[i] = 0.0;
    x->aFFT[i].r = 0.0;
    x->aFFT[i].i = 0.0;
    x->dFFT[i].r = 0.0;
    x->dFFT[i].i = 0.0;
    x->sFFT[i].r = 0.0;
    x->sFFT[i].i = 0.0;
  }
  x->ratio = 1.0;
  x->gain = 0.0;
  x->fftPlan = SDTFFT_new(fftSize - 1);
  x->i = 0;
  x->j = 0;
  x->size = size;
  x->winSize = winSize;
  x->fftSize = fftSize;
  x->hopSize = size / 4;
  return x;
}

void SDTPitchShift_free(SDTPitchShift *x) {
  free(x->buf);
  free(x->win);
  free(x->dWin);
  free(x->out);
  free(x->aFrame);
  free(x->dFrame);
  free(x->sFrame);
  free(x->pow);
  free(x->fqs);
  free(x->aFFT);
  free(x->dFFT);
  free(x->sFFT);
  free(x->phs);
  SDTFFT_free(x->fftPlan);
  free(x);
}

void SDTPitchShift_setRatio(SDTPitchShift *x, double f) {
  x->ratio = fmax(f, 0.0);
}

void SDTPitchShift_setOverlap(SDTPitchShift *x, double f) {
  x->hopSize = SDT_fclip(x->size * (1.0 - f), 1.0, x->size);
  x->gain = 4.0 * x->hopSize / (SDT_SQRT2 * x->size);
}

double SDTPitchShift_dsp(SDTPitchShift *x, double in) {
  double power, diff, freq, dFreq, shift;
  SDTComplex w;
  int i, j, k;
  
  x->buf[x->i] = in;
  x->i = (x->i + 1) % x->size;
  x->j = (x->j + 1) % x->hopSize;
  if (!x->j) {
    for (i = 0; i < x->size; i++) {
      j = (x->i + i) % x->size;
      k = (x->winSize - x->size / 2 + i) % x->winSize;
      x->aFrame[k] = x->buf[j] * x->win[i];
      x->dFrame[k] = x->buf[j] * x->dWin[i];
    }
    SDTFFT_fftr(x->fftPlan, x->aFrame, x->aFFT);
    SDTFFT_fftr(x->fftPlan, x->dFrame, x->dFFT);
    for (i = 0; i < x->fftSize; i++) {
      x->sFFT[i].r = 0.0;
      x->sFFT[i].i = 0.0;
    }
    for (i = 0; i < x->fftSize; i++) {
      power = x->aFFT[i].r * x->aFFT[i].r + x->aFFT[i].i * x->aFFT[i].i;
      if (power > 4.0 * x->pow[i]) x->phs[i] = 0.0;
      x->pow[i] = power;
      diff = power > 0.0 ? (x->dFFT[i].i * x->aFFT[i].r - x->dFFT[i].r * x->aFFT[i].i) / power : 0.0;
      freq = x->fqs[i] - diff;
      dFreq = freq * (x->ratio - 1.0);
      shift = dFreq * x->winSize / SDT_TWOPI;
      x->phs[i] = fmod(x->phs[i] + dFreq * x->hopSize, SDT_TWOPI);
      k = round(i + shift);
      if (k >= 0 && k < x->fftSize) {
        w.r = cos(x->phs[i]);
        w.i = sin(x->phs[i]);
        x->sFFT[k].r += x->aFFT[i].r * w.r - x->aFFT[i].i * w.i;
        x->sFFT[k].i += x->aFFT[i].r * w.i + x->aFFT[i].i * w.r;
      }
    }
    SDTFFT_ifftr(x->fftPlan, x->sFFT, x->sFrame);
    for (i = 1; i <= x->hopSize; i++) {
      j = (x->size + x->i - i) % x->size;
      x->out[j] = 0.0;
    }
    for (i = 0; i < x->size; i++) {
      j = (x->i + i) % x->size;
      k = (x->winSize - x->size / 2 + i) % x->winSize;
      x->out[j] += x->gain * x->sFrame[k] * x->win[i] / x->winSize;
    }
  }
  return x->out[x->i];
}
