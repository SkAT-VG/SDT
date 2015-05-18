/** \file SDTGases.c
 * Physical models for gas turbulence, flow and explosion. 
 *
 * \author Stefano Baldan (stefanobaldan@iuav.it)
 *
 * This file is part of the 'Sound Design Toolkit' (SDT)
 * Developed with the contribution of the following EU-projects:
 * 2001-2003 'SOb' http://www.soundobject.org/
 * 2006-2009 'CLOSED' http://closed.ircam.fr/
 * 2008-2011 'NIW' http://www.niwproject.eu/
 * 2014-2017 'SkAT-VG http://www.skatvg.eu/
 *
 * Contacts: 
 * 	stefano.papetti@zhdk.ch
 * 	stefano.dellemonache@gmail.com
 *  stefanobaldan@iuav.it
 *
 * Complete list of authors (either programmers or designers):
 * 	Federico Avanzini (avanzini@dei.unipd.it)
 *	Nicola Bernardini (nicb@sme-ccppd.org)
 *	Gianpaolo Borin (gianpaolo.borin@tin.it)
 *	Carlo Drioli (carlo.drioli@univr.it)
 *	Stefano Delle Monache (stefano.dellemonache@gmail.com)
 *	Delphine Devallez
 *	Federico Fontana (federico.fontana@uniud.it)
 *	Laura Ottaviani
 *	Stefano Papetti (stefano.papetti@zhdk.ch)
 *	Pietro Polotti (pietro.polotti@univr.it)
 *	Matthias Rath
 *	Davide Rocchesso (roc@iuav.it)
 *	Stefania Serafin (sts@media.aau.dk)
 *  Stefano Baldan (stefanobaldan@iuav.it)
 *
 * The SDT is free software; you can redistribute it and/or
 * modify it under the terms of the GNU General Public License
 * as published by the Free Software Foundation; either version 2
 * of the License, or (at your option) any later version.
 *
 * The SDT is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with the SDT; if not, write to the Free Software
 * Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301, USA.
 *****************************************************************************/

#include <math.h>
#include <stdlib.h>
#include "SDTCommon.h"
#include "SDTFilters.h"
#include "SDTOscillators.h"
#include "SDTEffects.h"
#include "SDTGases.h"

struct SDTWindFlow {
  SDTTwoPoles *reso1, *reso2;
  double windSpeed;
};

SDTWindFlow *SDTWindFlow_new() {
  SDTWindFlow *x;
  
  x = (SDTWindFlow *)malloc(sizeof(SDTWindFlow));
  x->reso1 = SDTTwoPoles_new();
  x->reso2 = SDTTwoPoles_new();
  x->windSpeed = 0.0;
  return x;
}

extern void SDTWindFlow_free(SDTWindFlow *x) {
  SDTTwoPoles_free(x->reso1);
  SDTTwoPoles_free(x->reso2);
  free(x);
}

void SDTWindFlow_setFilters(SDTWindFlow *x) {
  SDTTwoPoles_resonant(x->reso1, 800.0, 3);
  SDTTwoPoles_resonant(x->reso2, 800.0, 3);
}

void SDTWindFlow_setWindSpeed(SDTWindFlow *x, double f) {
  x->windSpeed = SDT_fclip(f, -1.0, 1.0);
}

double SDTWindFlow_dsp(SDTWindFlow *x) {
  double out;
  
  out = x->windSpeed * SDT_whiteNoise();
  out = SDTTwoPoles_dsp(x->reso1, out);
  out = SDTTwoPoles_dsp(x->reso2, out);
  return out;
}

//-------------------------------------------------------------------------------------//

struct SDTWindCavity {
  SDTComb *comb;
  SDTTwoPoles *reso1, *reso2;
  double length, diameter, windSpeed, harmonics, freq, delay, q;
};

SDTWindCavity *SDTWindCavity_new(int maxDelay) {
  SDTWindCavity *x;
  
  x = (SDTWindCavity *)calloc(1, sizeof(SDTWindCavity));
  x->comb = SDTComb_new(maxDelay, maxDelay);
  x->reso1 = SDTTwoPoles_new();
  x->reso2 = SDTTwoPoles_new();
  x->length = 1.0;
  x->diameter = 1.0;
  SDTWindCavity_updateGeometry(x);
  SDTWindCavity_updateResonance(x);
  return x;
}

void SDTWindCavity_free(SDTWindCavity *x) {
  SDTComb_free(x->comb);
  SDTTwoPoles_free(x->reso1);
  SDTTwoPoles_free(x->reso2);
  free(x);
}

void SDTWindCavity_setLength(SDTWindCavity *x, double f) {
  x->length = fmax(0.001, f);
  SDTWindCavity_updateGeometry(x);
  SDTWindCavity_updateResonance(x);
}

void SDTWindCavity_setDiameter(SDTWindCavity *x, double f) {
  x->diameter = fmax(0.001, f);
  SDTWindCavity_updateGeometry(x);
  SDTWindCavity_updateResonance(x);
}

void SDTWindCavity_setWindSpeed(SDTWindCavity *x, double f) {
  x->windSpeed = SDT_fclip(f, 0.0, 1.0);
  SDTWindCavity_updateResonance(x);
}

void SDTWindCavity_updateGeometry(SDTWindCavity *x) {
  double gain;
  
  x->harmonics = x->length / x->diameter;
  x->freq = SDT_MACH1 / (2.0 * x->length + 1.6 * x->diameter);
  x->delay = SDT_sampleRate / x->freq;
  x->q = fmin(100.0, 0.5 * x->delay);
  gain = 1.0 - SDT_fclip(x->diameter / x->length, 0.1, 1.0);
  SDTComb_setXDelay(x->comb, x->delay);
  SDTComb_setYDelay(x->comb, x->delay);
  SDTComb_setXGain(x->comb, gain);
  SDTComb_setYGain(x->comb, gain);
}

void SDTWindCavity_updateResonance(SDTWindCavity *x) {
  double fc;
  
  fc = x->freq * x->windSpeed * x->harmonics;
  SDTTwoPoles_resonant(x->reso1, 800.0, 3.0);
  SDTTwoPoles_resonant(x->reso2, fc, x->q);
}

double SDTWindCavity_dsp(SDTWindCavity *x) {
  double out;
  
  out = x->windSpeed * SDT_whiteNoise();
  out = SDTComb_dsp(x->comb, out);
  out = SDTTwoPoles_dsp(x->reso1, out);
  out = SDTTwoPoles_dsp(x->reso2, out);
  return out;
}

//-------------------------------------------------------------------------------------//

struct SDTWindKarman {
  SDTTwoPoles *reso1, *reso2;
  double windSpeed, diameter;
};

SDTWindKarman *SDTWindKarman_new() {
  SDTWindKarman *x;
  
  x = (SDTWindKarman *)calloc(1, sizeof(SDTWindKarman));
  x->reso1 = SDTTwoPoles_new();
  x->reso2 = SDTTwoPoles_new();
  x->diameter = 0.001;
  return x;
}

extern void SDTWindKarman_free(SDTWindKarman *x) {
  SDTTwoPoles_free(x->reso1);
  SDTTwoPoles_free(x->reso2);
  free(x);
}

void SDTWindKarman_setDiameter(SDTWindKarman *x, double f) {
  x->diameter = fmax(0.000001, f);
  SDTWindKarman_updateResonance(x);
}

void SDTWindKarman_setWindSpeed(SDTWindKarman *x, double f) {
  x->windSpeed = SDT_fclip(f, 0.0, 1.0);
  SDTWindKarman_updateResonance(x);
}

void SDTWindKarman_updateResonance(SDTWindKarman *x) {
  double fc;
  
  fc = 8.0 * x->windSpeed / x->diameter;
  SDTTwoPoles_resonant(x->reso1, fc, 60);
  SDTTwoPoles_resonant(x->reso2, fc, 60);
}

double SDTWindKarman_dsp(SDTWindKarman *x) {
  double out;
  
  out = x->windSpeed * SDT_whiteNoise();
  out = SDTTwoPoles_dsp(x->reso1, out);
  out = SDTTwoPoles_dsp(x->reso2, out);
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
  x->time = 0.0;
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
  SDTReverb_setSize(x->scatter, 0.01 * SDT_MACH1 * x->scatterTime);
  SDTReverb_setTime(x->scatter, x->scatterTime);
  SDTReverb_setTime1k(x->scatter, 0.9 * x->scatterTime);
  SDTReverb_update(x->scatter);
  SDTTwoPoles_lowpass(x->wave, fmin(20000.0, 20000.0 / sqrt(x->distance)));
  SDTTwoPoles_resonant(x->wind, 800.0, 10.0);
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

/*void SDTExplosion_update(SDTExplosion *x) {
  double w;
  
  w = x->angle * M_PI / 180.0;
  SDTReverb_setSize(x->scatter, 0.01 * SDT_MACH1 * x->turbulenceTime);
  SDTReverb_setTime(x->scatter, x->turbulenceTime);
  SDTReverb_setTime1k(x->scatter, 0.9 * x->turbulenceTime);
  SDTReverb_update(x->scatter);
  SDTTwoPoles_lowpass(x->damp, fmin(20000.0, 20000.0 / sqrt(x->distance)));
  SDTTwoPoles_resonant(x->blastWind, 800.0, 10.0);
  x->groundOffset = x->distance * fmax(0.0, SDT_sampleRate / x->groundSpeed);
  x->windOffset = x->distance * fmax(0.0, SDT_sampleRate / x->windSpeed);
  x->objectOffset = x->distance * SDT_sampleRate / fmax(SDT_MACH1, x->objectSpeed * cos(w)));
  w = x->angle * M_PI / 180.0;
  x->posX = x->distance * (cos(w) - x->objectSpeed / SDT_MACH1);
  x->posY = x->distance * sin(w);
  x->time = 0.0;
}

double SDTExplosion_dsp(SDTExplosion *x) {
  double zeroCross, boom, turbulence, blast, ground, wind, amp, w, freq, object, out;
  long groundI, windI, objectI;
  
  zeroCross = x->time / x->blastTime;
  boom = exp(-zeroCross) * (1.0 - zeroCross);
  turbulence = SDTReverb_dsp(x->scatter, boom);
  blast = SDTTwoPoles_dsp(x->damp, boom + turbulence);
  ground = x->groundGain * blast;
  wind = x->windGain * SDTTwoPoles_dsp(x->blastWind, SDT_whiteNoise() * blast);
  amp = fmin(1.0, 1.0 / (x->posX * x->posX + x->posY * x->posY));
  w = atan2(x->posY, x->posX);
  freq = 800.0 * SDT_MACH1 / (SDT_MACH1 - x->objectSpeed * cos(w));
  SDTTwoPoles_resonant(x->objectWind, freq, 10.0);
  object = x->objectGain * amp * SDTTwoPoles_dsp(x->objectWind, SDT_whiteNoise());
  groundI = (x->i + x->groundOffset) % x->bufSize;
  windI = (x->i + x->windOffset) % x->bufSize;
  objectI = (x->i + x->objectOffset) % x->bufSize;
  x->buf[groundI] += ground;
  x->buf[windI] += wind;
  x->buf[objectI] += object;
  out = x->buf[x->i];
  x->buf[x->i] = 0.0;
  x->time += SDT_timeStep;
  x->posX -= x->objectSpeed * SDT_timeStep;
  x->i = (x->i + 1) % x->bufSize;
  return out;
}*/