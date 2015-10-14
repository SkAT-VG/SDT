/** \file SDTResonators.c
 * Physically informed models for resonating solid objects. 
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
#include "SDTResonators.h"

#define MAX_POS   10000.0

struct SDTResonator {
  double *pos, *vel, *kPos, *kVel, *currForce, *prevForce, **pickup;
  int activeModes, nModes, nPickups;
  void *state;
  void (*dsp)(struct SDTResonator *x);
};

SDTResonator *SDTResonator_new(unsigned int nModes, unsigned int nPickups) {
  SDTResonator *x;
  int i, j;
  
  x = (SDTResonator *)malloc(sizeof(SDTResonator));
  x->pos = (double *)malloc(nModes * sizeof(double));
  x->vel = (double *)malloc(nModes * sizeof(double));
  x->kPos = (double *)malloc(nModes * sizeof(double));
  x->kVel = (double *)malloc(nModes * sizeof(double));
  x->currForce = (double *)malloc(nModes * sizeof(double));
  x->prevForce = (double *)malloc(nModes * sizeof(double));
  x->pickup = (double **)malloc(nPickups * sizeof(double *));
  for (i = 0; i < nModes; i++) {
    x->pos[i] = 0.0;
    x->vel[i] = 0.0;
    x->kPos[i] = 0.0;
    x->kVel[i] = 0.0;
    x->currForce[i] = 0.0;
    x->prevForce[i] = 0.0;
  }
  for (i = 0; i < nPickups; i++) {
    x->pickup[i] = (double *)malloc(nModes * sizeof(double));
    for (j = 0; j < nModes; j++) {
      x->pickup[i][j] = 1.0;
    }
  }
  x->activeModes = nModes;
  x->nModes = nModes;
  x->nPickups = nPickups;
  x->state = NULL;
  x->dsp = NULL;
  return x;
}

void SDTResonator_free(SDTResonator *x) {
  int i;
  
  free(x->pos);
  free(x->vel);
  free(x->kPos);
  free(x->kVel);
  free(x->currForce);
  free(x->prevForce);
  for (i = 0; i < x->nPickups; i++) {
    free(x->pickup[i]);
  }
  free(x->pickup);
  free(x);
}

double SDTResonator_getPosition(SDTResonator *x, unsigned int p) {
  double out;
  int i;
  
  out = 0.0;
  if (p < x->nPickups) { 
    for (i = 0; i < x->activeModes; i++) {
      out += x->pos[i] * x->pickup[p][i];
    }
  }
  if (fabs(out) > MAX_POS) {
    out = SDT_fclip(out, -MAX_POS, MAX_POS);
    for (i = 0; i < x->activeModes; i++) {
      x->vel[i] = 0.0;
      x->currForce[i] = 0.0;
      x->prevForce[i] = 0.0;
    }
  }
  return out;
}

double SDTResonator_getVelocity(SDTResonator *x, unsigned int p) {
  double out;
  int i;
  
  out = 0.0;
  if (p < x->nPickups) { 
    for (i = 0; i < x->activeModes; i++) {
      out += x->vel[i] * x->pickup[p][i];
    }
  }
  return out;
}

double SDTResonator_getKPosition(SDTResonator *x, unsigned int p) {
  double out;
  int i;
  
  out = 0.0;
  for (i = 0; i < x->activeModes; i++) {
    out += x->kPos[i] * x->pickup[p][i];
  }
  return out;
}

double SDTResonator_getKVelocity(SDTResonator *x, unsigned int p) {
  double out;
  int i;
  
  out = 0.0;
  for (i = 0; i < x->activeModes; i++) {
    out += x->kVel[i] * x->pickup[p][i];
  }
  return out;
}

extern double SDTResonator_getNPickups(SDTResonator *x) {
  return x->nPickups;
}

void SDTResonator_setPickupMask(SDTResonator *x, unsigned int p, unsigned int m, double f) {
  if (m < x->nModes && p < x->nPickups) {
    x->pickup[p][m] = SDT_fclip(f, -1.0, 1.0);
  }
}

void SDTResonator_setActiveModes(SDTResonator *x, int i) {
  x->activeModes = SDT_clip(i, 0, x->nModes);
}

void SDTResonator_applyForce(SDTResonator *x, unsigned int p, double f) {
  int i;
  
  if (p < x->nPickups && isnormal(f)) {
    for (i = 0; i < x->activeModes; i++) {
      x->currForce[i] += f * x->pickup[p][i];
    }
  }
}

void SDTResonator_dsp(SDTResonator *x) {
  x->dsp(x);
}

//-------------------------------------------------------------------------------------//

struct SDTInertialMass {
  double mass, fragmentSize;
};

void SDTInertialMass_dsp(SDTResonator *x);

SDTResonator *SDTInertialMass_new() {
  SDTResonator *x;
  SDTInertialMass *s;
  
  x = SDTResonator_new(1, 1);
  s = (SDTInertialMass *)malloc(sizeof(SDTInertialMass));
  s->mass = 1.0;
  s->fragmentSize = 1.0;
  x->state = s;
  x->dsp = &SDTInertialMass_dsp;
  SDTResonator_setPickupMask(x, 0, 0, 1.0);
  return x;
}

void SDTInertialMass_free(SDTResonator *x) {
  free(x->state);
  SDTResonator_free(x);
}

void SDTInertialMass_setMass(SDTResonator *x, double f) {
  SDTInertialMass *s;
  
  s = (SDTInertialMass *)x->state;
  s->mass = fmax(0.0, f);
}

void SDTInertialMass_setFragmentSize(SDTResonator *x, double f) {
  SDTInertialMass *s;
  
  s = (SDTInertialMass *)x->state;
  s->fragmentSize = SDT_fclip(f, 0.0, 1.0);
}

void SDTInertialMass_setPosition(SDTResonator *x, double f) {
  x->pos[0] = f;
}

void SDTInertialMass_setVelocity(SDTResonator *x, double f) {
  x->vel[0] = f;
}

void SDTInertialMass_update(SDTResonator *x) {
  SDTInertialMass *s;
  double mass;
  
  s = (SDTInertialMass *)x->state;
  mass = s->mass * s->fragmentSize;
  x->kPos[0] = fmax(0.0, 0.25 * SDT_timeStep * SDT_timeStep / mass);
  x->kVel[0] = fmax(0.0, 0.5 * SDT_timeStep / mass);
}

void SDTInertialMass_dsp(SDTResonator *x) {
  double f;
  
  f = x->currForce[0] + x->prevForce[0];
  x->pos[0] += x->vel[0] * SDT_timeStep + x->kPos[0] * f;
  x->vel[0] += x->kVel[0] * f;
  x->prevForce[0] = x->currForce[0];
  x->currForce[0] = 0.0;
}

//-------------------------------------------------------------------------------------//

struct SDTModalResonator {
  double *freqs, *decays, *weights, fragmentSize,
         *a00, *a01, *a10, *a11;
};

void SDTModalResonator_dsp(SDTResonator *x);

SDTResonator *SDTModalResonator_new(unsigned int nModes, unsigned int nPickups) {
  SDTResonator *x;
  SDTModalResonator *s;
  int i;
  
  x = SDTResonator_new(nModes, nPickups);
  s = (SDTModalResonator *)malloc(sizeof(SDTModalResonator));
  s->a00 = (double *)malloc(nModes * sizeof(double));
  s->a01 = (double *)malloc(nModes * sizeof(double));
  s->a10 = (double *)malloc(nModes * sizeof(double));
  s->a11 = (double *)malloc(nModes * sizeof(double));
  s->freqs = (double *)malloc(nModes * sizeof(double));
  s->decays = (double *)malloc(nModes * sizeof(double));
  s->weights = (double *)malloc(nModes * sizeof(double));
  for (i = 0; i < nModes; i++) {
    s->freqs[i] = 0.0;
    s->decays[i] = 0.0;
    s->weights[i] = 0.0;
    s->a00[i] = 0.0;
    s->a01[i] = 0.0;
    s->a10[i] = 0.0;
    s->a11[i] = 0.0;
  }
  x->state = s;
  x->dsp = &SDTModalResonator_dsp;
  return x;
}

void SDTModalResonator_free(SDTResonator *x) {
  SDTModalResonator *s;
  
  s = (SDTModalResonator *)x->state;
  free(s->freqs);
  free(s->decays);
  free(s->weights);
  free(s->a00);
  free(s->a01);
  free(s->a10);
  free(s->a11);
  free(x->state);
  SDTResonator_free(x); 
}

void SDTModalResonator_setFrequency(SDTResonator *x, unsigned int i, double f) {
  if (i < x->nModes) {
    ((SDTModalResonator *)x->state)->freqs[i] = SDT_fclip(f, 0.0, 0.5 * SDT_sampleRate);
  }
}

void SDTModalResonator_setDecay(SDTResonator *x, unsigned int i, double f) {
  if (i < x->nModes) {
    ((SDTModalResonator *)x->state)->decays[i] = fmax(0.0, f);
  }
}

void SDTModalResonator_setWeight(SDTResonator *x, unsigned int i, double f) {
  if (i < x->nModes) {
    ((SDTModalResonator *)x->state)->weights[i] = fmax(0.0, f);
  }
}

void SDTModalResonator_setFragmentSize(SDTResonator *x, double f) {
  SDTModalResonator *s;
  
  s = (SDTModalResonator *)x->state;
  s->fragmentSize = SDT_fclip(f, 0.0, 1.0);
}

void SDTModalResonator_update(SDTResonator *x, unsigned int i) {
  SDTModalResonator *s;
  double freq, decay, weight, ss, w, ww, d;
  
  if (i < x->nModes) {
    s = (SDTModalResonator *)x->state;
    freq = s->freqs[i] / s->fragmentSize;
    decay = s->decays[i] * s->fragmentSize;
    weight = s->weights[i] / s->fragmentSize;
    ss = SDT_sampleRate * SDT_sampleRate;
    w = SDT_TWOPI * (SDT_sampleRate / SDT_PI * tan(freq * SDT_PI / SDT_sampleRate));
    ww = w * w;
    d = ss + SDT_sampleRate / decay + 0.25 * ww;
    x->kPos[i] = 0.25 * weight / d;
    x->kVel[i] = x->kPos[i] * 2.0 * SDT_sampleRate;
    s->a00[i] = 1.0 - 0.5 * ww / d;
    s->a01[i] = SDT_sampleRate / d;
    s->a10[i] = -SDT_sampleRate * ww / d;
    s->a11[i] = 2.0 * ss / d - 1.0;
  }
}

void SDTModalResonator_dsp(SDTResonator *x) {
  SDTModalResonator *s;
  double p, v, f;
  int i;
  
  s = (SDTModalResonator *)x->state;
  for (i = 0; i < x->activeModes; i++) {
    f = x->currForce[i] + x->prevForce[i];
    p = s->a00[i] * x->pos[i] + s->a01[i] * x->vel[i] + x->kPos[i] * f;
    v = s->a10[i] * x->pos[i] + s->a11[i] * x->vel[i] + x->kVel[i] * f;
    x->pos[i] = p;
    x->vel[i] = v;
    x->prevForce[i] = x->currForce[i];
    x->currForce[i] = 0.0;
  }
}
