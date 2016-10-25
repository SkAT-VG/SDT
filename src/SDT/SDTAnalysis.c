#include <math.h>
#include <stdlib.h>
#include "SDTCommon.h"
#include "SDTComplex.h"
#include "SDTFFT.h"
#include "SDTFilters.h"
#include "SDTAnalysis.h"

struct SDTZeroCrossing {
  double *in, *win;
  int i, j, size, skip;
};

SDTZeroCrossing *SDTZeroCrossing_new(unsigned int size) {
  SDTZeroCrossing *x;
  int i;
  
  x = (SDTZeroCrossing *)malloc(sizeof(SDTZeroCrossing));
  x->in = (double *)malloc(2 * size * sizeof(double));
  x->win = (double *)malloc(size * sizeof(double));
  for (i = 0; i < size; i++) {
    x->in[i] = 0.0;
    x->in[i+size] = 0.0;
    x->win[i] = 0.0;
  }
  x->i = 0;
  x->j = 0;
  x->size = size;
  x->skip = size;
  return x;
}

void SDTZeroCrossing_free(SDTZeroCrossing *x) {
  free(x->in);
  free(x->win);
  free(x);
}

void SDTZeroCrossing_setOverlap(SDTZeroCrossing *x, double f) {
  x->skip = SDT_clip((1.0 - f) * x->size, 1, x->size);
}

int SDTZeroCrossing_dsp(SDTZeroCrossing *x, double *out, double in) {
  int i, zerox;
  x->in[x->i] = in;
  x->in[x->size + x->i] = x->in[x->i];
  x->i = (x->i + 1) % x->size;
  x->j = (x->j + 1) % x->skip;
  if (x->j) return 0;
  zerox = 0;
  x->win[0] = x->in[x->i];
  for (i = 1; i < x->size; i++) {
    x->win[i] = x->in[x->i + i];
    zerox += (x->win[i-1] >= 0.0 && x->win[i] < 0.0) || (x->win[i-1] <= 0.0 && x->win[i] > 0.0); 
  }
  out[0] = (double)zerox / (double)x->size;
  return 1;
}

//-------------------------------------------------------------------------------------//

struct SDTMyoelastic {
  SDTAverage *slow, *fast, *smooth;
  SDTDelay *delay;
  SDTTwoPoles *low, *high;
  double threshold, myo, activity, frequency;
  int slowWin, fastWin, count, size;
};

SDTMyoelastic *SDTMyoelastic_new(unsigned int size) {
  SDTMyoelastic *x;
  
  x = (SDTMyoelastic *)malloc(sizeof(SDTMyoelastic));
  x->slow = SDTAverage_new(size);
  x->fast = SDTAverage_new(size);
  x->smooth = SDTAverage_new(size);
  x->delay = SDTDelay_new(size);
  x->low = SDTTwoPoles_new();
  x->high = SDTTwoPoles_new();
  x->threshold = 0.0;
  x->myo = 0.0;
  x->activity = 0.0;
  x->frequency = 0.0;
  x->slowWin = 0;
  x->fastWin = 0;
  x->count = 0;
  x->size = size;
  return x;
}

void SDTMyoelastic_free(SDTMyoelastic *x) {
  SDTAverage_free(x->slow);
  SDTAverage_free(x->fast);
  SDTDelay_free(x->delay);
  SDTTwoPoles_free(x->low);
  SDTTwoPoles_free(x->high);
  free(x);
}

void SDTMyoelastic_setLowFrequency(SDTMyoelastic *x, double f) {
  x->slowWin = SDT_clip(SDT_sampleRate / f, 1, x->size);
  SDTAverage_setWindow(x->slow, x->slowWin);
  SDTAverage_setWindow(x->smooth, x->slowWin);
  SDTDelay_setDelay(x->delay, 0.5 * (x->slowWin - x->fastWin));
  SDTTwoPoles_lowpass(x->low, f);
}

void SDTMyoelastic_setHighFrequency(SDTMyoelastic *x, double f) {
  x->fastWin = SDT_clip(SDT_sampleRate / f, 1, x->size);
  SDTAverage_setWindow(x->fast, x->fastWin);
  SDTDelay_setDelay(x->delay, 0.5 * (x->slowWin - x->fastWin));
  SDTTwoPoles_lowpass(x->high, f);
}

void SDTMyoelastic_setThreshold(SDTMyoelastic *x, double f) {
  x->threshold = fmax(f, 0.0);
}

void SDTMyoelastic_dsp(SDTMyoelastic *x, double *outs, double in) {
  double squaredIn, fastRMS, slowRMS, myo;
  
  squaredIn = in * in;
  fastRMS = sqrt(SDTAverage_dsp(x->fast, squaredIn));
  fastRMS = fmax(fastRMS, x->threshold);
  fastRMS = SDTDelay_dsp(x->delay, fastRMS);
  slowRMS = sqrt(SDTAverage_dsp(x->slow, squaredIn));
  slowRMS = fmax(slowRMS, x->threshold);
  myo = fmax(fastRMS / slowRMS, 0.0);
  myo = SDTTwoPoles_dsp(x->high, myo);
  myo = myo - SDTTwoPoles_dsp(x->low, myo);
  x->activity = sqrt(SDTAverage_dsp(x->smooth, myo * myo));
  x->activity = fmax(x->activity, 0.0);
  if (myo * x->myo < 0.0) {
    x->frequency = 0.5 * SDT_sampleRate / x->count;
    x->count = 0;
  }
  outs[0] = x->activity;
  outs[1] = x->frequency;
  x->myo = myo;
  x->count += 1;
}

//-------------------------------------------------------------------------------------//

struct SDTSpectralFeats {
  double *in, *win, *currAmp, *prevAmp, *currWhite, *prevWhite, *whitener, alpha,
         magnitude, centroid, spread, skewness, kurtosis, flatness, flux, onset;
  SDTComplex *fft;
  SDTFFT *fftPlan;
  int i, j, size, sqrtSize, fftSize, skip, min, max, span;
};

SDTSpectralFeats *SDTSpectralFeats_new(unsigned int size) {
  SDTSpectralFeats *x;
  int i, fftSize;
  
  fftSize = size / 2 + 1;
  x = (SDTSpectralFeats *)malloc(sizeof(SDTSpectralFeats));
  x->in = (double *)malloc(2 * size * sizeof(double));
  x->win = (double *)malloc(size * sizeof(double));
  x->fft = (SDTComplex *)malloc(fftSize * sizeof(SDTComplex));
  x->currAmp = (double *)malloc(fftSize * sizeof(double));
  x->prevAmp = (double *)malloc(fftSize * sizeof(double));
  x->currWhite = (double *)malloc(fftSize * sizeof(double));
  x->prevWhite = (double *)malloc(fftSize * sizeof(double));
  x->whitener = (double *)malloc(fftSize * sizeof(double));
  for (i = 0; i < size; i++) {
    x->in[i] = 0.0;
    x->in[size + i] = 0.0;
    x->win[i] = 0.0;
  }
  for (i = 0; i < fftSize; i++) {
    x->fft[i] = SDTComplex_cart(0.0, 0.0);
    x->currAmp[i] = 0.0;
    x->prevAmp[i] = 0.0;
    x->currWhite[i] = 0.0;
    x->prevWhite[i] = 0.0;
    x->whitener[i] = 1.0;
  }
  x->alpha = 1.0;
  x->centroid = 0.0;
  x->spread = 0.0;
  x->skewness = 0.0;
  x->kurtosis = 0.0;
  x->flatness = 0.0;
  x->flux = 0.0;
  x->onset = 0.0;
  x->fftPlan = SDTFFT_new(size / 2);
  x->i = 0;
  x->j = 0;
  x->size = size;
  x->sqrtSize = sqrt(size);
  x->fftSize = fftSize;
  x->skip = size;
  x->min = 0;
  x->max = size / 2 + 1;
  x->span = x->max;
  return x;
}

void SDTSpectralFeats_free(SDTSpectralFeats *x) {
  free(x->in);
  free(x->win);
  free(x->fft);
  free(x->currAmp);
  free(x->prevAmp);
  free(x->currWhite);
  free(x->prevWhite);
  free(x->whitener);
  SDTFFT_free(x->fftPlan);
  free(x);
}

void SDTSpectralFeats_setOverlap(SDTSpectralFeats *x, double f) {
  x->skip = SDT_clip((1.0 - f) * x->size, 1, x->size);
  x->alpha = pow(10, -0.12 * SDT_timeStep * x->skip);
}

void SDTSpectralFeats_setMinFreq(SDTSpectralFeats *x, double f) {
  x->min = SDT_clip(f * SDT_timeStep * x->size, 0, x->size / 2);
  x->span = x->max - x->min;
}

void SDTSpectralFeats_setMaxFreq(SDTSpectralFeats *x, double f) {
  if (f <= 0) f = SDT_sampleRate / 2.0;
  x->max = SDT_clip(f * SDT_timeStep * x->size + 1, 1, x->size / 2 + 1);
  x->span = x->max - x->min;
}

int SDTSpectralFeats_dsp(SDTSpectralFeats *x, double *outs, double in) {
  double *swap, sum, logSum, dev;
  int i;
  
  x->in[x->i] = in;
  x->in[x->size + x->i] = in;
  x->i = (x->i + 1) % x->size;
  x->j = (x->j + 1) % x->skip;
  if (x->j) return 0;
  x->centroid = 0.0;
  x->spread = 0.0;
  x->skewness = 0.0;
  x->kurtosis = 0.0;
  x->flatness = 0.0;
  x->flux = 0.0;
  x->onset = 0.0;
  swap = x->prevAmp;
  x->prevAmp = x->currAmp;
  x->currAmp = swap;
  swap = x->prevWhite;
  x->prevWhite = x->currWhite;
  x->currWhite = swap;
  for (i = 0; i < x->size; i++) {
    x->win[i] = 2 * x->in[x->i + i];
  }
  SDT_hanning(x->win, x->size);
  SDTFFT_fftr(x->fftPlan, x->win, x->fft);
  sum = 0.0;
  logSum = 0.0;
  for (i = x->min; i < x->max; i++) {
    x->currAmp[i] = SDTComplex_abs(x->fft[i]) / x->sqrtSize;
    x->whitener[i] = fmax(SDT_MICRO, fmax(x->alpha * x->whitener[i], x->currAmp[i]));
    x->currWhite[i] = x->currAmp[i] / x->whitener[i];
    sum += x->currAmp[i];
    logSum += log(x->currAmp[i]);
    x->centroid += x->currAmp[i] * (i - x->min + 0.5) / x->span;
  }
  x->magnitude = sum / x->span;
  x->centroid /= sum;
  for (i = x->min; i < x->max; i++) {
    dev = (i - x->min + 0.5) / x->span - x->centroid;
    x->spread += pow(dev, 2) * x->currAmp[i];
    x->skewness += pow(dev, 3) * x->currAmp[i];
    x->kurtosis += pow(dev, 4) * x->currAmp[i];
    x->flux += pow(x->currAmp[i] - x->prevAmp[i], 2);
    x->onset += fmax(0.0, x->currWhite[i] - x->prevWhite[i]);
  }
  x->spread = sqrt(x->spread / sum);
  x->skewness = x->skewness / (pow(x->spread, 3.0) * sum);
  x->kurtosis = x->kurtosis / (pow(x->spread, 4.0) * sum) - 3.0;
  x->flatness = exp(logSum / x->span) / (sum / x->span);
  x->flux = sqrt(x->flux / x->span);
  x->onset = x->onset / x->span;
  outs[0] = x->magnitude;
  outs[1] = x->centroid;
  outs[2] = x->spread;
  outs[3] = x->skewness;
  outs[4] = x->kurtosis;
  outs[5] = x->flatness;
  outs[6] = x->flux;
  outs[7] = x->onset;
  return 1;
}

//-------------------------------------------------------------------------------------//

struct SDTPitch {
  double *in, *win, *acf, *nsdf, tol, pitch, clarity;
  SDTComplex *fft;
  SDTFFT *fftPlan;
  int curr, count, size, skip, seek;
};

SDTPitch *SDTPitch_new(unsigned int size) {
  SDTPitch *x;
  int i;
  
  x = (SDTPitch *)malloc(sizeof(SDTPitch));
  x->in = (double *)malloc(2 * size * sizeof(double));
  x->win = (double *)malloc(2 * size * sizeof(double));
  x->fft = (SDTComplex *)malloc((size + 1) * sizeof(SDTComplex));
  x->acf = (double *)malloc(2 * size * sizeof(double));
  x->nsdf = (double *)malloc(size * sizeof(double));
  for (i = 0; i < size; i++) {
    x->in[i] = 0.0;
    x->in[size + i] = 0.0;
    x->win[i] = 0.0;
    x->win[size + i] = 0.0;
    x->fft[i] = SDTComplex_cart(0.0, 0.0);
    x->acf[i] = 0.0;
    x->acf[size + i] = 0.0;
    x->nsdf[i] = 0.0;
  }
  x->fft[size] = SDTComplex_cart(0.0, 0.0);
  x->tol = 0.2;
  x->pitch = 0.0;
  x->clarity = 0.0;
  x->fftPlan = SDTFFT_new(size);
  x->curr = 0;
  x->count = 0;
  x->size = size;
  x->skip = size;
  x->seek = 0.85 * x->size;
  return x;
}

void SDTPitch_free(SDTPitch *x) {
  free(x->in);
  free(x->win);
  free(x->fft);
  free(x->acf);
  free(x->nsdf);
  SDTFFT_free(x->fftPlan);
  free(x);
}

void SDTPitch_setOverlap(SDTPitch *x, double f) {
  x->skip = SDT_clip((1.0 - f) * x->size, 1, x->size);
}

void SDTPitch_setTolerance(SDTPitch *x, double f) {
  x->tol = SDT_fclip(f, 0.0, 1.0);
}

int SDTPitch_dsp(SDTPitch *x, double *outs, double in) {
  double a, b, c, norm, rebias, peakValue, biasValue, maxValue;
  int i, j;
  
  x->in[x->curr] = in;
  x->in[x->curr + x->size] = in;
  x->curr = (x->curr + 1) % x->size;
  x->count = (x->count + 1) % x->skip;
  if (x->count != 0) return 0;
  for (i = 0; i < x->size; i++) {
    x->win[i] = x->in[x->curr + i];
  }
  x->win[0] = 1.0;
  SDTFFT_fftr(x->fftPlan, x->win, x->fft);
  for (i = 0; i <= x->size; i++) {
    x->fft[i] = SDTComplex_mult(x->fft[i], SDTComplex_conj(x->fft[i]));
  }
  SDTFFT_ifftr(x->fftPlan, x->fft, x->acf);
  norm = x->acf[0];
  for (i = 0; i < x->seek; i++) {
    j = x->size - i - 1;
    x->nsdf[i] = x->acf[i] / norm;
    norm -= (x->win[i] * x->win[i] + x->win[j] * x->win[j]) * x->size; 
  }
  for (i = 1; i < x->seek; i++) {
    if (x->nsdf[i] < 0) break;
  }
  x->pitch = 0.0;
  x->clarity = 0.0;
  maxValue = 0.0;
  for (; i < x->seek - 1; i++) {
    if (x->nsdf[i-1] < x->nsdf[i] && x->nsdf[i] > x->nsdf[i+1]) {
      a = x->nsdf[i-1];
      b = x->nsdf[i];
      c = x->nsdf[i+1];
      rebias = 1.0 - (i * x->tol) / x->seek;
      peakValue = b + 0.5 * (0.5 * ((c - a) * (c - a))) / (2 * b - a - c);
      biasValue = rebias * peakValue;
      if (biasValue > maxValue) { 
        x->pitch = SDT_sampleRate / (i + (0.5 * (c - a)) / (2 * b - a - c));
        x->clarity = peakValue;
        maxValue = biasValue;
      }
    }
  }
  outs[0] = x->pitch;
  outs[1] = x->clarity;
  return 1;
}
