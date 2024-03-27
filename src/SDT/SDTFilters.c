#include "SDTFilters.h"

#include <math.h>
#include <stdlib.h>

#include "SDTCommon.h"
#include "SDTStructs.h"

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

void SDTOnePole_free(SDTOnePole *x) { free(x); }

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

struct SDTDCFilter {
  double a_, g, y;
};

SDTDCFilter *SDTDCFilter_new() {
  SDTDCFilter *x;

  x = (SDTDCFilter *)malloc(sizeof(SDTDCFilter));
  x->y = 0.0;
  SDTDCFilter_setFeedback(x, 0.0);
  return x;
}

void SDTDCFilter_free(SDTDCFilter *x) { free(x); }

void SDTDCFilter_setFeedback(SDTDCFilter *x, double f) {
  // x->a_ is 1 - feedback
  x->a_ = SDT_fclip(1.0 - f, SDT_MICRO, 1.0);
  // H(z)  = (1 - z^-1) / (1 - feedback * z^-1)
  // H(1)  = 0 => DC cut
  // H(-1) = 2 / (1 + feedback) =>
  // => x->g = (1 + feedback) / 2 makeup gain
  x->g = 1.0 - x->a_ / 2.0;
}

void SDTDCFilter_setFrequency(SDTDCFilter *x, double f) {
  double w = f * SDT_TWOPI * SDT_timeStep;
  double cos_w = cos(w);
  SDTDCFilter_setFeedback(x,
                          (cos_w < SDT_MICRO)  // Avoid division by zero
                              ? 1  // Effectively, set to max feedback allowed
                              : (1 - fabs(sin(w))) / cos_w);
}

double SDTDCFilter_getFeedback(const SDTDCFilter *x) { return 1.0 - x->a_; }

double SDTDCFilter_getFrequency(const SDTDCFilter *x) {
  double a = SDTDCFilter_getFeedback(x);
  return acos(2 * a / (a * a + 1));
}

double SDTDCFilter_dsp(SDTDCFilter *x, double in) {
  double out = x->g * in - x->y;
  x->y = x->a_ * out + x->y;
  return out;
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

void SDTAllPass_free(SDTAllPass *x) { free(x); }

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
  double ta, tr, b0a, a1a, b0r, a1r, y1;
};

static void SDTEnvelope_updateAttack(SDTEnvelope *x) {
  double w = -SDT_TWOPI * SDT_fclip(SDT_timeStep / x->ta, 0.0, 0.5);
  x->a1a = -exp(w);
  x->b0a = 1.0 + x->a1a;
}

static void SDTEnvelope_updateRelease(SDTEnvelope *x) {
  double w = -SDT_TWOPI * SDT_fclip(SDT_timeStep / x->tr, 0.0, 0.5);
  x->a1r = -exp(w);
  x->b0r = 1.0 + x->a1r;
}

void SDTEnvelope_update(SDTEnvelope *x) {
  SDTEnvelope_updateAttack(x);
  SDTEnvelope_updateRelease(x);
}

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

void SDTEnvelope_free(SDTEnvelope *x) { free(x); }

_SDT_COPY_FUNCTION(Envelope)

_SDT_HASHMAP_FUNCTIONS(Envelope)

json_value *SDTEnvelope_toJSON(const SDTEnvelope *x) {
  json_value *obj = json_object_new(0);
  json_object_push(obj, "attack", json_double_new(SDTEnvelope_getAttack(x)));
  json_object_push(obj, "release", json_double_new(SDTEnvelope_getRelease(x)));
  return obj;
}

SDTEnvelope *SDTEnvelope_fromJSON(const json_value *x) {
  if (!x || x->type != json_object) return 0;

  SDTEnvelope *y = SDTEnvelope_new();
  return SDTEnvelope_setParams(y, x, 0);
}

SDTEnvelope *SDTEnvelope_setParams(SDTEnvelope *x, const json_value *j,
                                   unsigned char unsafe) {
  if (!x || !j || j->type != json_object) return 0;

  _SDT_SET_DOUBLE_FROM_JSON(Envelope, x, j, Attack, attack);
  _SDT_SET_DOUBLE_FROM_JSON(Envelope, x, j, Release, release);

  return x;
}

double SDTEnvelope_getAttack(const SDTEnvelope *x) { return x->ta; }

double SDTEnvelope_getRelease(const SDTEnvelope *x) { return x->tr; }

void SDTEnvelope_setAttack(SDTEnvelope *x, double a) {
  x->ta = a;
  SDTEnvelope_updateAttack(x);
}

void SDTEnvelope_setRelease(SDTEnvelope *x, double r) {
  x->tr = r;
  SDTEnvelope_updateRelease(x);
}

double SDTEnvelope_dsp(SDTEnvelope *x, double in) {
  double x0 = fabs(in);
  if (x0 > x->y1)
    x->y1 = x->b0a * x0 - x->a1a * x->y1;
  else
    x->y1 = x->b0r * x0 - x->a1r * x->y1;
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

void SDTTwoPoles_free(SDTTwoPoles *x) { free(x); }

void SDTTwoPoles_lowpass(SDTTwoPoles *x, double fc) {
  double d;

  d = -exp(-SDT_TWOPI * SDT_fclip(fc * SDT_timeStep, 0.0, 0.5));
  x->a1 = 2.0 * d;
  x->a2 = d * d;
  x->b0 = 1.0 + x->a2 + x->a1;
}

void SDTTwoPoles_highpass(SDTTwoPoles *x, double fc) {
  double d;

  d = exp(-SDT_TWOPI * (0.5 - SDT_fclip(fc * SDT_timeStep, 0.0, 0.5)));
  x->a1 = 2.0 * d;
  x->a2 = d * d;
  x->b0 = 1.0 + x->a2 - x->a1;
}

void SDTTwoPoles_resonant(SDTTwoPoles *x, double fc, double q) {
  double w, r;

  w = SDT_TWOPI * SDT_fclip(fc * SDT_timeStep, 0.0, 0.5);
  r = SDT_fclip(exp(-0.5 * w / q), 0.0, 0.9995);
  x->a1 = -2.0 * r * cos(w);
  x->a2 = r * r;
  x->b0 = (1.0 - r) * sqrt(1 - 2.0 * r * cos(2 * w) + r * r);
}

double SDTTwoPoles_dsp(SDTTwoPoles *x, double in) {
  double result;

  result = x->b0 * in - x->a1 * x->y1 - x->a2 * x->y2;
  x->y2 = x->y1;
  x->y1 = result;
  return result;
}

//-------------------------------------------------------------------------------------//

struct SDTBiquad {
  double *buf, *a0, *a1, *a2, *b0, *b1, *b2, f, w, cosw, sinw, *alpha;
  int nSections;
};

SDTBiquad *SDTBiquad_new(int nSections) {
  SDTBiquad *x;
  int i, n;

  n = 2 * nSections + 2;
  x = (SDTBiquad *)malloc(sizeof(SDTBiquad));
  x->buf = (double *)malloc(n * sizeof(double));
  x->a0 = (double *)malloc(nSections * sizeof(double));
  x->a1 = (double *)malloc(nSections * sizeof(double));
  x->a2 = (double *)malloc(nSections * sizeof(double));
  x->b0 = (double *)malloc(nSections * sizeof(double));
  x->b1 = (double *)malloc(nSections * sizeof(double));
  x->b2 = (double *)malloc(nSections * sizeof(double));
  x->alpha = (double *)malloc(nSections * sizeof(double));
  for (i = 0; i < n; i++) {
    x->buf[i] = 0.0;
  }
  for (i = 0; i < nSections; i++) {
    x->a0[i] = 1.0;
    x->a1[i] = 0.0;
    x->a2[i] = 0.0;
    x->b0[i] = 1.0;
    x->b1[i] = 0.0;
    x->b2[i] = 0.0;
    x->alpha[i] = 1.0;
  }
  x->nSections = nSections;

  return x;
}

void SDTBiquad_free(SDTBiquad *x) {
  free(x->buf);
  free(x->a0);
  free(x->a1);
  free(x->a2);
  free(x->b0);
  free(x->b1);
  free(x->b2);
  free(x->alpha);
  free(x);
}

SDT_DEFINE_HASHMAP(SDT_BIQUAD, 59)

int SDTBiquad_getNSections(const SDTBiquad *x) { return x->nSections; }

#define SDT_BIQUAD_ARRAYS(A) \
  A(a0)                      \
  A(a1)                      \
  A(a2)                      \
  A(b0)                      \
  A(b1)                      \
  A(b2)                      \
  A(alpha)

#define SDT_BIQUAD_COPY_ARRAY(F)                          \
  free(dest->F);                                          \
  dest->F = (double *)malloc(nSections * sizeof(double)); \
  for (unsigned int i = 0; i < nSections; i++) dest->F[i] = src->F[i];

SDTBiquad *SDTBiquad_copy(SDTBiquad *dest, const SDTBiquad *src) {
  int nSections = SDTBiquad_getNSections(src);
  SDT_BIQUAD_ARRAYS(SDT_BIQUAD_COPY_ARRAY)

  int n = 2 * nSections + 2;
  free(dest->buf);
  dest->buf = calloc(n, sizeof(double));
  dest->nSections = nSections;
  return dest;
}

#define SDT_BIQUAD_PUSH_ARRAY(F)                      \
  json_value *a_##F = json_array_new(nSections);      \
  for (unsigned int i = 0; i < nSections; i++)        \
    json_array_push(a_##F, json_double_new(x->F[i])); \
  json_object_push(obj, #F, a_##F);

json_value *SDTBiquad_toJSON(const SDTBiquad *x) {
  int nSections = SDTBiquad_getNSections(x);
  json_value *obj = json_object_new(0);

  json_object_push(obj, "nSections", json_integer_new(nSections));
  SDT_BIQUAD_ARRAYS(SDT_BIQUAD_PUSH_ARRAY)
  return obj;
}

#define SDT_BIQUAD_PULL_ARRAY(F)                                               \
  v = SDTJSON_object_get_by_key(x, #F);                                        \
  for (unsigned int i = 0;                                                     \
       v && (v->type == json_array) && i < nSections && i < v->u.array.length; \
       ++i) {                                                                  \
    const json_value *w = v->u.array.values[i];                                \
    y->F[i] = (w && (w->type == json_double)) ? w->u.dbl : 0.0;                \
  }

SDTBiquad *SDTBiquad_fromJSON(const json_value *x) {
  if (!x || x->type != json_object) return 0;
  const json_value *v = SDTJSON_object_get_by_key(x, "nSections");
  int nSections = (v && (v->type == json_integer)) ? v->u.integer : 1;
  SDTBiquad *y = SDTBiquad_new(nSections);

  SDT_BIQUAD_ARRAYS(SDT_BIQUAD_PULL_ARRAY)
  return y;
}

void SDTBiquad_common(SDTBiquad *x, int i, double fc, double q) {
  x->w = 2.0 * SDT_PI * fc * SDT_timeStep;
  x->cosw = cos(x->w);
  x->sinw = sin(x->w);
  x->alpha[i] = x->sinw / (2.0 * q);
}

void SDTBiquad_butterworthLP(SDTBiquad *x, double fc) {
  double q;
  int i;

  for (i = 0; i < x->nSections; i++) {
    q = 1.0 / (2.0 * cos(SDT_PI * (i + 0.5) / (2 * x->nSections)));
    SDTBiquad_common(x, i, fc, q);
    x->a0[i] = 1.0 + x->alpha[i];
    x->a1[i] = (-2.0 * x->cosw) / x->a0[i];
    x->a2[i] = (1.0 - x->alpha[i]) / x->a0[i];
    x->b0[i] = (0.5 - 0.5 * x->cosw) / x->a0[i];
    x->b1[i] = (1.0 - x->cosw) / x->a0[i];
    x->b2[i] = x->b0[i];
  }
}

void SDTBiquad_butterworthHP(SDTBiquad *x, double fc) {
  double q;
  int i;

  for (i = 0; i < x->nSections; i++) {
    q = 1.0 / (2.0 * cos(SDT_PI * (i + 0.5) / (2 * x->nSections)));
    SDTBiquad_common(x, i, fc, q);
    x->a0[i] = 1.0 + x->alpha[i];
    x->a1[i] = (-2.0 * x->cosw) / x->a0[i];
    x->a2[i] = (1.0 - x->alpha[i]) / x->a0[i];
    x->b0[i] = (0.5 + 0.5 * x->cosw) / x->a0[i];
    x->b1[i] = (-1.0 - x->cosw) / x->a0[i];
    x->b2[i] = x->b0[i];
  }
}

void SDTBiquad_butterworthAP(SDTBiquad *x, double fc) {
  double q;
  int i;

  for (i = 0; i < x->nSections; i++) {
    q = 1.0 / (2.0 * cos(SDT_PI * (i + 0.5) / (2 * x->nSections)));
    SDTBiquad_common(x, i, fc, q);
    x->a0[i] = 1.0 + x->alpha[i];
    x->a1[i] = (-2.0 * x->cosw) / x->a0[i];
    x->a2[i] = (1.0 - x->alpha[i]) / x->a0[i];
    x->b0[i] = x->a2[i];
    x->b1[i] = x->a1[i];
    x->b2[i] = 1.0;
  }
}

void SDTBiquad_linkwitzRileyLP(SDTBiquad *x, double fc) {
  double q;
  int i, j;

  for (i = 0; i < x->nSections / 2; i++) {
    j = i + x->nSections / 2;
    q = 1.0 / (2.0 * cos(SDT_PI * (i + 0.5) / x->nSections));
    SDTBiquad_common(x, i, fc, q);
    SDTBiquad_common(x, j, fc, q);
    x->a0[i] = x->a0[j] = 1.0 + x->alpha[i];
    x->a1[i] = x->a1[j] = (-2.0 * x->cosw) / x->a0[i];
    x->a2[i] = x->a2[j] = (1.0 - x->alpha[i]) / x->a0[i];
    x->b0[i] = x->b0[j] = (0.5 - 0.5 * x->cosw) / x->a0[i];
    x->b1[i] = x->b1[j] = (1.0 - x->cosw) / x->a0[i];
    x->b2[i] = x->b2[j] = x->b0[i];
  }
}

void SDTBiquad_linkwitzRileyHP(SDTBiquad *x, double fc) {
  double q;
  int i, j;

  for (i = 0; i < x->nSections / 2; i++) {
    j = i + x->nSections / 2;
    q = 1.0 / (2.0 * cos(SDT_PI * (i + 0.5) / x->nSections));
    SDTBiquad_common(x, i, fc, q);
    SDTBiquad_common(x, j, fc, q);
    x->a0[i] = x->a0[j] = 1.0 + x->alpha[i];
    x->a1[i] = x->a1[j] = (-2.0 * x->cosw) / x->a0[i];
    x->a2[i] = x->a2[j] = (1.0 - x->alpha[i]) / x->a0[i];
    x->b0[i] = x->b0[j] = (0.5 + 0.5 * x->cosw) / x->a0[i];
    x->b1[i] = x->b1[j] = (-1.0 - x->cosw) / x->a0[i];
    x->b2[i] = x->b2[j] = x->b0[i];
  }
}

double SDTBiquad_dsp(SDTBiquad *x, double in) {
  double x0, y0;
  int i, j;

  y0 = in;
  for (i = 0; i < x->nSections; i++) {
    j = 2 * i;
    x0 = y0;
    y0 = x->b0[i] * x0 + x->b1[i] * x->buf[j] + x->b2[i] * x->buf[j + 1] -
         x->a1[i] * x->buf[j + 2] - x->a2[i] * x->buf[j + 3];
    x->buf[j + 1] = x->buf[j];
    x->buf[j] = x0;
  }
  j = 2 * i;
  x->buf[j + 1] = x->buf[j];
  x->buf[j] = y0;
  return y0;
}

//-------------------------------------------------------------------------------------//

struct SDTAverage {
  double *buf, sum;
  long size, window, curr, last;
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
  x->window = size;
  x->curr = 0;
  x->last = 0;
  return x;
}

void SDTAverage_free(SDTAverage *x) {
  free(x->buf);
  free(x);
}

void SDTAverage_setWindow(SDTAverage *x, unsigned int i) {
  int j, k;

  i = SDT_clip(i, 1, x->size);
  for (j = i; j > x->window; j--) {
    k = (x->curr + x->size - j) % x->size;
    x->sum += x->buf[k];
  }
  for (j = x->window; j < i; j++) {
    k = (x->curr + x->size - j) % x->size;
    x->sum -= x->buf[k];
  }
  x->window = i;
  x->last = (x->curr + x->size - i) % x->size;
}

double SDTAverage_dsp(SDTAverage *x, double in) {
  x->sum -= x->buf[x->last];
  x->buf[x->curr] = in;
  x->sum += x->buf[x->curr];
  x->curr = (x->curr + 1) % x->size;
  x->last = (x->last + 1) % x->size;
  return x->sum / x->window;
}

//-------------------------------------------------------------------------------------//

struct SDTDelay {
  SDTAllPass *filters[2];
  double *buf, fade[16], feedback;
  long size, head, read[2], delay;
  int count, curr;
};

SDTDelay *SDTDelay_new(long maxDelay) {
  SDTDelay *x;
  long i;

  if (maxDelay < 1) maxDelay = 1;
  x = (SDTDelay *)malloc(sizeof(SDTDelay));
  x->filters[0] = SDTAllPass_new();
  x->filters[1] = SDTAllPass_new();
  x->buf = (double *)malloc(maxDelay * sizeof(double));
  for (i = 0; i < maxDelay; i++) {
    x->buf[i] = 0.0;
  }
  for (i = 0; i < 16; i++) {
    x->fade[i] = i < 5 ? 0.0 : 0.1 * (i - 5.0);
  }
  x->feedback = 0.0;
  x->delay = 0;
  x->size = maxDelay;
  x->head = 0;
  x->read[0] = 0;
  x->read[1] = 0;
  x->count = 0;
  x->curr = 0;
  return x;
}

void SDTDelay_free(SDTDelay *x) {
  SDTAllPass_free(x->filters[0]);
  SDTAllPass_free(x->filters[1]);
  free(x->buf);
  free(x);
}

void SDTDelay_clear(SDTDelay *x) {
  long i;

  for (i = 0; i < x->size; i++) {
    x->buf[i] = 0.0;
  }
  x->head = 0;
}

long SDTDelay_getMaxDelay(const SDTDelay *x) { return x->size; }

double SDTDelay_getDelay(const SDTDelay *x) {
  // Add 0.618 for compatibility with setter
  return x->delay + 0.618;
}

void SDTDelay_setDelay(SDTDelay *x, double f) {
  double d;
  f = SDT_fclip(f, 0.618, x->size);
  x->delay = f - 0.618;
  d = f - x->delay;
  x->feedback = (1.0 - d) / (1.0 + d);
}

double SDTDelay_dsp(SDTDelay *x, double in) {
  double yi, yj, gi, gj, out;
  long ri, rj;
  int i, j;

  x->buf[x->head] = in;
  if (x->count == 0) {
    x->curr ^= 1;
    x->read[x->curr] = (x->size + x->head - x->delay) % x->size;
    SDTAllPass_setFeedback(x->filters[x->curr], x->feedback);
  }
  i = x->curr;
  j = i ^ 1;
  ri = x->read[i];
  rj = x->read[j];
  yi = SDTAllPass_dsp(x->filters[i], x->buf[ri]);
  yj = SDTAllPass_dsp(x->filters[j], x->buf[rj]);
  gi = x->fade[x->count];
  gj = 1.0 - gi;
  out = gi * yi + gj * yj;
  x->head = (x->head + 1) % x->size;
  x->read[i] = (ri + 1) % x->size;
  x->read[j] = (rj + 1) % x->size;
  x->count = (x->count + 1) % 16;
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

long SDTComb_getMaxXDelay(const SDTComb *x) {
  return SDTDelay_getMaxDelay(x->xDelay);
}

long SDTComb_getMaxYDelay(const SDTComb *x) {
  return SDTDelay_getMaxDelay(x->yDelay);
}

void SDTComb_setXDelay(SDTComb *x, double f) {
  SDTDelay_setDelay(x->xDelay, f);
}

void SDTComb_setYDelay(SDTComb *x, double f) {
  SDTDelay_setDelay(x->yDelay, f);
}

void SDTComb_setXYDelay(SDTComb *x, double f) {
  SDTDelay_setDelay(x->xDelay, f);
  SDTDelay_setDelay(x->yDelay, f);
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
  double fwdFeedGain, revFeedGain, fwdThruGain, revThruGain, fwdIn, fwdFeed,
      fwdThru, revIn, revFeed, revThru;
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

int SDTWaveguide_getMaxDelay(const SDTWaveguide *x) {
  return SDTDelay_getMaxDelay(x->fwdDelay);
}

double SDTWaveguide_getDelay(const SDTWaveguide *x) {
  return SDTDelay_getDelay(x->fwdDelay);
}

double SDTWaveguide_getFwdOut(SDTWaveguide *x) { return x->fwdThru; }

double SDTWaveguide_getRevOut(SDTWaveguide *x) { return x->revThru; }

double SDTWaveguide_getRevFeedback(const SDTWaveguide *x) {
  return x->revFeedGain;
}

double SDTWaveguide_getFwdFeedback(const SDTWaveguide *x) {
  return x->fwdFeedGain;
}

void SDTWaveguide_setDelay(SDTWaveguide *x, double f) {
  SDTDelay_setDelay(x->fwdDelay, f);
  SDTDelay_setDelay(x->revDelay, f);
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
