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
  double *ps, *vs, *kPs, *kVs, *fs[2], *ms;
  int activeModes, nModes, nPickups;
  void *state;
  void (*dsp)(struct SDTResonator *x);
};

SDTResonator *SDTResonator_new(unsigned int nModes, unsigned int nPickups) {
  SDTResonator *x;
  int i, j;
  
  x = (SDTResonator *)malloc(sizeof(SDTResonator));
  x->ps = (double *)malloc(nModes * sizeof(double));
  x->vs = (double *)malloc(nModes * sizeof(double));
  x->kPs = (double *)malloc(nModes * sizeof(double));
  x->kVs = (double *)malloc(nModes * sizeof(double));
  x->fs[0] = (double *)malloc(nModes * sizeof(double));
  x->fs[1] = (double *)malloc(nModes * sizeof(double));
  x->ms = (double *)malloc(nPickups * nModes * sizeof(double));
  for (i = 0; i < nModes; i++) {
    x->ps[i] = 0.0;
    x->vs[i] = 0.0;
    x->kPs[i] = 0.0;
    x->kVs[i] = 0.0;
    x->fs[0][i] = 0.0;
    x->fs[1][i] = 0.0;
    for (j = 0; j < nPickups; j++) {
      x->ms[j*nModes+i] = 0.0;
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
  free(x->ps);
  free(x->vs);
  free(x->kPs);
  free(x->kVs);
  free(x->fs[0]);
  free(x->fs[1]);
  free(x->ms);
  free(x);
}

double SDTResonator_getPosition(SDTResonator *x, unsigned int p) {
  double out;
  int i;
  
  out = 0.0;
  if (p < x->nPickups) { 
    for (i = 0; i < x->activeModes; i++) {
      out += x->ps[i] * x->ms[p*x->nModes+i];
    }
  }
  if (fabs(out) > MAX_POS) {
    out = SDT_fclip(out, -MAX_POS, MAX_POS);
    for (i = 0; i < x->activeModes; i++) {
      x->vs[i] = 0.0;
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
      out += x->vs[i] * x->ms[p*x->nModes+i];
    }
  }
  return out;
}

double SDTResonator_getKPosition(SDTResonator *x, unsigned int p) {
  double out;
  int i;
  
  out = 0.0;
  for (i = 0; i < x->activeModes; i++) {
    out += x->kPs[i] * x->ms[p*x->nModes+i];
  }
  return out;
}

double SDTResonator_getKVelocity(SDTResonator *x, unsigned int p) {
  double out;
  int i;
  
  out = 0.0;
  for (i = 0; i < x->activeModes; i++) {
    out += x->kVs[i] * x->ms[p*x->nModes+i];
  }
  return out;
}

extern double SDTResonator_getNPickups(SDTResonator *x) {
  return x->nPickups;
}

void SDTResonator_setPickupMask(SDTResonator *x, unsigned int p, unsigned int m, double f) {
  if (m < x->nModes && p < x->nPickups) {
    x->ms[p*x->nModes+m] = SDT_fclip(f, -1.0, 1.0);
  }
}

void SDTResonator_setActiveModes(SDTResonator *x, int i) {
  x->activeModes = SDT_clip(i, 0, x->nModes);
}

void SDTResonator_applyForce(SDTResonator *x, unsigned int p, double f) {
  int i;
  
  if (p < x->nPickups && isnormal(f)) {
    for (i = 0; i < x->activeModes; i++) {
      x->fs[0][i] += f * x->ms[p*x->nModes+i];
    }
  }
}

void SDTResonator_dsp(SDTResonator *x) {
  x->dsp(x);
}

//-------------------------------------------------------------------------------------//

struct SDTInertialMass {
  double mass;
};

void SDTInertialMass_dsp(SDTResonator *x);

SDTResonator *SDTInertialMass_new() {
  SDTResonator *x;
  SDTInertialMass *s;
  
  x = SDTResonator_new(1, 1);
  s = (SDTInertialMass *)malloc(sizeof(SDTInertialMass));
  s->mass = 0.0;
  x->ms[0] = 1.0;
  x->state = s;
  x->dsp = &SDTInertialMass_dsp;
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
  x->kPs[0] = 0.25 * SDT_timeStep * SDT_timeStep / s->mass;
  x->kVs[0] = 0.5 * SDT_timeStep / s->mass;
}

void SDTInertialMass_setPosition(SDTResonator *x, double f) {
  x->ps[0] = f;
}

void SDTInertialMass_setVelocity(SDTResonator *x, double f) {
  x->vs[0] = f;
}

void SDTInertialMass_dsp(SDTResonator *x) {
  double f;
  
  f = x->fs[0][0] + x->fs[1][0];
  x->ps[0] += x->vs[0] * SDT_timeStep + x->kPs[0] * f;
  x->vs[0] += x->kVs[0] * f;
  x->fs[1][0] = x->fs[0][0];
  x->fs[0][0] = 0.0;
}

//-------------------------------------------------------------------------------------//

struct SDTModalResonator {
  double *weights, *freqs, *decays,
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
  s->weights = (double *)malloc(nModes * sizeof(double));
  s->freqs = (double *)malloc(nModes * sizeof(double));
  s->decays = (double *)malloc(nModes * sizeof(double));
  for (i = 0; i < nModes; i++) {
    s->weights[i] = 0.0;
    s->freqs[i] = 0.0;
    s->decays[i] = 0.0;
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
  free(s->weights);
  free(s->freqs);
  free(s->decays);
  free(s->a00);
  free(s->a01);
  free(s->a10);
  free(s->a11);
  free(x->state);
  SDTResonator_free(x); 
}

void SDTModalResonator_setWeight(SDTResonator *x, unsigned int i, double f) {
  if (i < x->nModes) {
    ((SDTModalResonator *)x->state)->weights[i] = fmax(0.0, f);
  }
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

void SDTModalResonator_update(SDTResonator *x, unsigned int i) {
  SDTModalResonator *s;
  double ss, w, ww, d;
  
  if (i < x->nModes) {
    s = (SDTModalResonator *)x->state;
    ss = SDT_sampleRate * SDT_sampleRate;
    w = SDT_TWOPI * s->freqs[i];
    ww = w * w;
    d = ss + SDT_sampleRate / s->decays[i] + 0.25 * ww;
    x->kPs[i] = 0.25 * s->weights[i] / d;
    x->kVs[i] = x->kPs[i] * 2.0 * SDT_sampleRate;
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
    f = x->fs[0][i] + x->fs[1][i];
    p = s->a00[i] * x->ps[i] + s->a01[i] * x->vs[i] + x->kPs[i] * f;
    v = s->a10[i] * x->ps[i] + s->a11[i] * x->vs[i] + x->kVs[i] * f;
    x->ps[i] = p;
    x->vs[i] = v;
    x->fs[1][i] = x->fs[0][i];
    x->fs[0][i] = 0.0;
  }
}
