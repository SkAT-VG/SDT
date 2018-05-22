#include <assert.h>
#include <math.h>
#include <stdlib.h>
#include "SDTCommon.h"
#include "SDTComplex.h"
#include "SDTFFT.h"
#include "SDTFilters.h"
#include "SDTAnalysis.h"

#define MYO_SR 1000
#define MYO_SS 100

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
  SDTTwoPoles *inRMS, *impRMS, *myoRMS, *restRMS;
  SDTBiquad *dcHP, *lowLP, *lowHP, *highLP, *highHP;
  double dcCut, lowCut, highCut, threshold, imp, myo,
         impAct, myoAct, impFreq, myoFreq;
  int impCount, myoCount;
};

SDTMyoelastic *SDTMyoelastic_new(int bufSize) {
  SDTMyoelastic *x;
  //int i;

  x = (SDTMyoelastic *)malloc(sizeof(SDTMyoelastic));
  x->inRMS = SDTTwoPoles_new();
  x->impRMS = SDTTwoPoles_new();
  x->myoRMS = SDTTwoPoles_new();
  x->restRMS = SDTTwoPoles_new();
  x->dcHP = SDTBiquad_new(4);
  x->lowLP = SDTBiquad_new(4);
  x->lowHP = SDTBiquad_new(4);
  x->highLP = SDTBiquad_new(4);
  x->highHP = SDTBiquad_new(4);
  x->dcCut = 1.0;
  x->lowCut = 1.0;
  x->highCut = 1.0;
  x->threshold = 0.0;
  x->imp = 0.0;
  x->myo = 0.0;
  x->impAct = 0.0;
  x->myoAct = 0.0;
  x->impFreq = 0.0;
  x->myoFreq = 0.0;
  x->impCount = 0;
  x->myoCount = 0;
  return x;
}

void SDTMyoelastic_free(SDTMyoelastic *x) {
  SDTTwoPoles_free(x->inRMS);
  SDTTwoPoles_free(x->impRMS);
  SDTTwoPoles_free(x->myoRMS);
  SDTTwoPoles_free(x->restRMS);
  SDTBiquad_free(x->dcHP);
  SDTBiquad_free(x->lowLP);
  SDTBiquad_free(x->lowHP);
  SDTBiquad_free(x->highLP);
  SDTBiquad_free(x->highHP);
  free(x);
}

void SDTMyoelastic_update(SDTMyoelastic *x) {
  SDTTwoPoles_lowpass(x->inRMS, 1000.0);
}

void SDTMyoelastic_setDcFrequency(SDTMyoelastic *x, double f) {
  x->dcCut = SDT_fclip(f, 1.0, 0.5 * SDT_sampleRate);
  SDTTwoPoles_lowpass(x->impRMS, x->dcCut);
  SDTTwoPoles_lowpass(x->myoRMS, x->dcCut);
  SDTTwoPoles_lowpass(x->restRMS, x->dcCut);
  SDTBiquad_linkwitzRileyHP(x->dcHP, x->dcCut);
  SDTMyoelastic_update(x);
}

void SDTMyoelastic_setLowFrequency(SDTMyoelastic *x, double f) {
  x->lowCut = SDT_fclip(f, 1.0, 0.5 * SDT_sampleRate);
  SDTBiquad_linkwitzRileyLP(x->lowLP, x->lowCut);
  SDTBiquad_linkwitzRileyHP(x->lowHP, x->lowCut);
  SDTMyoelastic_update(x);
}

void SDTMyoelastic_setHighFrequency(SDTMyoelastic *x, double f) {
  x->highCut = SDT_fclip(f, 1.0, 0.5 * SDT_sampleRate);
  SDTBiquad_linkwitzRileyLP(x->highLP, x->highCut);
  SDTBiquad_linkwitzRileyHP(x->highHP, x->highCut);
  SDTMyoelastic_update(x);
}

void SDTMyoelastic_setThreshold(SDTMyoelastic *x, double f) {
  x->threshold = f;
}

int SDTMyoelastic_dsp(SDTMyoelastic *x, double *outs, double in) {
  double rms, imp, myo, rest, impRMS, myoRMS, restRMS, totRMS;

  rms = sqrt(SDTTwoPoles_dsp(x->inRMS, in * in)); 
  imp = SDTBiquad_dsp(x->dcHP, rms);
  imp = SDTBiquad_dsp(x->lowLP, imp);
  myo = SDTBiquad_dsp(x->lowHP, rms);
  myo = SDTBiquad_dsp(x->highLP, myo);
  rest = SDTBiquad_dsp(x->highHP, rms);
  impRMS = sqrt(SDTTwoPoles_dsp(x->impRMS, imp * imp));
  myoRMS = sqrt(SDTTwoPoles_dsp(x->myoRMS, myo * myo));
  restRMS = sqrt(SDTTwoPoles_dsp(x->restRMS, rest * rest));
  totRMS = impRMS + myoRMS + restRMS;
  x->impCount += 1;
  x->myoCount += 1;
  x->impAct = impRMS / totRMS;
  if (x->imp < 0 && imp >= 0) {
    x->impFreq = SDT_sampleRate / x->impCount;
    x->impCount = 0;
  }
  x->myoAct = myoRMS / totRMS;
  if (x->myo < 0 && myo >= 0) {
    x->myoFreq = SDT_sampleRate / x->myoCount;
    x->myoCount = 0;
  }
  x->imp = imp;
  x->myo = myo;
  if (totRMS > x->threshold) {
    outs[0] = x->impAct;
    outs[1] = x->impFreq; 
    outs[2] = x->myoAct;
    outs[3] = x->myoFreq; 
  }
  else {
    outs[0] = 0.0;
    outs[1] = 0.0;
    outs[2] = 0.0;
    outs[3] = 0.0;
  }
  return 1;
}

//-------------------------------------------------------------------------------------//

struct SDTSpectralFeats {
  double *in, *win, *currMag, *prevMag,
         magnitude, centroid, spread, skewness, kurtosis, flatness, flux, onset;
  SDTComplex *fft;
  SDTFFT *fftPlan;
  int i, j, size, fftSize, skip, min, max, span;
};

SDTSpectralFeats *SDTSpectralFeats_new(unsigned int size) {
  SDTSpectralFeats *x;
  int i, fftSize;

  fftSize = size / 2 + 1;
  x = (SDTSpectralFeats *)malloc(sizeof(SDTSpectralFeats));
  x->in = (double *)malloc(2 * size * sizeof(double));
  x->win = (double *)malloc(size * sizeof(double));
  x->fft = (SDTComplex *)malloc(fftSize * sizeof(SDTComplex));
  x->currMag = (double *)malloc(fftSize * sizeof(double));
  x->prevMag = (double *)malloc(fftSize * sizeof(double));
  for (i = 0; i < size; i++) {
    x->in[i] = 0.0;
    x->in[size + i] = 0.0;
    x->win[i] = 0.0;
  }
  for (i = 0; i < fftSize; i++) {
    x->fft[i] = SDTComplex_car(0.0, 0.0);
    x->currMag[i] = 0.0;
    x->prevMag[i] = 0.0;
  }
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
  free(x->currMag);
  free(x->prevMag);
  SDTFFT_free(x->fftPlan);
  free(x);
}

void SDTSpectralFeats_setOverlap(SDTSpectralFeats *x, double f) {
  x->skip = SDT_clip((1.0 - f) * x->size, 1, x->size);
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
  double *swap, sum, logSum, binSum, dev, deltaMag;
  int i;

  x->in[x->i] = in;
  x->in[x->size + x->i] = in;
  x->i = (x->i + 1) % x->size;
  x->j = (x->j + 1) % x->skip;
  if (x->j) return 0;
  x->magnitude = 0.0;
  x->centroid = 0.0;
  x->spread = 0.0;
  x->skewness = 0.0;
  x->kurtosis = 0.0;
  x->flatness = 0.0;
  x->flux = 0.0;
  x->onset = 0.0;
  swap = x->prevMag;
  x->prevMag = x->currMag;
  x->currMag = swap;
  for (i = 0; i < x->size; i++) {
    x->win[i] = 2 * x->in[x->i + i];
  }
  SDT_hanning(x->win, x->size);
  SDTFFT_fftr(x->fftPlan, x->win, x->fft);
  sum = 0.0;
  logSum = 0.0;
  binSum = 0.0;
  for (i = x->min; i < x->max; i++) {
    x->currMag[i] = SDTComplex_abs(x->fft[i]);
    sum += x->currMag[i];
    logSum += log(x->currMag[i]);
    binSum += x->currMag[i] * (i - x->min + 0.5);
  }
  x->magnitude = sum / x->span;
  x->flatness = exp(logSum / x->span) / x->magnitude;
  x->centroid = binSum / (sum * x->span);
  for (i = x->min; i < x->max; i++) {
    dev = (i - x->min + 0.5) / x->span - x->centroid;
    x->spread += pow(dev, 2) * x->currMag[i];
    x->skewness += pow(dev, 3) * x->currMag[i];
    x->kurtosis += pow(dev, 4) * x->currMag[i];
    deltaMag = x->currMag[i] - x->prevMag[i];
    x->flux += deltaMag * deltaMag;
    if (deltaMag > 0.0) x->onset += deltaMag;
  }
  x->spread = sqrt(x->spread / sum);
  x->skewness = x->skewness / (pow(x->spread, 3.0) * sum);
  x->kurtosis = x->kurtosis / (pow(x->spread, 4.0) * sum) - 3.0;
  x->flux = sqrt(x->flux / x->span);
  x->onset /= x->span;
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
    x->fft[i] = SDTComplex_car(0.0, 0.0);
    x->acf[i] = 0.0;
    x->acf[size + i] = 0.0;
    x->nsdf[i] = 0.0;
  }
  x->fft[size] = SDTComplex_car(0.0, 0.0);
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
