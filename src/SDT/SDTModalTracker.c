#include <math.h>
#include <stdlib.h>
#include <stdint.h>
#include <string.h>
#include "SDTCommon.h"
#include "SDTComplex.h"
#include "SDTFFT.h"
#include "SDTModalTracker.h"

typedef struct SDTMode {
  double *mags, *freqs;
  long start, end, bufferSize;
} SDTMode;

SDTMode *SDTMode_new(long bufferSize) {
  SDTMode *x;

  x = (SDTMode *)malloc(sizeof(SDTMode));
  x->mags = (double *)calloc(bufferSize, sizeof(double));
  x->freqs = (double *)calloc(bufferSize, sizeof(double));
  x->start = 0;
  x->end = 0;
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
  long nSamples, nModes, bufferSize, winSize, fftSize, skip;
};

SDTModalTracker *SDTModalTracker_new(long nModes, long bufferSize, long winSize) {
  SDTModalTracker *x;
  long fftSize;

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
  long i;

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

long SDTModalTracker_readSamples(SDTModalTracker *x, double *in, long n) {
  long start, end, span;
  
  start = x->nSamples;
  end = SDT_clip(start + n, start, x->bufferSize);
  if (start == end) return 0;
  span = end - start;
  memcpy(&x->buffer[start], in, span * sizeof(double));
  x->nSamples = end;
  return span;
}

long SDTModalTracker_clearSamples(SDTModalTracker *x, long n) {
  long start, end, span;

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
  long frameIndex, binIndex, peakIndex, modeIndex, nSamples, nFrames, imgSize;
  
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
    mode->end = peakIndex / x->fftSize + 1;
    while (1) {
      frameIndex = peakIndex / x->fftSize;
      binIndex = peakIndex % x->fftSize;
      currMags = &mags[frameIndex * x->fftSize];
      currPeaks = &peaks[frameIndex * x->fftSize];
      mode->mags[frameIndex] = SDT_truePeakValue(currMags, binIndex);
      mode->freqs[frameIndex] = SDT_truePeakPos(currMags, binIndex) / x->winSize * SDT_sampleRate;
      mode->start = frameIndex;
      peaks[peakIndex] = 0;
      peakIndex -= x->fftSize + 1;
      if (peakIndex < 0) break;
      peakIndex += SDT_argMax(&peaks[peakIndex], 3, NULL);
      if (peaks[peakIndex] == 0) break;
    }
  }
  free(mags);
  free(peaks);
}

void SDTModalTracker_static(SDTModalTracker *x, double *mags, double *freqs, double *decays) {
  SDTMode *mode;
  long modeIndex, modeSize;
  double *modeMags, *modeFreqs;

  for (modeIndex = 0; modeIndex < x->nModes; modeIndex++) {
    mode = x->modes[modeIndex];
    if (!mode) continue;
    modeMags = &mode->mags[mode->start];
    modeFreqs = &mode->freqs[mode->start];
    modeSize = mode->end - mode->start;
    mags[modeIndex] = SDT_max(modeMags, modeSize);
    freqs[modeIndex] = SDT_weightedAverage(modeFreqs, modeMags, modeSize);
    decays[modeIndex] = modeSize * x->skip * SDT_timeStep / log(1000);
  }
}

void SDTModalTracker_dynamic(SDTModalTracker *x, double time, double *mags, double *freqs) {
  SDTMode *mode;
  long modeIndex, frameOffset, prevIndex, nextIndex;
  double frameTime, alpha, beta, prevMag, nextMag, prevFreq, nextFreq;

  frameOffset = INT32_MAX;
  for (modeIndex = 0; modeIndex < x->nModes; modeIndex++) {
    mode = x->modes[modeIndex];
    if (!mode) continue;
    if (mode->start < frameOffset) frameOffset = mode->start;
  }
  frameTime = time / (x->skip * SDT_timeStep);
  beta = frameTime - floor(frameTime);
  alpha = 1.0 - beta;
  for (modeIndex = 0; modeIndex < x->nModes; modeIndex++) {
    mode = x->modes[modeIndex];
    if (!mode) continue;
    prevIndex = floor(frameTime) + frameOffset;
    nextIndex = prevIndex + 1;
    prevMag = prevIndex >= mode->start && prevIndex < mode->end ? mode->mags[prevIndex] : 0;
    prevFreq = mode->freqs[SDT_clip(prevIndex, mode->start, mode->end - 1)];
    nextMag = nextIndex >= mode->start && nextIndex < mode->end ? mode->mags[nextIndex] : 0;
    nextFreq = mode->freqs[SDT_clip(nextIndex, mode->start, mode->end - 1)];
    mags[modeIndex] = prevMag * alpha + nextMag * beta;
    freqs[modeIndex] = prevFreq * alpha + nextFreq * beta;
  }
}