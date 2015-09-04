/** \file SDTCommon.c
 * Useful shared SDT-related stuff,
 * E.g. SDT version number, sample rate, signal clipping etc.
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

double SDT_sampleRate = 0.0;
double SDT_timeStep = 0.0;

void SDT_setSampleRate(double sampleRate) {
  SDT_sampleRate = sampleRate;
  SDT_timeStep = 1.0 / sampleRate;
}

long SDT_clip(long x, long min, long max) {
  if (x < min) x = min;
  else if (x > max) x = max;
  return x;
}

double SDT_fclip(double x, double min, double max) {
  x = fmax(min, x);
  x = fmin(x, max);
  return x;
}

double SDT_frand() {
  return (double)rand() / (double)RAND_MAX;
}

void SDT_hanning(double *sig, int n) {
  int i, j;
  double scale;

  for (i = 0; i < n / 2; i++) {
    j = n - i - 1;
    scale = 0.5 * (1 - cos(SDT_TWOPI * i / (n - 1)));
    sig[i] *= scale;
    sig[j] *= scale;
  }
}

void SDT_haar(double *sig, long n, char verse) {
  double tmp[n];
  long x, i, j, k, l;
  
  memcpy(tmp, sig, n * sizeof(double)); 
  n /= 2;
  for (x = 0; x < n; x++) {
    if (verse == 0) {
      i = x;
      j = i + n;
      k = 2 * x;
      l = k + 1;
    }
    else {
      i = 2 * x;
      j = i + 1;
      k = x;
      l = k + n;
    }
    sig[i] = (tmp[k] + tmp[l]) / SDT_SQRT2;
    sig[j] = (tmp[k] - tmp[l]) / SDT_SQRT2;
  }
}

double SDT_normalize(double x, double min, double max) {
  return (x - min) / (max - min);
}

double SDT_samplesInAir(double length) {
  return fmax(0.0, length) / SDT_MACH1 * SDT_sampleRate;
}

double SDT_scale(double x, double in0, double in1,
                 double out0, double out1, double e) {
  return pow((x - in0) / (in1 - in0), e) * (out1 - out0) + out0;
}

int SDT_signum(double x) {
  int result;
  
  if (x < 0) result = -1;
  else if (x == 0) result = 0;
  else result = 1;
  return result;
}
