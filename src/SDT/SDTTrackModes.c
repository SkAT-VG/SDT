#include <math.h>
#include <stdlib.h>
#include <string.h>
#include "SDTCommon.h"
#include "SDTComplex.h"
#include "SDTFFT.h"
#include "SDTTrackModes.h"

struct SDTTrackModes {
  double *buffer, *window, *spectrum, *tracks;
  SDTComplex *fft;
  SDTFFT *fftPlan;
  int i, bufferSize, winSize, fftSize, skip;
};

void _createTracks(SDTTrackModes *x) {
  double *currSpectrum, *prevTrack, *currTrack, maxTrack;
  unsigned int i, frameIndex, nFrames, imgSize;
  
  nFrames = x->i / x->skip;
  if (x->i % x->skip != 0 && x->i + x->skip <= x->bufferSize) nFrames += 1;
  imgSize = x->fftSize * nFrames;

  if (x->spectrum) free(x->spectrum);
  if (x->tracks) free(x->tracks);
  x->spectrum = (double *)calloc(imgSize, sizeof(double));
  x->tracks = (double *)calloc(imgSize, sizeof(double));
  for (frameIndex = 0; frameIndex < nFrames; frameIndex++) {
    memcpy(x->window, &x->buffer[frameIndex * x->skip], x->winSize);
    SDT_hanning(x->window, x->winSize);
    SDTFFT_fftr(x->fftPlan, x->window, x->fft);
    currSpectrum = &x->spectrum[frameIndex * x->fftSize];
    for (i = 0; i < x->fftSize; i++) {
      currSpectrum[i] = SDTComplex_abs(x->fft[i]);
    }
    currTrack = &x->tracks[frameIndex * x->fftSize];
    for (i = 2; i < x->fftSize - 2; i++) {
      if (currSpectrum[i] > currSpectrum[i - 2] && currSpectrum[i] > currSpectrum[i - 1] &&
          currSpectrum[i] >= currSpectrum[i + 1] && currSpectrum[i] >= currSpectrum[i + 2]) {
        currTrack[i] = currSpectrum[i];
      }
    }
    if (frameIndex > 0) {
      prevTrack = &x->tracks[(frameIndex - 1) * x->fftSize];
      for (i = 1; i < x->fftSize - 1; i++) {
        if (currTrack[i] > 0) {
          maxTrack = prevTrack[i - 1];
          if (prevTrack[i] > maxTrack) maxTrack = prevTrack[i];
          if (prevTrack[i + 1] > maxTrack) maxTrack = prevTrack[i + 1]; 
          currTrack[i] += maxTrack;
        }
      }
    }
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
  x->bufferSize = bufferSize;
  x->winSize = winSize;
  x->fftSize = fftSize;
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
  
  start = x->i;
  end = SDT_clip(start + n, start, x->bufferSize);
  if (start == end) return 0;
  span = end - start;
  memcpy(&x->buffer[start], in, span);
  x->i = end;
  return span;
}

void SDTTrackModes_static(SDTTrackModes *x, unsigned int nModes) {
  _createTracks(x);
}