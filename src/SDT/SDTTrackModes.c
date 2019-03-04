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
  int i, skip, nFrames, bufferSize, winSize, fftSize, imgSize;
};

void _createTracks(SDTTrackModes *x) {
  double *currSpectrum, *prevTrack, *currTrack, maxTrack;
  unsigned int i, frameIndex;
  
  x->nFrames = x->i / x->skip;
  if (x->i % x->skip != 0 && x->i + x->skip <= x->bufferSize) x->nFrames++;
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
  memcpy(&x->buffer[start], in, span * sizeof(double));
  x->i = end;
  return span;
}

void SDTTrackModes_static(SDTTrackModes *x, unsigned int nModes) {
  double *tracks, *trackMags, maxTrack, maxMag;
  unsigned int *trackBins, i, bin, trackLength;

  _createTracks(x);
  tracks = (double *)malloc(x->imgSize * sizeof(double));
  trackMags = (unsigned int *)malloc(x->nFrames * sizeof(unsigned int));
  trackBins = (unsigned int *)malloc(x->nFrames * sizeof(unsigned int));
  memcpy(tracks, x->tracks, imgSize * sizeof(double));
  maxTrack = tracks[0];
  bin = 0;
  for (i = 1; i < x->imgSize; i++) {
    if (tracks[i] > maxTrack) {
      maxTrack = tracks[i];
      bin = i;
    }
  }
  tracks[bin] = 0;
  trackMags[0] = x->spectrum[bin];
  trackBins[0] = bin % fftSize;
  trackLength = 1;
  while (true) {
    bin -= fftSize;
    if (bin < 1) break;
    if (tracks[bin - 1] > tracks[bin] && tracks[bin - 1] > tracks[bin + 1]) bin--;
    else if (tracks[bin + 1] > tracks[bin] && tracks[bin + 1] > tracks[bin - 1]) bin++;
    if (tracks[bin] == 0) break;
    tracks[bin] = 0;
    trackMags[trackLength] = x->spectrum[bin];
    trackBins[trackLength] = bin % fftSize;
    trackLength++;
  }
  free(tracks);
  free(trackBins);
}