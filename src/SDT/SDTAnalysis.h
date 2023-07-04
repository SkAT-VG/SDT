#include "SDTCommonMacros.h"
#include "SDTJSON.h"

/** @file SDTAnalysis.h
@defgroup analysis SDTAnalysis.h: Sound analysis tools
Tools for the extraction of low level audio descriptors,
specifically tailored for the analysis of vocal imitations
and the vocal control of SDT models in the SkAT-VG project.
@{ */

#ifndef SDT_ANALYSIS_H
#define SDT_ANALYSIS_H

#ifdef __cplusplus
extern "C" {
#endif

/** @defgroup zerocrossing Zero crossing rate
Zero crossing rate signal analyzer.
@{ */

/** @brief Opaque data structure for a zero crossing rate detector object. */
typedef struct SDTZeroCrossing SDTZeroCrossing;

/** @brief Instantiates a zero crossing rate detector.
@param[in] size Size of the analysis window, in samples
@return Pointer to the new instance */
extern SDTZeroCrossing *SDTZeroCrossing_new(unsigned int size);

/** @brief Destroys a zero crossing rate detector.
@param[in] x Pointer to the instance to destroy */
extern void SDTZeroCrossing_free(SDTZeroCrossing *x);

/** @brief Deep-copies a zero crossing rate detector.
@param[in] dest Pointer to the instance to modify
@param[in] src Pointer to the instance to copy
@param[in] unsafe If false, do not perform any memory-related changes
@return Pointer to destination instance */
extern SDTZeroCrossing *SDTZeroCrossing_copy(SDTZeroCrossing *dest,
                                             const SDTZeroCrossing *src,
                                             unsigned char unsafe);

/** @brief Registers a zero crossing rate detector into the zero crossing rate
detectors list with a unique ID.
@param[in] x Zero crossing rate detector instance to register
@param[in] key Unique ID assigned to the zero crossing rate detector instance
@return Zero on success, otherwise one */
extern int SDT_registerZeroCrossing(SDTZeroCrossing *x, const char *key);

/** @brief Queries the zero crossing rate detectors list by its unique ID.
If a zero crossing rate detector with the ID is present, a pointer to the zero
crossing rate detector is returned. Otherwise, a NULL pointer is returned.
@param[in] key Unique ID assigned to the zero crossing rate detector instance
@return Zero crossing rate detector instance pointer */
extern SDTZeroCrossing *SDT_getZeroCrossing(const char *key);

/** @brief Unregisters a zero crossing rate detector from the zero crossing rate
detectors list. If a zero crossing rate detector with the given ID is present,
it is unregistered from the list.
@param[in] key Unique ID of the zero crossing rate detector instance to
unregister
@return Zero on success, otherwise one */
extern int SDT_unregisterZeroCrossing(const char *key);

/** @brief Gets the size of the analysis window.
@param[in] x Pointer to the instance
@return Size of the analysis window, in samples */
extern unsigned int SDTZeroCrossing_getSize(const SDTZeroCrossing *x);

/** @brief Gets the analysis window overlapping ratio.
@param[in] x Pointer to the instance
@return Overlap ratio [0.0, 1.0] */
extern double SDTZeroCrossing_getOverlap(const SDTZeroCrossing *x);

/** @brief Represent a zero crossing rate detector as a JSON object.
@param[in] x Pointer to the instance
@return JSON object */
extern json_value *SDTZeroCrossing_toJSON(const SDTZeroCrossing *x);

/** @brief Initialize a zero crossing rate detector from a JSON object.
@param[in] x JSON object
@return Pointer to the instance */
extern SDTZeroCrossing *SDTZeroCrossing_fromJSON(const json_value *x);

/** @brief Set parameters of a zero crossing rate detector from a JSON object.
@param[in] x Pointer to the instance
@param[in] j JSON object
@param[in] unsafe If false, do not perform any memory-related changes
@return Pointer to destination instance */
extern SDTZeroCrossing *SDTZeroCrossing_setParams(SDTZeroCrossing *x,
                                                  const json_value *j,
                                                  unsigned char unsafe);

/** @brief Sets the size of the analysis window, in samples.
This function allocates memory and should not be called inside a DSP cycle.
@param[in] x Pointer to the instance
@param[in] f Size of the analysis window, in samples */
extern void SDTZeroCrossing_setSize(SDTZeroCrossing *x, unsigned int f);

/** @brief Sets the analysis window overlapping ratio.
Accepted values go from 0.0 to 1.0, with 0.0 meaning no overlap
and 1.0 meaning total overlap.
@param[in] x Pointer to the instance
@param[in] f Overlap ratio [0.0, 1.0] */
extern void SDTZeroCrossing_setOverlap(SDTZeroCrossing *x, double f);

/** @brief Signal processing routine.
Call this function at sample rate to perform signal analysis.
@param[in] x Pointer to the instance
@param[out] out Pointer to a double containing the algorithm output
@param[in] in Input sample
@return 1 if output available (analysis window full), 0 otherwise  */
extern int SDTZeroCrossing_dsp(SDTZeroCrossing *x, double *out, double in);

/** @} */

/** @defgroup myoelastic Myoelastic features extractor
Extracts amount and frequency of slow amplitude variations in the signal.
Specifically designed for the detection of myoelastic activity in vocal input.
@{ */

/** @brief Opaque data structure for a myoelastic feature extractor object. */
typedef struct SDTMyoelastic SDTMyoelastic;

/** @brief Instantiates a myoelastic feature extractor.
@return Pointer to the new instance */
extern SDTMyoelastic *SDTMyoelastic_new(int size);

/** @brief Destroys a myoelastic feature extractor.
@param[in] x Pointer to the instance to destroy */
extern void SDTMyoelastic_free(SDTMyoelastic *x);

#define SDT_MYOELASTIC Myoelastic
#define SDT_MYOELASTIC_NEW_ARGS 0
#define SDT_MYOELASTIC_ATTRIBUTES(T, A)                           \
  A(T, dcCut, double, DcFrequency, dcFrequency, double, 0)        \
  A(T, lowCut, double, LowFrequency, lowFrequency, double, 0)     \
  A(T, highCut, double, HighFrequency, highFrequency, double, -1) \
  A(T, threshold, double, Threshold, threshold, double, 0)

/** @brief Deep-copies a myoelastic feature extractor.
@param[in] dest Pointer to the instance to modify
@param[in] src Pointer to the instance to copy
@param[in] unsafe If false, do not perform any memory-related changes
@return Pointer to destination instance */
extern SDTMyoelastic *SDTMyoelastic_copy(SDTMyoelastic *dest,
                                         const SDTMyoelastic *src);

/** @brief Registers a myoelastic feature extractor into the myoelastic feature
extractors list with a unique ID.
@param[in] x Myoelastic feature extractor instance to register
@param[in] key Unique ID assigned to the myoelastic feature extractor instance
@return Zero on success, otherwise one */
extern int SDT_registerMyoelastic(SDTMyoelastic *x, const char *key);

/** @brief Queries the myoelastic feature extractors list by its unique ID.
If a myoelastic feature extractor with the ID is present, a pointer to the
myoelastic feature extractor is returned. Otherwise, a NULL pointer is returned.
@param[in] key Unique ID assigned to the myoelastic feature extractor instance
@return Myoelastic feature extractor instance pointer */
extern SDTMyoelastic *SDT_getMyoelastic(const char *key);

/** @brief Unregisters a myoelastic feature extractor from the myoelastic
feature extractors list. If a myoelastic feature extractor with the given ID is
present, it is unregistered from the list.
@param[in] key Unique ID of the myoelastic feature extractor instance to
unregister
@return Zero on success, otherwise one */
extern int SDT_unregisterMyoelastic(const char *key);

/** @brief Gets the DC offset cutoff.
@param[in] x Pointer to the instance
@return DC offset cutoff, in Hz */
extern double SDTMyoelastic_getDcFrequency(const SDTMyoelastic *x);

/** @brief Gets the low frequency cutoff.
@param[in] x Pointer to the instance
@return Low frequency cutoff, in Hz */
extern double SDTMyoelastic_getLowFrequency(const SDTMyoelastic *x);

/** @brief Gets the high frequency cutoff.
@param[in] x Pointer to the instance
@return High frequency cutoff, in Hz */
extern double SDTMyoelastic_getHighFrequency(const SDTMyoelastic *x);

/** @brief Gets the amplitude threshold of the input gate.
@param[in] x Pointer to the instance
@return Amplitude threshold */
extern double SDTMyoelastic_getThreshold(const SDTMyoelastic *x);

/** @brief Represent a myoelastic feature extractor as a JSON object.
@param[in] x Pointer to the instance
@return JSON object */
extern json_value *SDTMyoelastic_toJSON(const SDTMyoelastic *x);

/** @brief Initialize a myoelastic feature extractor from a JSON object.
@param[in] x Pointer to the instance
@return JSON object */
extern SDTMyoelastic *SDTMyoelastic_fromJSON(const json_value *x);

/** @brief Set parameters of a myoelastic feature extractor from a JSON object.
@param[in] x Pointer to the instance
@param[in] j JSON object
@param[in] unsafe If false, do not perform any memory-related changes
@return Pointer to destination instance */
extern SDTMyoelastic *SDTMyoelastic_setParams(SDTMyoelastic *x,
                                              const json_value *j,
                                              unsigned char unsafe);

/** @brief Sets the DC offset cutoff.
@param[in] x Pointer to the instance
@param[in] f DC offset cutoff, in Hz */
extern void SDTMyoelastic_setDcFrequency(SDTMyoelastic *x, double f);

/** @brief Sets the low frequency cutoff.
@param[in] x Pointer to the instance
@param[in] f Low frequency cutoff, in Hz */
extern void SDTMyoelastic_setLowFrequency(SDTMyoelastic *x, double f);

/** @brief Sets the high frequency cutoff.
@param[in] x Pointer to the instance
@param[in] f High frequency cutoff, in Hz */
extern void SDTMyoelastic_setHighFrequency(SDTMyoelastic *x, double f);

/** @brief Sets the amplitude threshold of the input gate.
Myoelastic activity is not computed for signals whose amplitude is below this
thresold.
@param[in] x Pointer to the instance
@param[in] f Amplitude threshold */
extern void SDTMyoelastic_setThreshold(SDTMyoelastic *x, double f);

/** @brief Signal processing routine.
Call this function at sample rate to perform signal analysis.
@param[in] x Pointer to the instance
@param[out] outs Pointer to an array of four doubles containing the algorithm
output (slow myoelastic amount and frequency, fast myoelastic amount and
frequency)
@param[in] in Input sample
@return 1 if output available, 0 otherwise */
extern int SDTMyoelastic_dsp(SDTMyoelastic *x, double *outs, double in);

/** @} */

/** @defgroup spectralfeats Spectral audio descriptors
Spectral features extractor: statistical moments (centroid, spread, skewness,
kurtosis), spectral flatness, spectral flux and an onset detection function
based on rectified, whitened spectral flux.
@{ */

/** @brief Opaque data structure for a spectral features extractor. */
typedef struct SDTSpectralFeats SDTSpectralFeats;

/** @brief Instantiates a spectral features extractor.
@param[in] size Size of the analysis window, in samples
@return Pointer to the new instance */
extern SDTSpectralFeats *SDTSpectralFeats_new(unsigned int size);

/** @brief Destroys a spectral features extractor.
@param[in] x Pointer to the instance to destroy */
extern void SDTSpectralFeats_free(SDTSpectralFeats *x);

#define SDT_SPECTRALFEATS SpectralFeats
#define SDT_SPECTRALFEATS_NEW_ARGS 1024
#define SDT_SPECTRALFEATS_ATTRIBUTES(T, A)            \
  A(T, size, unsigned int, Size, size, integer, 1024) \
  A(T, overlap, double, Overlap, overlap, double, 0)  \
  A(T, min, double, MinFreq, minFreq, double, 0)      \
  A(T, max, double, MaxFreq, maxFreq, double, 0)

SDT_TYPE_COPY_H(SDT_SPECTRALFEATS)
SDT_DEFINE_HASHMAP_H(SDT_SPECTRALFEATS)
SDT_TYPE_MAKE_GETTERS_H(SDT_SPECTRALFEATS)
SDT_JSON_SERIALIZE_H(SDT_SPECTRALFEATS)
SDT_JSON_DESERIALIZE_H(SDT_SPECTRALFEATS)

extern void SDTSpectralFeats_setSize(SDTSpectralFeats *x, unsigned int f);

/** @brief Sets the analysis window overlapping ratio.
Accepted values go from 0.0 to 1.0, with 0.0 meaning no overlap
and 1.0 meaning total overlap.
@param[in] x Pointer to the instance
@param[in] f Overlap ratio [0.0, 1.0] */
extern void SDTSpectralFeats_setOverlap(SDTSpectralFeats *x, double f);

/** @brief Sets the lower frequency bound for spectral analysis.
Spectral bins below this frequency are ignored in the audio descriptors
computation.
@param[in] x Pointer to the instance
@param[in] f Minimum analyzed frequency, in Hz */
extern void SDTSpectralFeats_setMinFreq(SDTSpectralFeats *x, double f);

/** @brief Sets the upper frequency bound for spectral analysis.
Spectral bins above this frequency are ignored in the audio descriptors
computation.
@param[in] x Pointer to the instance
@param[in] f Maximum analyzed frequency, in Hz */
extern void SDTSpectralFeats_setMaxFreq(SDTSpectralFeats *x, double f);

/** @brief Signal processing routine.
Call this function for each sample to perform signal analysis.
@param[in] x Pointer to the instance
@param[out] outs Pointer to an array of seven doubles, containing the algorithm
outputs. Array members represent the following information respectively:
-# Spectral centroid,
-# Spectral spread,
-# Spectral skewness,
-# Spectral kurtosis,
-# Spectral flatness,
-# Spectral flux,
-# Onset detection function (rectified and whitened spectral flux).
@param[in] in Input sample
@return 1 if output available (analysis window full), 0 otherwise */
extern int SDTSpectralFeats_dsp(SDTSpectralFeats *x, double *outs, double in);

/** @} */

/** @defgroup pitch Fundamental frequency estimator
The pitch detection algorithm implemented in this object
is discussed in the paper "A smarter way to find pitch"
by Philip McLeod and Geoff Wyvill (2005) and it is based
on the NSDF (Normalized Squared Differences Function),
a close relative of the autocorrelation function.
@{ */

/** @brief Opaque data structure for a fundamental frequency estimator. */
typedef struct SDTPitch SDTPitch;

/** @brief Instantiates a fundamental frequency estimator object.
@param[in] size Size of the analysis window, in samples
@return Pointer to the new instance */
extern SDTPitch *SDTPitch_new(unsigned int size);

/** @brief Destroys a fundamental frequency estimator instance.
@param[in] x Pointer to the instance to destroy */
extern void SDTPitch_free(SDTPitch *x);

#define SDT_PITCH Pitch
#define SDT_PITCH_NEW_ARGS 1024
#define SDT_PITCH_ATTRIBUTES(T, A)                    \
  A(T, size, unsigned int, Size, size, integer, 1024) \
  A(T, overlap, double, Overlap, overlap, double, 0)  \
  A(T, tol, double, Tolerance, tolerance, double, 0.2)

SDT_TYPE_COPY_H(SDT_PITCH)
SDT_DEFINE_HASHMAP_H(SDT_PITCH)
SDT_TYPE_MAKE_GETTERS_H(SDT_PITCH)
SDT_JSON_SERIALIZE_H(SDT_PITCH)
SDT_JSON_DESERIALIZE_H(SDT_PITCH)

extern void SDTPitch_setSize(SDTPitch *x, unsigned int f);

/** @brief Sets the analysis window overlapping ratio.
Accepted values go from 0.0 to 1.0, with 0.0 meaning no overlap
and 1.0 meaning total overlap.
@param[in] x Pointer to the instance
@param[in] f Overlap ratio [0.0, 1.0] */
extern void SDTPitch_setOverlap(SDTPitch *x, double f);

/** @brief Sets the peak detection tolerance.
Always choosing the greatest NSDF peak as pitch estimation
sometimes leads to wrong octave detection errors.
To overcome this problem, some tolerance is introduced
in the peak detection algorithm.
The chosen NSDF peak is the one with lowest frequency
among those with value close enough to the global maximum.
A value of 0.0 always selects the global maximum,
while a value of 1.0 always selects the last NSDF peak.
@param[in] x Pointer to the instance
@param[in] f Pitch estimation tolerance [0.0, 1.0] */
extern void SDTPitch_setTolerance(SDTPitch *x, double f);

/** @brief Signal processing routine.
Call this function for each sample to perform signal analysis.
@param[in] x Pointer to the instance
@param[out] outs Pointer to an array of two doubles, containing the algorithm
outputs. Array members represent the following information respectively:
-# Estimated pitch (Hz),
-# Pitch clarity [0.0, 1.0].
@param[in] in Input sample
@return 1 if output available (analysis window full), 0 otherwise */
extern int SDTPitch_dsp(SDTPitch *x, double *outs, double in);

/** @} */

#ifdef __cplusplus
};
#endif

#endif

/** @} */
