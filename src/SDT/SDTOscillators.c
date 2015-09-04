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
