#include <math.h>
#include <stdlib.h>
#include <string.h>
#include "SDTCommon.h"
#include "SDTComplex.h"
#include "SDTFFT.h"
#include "SDTTrackModes.h"

typedef struct SDTMode {
  unsigned int start, duration;
  double *magnitudes, *frequencies;
} SDTMode;

SDTMode *SDTMode_new(unsigned int length) {
  SDTMode *x;

  x = (SDTMode *)malloc(sizeof(SDTMode));
  x->magnitudes = (double *)calloc(length, sizeof(double));
  x->frequencies = (double *)calloc(length, sizeof(double));
  x->start = 0;
  x->duration = 0;
}

void SDTMode_free(SDTMode *x) {
  free(x->magnitudes);
  free(x->frequencies);
  free(x);
}

//-----------------------------------------------------------------------//

struct SDTTrackModes {
  double *buffer, *window, *spectrum, *tracks;
  SDTComplex *fft;
  SDTMode *modes;
  SDTFFT *fftPlan;
  int nSamples, nFrames, nModes, bufferSize, winSize, fftSize, imgSize, skip;
};

void _createImages(SDTTrackModes *x) {
  double *currSpectrum, *prevTrack, *currTrack;
  unsigned int i, frameIndex;
  
  x->nFrames = x->nSamples / x->skip;
  if (x->nSamples % x->skip != 0 && x->nSamples + x->skip <= x->bufferSize) x->nFrames++;
  x->imgSize = x->fftSize * x->nFrames;

  if (x->spectrum) free(x->spectrum);
  if (x->tracks) free(x->tracks);
  x->spectrum = (double *)calloc(x->imgSize, sizeof(double));
  x->tracks = (double *)calloc(x->imgSize, sizeof(double));

  for (frameIndex = 0; frameIndex < x->nFrames; frameIndex++) {
    memcpy(x->window, &x->buffer[frameIndex * x->skip], x->winSize * sizeof(double));
    SDT_hanning(x->window, x->winSize);
    SDTFFT_fftr(x->fftPlan, x->window, x->fft);
    currSpectrum = &x->spectrum[frameIndex * x->fftSize];
    for (i = 0; i < x->fftSize; i++) {
      currSpectrum[i] = SDTComplex_abs(x->fft[i]);
    }
    currTrack = &x->tracks[frameIndex * x->fftSize];
    for (i = 2; i < x->fftSize - 2; i++) {
      if (SDT_isPeak(currSpectrum, i, 2)) currTrack[i] = currSpectrum[i];
    }
    if (frameIndex > 0) {
      prevTrack = &x->tracks[(frameIndex - 1) * x->fftSize];
      for (i = 1; i < x->fftSize - 1; i++) {
        if (currTrack[i] > 0) currTrack[i] += SDT_max(&prevTrack[i - 1], 3);
      }
    }
  }
}

void _createMode(SDTTrackModes *x) {
  SDTMode *mode;
  unsigned int pixel;

  mode = (double *)calloc(x->nFrames, sizeof(double));
  pixel = SDT_argMax(x->tracks, x->imgSize);
  
  if (x->modes[x->nModes]) free(x->modes[x->nModes]);

  mode->duration = 0;
  while (1) {
    mode->magnitudes[mode->duration] = SDT_peakValue(x->spectrum, pixel);
    mode->frequencies[mode->duration] = SDT_sampleRate / SDT_peakPosition(x->spectrum, pixel);
    mode->start = pixel / x->fftSize;
    mode->duration++;
    x->tracks[pixel] = 0;
    pixel -= x->fftSize - 1;
    if (pixel < 0) break;
    pixel += SDT_argMax(&x->tracks[pixel], 3);
    if (x->tracks[pixel] == 0) break;
  }
}

SDTTrackModes *SDTTrackModes_new(unsigned int bufferSize, unsigned int winSize) {
  SDTTrackModes *x;
  int fftSize;

  fftSize = winSize / 2 + 1;
  x = (SDTTrackModes *)malloc(sizeof(SDTTrackModes));
  x->buffer = (double *)calloc(bufferSize, sizeof(double));
  x->window = (double *)calloc(winSize, sizeof(double));
  x->spectrum = NULL;
  x->tracks = NULL;
  x->fft = (SDTComplex *)calloc(fftSize, sizeof(SDTComplex));
  x->fftPlan = SDTFFT_new(winSize / 2);
  x->nSamples = 0;
  x->nFrames = 0;
  x->nModes = 0;
  x->bufferSize = bufferSize;
  x->winSize = winSize;
  x->fftSize = fftSize;
  x->imgSize = 0;
  x->skip = winSize / 2;
  return x;
}

void SDTTrackModes_free(SDTTrackModes *x) {
  free(x->buffer);
  SDTFFT_free(x->fftPlan);
  free(x);
}

void SDTTrackModes_setOverlap(SDTTrackModes *x, double f) {
  x->skip = SDT_clip((1.0 - f) * x->winSize, 1, x->winSize);
}

int SDTTrackModes_readSamples(SDTTrackModes *x, double *in, unsigned int n) {
  unsigned int start, end, span;
  
  start = x->nSamples;
  end = SDT_clip(start + n, start, x->bufferSize);
  if (start == end) return 0;
  span = end - start;
  memcpy(&x->buffer[start], in, span * sizeof(double));
  x->nSamples = end;
  return span;
}

void SDTTrackModes_static(SDTTrackModes *x, unsigned int nModes) {
  

  _createImages(x);
  
}