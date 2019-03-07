#include <math.h>
#include <stdlib.h>
#include <stdio.h>
#include <string.h>
#include "SDTCommon.h"
#include "SDTComplex.h"
#include "SDTFFT.h"
#include "SDTModalTracker.h"

typedef struct SDTMode {
  double *mags, *freqs;
  unsigned int start, size, bufferSize;
} SDTMode;

SDTMode *SDTMode_new(unsigned int bufferSize) {
  SDTMode *x;

  x = (SDTMode *)malloc(sizeof(SDTMode));
  x->mags = (double *)calloc(bufferSize, sizeof(double));
  x->freqs = (double *)calloc(bufferSize, sizeof(double));
  x->start = 0;
  x->size = 0;
  return x;
}

void SDTMode_free(SDTMode *x) {
  free(x->mags);
  free(x->freqs);
  free(x);
}

//-----------------------------------------------------------------------//

struct SDTModalTracker {
  double *buffer, *window;
  SDTMode **modes;
  SDTComplex *fft;
  SDTFFT *fftPlan;
  int nSamples, nModes, bufferSize, winSize, fftSize, skip;
};

void _createMode(SDTModalTracker *x) {

}

SDTModalTracker *SDTModalTracker_new(unsigned int nModes, unsigned int bufferSize, unsigned int winSize) {
  SDTModalTracker *x;
  int fftSize;

  fftSize = winSize / 2 + 1;
  x = (SDTModalTracker *)malloc(sizeof(SDTModalTracker));
  x->buffer = (double *)calloc(bufferSize, sizeof(double));
  x->window = (double *)calloc(winSize, sizeof(double));
  x->modes = (SDTMode **)calloc(nModes, sizeof(SDTMode *));
  x->fft = (SDTComplex *)calloc(fftSize, sizeof(SDTComplex));
  x->fftPlan = SDTFFT_new(winSize / 2);
  x->nSamples = 0;
  x->nModes = nModes;
  x->bufferSize = bufferSize;
  x->winSize = winSize;
  x->fftSize = fftSize;
  x->skip = winSize / 2;
  return x;
}

void SDTModalTracker_free(SDTModalTracker *x) {
  unsigned int i;

  free(x->buffer);
  free(x->window);
  for (i = 0; i < x->nModes; i++) {
    if (x->modes[i]) SDTMode_free(x->modes[i]);
  }
  free(x->modes);
  free(x->fft);
  SDTFFT_free(x->fftPlan);
  free(x);
}

void SDTModalTracker_setOverlap(SDTModalTracker *x, double f) {
  x->skip = SDT_clip((1.0 - f) * x->winSize, 1, x->winSize);
}

int SDTModalTracker_readSamples(SDTModalTracker *x, double *in, unsigned int n) {
  unsigned int start, end, span;
  
  start = x->nSamples;
  end = SDT_clip(start + n, start, x->bufferSize);
  if (start == end) return 0;
  span = end - start;
  memcpy(&x->buffer[start], in, span * sizeof(double));
  x->nSamples = end;
  return span;
}

int SDTModalTracker_clearSamples(SDTModalTracker *x, unsigned int n) {
  unsigned int start, end, span;

  end = x->nSamples;
  start = SDT_clip(end - n, 0, end);
  if (start == end) return 0;
  span = end - start;
  memset(&x->buffer[start], 0, span * sizeof(double));
  x->nSamples = start;
  return span;
}

void SDTModalTracker_update(SDTModalTracker *x) {
  SDTMode *mode;
  double *mags, *peaks, *currMags, *currPeaks, *prevPeaks;
  int frameIndex, binIndex, peakIndex, modeIndex, nSamples, nFrames, imgSize, frameCount;
  
  nSamples = x->nSamples < x->bufferSize - x->winSize ? x->nSamples : x->bufferSize - x->winSize;
  nFrames = ceil(nSamples / x->skip);
  imgSize = nFrames * x->fftSize;
  mags = (double *)calloc(imgSize, sizeof(double));
  peaks = (double *)calloc(imgSize, sizeof(double));
  prevPeaks = peaks;
  for (frameIndex = 0; frameIndex < nFrames; frameIndex++) {
    memcpy(x->window, &x->buffer[frameIndex * x->skip], x->winSize * sizeof(double));
    SDT_hanning(x->window, x->winSize);
    SDTFFT_fftr(x->fftPlan, x->window, x->fft);
    currMags = &mags[frameIndex * x->fftSize];
    for (binIndex = 0; binIndex < x->fftSize; binIndex++) {
      currMags[binIndex] = SDTComplex_abs(x->fft[binIndex]);
    }
    currPeaks = &peaks[frameIndex * x->fftSize];
    for (binIndex = 2; binIndex < x->fftSize - 2; binIndex++) {
      if (SDT_isPeak(currMags, binIndex, 2)) {
        currPeaks[binIndex] = SDT_max(&prevPeaks[binIndex - 1], 3) + currMags[binIndex];
      }
    }
    prevPeaks = currPeaks;
  }
  for (modeIndex = 0; modeIndex < x->nModes; modeIndex++) {
    if (x->modes[modeIndex]) SDTMode_free(x->modes[modeIndex]);
    x->modes[modeIndex] = SDTMode_new(nFrames);
    mode = x->modes[modeIndex];
    peakIndex = SDT_argMax(peaks, imgSize, NULL);
    frameCount = 0;
    printf("Mags for mode %d: ", modeIndex + 1);
    while (1) {
      frameIndex = peakIndex / x->fftSize;
      binIndex = peakIndex % x->fftSize;
      currMags = &mags[frameIndex * x->fftSize];
      currPeaks = &peaks[frameIndex * x->fftSize];
      mode->mags[frameCount] = SDT_truePeakValue(currMags, binIndex);
      mode->freqs[frameCount] = SDT_truePeakPos(currMags, binIndex) / x->winSize * SDT_sampleRate;
      printf("%f ", mode->mags[frameCount]);
      mode->start = frameIndex;
      mode->size = ++frameCount;
      peaks[peakIndex] = 0;
      peakIndex -= x->fftSize + 1;
      if (peakIndex < 0) break;
      peakIndex += SDT_argMax(&peaks[peakIndex], 3, NULL);
      if (peaks[peakIndex] == 0) break;
    }
    printf("\n");
  }
  free(mags);
  free(peaks);
}

void SDTModalTracker_static(SDTModalTracker *x, double *mags, double *freqs, double *decays) {
  SDTMode *mode;
  unsigned int modeIndex, peakIndex, frameIndex;
  double mag, freq, nAudible, decay;

  for (modeIndex = 0; modeIndex < x->nModes; modeIndex++) {
    mode = x->modes[modeIndex];
    if (!mode) continue;
    peakIndex = SDT_argMax(mode->mags, mode->size, &mag);
    printf("Mode %d: attack at %d, value %f\n", modeIndex + 1, peakIndex, mag);
    freq = SDT_weightedAverage(mode->freqs, mode->mags, peakIndex + 1);
    nAudible = 0;
    for (frameIndex = 0; frameIndex < mode->size; frameIndex++) {
      if (mode->mags[frameIndex] > mag / 1000.0) {
        nAudible++;
      }
    }
    decay = log10(exp(nAudible / 3.0)) * x->skip * SDT_timeStep;
    mags[modeIndex] = mag;
    freqs[modeIndex] = freq;
    decays[modeIndex] = decay;
  }
}