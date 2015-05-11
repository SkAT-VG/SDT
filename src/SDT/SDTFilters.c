/** \file SDTFilters.c
 * Useful DSP routines and algorithms for signal filtering.
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

struct SDTOnePole {
  double b0, a1, y1;
};

SDTOnePole *SDTOnePole_new() {
  SDTOnePole *x;
  
  x = (SDTOnePole *)malloc(sizeof(SDTOnePole));
  x->b0 = 1.0;
  x->a1 = 0.0;
  x->y1 = 0.0;
  return x;
}

void SDTOnePole_free(SDTOnePole *x) {
  free(x);
}

void SDTOnePole_setFeedback(SDTOnePole *x, double f) {
  x->a1 = SDT_fclip(f, -1.0, 1.0);
  x->b0 = 1.0 - fabs(x->a1);
}

void SDTOnePole_lowpass(SDTOnePole *x, double f) {
  double w;
  
  w = SDT_fclip(f * SDT_timeStep, 0.0, 0.5);
  x->a1 = -exp(-SDT_TWOPI * w);
  x->b0 = 1.0 + x->a1;
}

void SDTOnePole_highpass(SDTOnePole *x, double f) {
  double w;
  
  w = SDT_fclip(f * SDT_timeStep, 0.0, 0.5);
  x->a1 = exp(-SDT_TWOPI * (0.5 - w));
  x->b0 = 1.0 - x->a1;
}

double SDTOnePole_dsp(SDTOnePole *x, double in) {
  x->y1 = x->b0 * in - x->a1 * x->y1;
  return x->y1;
}

//-------------------------------------------------------------------------------------//

struct SDTAllPass {
  double a, x1, y1;
};

SDTAllPass *SDTAllPass_new() {
  SDTAllPass *x;
  
  x = (SDTAllPass *)malloc(sizeof(SDTAllPass));
  x->a = 0.0;
  x->x1 = 0.0;
  x->y1 = 0.0;
  return x;
}

void SDTAllPass_free(SDTAllPass *x) {
  free(x);
}

void SDTAllPass_setFeedback(SDTAllPass *x, double f) {
  x->a = SDT_fclip(f, -1.0, 1.0);
}

double SDTAllPass_dsp(SDTAllPass *x, double in) {
  x->y1 = x->a * in + x->x1 - x->a * x->y1;
  x->x1 = in;
  return x->y1;
}

//-------------------------------------------------------------------------------------//

struct SDTEnvelope {
  double b0a, a1a, b0r, a1r, y1;
};

SDTEnvelope *SDTEnvelope_new() {
  SDTEnvelope *x;
  
  x = (SDTEnvelope *)malloc(sizeof(SDTEnvelope));
  x->b0a = 1.0;
  x->a1a = 0.0;
  x->b0r = 1.0;
  x->a1r = 0.0;
  x->y1 = 0.0;
  return x;
}

void SDTEnvelope_free(SDTEnvelope *x) {
  free(x);
}

void SDTEnvelope_setAttack(SDTEnvelope *x, double a) {
  double w;
  
  w = SDT_fclip(SDT_timeStep / a, 0.0, 0.5);
  x->a1a = -exp(-SDT_TWOPI * w);
  x->b0a = 1.0 + x->a1a;
}

void SDTEnvelope_setRelease(SDTEnvelope *x, double r) {
  double w;
  
  w = SDT_TWOPI * SDT_fclip(SDT_timeStep / r, 0.0, 0.5);
  x->a1r = -exp(-SDT_TWOPI * w);
  x->b0r = 1.0 + x->a1r;
}

double SDTEnvelope_dsp(SDTEnvelope *x, double in) {
  double x0;
  
  x0 = fabs(in);
  if (x0 > x->y1) x->y1 = x->b0a * x0 - x->a1a * x->y1;
  else x->y1 = x->b0r * x0 - x->a1r * x->y1;
  return x->y1;
};

//-------------------------------------------------------------------------------------//

struct SDTTwoPoles {
  double b0, a1, a2, y1, y2;
};

SDTTwoPoles *SDTTwoPoles_new() {
  SDTTwoPoles *x;
  
  x = (SDTTwoPoles *)malloc(sizeof(SDTTwoPoles));
  x->b0 = 1.0;
  x->a1 = 0.0;
  x->a2 = 0.0;
  x->y1 = 0.0;
  x->y2 = 0.0;
  return x;
}

void SDTTwoPoles_free(SDTTwoPoles *x) {
  free(x);
}

void SDTTwoPoles_lowpass(SDTTwoPoles *x, double fc) {
  double w, gain;
  
  w = SDT_fclip(fc * SDT_timeStep, 0.0, 0.5);
  x->a2 = -exp(-SDT_TWOPI * w);
  gain = 1.0 + x->a2;
  x->a1 = x->a2 * gain;
  x->b0 = gain * gain;
}

void SDTTwoPoles_highpass(SDTTwoPoles *x, double fc) {
  double w, gain;
  
  w = SDT_TWOPI * SDT_fclip(fc * SDT_timeStep, 0.0, 0.5);
  x->a2 = exp(-SDT_TWOPI * (0.5 - w));
  gain = 1.0 - x->a2;
  x->a1 = x->a2 * gain;
  x->b0 = gain * gain;
}

void SDTTwoPoles_resonant(SDTTwoPoles *x, double fc, double q) {
  double w, r;
  
  w = SDT_fclip(fc * SDT_timeStep, 0.0, 0.5);
  r = 1.0 - 0.5 / fmax(0.5, q);
  x->a1 = -2.0 * r * cos(SDT_TWOPI * w);
  x->a2 = r * r;
  x->b0 = (1.0 - r) * sqrt(1.0 - 2 * r * cos(2 * SDT_TWOPI * w) + r * r);
}

double SDTTwoPoles_dsp(SDTTwoPoles *x, double in) {
  double tmp;
  
  tmp = x->y1;
  x->y1 = x->b0 * in - x->a1 * x->y1 - x->a2 * x->y2;
  x->y2 = tmp;
  return x->y1;
}

//-------------------------------------------------------------------------------------//

struct SDTAverage {
  double *buf, sum;
  long size, curr;
};

SDTAverage *SDTAverage_new(long size) {
  SDTAverage *x;
  long i;

  if (size < 1) size = 1;
  x = (SDTAverage *)malloc(sizeof(SDTAverage));
  x->buf = (double *)malloc(size * sizeof(double));
  for (i = 0; i < size; i++) {
    x->buf[i] = 0.0;
  }
  x->sum = 0.0;
  x->size = size;
  x->curr = 0;
  return x;
}

void SDTAverage_free(SDTAverage *x) {
  free(x->buf);
  free(x);
}

double SDTAverage_dsp(SDTAverage *x, double in) {
  x->sum -= x->buf[x->curr];
  x->buf[x->curr] = in;
  x->sum += x->buf[x->curr];
  x->curr = (x->curr + 1) % x->size;
  return x->sum / x->size;
}

//-------------------------------------------------------------------------------------//

struct SDTDelay {
  double *buf;
  long size, curr, delay;
};

SDTDelay *SDTDelay_new(long maxDelay) {
  SDTDelay *x;
  long i;

  if (maxDelay < 1) maxDelay = 1;
  x = (SDTDelay *)malloc(sizeof(SDTDelay));
  x->buf = (double *)malloc(maxDelay * sizeof(double));
  for (i = 0; i < maxDelay; i++) {
    x->buf[i] = 0.0;
  }
  x->size = maxDelay;
  x->curr = 0;
  x->delay = 0;
  return x;
}

void SDTDelay_free(SDTDelay *x) {
  free(x->buf);
  free(x);
}

void SDTDelay_clear(SDTDelay *x) {
  long i;
  
  for (i = 0; i < x->size; i++) {
    x->buf[i] = 0.0;
  }
  x->curr = 0;
}

void SDTDelay_setDelay(SDTDelay *x, long l) {
  x->delay = SDT_clip(l, 0, x->size);
}

double SDTDelay_dsp(SDTDelay *x, double in) {
  double out;
  long i;

  x->buf[x->curr] = in;
  i = (x->size + x->curr - x->delay) % x->size;
  out = x->buf[i];
  x->curr = (x->curr + 1) % x->size;
  return out;
}

//-------------------------------------------------------------------------------------//

struct SDTVDelay {
  SDTAllPass *ap[2];
  double *buf, delay;
  long size, head, read[2];
  int i, j, count;
};

SDTVDelay *SDTVDelay_new(long maxDelay) {
  SDTVDelay *x;
  long i;

  if (maxDelay < 1) maxDelay = 1;
  x = (SDTVDelay *)malloc(sizeof(SDTVDelay));
  x->ap[0] = SDTAllPass_new();
  x->ap[1] = SDTAllPass_new();
  x->buf = (double *)malloc(maxDelay * sizeof(double));
  for (i = 0; i < maxDelay; i++) {
    x->buf[i] = 0.0;
  }
  x->delay = 0;
  x->size = maxDelay;
  x->head = 0;
  x->read[0] = 0;
  x->read[1] = 0;
  x->count = 0;
  x->i = 0;
  x->j = 1;
  return x;
}

void SDTVDelay_free(SDTVDelay *x) {
  SDTAllPass_free(x->ap[0]);
  SDTAllPass_free(x->ap[1]);
  free(x->buf);
  free(x);
}

void SDTVDelay_clear(SDTVDelay *x) {
  long i;
  
  for (i = 0; i < x->size; i++) {
    x->buf[i] = 0.0;
  }
  x->head = 0;
  x->read[0] = 0;
  x->read[1] = 0;
}

void SDTVDelay_setDelay(SDTVDelay *x, double f) {
  x->delay = SDT_fclip(f, 0.618, x->size);
}

double SDTVDelay_dsp(SDTVDelay *x, double in) {
  double d, a, yi, yj, gi, gj, out;
  long intDelay;
  
  if (x->count == 0) {
    x->i ^= 1;
    x->j ^= 1;
    intDelay = floor(x->delay - 0.618);
    d = x->delay - intDelay;
    a = (1.0 - d) / (1.0 + d);
    x->read[x->i] = (x->size + x->head - intDelay) % x->size;
    SDTAllPass_setFeedback(x->ap[x->i], a);
  }
  x->buf[x->head] = in;
  yi = SDTAllPass_dsp(x->ap[x->i], x->buf[x->read[x->i]]);
  yj = SDTAllPass_dsp(x->ap[x->j], x->buf[x->read[x->j]]);
  gi = 0.1 * SDT_clip(x->count - 5, 0, 10);
  gj = 1.0 - gi;
  out = gi * yi + gj * yj;
  x->head = (x->head + 1) % x->size;
  x->read[x->i] = (x->read[x->i] + 1) % x->size;
  x->read[x->j] = (x->read[x->j] + 1) % x->size;
  x->count = (x->count + 1) & 0xF;
  return out;
}

//-------------------------------------------------------------------------------------//

struct SDTComb {
  SDTDelay *xDelay, *yDelay;
  double xGain, yGain, out;
};

SDTComb *SDTComb_new(long maxXDelay, long maxYDelay) {
  SDTComb *x;
  
  x = (SDTComb *)malloc(sizeof(SDTComb));
  x->xDelay = SDTDelay_new(maxXDelay);
  x->yDelay = SDTDelay_new(maxYDelay);
  x->xGain = 0.0;
  x->yGain = 0.0;
  x->out = 0.0;
  return x;
}

void SDTComb_free(SDTComb *x) {
  SDTDelay_free(x->xDelay);
  SDTDelay_free(x->yDelay);
  free(x);
}

void SDTComb_setXDelay(SDTComb *x, long l) {
  SDTDelay_setDelay(x->xDelay, l);
}

void SDTComb_setYDelay(SDTComb *x, long l) {
  SDTDelay_setDelay(x->yDelay, l);
}

void SDTComb_setXYDelay(SDTComb *x, long l) {
  SDTDelay_setDelay(x->xDelay, l);
  SDTDelay_setDelay(x->yDelay, l);
}

void SDTComb_setXGain(SDTComb *x, double f) {
  x->xGain = SDT_fclip(f, -1.0, 1.0);
}

void SDTComb_setYGain(SDTComb *x, double f) {
  x->yGain = SDT_fclip(f, -1.0, 1.0);
}

void SDTComb_setXYGain(SDTComb *x, double f) {
  x->xGain = SDT_fclip(f, -1.0, 1.0);
  x->yGain = SDT_fclip(f, -1.0, 1.0);
}

double SDTComb_dsp(SDTComb *x, double in) {
  double xOut, yOut;
  
  xOut = SDTDelay_dsp(x->xDelay, in);
  yOut = SDTDelay_dsp(x->yDelay, x->out);
  x->out = in + x->xGain * xOut + x->yGain * yOut;
  return x->out;
}

//-------------------------------------------------------------------------------------//

struct SDTWaveguide {
  SDTDelay *fwdDelay, *revDelay;
  double fwdFeedGain, revFeedGain, fwdThruGain, revThruGain,
         fwdIn, fwdFeed, fwdThru, revIn, revFeed, revThru;
};

SDTWaveguide *SDTWaveguide_new(int maxDelay) {
  SDTWaveguide *x;

  x = (SDTWaveguide *)malloc(sizeof(SDTWaveguide));
  x->fwdDelay = SDTDelay_new(maxDelay);
  x->revDelay = SDTDelay_new(maxDelay);
  x->fwdFeedGain = 0.0;
  x->revFeedGain = 0.0;
  x->fwdThruGain = 1.0;
  x->revThruGain = 1.0;
  x->fwdIn = 0.0;
  x->fwdFeed = 0.0;
  x->fwdThru = 0.0;
  x->revIn = 0.0;
  x->revFeed = 0.0;
  x->revThru = 0.0;
  return x;
}

void SDTWaveguide_free(SDTWaveguide *x) {
  SDTDelay_free(x->fwdDelay);
  SDTDelay_free(x->revDelay);
  free(x);
}

double SDTWaveguide_getFwdOut(SDTWaveguide *x) {
  return x->fwdThru;
}

double SDTWaveguide_getRevOut(SDTWaveguide *x) {
  return x->revThru;
}

void SDTWaveguide_setDelay(SDTWaveguide *x, long l) {
  SDTDelay_setDelay(x->fwdDelay, l);
  SDTDelay_setDelay(x->revDelay, l);
}

void SDTWaveguide_setFwdFeedback(SDTWaveguide *x, double f) {
  x->fwdFeedGain = SDT_fclip(f, -1.0, 1.0);
  x->fwdThruGain = 1.0 - fabs(x->fwdFeedGain);
}

void SDTWaveguide_setRevFeedback(SDTWaveguide *x, double f) {
  x->revFeedGain = SDT_fclip(f, -1.0, 1.0);
  x->revThruGain = 1.0 - fabs(x->revFeedGain);
}

void SDTWaveguide_dsp(SDTWaveguide *x, double fwdIn, double revIn) {
  x->fwdIn = fwdIn + x->revFeedGain * x->revFeed;
  x->revIn = revIn + x->fwdFeedGain * x->fwdFeed;
  x->fwdFeed = SDTDelay_dsp(x->fwdDelay, x->fwdIn);
  x->revFeed = SDTDelay_dsp(x->revDelay, x->revIn);
  x->fwdThru = x->fwdThruGain * x->fwdFeed;
  x->revThru = x->revThruGain * x->revFeed;
}