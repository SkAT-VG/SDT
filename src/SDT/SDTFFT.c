#include <math.h>
#include <stdlib.h>
#include <assert.h>
#include "SDTCommon.h"
#include "SDTComplex.h"
#include "SDTFFT.h"

struct SDTFFT {
  SDTComplex *fftPhasors, *ifftPhasors, *fftrPhasors, *ifftrPhasors;
  unsigned int *twiddles, n;
};

SDTFFT *SDTFFT_new(unsigned int n) {
  SDTFFT *x;
  double log2n, cw, rw;
  unsigned int bits, i;
  
  log2n = log2(n);
  bits = (unsigned int)log2n;
  if (bits != log2n) return NULL;
  x = (SDTFFT *)malloc(sizeof(SDTFFT));
  x->fftPhasors = (SDTComplex *)malloc(n * sizeof(SDTComplex));
  x->ifftPhasors = (SDTComplex *)malloc(n * sizeof(SDTComplex));
  x->fftrPhasors = (SDTComplex *)malloc(n * sizeof(SDTComplex));
  x->ifftrPhasors = (SDTComplex *)malloc(n * sizeof(SDTComplex));
  x->twiddles = (unsigned int *)malloc(n * sizeof(unsigned int));
  for (i = 0; i < n; i++) {
    cw = SDT_TWOPI * i / n;
    rw = SDT_PI * ((double)i / n + 0.5);
	x->fftPhasors[i].r = cos(-cw);
	x->fftPhasors[i].i = sin(-cw);
	x->ifftPhasors[i].r = cos(cw);
	x->ifftPhasors[i].i = sin(cw);
	x->fftrPhasors[i].r = cos(-rw);
	x->fftrPhasors[i].i = sin(-rw);
	x->ifftrPhasors[i].r = cos(rw);
	x->ifftrPhasors[i].i = sin(rw);
	x->twiddles[i] = SDT_bitReverse(i, bits);
  }
  x->n = n;
  return x;
}

void SDTFFT_free(SDTFFT *x) {
  free(x->fftPhasors);
  free(x->ifftPhasors);
  free(x->fftrPhasors);
  free(x->ifftrPhasors);
  free(x->twiddles);
  free(x);
}

void SDTFFT_fft(SDTFFT *x, int inverse, SDTComplex *in, SDTComplex *out) {
  SDTComplex *phasors, factor;
  unsigned int i, size, halfSize, offset, j, p, q;
  
  if (!inverse) phasors = x->fftPhasors;
  else phasors = x->ifftPhasors;
  for (i = 0; i < x->n; i++) {
	out[i] = in[x->twiddles[i]];
  }
  for (size = 2; size <= x->n; size <<= 1) {
	halfSize = size >> 1;
	for (offset = 0; offset < x->n; offset += size) {
	  for (i = 0; i < halfSize; i++) {
		j = i * (x->n / size);
		p = offset + i;
		q = p + halfSize;
		factor.r = phasors[j].r * out[q].r - phasors[j].i * out[q].i;
        factor.i = phasors[j].r * out[q].i + phasors[j].i * out[q].r;
		out[q].r = out[p].r - factor.r;
		out[q].i = out[p].i - factor.i;
		out[p].r = out[p].r + factor.r;
		out[p].i = out[p].i + factor.i;
	  }
	}
  }
}

void SDTFFT_fftr(SDTFFT *x, double *in, SDTComplex *out) {
  SDTComplex tmp[x->n], sum, dif, mul;
  unsigned int i, j;
  
  SDTFFT_fft(x, 0, (SDTComplex *)in, tmp);
  out[0].r = tmp[0].r + tmp[0].i;
  out[0].i = 0.0;
  out[x->n].r = tmp[0].r - tmp[0].i;
  out[x->n].i = 0.0;
  for (i = 1; i <= x->n / 2; i++) {
	j = x->n - i;
	sum.r = tmp[i].r + tmp[j].r;
	sum.i = tmp[i].i - tmp[j].i;
	dif.r = tmp[i].r - tmp[j].r;
	dif.i = tmp[i].i + tmp[j].i;
	mul.r = dif.r * x->fftrPhasors[i].r - dif.i * x->fftrPhasors[i].i;
	mul.i = dif.r * x->fftrPhasors[i].i + dif.i * x->fftrPhasors[i].r;
	out[i].r = 0.5 * (sum.r + mul.r);
	out[i].i = 0.5 * (sum.i + mul.i);
	out[j].r = 0.5 * (sum.r - mul.r);
	out[j].i = 0.5 * (mul.i - sum.i);
  }
}

void SDTFFT_ifftr(SDTFFT *x, SDTComplex *in, double *out) {
  SDTComplex tmp[x->n], sum, dif, mul;
  unsigned int i, j;
  
  tmp[0].r = in[0].r + in[x->n].r;
  tmp[0].i = in[0].r - in[x->n].r;
  for (i = 1; i <= x->n / 2; i++) {
    j = x->n - i;
	sum.r = in[i].r + in[j].r;
	sum.i = in[i].i - in[j].i;
	dif.r = in[i].r - in[j].r;
	dif.i = in[i].i + in[j].i;
	mul.r = dif.r * x->ifftrPhasors[i].r - dif.i * x->ifftrPhasors[i].i;
	mul.i = dif.r * x->ifftrPhasors[i].i + dif.i * x->ifftrPhasors[i].r;
	tmp[i].r = sum.r + mul.r;
	tmp[i].i = sum.i + mul.i;
	tmp[j].r = sum.r - mul.r;
	tmp[j].i = mul.i - sum.i;
  }
  SDTFFT_fft(x, 1, tmp, (SDTComplex *)out);
}
