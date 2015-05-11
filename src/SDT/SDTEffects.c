/** \file SDTEffects.c
 * Digital audio effects. 
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
#include <string.h>
#include "SDTCommon.h"
#include "SDTFilters.h"
#include "SDTEffects.h"

struct SDTReverb {
  SDTVDelay *delays[15];
  SDTOnePole *dampings[15];
  double feedbacks[15], outs[15], ratios[15],
         avgDelay, time, time1k;
};

SDTReverb *SDTReverb_new(long maxDelay) {
  SDTReverb *x;
  int i;
  
  x = (SDTReverb *)malloc(sizeof(SDTReverb));
  for (i = 0; i < 15; i++) {
    x->delays[i] = SDTVDelay_new(maxDelay);
    x->dampings[i] = SDTOnePole_new();
    x->feedbacks[i] = 0.0;
    x->outs[i] = 0.0;
    x->ratios[i] = 2 * SDT_frand();
    x->avgDelay = 0.1 * maxDelay;
    x->time = 4.0;
    x->time1k = 3.0;
  }
  return x;
}

void SDTReverb_free(SDTReverb *x) {
  int i;
  
  for (i = 0; i < 15; i++) {
    SDTVDelay_free(x->delays[i]);
    SDTOnePole_free(x->dampings[i]);
  }
  free(x);
}

void SDTReverb_update(SDTReverb *x) {
  double delay, gi, gw, b, a;
  int i;
  
  for (i = 0; i < 15; i++) {
    delay = x->avgDelay * x->ratios[i];
    SDTVDelay_setDelay(x->delays[i], delay);
    gi = pow(10, -3 * delay * SDT_timeStep / x->time);
    gw = pow(10, -6 * delay * SDT_timeStep / x->time1k) / (gi * gi);
    b = (gw * cos(SDT_TWOPI * 1000 * SDT_timeStep) - 1) / (gw - 1);
    a = -b + sqrt(b * b - 1);
    x->feedbacks[i] = gi;
    SDTOnePole_setFeedback(x->dampings[i], a);
  }
}

void SDTReverb_setSize(SDTReverb *x, double f) {
  x->avgDelay = SDT_samplesInAir(f);
}

void SDTReverb_setTime(SDTReverb *x, double f) {
  x->time = fmax(0.000001, f);
  SDTReverb_setTime1k(x, x->time1k);
}

void SDTReverb_setTime1k(SDTReverb *x, double f) {
  x->time1k = SDT_fclip(f, 0.000001, x->time - 0.000001);
}

double SDTReverb_dsp(SDTReverb *x, double in) {
  double a, b, c, d, *s, v[29], out;
  int i;
  
  out = 0.0;
  memcpy(v, x->outs, 15 * sizeof(double));
  memcpy(&v[15], x->outs, 14 * sizeof(double));
  s = &v[0];
  for (i = 0; i < 15; i++) {
    s = &v[i];
    b = s[1] + s[2] + s[3] + s[5] + s[6] + s[9] + s[11];
    c = s[0] + s[4] + s[7] + s[8] + s[10] + s[12] + s[13] + s[14];
    a = 0.25 * (b - c);
    d = SDTVDelay_dsp(x->delays[i], in + x->feedbacks[i] * a);
    x->outs[i] = SDTOnePole_dsp(x->dampings[i], d);
    out += x->outs[i];
  }
  return out / 15.0;
}

//-------------------------------------------------------------------------------------//

struct SDTPitchShift {
  double *buf, *win, ratio, r;
  long size, w;
};

SDTPitchShift *SDTPitchShift_new(long size) {
  SDTPitchShift *x;
  long i;

  size = fmax(3, size + (size % 3));
  x = (SDTPitchShift *)malloc(sizeof(SDTPitchShift));
  x->buf = (double *)malloc(size * sizeof(double));
  x->win = (double *)malloc(size * sizeof(double));
  for (i = 0; i < size; i++) {
    x->buf[i] = 0.0;
    x->win[i] = sin(SDT_TWOPI * i / size);
  }
  x->ratio = 1.0;
  x->r = 0.0;
  x->size = size;
  x->w = 0;
  return x;
}

void SDTPitchShift_free(SDTPitchShift *x) {
  free(x->buf);
  free(x->win);
  free(x);
}

void SDTPitchShift_setRatio(SDTPitchShift *x, double f) {
  while (f < 0) f += x->size;
  x->ratio = f;
}

double SDTPitchShift_dsp(SDTPitchShift *x, double in) {
  double out;
  long r0, r1, r2, d0, d1, d2;

  x->buf[x->w] = in;
  r0 = (long)x->r;
  r1 = (r0 + x->size / 3) % x->size;
  r2 = (r0 + 2 * x->size / 3) % x->size;
  d0 = (x->size + r0 - x->w) % x->size;
  d1 = (x->size + r1 - x->w) % x->size;
  d2 = (x->size + r2 - x->w) % x->size;
  out = (x->win[d0] * x->buf[r0] + x->win[d0]) + 
        (x->win[d1] * x->buf[r1] + x->win[d1]) +
        (x->win[d2] * x->buf[r2] + x->win[d2]);
  x->w = (x->w + 1) % x->size;
  x->r = fmod(x->r + x->ratio, x->size);
  return out;
}