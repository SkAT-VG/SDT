/** @file SDTOscillators.h
@defgroup oscillators SDTOscillators.h: Oscillators
Simple, commonly used sound generators.
@{ */

#ifndef SDT_OSCILLATORS_H
#define SDT_OSCILLATORS_H

#ifdef __cplusplus
extern "C" {
#endif

/** @brief Opaque data structure for a pink noise generator */
typedef struct SDTPinkNoise SDTPinkNoise;

/** @brief Object constructor.
@param[in] nOctaves N. of octave bands for the pink noise generator.
@return Pointer to the new instance */
extern SDTPinkNoise *SDTPinkNoise_new(int nOctaves);

/** @brief Object destructor.
@param[in] x Pointer to the instance to destroy */
extern void SDTPinkNoise_free(SDTPinkNoise *x);

/** @brief Signal processing routine.
Call this function at sample rate to generate pink noise */
extern double SDTPinkNoise_dsp(SDTPinkNoise *x);

/** @brief Signal processing routine.
Call this function at sample rate to generate white noise */
extern double SDT_whiteNoise();

/** @} */

#ifdef __cplusplus
};
#endif

#endif
