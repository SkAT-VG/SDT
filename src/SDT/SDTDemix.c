#include "SDTDemix.h"
#include <math.h>
#include "SDTCommon.h"
#include "SDTComplex.h"
#include "SDTFFT.h"
#include "SDTStructs.h"

struct SDTDemix {
  double *kernel, *in, *win, *inFrame, **mag, *diffX, *diffY, **rowXX, **rowXY,
      **rowYY, *percFrame, *harmFrame, *restFrame, *percOut, *harmOut, *restOut,
      gammaIso, gammaDir, norm;
  SDTComplex **inFFT, *percFFT, *harmFFT, *restFFT;
  SDTFFT *fftPlan;
  int size, fftSize, hopSize, radius, width, center, bufCount, hopCount,
      magCount, rowCount, fftCount;
};

SDTDemix *SDTDemix_new(int size, int radius) {
  SDTDemix *x;
  int i, fftSize, hopSize, width, center;

  fftSize = size / 2 + 1;
  hopSize = size / 4;
  width = 2 * radius + 1;
  center = radius + 2;

  x = (SDTDemix *)calloc(1, sizeof(SDTDemix));
  x->kernel = (double *)calloc(width, sizeof(double));
  x->in = (double *)calloc(size, sizeof(double));
  x->win = (double *)calloc(size, sizeof(double));
  x->inFrame = (double *)calloc(size, sizeof(double));
  x->mag = (double **)calloc(3, sizeof(double *));
  for (i = 0; i < 3; i++) {
    x->mag[i] = (double *)calloc(fftSize + 2, sizeof(double));
  }
  x->diffX = (double *)calloc(fftSize + 8, sizeof(double));
  x->diffY = (double *)calloc(fftSize + 8, sizeof(double));
  x->rowXX = (double **)calloc(width, sizeof(double *));
  x->rowXY = (double **)calloc(width, sizeof(double *));
  x->rowYY = (double **)calloc(width, sizeof(double *));
  for (i = 0; i < width; i++) {
    x->rowXX[i] = (double *)calloc(fftSize, sizeof(double));
    x->rowXY[i] = (double *)calloc(fftSize, sizeof(double));
    x->rowYY[i] = (double *)calloc(fftSize, sizeof(double));
  }
  x->inFFT = (SDTComplex **)calloc(center, sizeof(SDTComplex *));
  for (i = 0; i < center; i++) {
    x->inFFT[i] = (SDTComplex *)calloc(fftSize, sizeof(SDTComplex));
  }
  x->percFFT = (SDTComplex *)calloc(fftSize, sizeof(SDTComplex));
  x->harmFFT = (SDTComplex *)calloc(fftSize, sizeof(SDTComplex));
  x->restFFT = (SDTComplex *)calloc(fftSize, sizeof(SDTComplex));
  x->percFrame = (double *)calloc(size, sizeof(double));
  x->harmFrame = (double *)calloc(size, sizeof(double));
  x->restFrame = (double *)calloc(size, sizeof(double));
  x->percOut = (double *)calloc(size, sizeof(double));
  x->harmOut = (double *)calloc(size, sizeof(double));
  x->restOut = (double *)calloc(size, sizeof(double));
  x->fftPlan = SDTFFT_new(fftSize - 1);

  SDT_gaussian1D(x->kernel, 0.5, width);
  for (i = 0; i < size; i++) {
    x->win[i] = 1.0 - cos(SDT_TWOPI * i / size);
  }

  x->norm = (double)hopSize / (double)(size * size);
  x->size = size;
  x->fftSize = fftSize;
  x->hopSize = hopSize;
  x->radius = radius;
  x->width = width;
  x->center = center;

  return x;
}

void SDTDemix_free(SDTDemix *x) {
  int i;

  free(x->kernel);
  free(x->in);
  free(x->win);
  free(x->inFrame);
  for (i = 0; i < 3; i++) {
    free(x->mag[i]);
  }
  free(x->mag);
  free(x->diffX);
  free(x->diffY);
  for (i = 0; i < x->width; i++) {
    free(x->rowXX[i]);
    free(x->rowXY[i]);
    free(x->rowYY[i]);
  }
  free(x->rowXX);
  free(x->rowXY);
  free(x->rowYY);
  for (i = 0; i < x->center; i++) {
    free(x->inFFT[i]);
  }
  free(x->inFFT);
  free(x->percFFT);
  free(x->harmFFT);
  free(x->restFFT);
  free(x->percFrame);
  free(x->harmFrame);
  free(x->restFrame);
  free(x->percOut);
  free(x->harmOut);
  free(x->restOut);
  SDTFFT_free(x->fftPlan);
  free(x);
}

void SDTDemix_setSize(SDTDemix *x, int f) {
  free(x->in);
  free(x->win);
  free(x->inFrame);

  x->in = (double *)calloc(f, sizeof(double));
  x->win = (double *)calloc(f, sizeof(double));
  x->inFrame = (double *)calloc(f, sizeof(double));

  int fftSize = f / 2 + 1;
  free(x->diffX);
  free(x->diffY);
  free(x->percFFT);
  free(x->harmFFT);
  free(x->restFFT);
  free(x->percFrame);
  free(x->harmFrame);
  free(x->restFrame);
  free(x->percOut);
  free(x->harmOut);
  free(x->restOut);
  SDTFFT_free(x->fftPlan);

  x->diffX = (double *)calloc(fftSize + 8, sizeof(double));
  x->diffY = (double *)calloc(fftSize + 8, sizeof(double));
  x->percFFT = (SDTComplex *)calloc(fftSize, sizeof(SDTComplex));
  x->harmFFT = (SDTComplex *)calloc(fftSize, sizeof(SDTComplex));
  x->restFFT = (SDTComplex *)calloc(fftSize, sizeof(SDTComplex));
  x->percFrame = (double *)calloc(f, sizeof(double));
  x->harmFrame = (double *)calloc(f, sizeof(double));
  x->restFrame = (double *)calloc(f, sizeof(double));
  x->percOut = (double *)calloc(f, sizeof(double));
  x->harmOut = (double *)calloc(f, sizeof(double));
  x->restOut = (double *)calloc(f, sizeof(double));
  x->fftPlan = SDTFFT_new(fftSize - 1);
  for (unsigned int i = 0; i < 3; i++) {
    free(x->mag[i]);
    x->mag[i] = (double *)calloc(fftSize + 2, sizeof(double));
  }
  for (unsigned int i = 0; i < x->width; i++) {
    free(x->rowXX[i]);
    x->rowXX[i] = (double *)calloc(fftSize, sizeof(double));
    free(x->rowXY[i]);
    x->rowXY[i] = (double *)calloc(fftSize, sizeof(double));
    free(x->rowYY[i]);
    x->rowYY[i] = (double *)calloc(fftSize, sizeof(double));
  }
  for (unsigned int i = 0; i < x->center; i++) {
    free(x->inFFT[i]);
    x->inFFT[i] = (SDTComplex *)calloc(fftSize, sizeof(SDTComplex));
  }
  for (unsigned int i = 0; i < f; i++) x->win[i] = 1.0 - cos(SDT_TWOPI * i / f);

  int hopSize = f / 4;
  x->norm = (double)hopSize / (double)(f * f);
  x->size = f;
  x->fftSize = fftSize;
  x->hopSize = hopSize;
}

void SDTDemix_setRadius(SDTDemix *x, int f) {
  int width = 2 * f + 1;
  int center = f + 2;

  free(x->kernel);
  for (unsigned int i = 0; i < x->width; i++) {
    free(x->rowXX[i]);
    free(x->rowXY[i]);
    free(x->rowYY[i]);
  }
  for (unsigned int i = 0; i < x->center; i++) free(x->inFFT[i]);
  free(x->rowXX);
  free(x->rowXY);
  free(x->rowYY);
  free(x->inFFT);

  x->kernel = (double *)calloc(width, sizeof(double));
  x->rowXX = (double **)calloc(width, sizeof(double *));
  x->rowXY = (double **)calloc(width, sizeof(double *));
  x->rowYY = (double **)calloc(width, sizeof(double *));
  for (unsigned int i = 0; i < width; i++) {
    x->rowXX[i] = (double *)calloc(x->fftSize, sizeof(double));
    x->rowXY[i] = (double *)calloc(x->fftSize, sizeof(double));
    x->rowYY[i] = (double *)calloc(x->fftSize, sizeof(double));
  }
  x->inFFT = (SDTComplex **)calloc(center, sizeof(SDTComplex *));
  for (unsigned int i = 0; i < center; i++)
    x->inFFT[i] = (SDTComplex *)calloc(x->fftSize, sizeof(SDTComplex));
  SDT_gaussian1D(x->kernel, 0.5, width);

  x->radius = f;
  x->width = width;
  x->center = center;
}

_SDT_COPY_FUNCTION(Demix)

_SDT_HASHMAP_FUNCTIONS(Demix)

json_value *SDTDemix_toJSON(const SDTDemix *x) {
  json_value *obj = json_object_new(0);
  json_object_push(obj, "size", json_integer_new(SDTDemix_getSize(x)));
  json_object_push(obj, "radius", json_integer_new(SDTDemix_getRadius(x)));
  json_object_push(obj, "overlap", json_double_new(SDTDemix_getOverlap(x)));
  json_object_push(obj, "noiseThreshold",
                   json_double_new(SDTDemix_getNoiseThreshold(x)));
  json_object_push(obj, "tonalThreshold",
                   json_double_new(SDTDemix_getTonalThreshold(x)));
  return obj;
}

SDTDemix *SDTDemix_fromJSON(const json_value *x) {
  if (!x || x->type != json_object) return 0;

  unsigned int size = SDT_DEMIX_SIZE_DEFAULT;
  _SDT_GET_PARAM_FROM_JSON(size, x, size, integer);
  unsigned int radius = SDT_DEMIX_RADIUS_DEFAULT;
  _SDT_GET_PARAM_FROM_JSON(radius, x, radius, integer);

  SDTDemix *y = SDTDemix_new(size, radius);
  return SDTDemix_setParams(y, x, 0);
}

SDTDemix *SDTDemix_setParams(SDTDemix *x, const json_value *j,
                             unsigned char unsafe) {
  if (!x || !j || j->type != json_object) return 0;

  _SDT_SET_UNSAFE_PARAM_FROM_JSON(Demix, x, j, Size, size, integer, unsafe);
  _SDT_SET_UNSAFE_PARAM_FROM_JSON(Demix, x, j, Radius, radius, integer, unsafe);

  _SDT_SET_PARAM_FROM_JSON(Demix, x, j, Overlap, overlap, integer);
  _SDT_SET_PARAM_FROM_JSON(Demix, x, j, NoiseThreshold, noiseThreshold,
                           integer);
  _SDT_SET_PARAM_FROM_JSON(Demix, x, j, TonalThreshold, tonalThreshold,
                           integer);

  _SDT_SET_PARAM_FROM_JSON(Demix, x, j, Overlap, overlap, double);
  _SDT_SET_PARAM_FROM_JSON(Demix, x, j, NoiseThreshold, noiseThreshold, double);
  _SDT_SET_PARAM_FROM_JSON(Demix, x, j, TonalThreshold, tonalThreshold, double);

  return x;
}

int SDTDemix_getSize(const SDTDemix *x) { return x->size; }

int SDTDemix_getRadius(const SDTDemix *x) { return x->radius; }

double SDTDemix_getOverlap(const SDTDemix *x) {
  return 1 - ((double)x->hopSize) / x->size;
}

double SDTDemix_getNoiseThreshold(const SDTDemix *x) {
  if (!isfinite(x->gammaIso)) return 1;
  if (x->gammaIso <= 0) return 0;
  return exp2(-1 / x->gammaIso);
}

double SDTDemix_getTonalThreshold(const SDTDemix *x) {
  if (!isfinite(x->gammaDir)) return 1;
  if (x->gammaDir <= 0) return 0;
  return exp2(-1 / x->gammaDir);
}

void SDTDemix_setOverlap(SDTDemix *x, double f) {
  x->hopSize = SDT_clip((1.0 - f) * x->size, 1, x->size / 2);
  x->norm = (double)x->hopSize / (double)(x->size * x->size);
}

void SDTDemix_setNoiseThreshold(SDTDemix *x, double f) {
  if (f <= 0.0)
    x->gammaIso = 0.0;
  else if (f >= 1.0)
    x->gammaIso = INFINITY;
  else
    x->gammaIso = log(0.5) / log(f);
}

void SDTDemix_setTonalThreshold(SDTDemix *x, double f) {
  if (f <= 0.0)
    x->gammaDir = 0.0;
  else if (f >= 1.0)
    x->gammaDir = INFINITY;
  else
    x->gammaDir = log(0.5) / log(f);
}

void SDTDemix_dsp(SDTDemix *x, double *outs, double in) {
  double *mag0, *mag1, *mag2, *xx, *xy, *yy, a00, a01, a11, trc, det, d, l, m,
      anisotropy, direction, perc, harm, rest, tot;
  SDTComplex *fft0, *fftC;
  int i, j, k;

  x->in[x->bufCount] = in;
  x->bufCount = (x->bufCount + 1) % x->size;
  x->hopCount = (x->hopCount + 1) % x->hopSize;
  if (x->hopCount == 0) {
    // rotate frames
    mag0 = x->mag[x->magCount];
    mag2 = x->mag[(x->magCount + 1) % 3];
    mag1 = x->mag[(x->magCount + 2) % 3];
    xx = x->rowXX[x->rowCount];
    xy = x->rowXY[x->rowCount];
    yy = x->rowYY[x->rowCount];
    fft0 = x->inFFT[x->fftCount];
    fftC = x->inFFT[(x->fftCount + 1) % x->center];
    x->magCount = (x->magCount + 1) % 3;
    x->rowCount = (x->rowCount + 1) % x->width;
    x->fftCount = (x->fftCount + 1) % x->center;

    // framing, windowing, FFT
    for (i = 0; i < x->size; i++) {
      j = (x->bufCount + i) % x->size;
      x->inFrame[i] = x->in[j] * x->win[i];
    }
    SDTFFT_fftr(x->fftPlan, x->inFrame, fft0);

    // log magnitude spectogram
    for (i = 0; i < x->fftSize; i++) {
      mag0[i + 1] =
          10.0 *
          log10(sqrt(fft0[i].r * fft0[i].r + fft0[i].i * fft0[i].i) + 1.0);
    }

    // spectrogram central differences (forward/backward diff on first/last
    // sample)
    for (i = 0; i < x->fftSize; i++) {
      x->diffX[i + x->radius] = 0.5 * (mag0[i + 1] - mag2[i + 1]);
    }
    for (i = 0; i < x->fftSize; i++) {
      x->diffY[i + x->radius] = 0.5 * (mag1[i + 2] - mag1[i]);
    }

    // computing structure tensor
    for (i = 0; i < x->fftSize; i++) {
      xx[i] = 0.0;
      xy[i] = 0.0;
      yy[i] = 0.0;
      for (j = 0; j < x->width; j++) {
        xx[i] += x->diffX[i + j] * x->diffX[i + j] * x->kernel[j];
        xy[i] += x->diffX[i + j] * x->diffY[i + j] * x->kernel[j];
        yy[i] += x->diffY[i + j] * x->diffY[i + j] * x->kernel[j];
      }
    }
    for (i = 0; i < x->fftSize; i++) {
      a00 = 0.0;
      a01 = 0.0;
      a11 = 0.0;
      for (j = 0; j < x->width; j++) {
        k = (x->rowCount + j) % x->width;
        a00 += x->rowXX[k][i] * x->kernel[j];
        a01 += x->rowXY[k][i] * x->kernel[j];
        a11 += x->rowYY[k][i] * x->kernel[j];
      }
      // finding anisotropy and direction (normalized and gamma-corrected
      // according to thresholds)
      if (a00 && a01 && a11) {
        trc = 0.5 * (a00 + a11);
        det = a00 * a11 - a01 * a01;
        d = sqrt(trc * trc - det);
        l = trc - d;
        m = trc + d;
        anisotropy = pow((m - l) / (m + l), 2.0 * x->gammaIso);
        direction =
            pow(fabs(atan((m - a11) / a01)) / (0.5 * SDT_PI), x->gammaDir);
      } else {
        anisotropy = 0.0;
        direction = 0.0;
      }

      // computing component weights
      perc = anisotropy * direction;
      perc *= perc;
      harm = anisotropy * (1.0 - direction);
      harm *= harm;
      rest = 1.0 - anisotropy;
      rest *= rest;
      tot = perc + harm + rest;
      perc /= tot;
      harm /= tot;
      rest /= tot;

      // resynthesis
      x->percFFT[i].r = fftC[i].r * perc;
      x->percFFT[i].i = fftC[i].i * perc;
      x->harmFFT[i].r = fftC[i].r * harm;
      x->harmFFT[i].i = fftC[i].i * harm;
      x->restFFT[i].r = fftC[i].r * rest;
      x->restFFT[i].i = fftC[i].i * rest;
    }

    // inverse FFTs
    SDTFFT_ifftr(x->fftPlan, x->percFFT, x->percFrame);
    SDTFFT_ifftr(x->fftPlan, x->harmFFT, x->harmFrame);
    SDTFFT_ifftr(x->fftPlan, x->restFFT, x->restFrame);

    // overlap/add synthesized frames
    for (i = 1; i <= x->hopSize; i++) {
      j = (x->size + x->bufCount - i) % x->size;
      x->percOut[j] = 0.0;
      x->harmOut[j] = 0.0;
      x->restOut[j] = 0.0;
    }
    for (i = 0; i < x->size; i++) {
      j = (x->bufCount + i) % x->size;
      x->percOut[j] += x->percFrame[i] * x->norm;
      x->harmOut[j] += x->harmFrame[i] * x->norm;
      x->restOut[j] += x->restFrame[i] * x->norm;
    }
  }

  // output
  outs[0] = x->percOut[x->bufCount];
  outs[1] = x->harmOut[x->bufCount];
  outs[2] = x->restOut[x->bufCount];
}
