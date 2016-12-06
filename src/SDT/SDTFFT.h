/** @file SDTFFT.h
@defgroup fft SDTFFT.h: Fast Fourier Transform
Data structures and functions to perform frequency analysis on signals
by means of the Discrete Fourier Transform and its inverse.
This implementation is based on the iterative version of the Cooley-Tukey algorithm,
works with double precision floating point arithmetic and provides an optimization
for the transformation of real-valued signals.
 
@{ */

#ifndef SDT_FFT_H
#define SDT_FFT_H

#ifdef __cplusplus
extern "C" {
#endif

/** @brief Opaque data structure, representing a FFT object. */
typedef struct SDTFFT SDTFFT;

/** @brief Object constructor.
@param[in] n FFT window length, must be a power of 2
@return Pointer to the newly created instance, or NULL if n is not a power of 2 */
extern SDTFFT *SDTFFT_new(unsigned int n);

/** @brief Object destructor.
@param[in] Pointer to the instance to destroy */
extern void SDTFFT_free(SDTFFT *x);

/** @brief Performs a direct or inverse FFT of a complex-valued signal.
@param[in] inverse Perform a direct FFT if 0, or an inverse FFT otherwise
@param[in] in Input signal to transform, must be at least of length n
@param[out] out Transformed output, must be at least of length n. When performing
an inverse transform, divide every sample by n to obtain the original signal */
extern void SDTFFT_fft(SDTFFT *x, int inverse, SDTComplex *in, SDTComplex *out);

/** @brief Performs a direct FFT of a real-valued signal.
@param[in] in Input signal to transform, must be at least of length 2n
@param[out] out Transformed output */
extern void SDTFFT_fftr(SDTFFT *x, double *in, SDTComplex *out);

/** @brief Performs an inverse FFT of a signal known to be real-valued.
@param[in] in Input FFT to invert
@param[out] out Reconstructed signal. Divide every sample by n
to obtain the original signal */
extern void SDTFFT_ifftr(SDTFFT *x, SDTComplex *in, double *out);

#ifdef __cplusplus
};
#endif

#endif

/** @} */