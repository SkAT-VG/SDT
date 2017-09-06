#include <math.h>
#include <stdlib.h>
#include "SDTCommon.h"
#include "SDTFilters.h"
#include "SDTOscillators.h"
#include "SDTEffects.h"
#include "SDTGases.h"

struct SDTWindFlow {
  SDTTwoPoles *reso;
  double windSpeed;
};

SDTWindFlow *SDTWindFlow_new() {
  SDTWindFlow *x;
  
  x = (SDTWindFlow *)malloc(sizeof(SDTWindFlow));
  x->reso = SDTTwoPoles_new();
  x->windSpeed = 0.0;
  return x;
}

extern void SDTWindFlow_free(SDTWindFlow *x) {
  SDTTwoPoles_free(x->reso);
  free(x);
}

void SDTWindFlow_setFilters(SDTWindFlow *x) {
  SDTTwoPoles_resonant(x->reso, 800.0, 1.0);
}

void SDTWindFlow_setWindSpeed(SDTWindFlow *x, double f) {
  x->windSpeed = SDT_fclip(f, -1.0, 1.0);
}

double SDTWindFlow_dsp(SDTWindFlow *x) {
  double out;
  
  out = x->windSpeed * SDT_whiteNoise();
  out = SDTTwoPoles_dsp(x->reso, out);
  return out;
}

//-------------------------------------------------------------------------------------//

struct SDTWindCavity {
  SDTComb *comb;
  SDTTwoPoles *reso;
  double length, diameter, windSpeed, harmonics, freq, delay;
};

void SDTWindCavity_updateGeometry(SDTWindCavity *x) {
  double gain;
  
  x->harmonics = x->length / x->diameter;
  x->freq = SDT_MACH1 / (2.0 * x->length + 1.6 * x->diameter);
  x->delay = SDT_sampleRate / x->freq;
  gain = 1.0 - SDT_fclip(x->diameter / x->length, 0.1, 1.0);
  SDTComb_setXDelay(x->comb, x->delay);
  SDTComb_setYDelay(x->comb, x->delay);
  SDTComb_setXGain(x->comb, gain);
  SDTComb_setYGain(x->comb, gain);
}

void SDTWindCavity_updateResonance(SDTWindCavity *x) {
  double q, fc;
  
  fc = x->freq * x->windSpeed * x->harmonics;
  q = 10.0 * x->windSpeed * x->harmonics;
  SDTTwoPoles_resonant(x->reso, fc, q);
}

SDTWindCavity *SDTWindCavity_new(int maxDelay) {
  SDTWindCavity *x;
  
  x = (SDTWindCavity *)calloc(1, sizeof(SDTWindCavity));
  x->comb = SDTComb_new(maxDelay, maxDelay);
  x->reso = SDTTwoPoles_new();
  x->length = 1.0;
  x->diameter = 1.0;
  SDTWindCavity_updateGeometry(x);
  SDTWindCavity_updateResonance(x);
  return x;
}

void SDTWindCavity_free(SDTWindCavity *x) {
  SDTComb_free(x->comb);
  SDTTwoPoles_free(x->reso);
  free(x);
}

void SDTWindCavity_setLength(SDTWindCavity *x, double f) {
  x->length = fmax(SDT_MICRO, f);
  SDTWindCavity_updateGeometry(x);
  SDTWindCavity_updateResonance(x);
}

void SDTWindCavity_setDiameter(SDTWindCavity *x, double f) {
  x->diameter = fmax(SDT_MICRO, f);
  SDTWindCavity_updateGeometry(x);
  SDTWindCavity_updateResonance(x);
}

void SDTWindCavity_setWindSpeed(SDTWindCavity *x, double f) {
  x->windSpeed = SDT_fclip(f, 0.0, 1.0);
  SDTWindCavity_updateResonance(x);
}

double SDTWindCavity_dsp(SDTWindCavity *x) {
  double out;
  
  out = x->windSpeed * SDT_whiteNoise();
  out = SDTComb_dsp(x->comb, out);
  out = SDTTwoPoles_dsp(x->reso, out);
  return out;
}

//-------------------------------------------------------------------------------------//

struct SDTWindKarman {
  SDTTwoPoles *reso;
  double windSpeed, diameter;
};

void SDTWindKarman_updateResonance(SDTWindKarman *x) {
  double fc;
  
  fc = 8.0 * x->windSpeed / x->diameter;
  SDTTwoPoles_resonant(x->reso, fc, 30.0);
}

SDTWindKarman *SDTWindKarman_new() {
  SDTWindKarman *x;
  
  x = (SDTWindKarman *)calloc(1, sizeof(SDTWindKarman));
  x->reso = SDTTwoPoles_new();
  x->diameter = 0.001;
  SDTWindKarman_updateResonance(x);
  return x;
}

extern void SDTWindKarman_free(SDTWindKarman *x) {
  SDTTwoPoles_free(x->reso);
  free(x);
}

void SDTWindKarman_setDiameter(SDTWindKarman *x, double f) {
  x->diameter = fmax(SDT_MICRO, f);
  SDTWindKarman_updateResonance(x);
}

void SDTWindKarman_setWindSpeed(SDTWindKarman *x, double f) {
  x->windSpeed = SDT_fclip(f, 0.0, 1.0);
  SDTWindKarman_updateResonance(x);
}

double SDTWindKarman_dsp(SDTWindKarman *x) {
  double out;
  
  out = x->windSpeed * SDT_whiteNoise();
  out = SDTTwoPoles_dsp(x->reso, out);
  return out;
}

//-------------------------------------------------------------------------------------//

struct SDTExplosion {
  SDTReverb *scatter;
  SDTTwoPoles *wave, *wind;
  double *waveBuf, *windBuf,
         blastTime, scatterTime, dispersion,
         distance, waveSpeed, windSpeed, time;
  long i, waveDelay, windDelay, size;
};

SDTExplosion *SDTExplosion_new(long maxScatter, long maxDelay) {
  SDTExplosion *x;
  long i;
  
  x = (SDTExplosion *)malloc(sizeof(SDTExplosion));
  x->scatter = SDTReverb_new(maxScatter);
  x->wave = SDTTwoPoles_new();
  x->wind = SDTTwoPoles_new();
  x->waveBuf = (double *)malloc(maxDelay * sizeof(double));
  x->windBuf = (double *)malloc(maxDelay * sizeof(double));
  for (i = 0; i < maxDelay; i++) {
    x->waveBuf[i] = 0.0;
    x->windBuf[i] = 0.0;
  }
  x->blastTime = 0.0;
  x->scatterTime = 0.0;
  x->dispersion = 0.0;
  x->distance = 0.0;
  x->waveSpeed = 0.0;
  x->windSpeed = 0.0;
  x->time = 1000000.0;
  x->i = 0;
  x->waveDelay = 0;
  x->windDelay = 0;
  x->size = maxDelay;
  return x;
}

void SDTExplosion_free(SDTExplosion *x) {
  SDTReverb_free(x->scatter);
  SDTTwoPoles_free(x->wave);
  SDTTwoPoles_free(x->wind);
  free(x->waveBuf);
  free(x->windBuf);
  free(x);
}

void SDTExplosion_setBlastTime(SDTExplosion *x, double f) {
  x->blastTime = fmax(0.0, f);
}

void SDTExplosion_setScatterTime(SDTExplosion *x, double f) {
  x->scatterTime = fmax(0.0, f);
}

void SDTExplosion_setDispersion(SDTExplosion *x, double f) {
  x->dispersion = SDT_fclip(f, 0.0, 1.0);
}

void SDTExplosion_setDistance(SDTExplosion *x, double f) {
  x->distance = fmax(0.0, f);
}

void SDTExplosion_setWaveSpeed(SDTExplosion *x, double f) {
  x->waveSpeed = fmax(0.0, f);
}

void SDTExplosion_setWindSpeed(SDTExplosion *x, double f) {
  x->windSpeed = fmax(0.0, f);
}

void SDTExplosion_update(SDTExplosion *x) {
  SDTReverb_setXSize(x->scatter, 0.01 * SDT_MACH1 * x->scatterTime);
  SDTReverb_setYSize(x->scatter, 0.01 * SDT_MACH1 * x->scatterTime);
  SDTReverb_setZSize(x->scatter, 0.01 * SDT_MACH1 * x->scatterTime);
  SDTReverb_setRandomness(x->scatter, 1.0);
  SDTReverb_setTime(x->scatter, x->scatterTime);
  SDTReverb_setTime1k(x->scatter, 0.9 * x->scatterTime);
  SDTReverb_update(x->scatter);
  SDTTwoPoles_lowpass(x->wave, fmin(20000.0, 20000.0 / sqrt(x->distance)));
  SDTTwoPoles_resonant(x->wind, 800.0, 1.0);
  x->waveDelay = fmin(x->distance * SDT_sampleRate / x->waveSpeed, x->size);
  x->windDelay = fmin(x->distance * SDT_sampleRate / x->windSpeed, x->size);
  x->time = 0.0;
}

void SDTExplosion_dsp(SDTExplosion *x, double *outs) {
  double zeroCross, blast, scatter, wave, wind;
  long waveI, windI;
  
  zeroCross = x->blastTime == 0.0 ? 1.0 : x->time / x->blastTime;
  blast = exp(-zeroCross) * (1.0 - zeroCross);
  scatter = SDTReverb_dsp(x->scatter, blast);
  wave = SDTTwoPoles_dsp(x->wave, (1.0 - x->dispersion) * blast + x->dispersion * scatter);
  wind = SDTTwoPoles_dsp(x->wind, SDT_whiteNoise() * wave);
  
  if (x->waveDelay < x->size) {
    waveI = (x->i + x->waveDelay) % x->size;
    x->waveBuf[waveI] += wave;
  }
  if (x->windDelay < x->size) {
    windI = (x->i + x->windDelay) % x->size;
    x->windBuf[windI] += wind;
  }
  outs[0] = x->waveBuf[x->i];
  outs[1] = x->windBuf[x->i];
  x->waveBuf[x->i] = 0.0;
  x->windBuf[x->i] = 0.0;
  x->time += SDT_timeStep;
  x->i = (x->i + 1) % x->size;
}
