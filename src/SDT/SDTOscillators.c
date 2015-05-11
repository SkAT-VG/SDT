/** \file SDTOscillators.c
 * Useful oscillators and signal generators. 
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
#include <time.h>
#include "SDTCommon.h"
#include "SDTOscillators.h"

#define LCG_MULT    1664525
#define LCG_ADD  1013904223

unsigned int seed = 42;

//-------------------------------------------------------------------------------------//

struct SDTLumpedMass {
  double freq, decay, weight,
         pos, vel, force,
         maxPos, minPos,
         a00, a01, a10, a11,
         b0, b1;
};

SDTLumpedMass *SDTLumpedMass_new() {
  SDTLumpedMass *x;
  
  x = (SDTLumpedMass *)malloc(sizeof(SDTLumpedMass));
  x->freq = 0.0;
  x->decay = 0.000001;
  x->weight = 0.000001;
  x->pos = 0.0;
  x->vel = 0.0;
  x->force = 0.0;
  x->maxPos = 1000.0;
  x->minPos = -1000.0;
  x->a00 = 0.0;
  x->a01 = 0.0;
  x->a10 = 0.0;
  x->a11 = 0.0;
  x->b0 = 0.0;
  x->b1 = 0.0;
  return x;
}

void SDTLumpedMass_free(SDTLumpedMass *x) {
  free(x);
}

void SDTLumpedMass_update(SDTLumpedMass *x) {
  double ss, w, ww, d;
  
  ss = SDT_sampleRate * SDT_sampleRate;
  w = SDT_TWOPI * x->freq;
  ww = w * w;
  d = ss + SDT_sampleRate / x->decay + 0.25 * ww;
  x->a00 = 1.0 - 0.5 * ww / d;
  x->a01 = SDT_sampleRate / d;
  x->a10 = -SDT_sampleRate * ww / d;
  x->a11 = 2.0 * ss / d - 1.0;
  x->b0 = 0.25 * x->weight / d;
  x->b1 = x->b0 * 2.0 * SDT_sampleRate;
}

double SDTLumpedMass_getDisplacement(SDTLumpedMass *x) {
  return x->pos;
}

double SDTLumpedMass_getVelocity(SDTLumpedMass *x) {
  return x->vel;
}

void SDTLumpedMass_setState(SDTLumpedMass *x, double p, double v, double f) {
  x->pos = p;
  x->vel = v;
  x->force = f;
}

void SDTLumpedMass_setMaxPos(SDTLumpedMass *x, double f) {
  x->maxPos = f;
}

void SDTLumpedMass_setMinPos(SDTLumpedMass *x, double f) {
  x->minPos = f;
}

void SDTLumpedMass_setFrequency(SDTLumpedMass *x, double f) {
  x->freq = SDT_fclip(f, 0.0, 0.5 * SDT_sampleRate);
  SDTLumpedMass_update(x);
}

void SDTLumpedMass_setDecay(SDTLumpedMass *x, double f) {
  x->decay = fmax(0.000001, f);
  SDTLumpedMass_update(x);
}

void SDTLumpedMass_setWeight(SDTLumpedMass *x, double f) {
  x->weight = fmax(0.0, f);
  SDTLumpedMass_update(x);
}

void SDTLumpedMass_dsp(SDTLumpedMass *x, double f) {
  double pos, vel, force;
  
  force = f + x->force;
  pos = x->a00 * x->pos + x->a01 * x->vel + x->b0 * force;
  vel = x->a10 * x->pos + x->a11 * x->vel + x->b1 * force;
  x->pos = pos;
  x->vel = vel;
  x->force = f;
  if (x->pos > x->maxPos || x->pos < x->minPos) {
    x->pos = SDT_fclip(x->pos, x->minPos, x->maxPos);
    x->vel = 0.0;
    x->force = 0.0;
  }
}

//-------------------------------------------------------------------------------------//

struct SDTPinkNoise {
  double *octaves;
  int *steps, *offsets, n, count;
};

SDTPinkNoise *SDTPinkNoise_new(int nOctaves) {
  SDTPinkNoise *x;
  int i;

  x = (SDTPinkNoise *)malloc(sizeof(SDTPinkNoise));
  x->octaves = (double *)calloc(nOctaves, sizeof(double));
  x->steps = (int *)calloc(nOctaves, sizeof(int));
  x->offsets = (int *)calloc(nOctaves, sizeof(int));
  x->n = nOctaves;
  x->count = 0;
  for (i = 0; i < x->n; i++) {
    x->steps[i] = exp2(i);
    x->offsets[i] = x->steps[i] >> 1;
  }
  return x;
}

void SDTPinkNoise_free(SDTPinkNoise *x) {
  free(x->offsets);
  free(x->steps);
  free(x->octaves);
  free(x);
}

double SDTPinkNoise_dsp(SDTPinkNoise *x) {
  double result;
  int i;
  
  result = 0;
  for (i = 0; i < x->n; i++) {
    if ((x->count + x->offsets[i]) % x->steps[i] == 0) {
      x->octaves[i] = SDT_whiteNoise();
    }
    result += x->octaves[i];
  }
  result /= (double)x->n;
  x->count = (x->count + 1) % x->steps[x->n-1];
  return result;
}

//-------------------------------------------------------------------------------------//

double SDT_whiteNoise() {
  seed = seed * LCG_MULT + LCG_ADD;
  return (double)seed / (double)0x7FFFFFFF - 1.0;
}