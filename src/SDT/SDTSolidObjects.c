/** \file SDTSolidObjects.c
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
#include <stdio.h>
#include <stdlib.h>
#include "SDTCommon.h"
#include "SDTSolidObjects.h"

#define MAX_POS 1000000.0
#define MIN_MASS 0.000001

struct SDTSolidInertial {
  double mass,
         b0, b1,
         p, v, f, g;
};

SDTSolidInertial *SDTSolidInertial_new() {
  SDTSolidInertial *x;
  
  x = (SDTSolidInertial *)malloc(sizeof(SDTSolidInertial));
  x->mass = 0.0;
  x->b0 = 0.0;
  x->b1 = 0.0;
  x->p = 0.0;
  x->v = 0.0;
  x->f = 0.0;
  x->g = 0.0;
  return x;
}

void SDTSolidInertial_free(SDTSolidInertial *x) {
  free(x);
}

void SDTSolidInertial_setMass(SDTSolidInertial *x, double f) {
  x->mass = fmax(MIN_MASS, f);
  x->b0 = 0.25 * SDT_timeStep * SDT_timeStep / x->mass;
  x->b1 = 0.5 * SDT_timeStep / x->mass;
}

void SDTSolidInertial_applyForce(SDTSolidInertial *x, double f) {
  x->f += f;
}

int SDTSolidInertial_dsp(SDTSolidInertial *x) {
  double p, v, f;
  
  f = x->g + x->f;
  p = x->p + x->v * SDT_timeStep + x->b0 * f;
  v = x->v + x->b1 * f;
  x->p = SDT_fclip(p, -MAX_POS, MAX_POS);
  if (x->p != p) {
    x->v = 0.0;
    x->g = 0.0;
    x->f = 0.0;
    return 1;
  }
  x->v = v;
  x->g = x->f;
  x->f = 0.0;
  return 0;
}

void SDTSolidInertial_getState(SDTSolidInertial *x, double *p, double *v, double *f) {
  *p = x->p;
  *v = x->v;
  *f = x->f;
}

void SDTSolidInertial_getKMatrix(SDTSolidInertial *x, double *b0, double *b1) {
  *b0 = x->b0;
  *b1 = x->b1;
}

//-------------------------------------------------------------------------------------//

struct SDTSolidMode {
  double freq, decay, weight,
         a00, a01, a10, a11, b0, b1,
         p, v, f, g;
};

SDTSolidMode *SDTSolidMode_new() {
  SDTSolidMode *x;
  
  x = (SDTSolidMode *)malloc(sizeof(SDTSolidMode));
  x->freq = 0.0;
  x->decay = 0.0;
  x->weight = 0.0;
  x->a00 = 0.0;
  x->a01 = 0.0;
  x->a10 = 0.0;
  x->a11 = 0.0;
  x->b0 = 0.0;
  x->b1 = 0.0;
  x->p = 0.0;
  x->v = 0.0;
  x->f = 0.0;
  x->g = 0.0;
  return x;
}

void SDTSolidMode_free(SDTSolidMode *x) {
  free(x);
}

void SDTSolidMode_update(SDTSolidMode *x) {
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
  x->b1 = 0.5 * SDT_sampleRate * x->weight / d;
}

void SDTSolidMode_setFreq(SDTSolidMode *x, double f) {
  x->freq = fmax(0.0, f);
  SDTSolidMode_update(x);
}

void SDTSolidMode_setDecay(SDTSolidMode *x, double f) {
  x->decay = fmax(0.0, f);
  SDTSolidMode_update(x);
}

void SDTSolidMode_setWeight(SDTSolidMode *x, double f) {
  x->weight = fmax(0.0, f);
  SDTSolidMode_update(x);
}

void SDTSolidMode_applyForce(SDTSolidMode *x, double f) {
  x->f += f;
}

int SDTSolidMode_dsp(SDTSolidMode *x) {
  double p, v, f;
  
  f = x->g + x->f;
  p = x->a00 * x->p + x->a01 * x->v + x->b0 * f;
  v = x->a10 * x->p + x->a11 * x->v + x->b1 * f;
  x->p = SDT_fclip(p, -MAX_POS, MAX_POS);
  if (x->p != p) {
    x->v = 0.0;
    x->g = 0.0;
    x->f = 0.0;
    return 1;
  }
  x->v = v;
  x->g = x->f;
  x->f = 0.0;
  return 0;
}

void SDTSolidMode_getState(SDTSolidMode *x, double *p, double *v, double *f) {
  *p = x->p;
  *v = x->v;
  *f = x->f;
}

void SDTSolidMode_getKMatrix(SDTSolidMode *x, double *b0, double *b1) {
  *b0 = x->b0;
  *b1 = x->b1;
}

//-------------------------------------------------------------------------------------//

struct SDTSolidModal {
  SDTSolidMode **modes;
  double **weights;
  int activeModes, nModes, nPickups;
};

SDTSolidModal *SDTSolidModal_new(int nModes, int nPickups) {
  SDTSolidModal *x;
  int i, j;
  
  x = (SDTSolidModal *)malloc(sizeof(SDTSolidModal));
  x->modes = (SDTSolidMode **)malloc(nModes * sizeof(SDTSolidMode *));
  x->weights = (double **)malloc(nModes * sizeof(double *));
  for (i = 0; i < nModes; i++) {
    x->modes[i] = SDTSolidMode_new();
    x->weights[i] = (double *)malloc(nPickups * sizeof(double));
    for (j = 0; j < nPickups; j++) {
      x->weights[i][j] = 0.0;
    }
  }
  x->activeModes = 0;
  x->nModes = nModes;
  x->nPickups = nPickups;
  return x;
}

void SDTSolidModal_free(SDTSolidModal *x) {
  int i;
  
  for (i = 0; i < x->nModes; i++) {
    SDTSolidMode_free(x->modes[i]);
    free(x->weights[i]);
  }
  free(x->modes);
  free(x->weights);
  free(x);
}

void SDTSolidModal_setFreq(SDTSolidModal *x, unsigned int i, double f) {
  if (i >= x->nModes) return;
  SDTSolidMode_setFreq(x->modes[i], f);
}

void SDTSolidModal_setDecay(SDTSolidModal *x, unsigned int i, double f) {
  if (i >= x->nModes) return;
  SDTSolidMode_setDecay(x->modes[i], f);
}

void SDTSolidModal_setWeight(SDTSolidModal *x, unsigned int i, unsigned int j, double f) {
  if (i >= x->nModes || j >= x->nPickups) return;
  SDTSolidMode_setWeight(x->modes[i], 1.0);
  x->weights[i][j] = fmax(0.0, f);
}

void SDTSolidModal_setActiveModes(SDTSolidModal *x, unsigned int i) {
  x->activeModes = SDT_clip(i, 0, x->nModes);
}

void SDTSolidModal_applyForce(SDTSolidModal *x, unsigned int j, double f) {
  int i;
  
  for (i = 0; i < x->activeModes; i++) {
    SDTSolidMode_applyForce(x->modes[i], f * x->weights[i][j]);
  }
}

int SDTSolidModal_dsp(SDTSolidModal *x) {
  int i, state;
  
  state = 0;
  for (i = 0; i < x->activeModes; i++) {
    state &= SDTSolidMode_dsp(x->modes[i]);
  }
  return state;
}

void SDTSolidModal_getState(SDTSolidModal *x, unsigned int j, double *p, double *v, double *f) {
  int i;
  
  *p = 0.0;
  *v = 0.0;
  *f = 0.0;
  if (j >= x->nPickups) return;
  for (i = 0; i < x->activeModes; i++) {
    *p += x->modes[i]->p * x->weights[i][j];
    *v += x->modes[i]->v * x->weights[i][j];
    *f += x->modes[i]->f * x->weights[i][j];
  }
}

void SDTSolidModal_getKMatrix(SDTSolidModal *x, unsigned int j, double *b0, double *b1) {
  int i;
  
  *b0 = 0.0;
  *b1 = 0.0;
  if (j >= x->nPickups) return;
  for (i = 0; i < x->activeModes; i++) {
    *b0 += x->modes[i]->b0 * x->weights[i][j];
    *b1 += x->modes[i]->b1 * x->weights[i][j];
  }
}