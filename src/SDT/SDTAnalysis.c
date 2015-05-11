/** \file SDTAnalysis.c
 * Routines and algorithms for sound analysis and feature extraction.
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

#include <stdlib.h>
#include <math.h>
#include <fftw3.h>
#include "SDTCommon.h"
#include "SDTAnalysis.h"

struct SDTSpectralFeats {
  double *in, *win, *ampli[2], *white[2], *whitener, alpha,
         brightness, spread, skewness, kurtosis, flatness, flux, onset;
  fftw_complex *fft;
  fftw_plan fftPlan;
  int i, j, size, fftSize, skip, min, max, span;
};

SDTSpectralFeats *SDTSpectralFeats_new(unsigned int size) {
  SDTSpectralFeats *x;
  int i, fftSize;
  
  fftSize = size / 2 + 1;
  x = (SDTSpectralFeats *)malloc(sizeof(SDTSpectralFeats));
  x->in = (double *)malloc(2 * size * sizeof(double));
  x->win = (double *)fftw_malloc(size * sizeof(double));
  x->fft = (fftw_complex *)fftw_malloc(fftSize * sizeof(fftw_complex));
  x->ampli[0] = (double *)malloc(fftSize * sizeof(double));
  x->ampli[1] = (double *)malloc(fftSize * sizeof(double));
  x->white[0] = (double *)malloc(fftSize * sizeof(double));
  x->white[1] = (double *)malloc(fftSize * sizeof(double));
  x->whitener = (double *)malloc(fftSize * sizeof(double));
  for (i = 0; i < size; i++) {
    x->in[i] = 0.0;
    x->in[size + i] = 0.0;
    x->win[i] = 0.0;
  }
  for (i = 0; i <= fftSize; i++) {
    x->fft[i][0] = 0.0;
    x->fft[i][1] = 0.0;
    x->ampli[0][i] = 0.0;
    x->ampli[1][i] = 0.0;
    x->white[0][i] = 0.0;
    x->white[1][i] = 0.0;
    x->whitener[i] = 1.0;
  }
  x->alpha = 1.0;
  x->brightness = 0.0;
  x->spread = 0.0;
  x->skewness = 0.0;
  x->kurtosis = 0.0;
  x->flatness = 0.0;
  x->flux = 0.0;
  x->onset = 0.0;
  x->fftPlan = fftw_plan_dft_r2c_1d(size, x->win, x->fft, FFTW_MEASURE);
  x->i = 0;
  x->j = 0;
  x->size = size;
  x->fftSize = fftSize;
  x->skip = size / 2;
  x->min = 0;
  x->max = size / 2 + 1;
  x->span = size / 2 + 1;
  return x;
}

void SDTSpectralFeats_free(SDTSpectralFeats *x) {
  free(x->in);
  fftw_free(x->win);
  fftw_free(x->fft);
  free(x->ampli[0]);
  free(x->ampli[1]);
  free(x->white[0]);
  free(x->white[1]);
  free(x->whitener);
  fftw_destroy_plan(x->fftPlan);
  free(x);
}

void SDTSpectralFeats_setOverlap(SDTSpectralFeats *x, double f) {
  x->skip = SDT_clip((1.0 - f) * x->size, 1, x->size);
  x->alpha = pow(10, -0.12 * SDT_timeStep * x->skip);
}

void SDTSpectralFeats_setMinFreq(SDTSpectralFeats *x, double f) {
  x->min = SDT_clip(f * SDT_timeStep * x->size, 0, x->size / 2);
  x->span = x->max - x->min;
}

void SDTSpectralFeats_setMaxFreq(SDTSpectralFeats *x, double f) {
  if (f <= 0) f = SDT_sampleRate / 2.0;
  x->max = SDT_clip(f * SDT_timeStep * x->size + 1, 1, x->size / 2 + 1);
  x->span = x->max - x->min;
}

void SDTSpectralFeats_dsp(SDTSpectralFeats *x, double *outs, double in) {
  double *swap, dev, sum, logSum;
  int i;
  
  x->in[x->i] = in;
  x->in[x->size + x->i] = in;
  x->i = (x->i + 1) % x->size;
  x->j = (x->j + 1) % x->skip;
  if (x->j == 0) {
    x->brightness = 0.0;
    x->spread = 0.0;
    x->skewness = 0.0;
    x->kurtosis = 0.0;
    x->flatness = 0.0;
    x->flux = 0.0;
    x->onset = 0.0;
    swap = x->ampli[1];
    x->ampli[1] = x->ampli[0];
    x->ampli[0] = swap;
    swap = x->white[1];
    x->white[1] = x->white[0];
    x->white[0] = swap;
    for (i = 0; i < x->size; i++) {
      x->win[i] = x->in[x->i + i];
    }
    SDT_hanning(x->win, x->size);
    fftw_execute(x->fftPlan);
    sum = 0.0;
    logSum = 0.0;
    for (i = x->min; i < x->max; i++) {
      x->ampli[0][i] = sqrt(x->fft[i][0] * x->fft[i][0] + x->fft[i][1] * x->fft[i][1]);
      x->whitener[i] = fmax(0.000001, fmax(x->alpha * x->whitener[i], x->ampli[0][i]));
      x->white[0][i] = x->ampli[0][i] / x->whitener[i];
      sum += x->ampli[0][i];
      logSum += log(x->ampli[0][i]);
      x->brightness += x->ampli[0][i] * (i - x->min + 0.5) / x->span;
    }
    x->brightness /= sum;
    for (i = x->min; i < x->max; i++) {
      x->ampli[0][i] /= sum;
      dev = (i - x->min + 0.5) / x->span - x->brightness;
      x->spread += pow(dev, 2) * x->ampli[0][i];
      x->skewness += pow(dev, 3) * x->ampli[0][i];
      x->kurtosis += pow(dev, 4) * x->ampli[0][i];
      x->flux += pow(x->ampli[0][i] - x->ampli[1][i], 2);
      x->onset += fmax(0.0, x->white[0][i] - x->white[1][i]);
    }
    x->spread = sqrt(x->spread);
    x->skewness = x->skewness / pow(x->spread, 3.0);
    x->kurtosis = x->kurtosis / pow(x->spread, 4.0) - 3.0;
    x->flatness = exp(logSum / x->span) / (sum / x->span);
    x->flux = sqrt(x->flux);
    x->onset = x->onset / x->span;
  }
  outs[0] = x->brightness;
  outs[1] = x->spread;
  outs[2] = x->skewness;
  outs[3] = x->kurtosis;
  outs[4] = x->flatness;
  outs[5] = x->flux;
  outs[6] = x->onset;
}

//-------------------------------------------------------------------------------------//

struct SDTPitch {
  double *in, *win, *fft, *acf, *nsdf, tol, pitch, clarity;
  fftw_plan fftPlan, ifftPlan;
  int curr, count, size, skip, seek;
};

SDTPitch *SDTPitch_new(unsigned int size) {
  SDTPitch *x;
  int i;
  
  x = (SDTPitch *)malloc(sizeof(SDTPitch));
  x->in = (double *)malloc(2 * size * sizeof(double));
  x->win = (double *)fftw_malloc(2 * size * sizeof(double));
  x->fft = (double *)fftw_malloc(2 * size * sizeof(double));
  x->acf = (double *)fftw_malloc(2 * size * sizeof(double));
  x->nsdf = (double *)malloc(size * sizeof(double));
  for (i = 0; i < size; i++) {
    x->in[i] = 0.0;
    x->in[size + i] = 0.0;
    x->win[i] = 0.0;
    x->win[size + i] = 0.0;
    x->fft[i] = 0.0;
    x->fft[size + i] = 0.0;
    x->acf[i] = 0.0;
    x->acf[size + i] = 0.0;
    x->nsdf[i] = 0.0;
  }
  x->tol = 0.2;
  x->pitch = 0.0;
  x->clarity = 0.0;
  x->fftPlan = fftw_plan_r2r_1d(2 * size, x->win, x->fft, FFTW_R2HC, FFTW_MEASURE);
  x->ifftPlan = fftw_plan_r2r_1d(2 * size, x->fft, x->acf, FFTW_HC2R, FFTW_MEASURE);
  x->curr = 0;
  x->count = 0;
  x->size = size;
  x->skip = size / 4;
  x->seek = 0.85 * x->size;
  return x;
}

void SDTPitch_free(SDTPitch *x) {
  free(x->in);
  fftw_free(x->win);
  fftw_free(x->fft);
  fftw_free(x->acf);
  free(x->nsdf);
  fftw_destroy_plan(x->fftPlan);
  fftw_destroy_plan(x->ifftPlan);
  free(x);
}

void SDTPitch_setOverlap(SDTPitch *x, double f) {
  x->skip = x->size / SDT_fclip(f, 1.0, x->size);
}

void SDTPitch_setTolerance(SDTPitch *x, double f) {
  x->tol = SDT_fclip(f, 0.0, 1.0);
}

void SDTPitch_dsp(SDTPitch *x, double *outs, double in) {
  double a, b, c, norm, rebias, peakValue, biasValue, maxValue;
  int i, j;
  
  x->in[x->curr] = in;
  x->in[x->curr + x->size] = in;
  x->curr = (x->curr + 1) % x->size;
  x->count = (x->count + 1) % x->skip;
  if (x->count == 0) {
    for (i = 0; i < x->size; i++) {
      x->win[i] = x->in[x->curr + i];
    }
    x->win[0] = 1.0;
    fftw_execute(x->fftPlan);
    x->fft[0] *= x->fft[0];
    for (i = 1; i < x->size; i++) {
      j = 2 * x->size - i;
      x->fft[i] = x->fft[i] * x->fft[i] + x->fft[j] * x->fft[j];
      x->fft[j] = 0.0;
    }
    x->fft[x->size] *= x->fft[x->size];
    fftw_execute(x->ifftPlan);
    norm = x->acf[0];
    for (i = 0; i < x->seek; i++) {
      j = x->size - i - 1;
      x->nsdf[i] = x->acf[i] / norm;
      norm -= (x->win[i] * x->win[i] + x->win[j] * x->win[j]) * x->size; 
    }
    for (i = 1; i < x->seek; i++) {
      if (x->nsdf[i] < 0) break;
    }
    x->pitch = 0.0;
    x->clarity = 0.0;
    maxValue = 0.0;
    for (; i < x->seek - 1; i++) {
      if (x->nsdf[i-1] < x->nsdf[i] && x->nsdf[i] > x->nsdf[i+1]) {
        a = x->nsdf[i-1];
        b = x->nsdf[i];
        c = x->nsdf[i+1];
        rebias = 1.0 - (i * x->tol) / x->seek;
        peakValue = b + 0.5 * (0.5 * ((c - a) * (c - a))) / (2 * b - a - c);
        biasValue = rebias * peakValue;
        if (biasValue > maxValue) { 
          x->pitch = SDT_sampleRate / (i + (0.5 * (c - a)) / (2 * b - a - c));
          x->clarity = peakValue;
          maxValue = biasValue;
        }
      }
    }
  }
  outs[0] = x->pitch;
  outs[1] = x->clarity;
}