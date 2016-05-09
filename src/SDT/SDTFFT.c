#include <math.h>
#include <stdlib.h>
#include "SDTCommon.h"
#include "SDTComplex.h"
#include "SDTFFT.h"

struct SDTFFT {
  SDTComplex *fftPhasors, *ifftPhasors, *fftrPhasors, *ifftrPhasors;
  unsigned int *twiddles, n;
};

SDTFFT *SDTFFT_new(unsigned int n) {
  SDTFFT *x;
  double log2n;
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
	x->fftPhasors[i] = SDTComplex_exp(-SDT_TWOPI * i / n);
	x->ifftPhasors[i] = SDTComplex_exp(SDT_TWOPI * i / n);
	x->fftrPhasors[i] = SDTComplex_exp(-SDT_PI * ((double)i / n + 0.5));
	x->ifftrPhasors[i] = SDTComplex_exp(SDT_PI * ((double)i / n + 0.5));
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
  unsigned int i, size, halfSize, offset, p, q, r;
  
  if (!inverse) phasors = x->fftPhasors;
  else phasors = x->ifftPhasors;
  for (i = 0; i < x->n; i++) {
	out[i] = in[x->twiddles[i]];
  }
  for (size = 2; size <= x->n; size <<= 1) {
	halfSize = size >> 1;
	for (offset = 0; offset < x->n; offset += size) {
	  for (i = 0; i < halfSize; i++) {
		p = i * (x->n / size);
		q = offset + i;
		r = q + halfSize;
		factor = SDTComplex_mult(phasors[p], out[r]);
		out[r] = SDTComplex_sub(out[q], factor); 
		out[q] = SDTComplex_add(out[q], factor);
	  }
	}
  }
}

void SDTFFT_fftr(SDTFFT *x, double *in, SDTComplex *out) {
  SDTComplex tmp[x->n], znk, sum, dif, mul, even, odd;
  unsigned int i, j;
  
  SDTFFT_fft(x, 0, (SDTComplex *)in, tmp);
  out[0].r = tmp[0].r + tmp[0].i;
  out[0].i = 0.0;
  out[x->n].r = tmp[0].r - tmp[0].i;
  out[x->n].i = 0.0;
  for (i = 1; i <= x->n / 2; i++) {
	j = x->n - i;
	znk = SDTComplex_conj(tmp[j]);
	sum = SDTComplex_add(tmp[i], znk);
	dif = SDTComplex_sub(tmp[i], znk);
	mul = SDTComplex_mult(dif, x->fftrPhasors[i]);
	even = SDTComplex_add(sum, mul);
	odd = SDTComplex_sub(sum, mul);
	out[i] = SDTComplex_multReal(even, 0.5);
	out[j] = SDTComplex_multReal(odd, 0.5);
	out[j].i *= -1.0;
  }
}

void SDTFFT_ifftr(SDTFFT *x, SDTComplex *in, double *out) {
  SDTComplex tmp[x->n], znk, sum, dif, mul;
  unsigned int i, j;
  
  tmp[0].r = in[0].r + in[x->n].r;
  tmp[0].i = in[0].r - in[x->n].r;
  for (i = 1; i <= x->n / 2; i++) {
    j = x->n - i;
	znk = SDTComplex_conj(in[j]);
	sum = SDTComplex_add(in[i], znk);
	dif = SDTComplex_sub(in[i], znk);
	mul = SDTComplex_mult(dif, x->ifftrPhasors[i]);
	tmp[i] = SDTComplex_add(sum, mul);
	tmp[j] = SDTComplex_sub(sum, mul);
	tmp[j].i *= -1.0;
  }
  SDTFFT_fft(x, 1, tmp, (SDTComplex *)out);
}