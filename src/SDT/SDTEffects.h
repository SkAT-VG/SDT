#include "SDTCommonMacros.h"
#include "SDTJSON.h"

/** @file SDTEffects.h
@defgroup effects SDTEffects.h: Digital audio effects
Algorithms for audio post-processing, such as reverberation and pitch shifting
@{ */

#ifndef SDT_EFFECTS_H
#define SDT_EFFECTS_H

#ifdef __cplusplus
extern "C" {
#endif

/** @defgroup reverb Reverb
Artificial reverberator based on Feedback Delay Networks, as found in
D. Rocchesso, "Maximally diffusive yet efficient feedback delay networks
for artificial reverberation", Signal Processing Letters, IEEE 4.9 (1997):
252-255.
@{ */

/** @brief Opaque data structure for a reverberator object. */
typedef struct SDTReverb SDTReverb;

/** @brief Object constructor.
@param[in] maxDelay Maximum length of the delay lines, in samples
@return Pointer to the new instance */
extern SDTReverb *SDTReverb_new(long maxDelay);

/** @brief Object destructor.
@param[in] x Pointer to the instance to destroy */
extern void SDTReverb_free(SDTReverb *x);

#define SDT_REVERB Reverb
#define SDT_REVERB_NEW_ARGS 44100
#define SDT_REVERB_ATTRIBUTES(T, A)                           \
  A(T, maxDelay, long, MaxDelay, maxDelay, integer, 44100)    \
  A(T, xSize, double, XSize, xSize, double, 4.0)              \
  A(T, ySize, double, YSize, ySize, double, 5.0)              \
  A(T, zSize, double, ZSize, zSize, double, 3.0)              \
  A(T, randomness, double, Randomness, randomness, double, 0) \
  A(T, time, double, Time, time, double, 4.0)                 \
  A(T, time1k, double, Time1k, time1k, double, 3.6)

SDT_TYPE_COPY_H(SDT_REVERB)
SDT_DEFINE_HASHMAP_H(SDT_REVERB)
SDT_TYPE_MAKE_GETTERS_H(SDT_REVERB)
SDT_JSON_SERIALIZE_H(SDT_REVERB)
SDT_JSON_DESERIALIZE_H(SDT_REVERB)

extern void SDTReverb_setMaxDelay(SDTReverb *x, long f);

/** @brief Sets the room width.
@param[in] f Room width, in m */
extern void SDTReverb_setXSize(SDTReverb *x, double f);

/** @brief Sets the room height.
@param[in] f Room height, in m */
extern void SDTReverb_setYSize(SDTReverb *x, double f);

/** @brief Sets the room depth.
@param[in] f Room depth, in m */
extern void SDTReverb_setZSize(SDTReverb *x, double f);

/** @brief Sets how randomly distributed are the resonant modes.
This parameter is directly proportional to the irregularity of the shape of the
room.
@param[in] f Randomness in the modal distribution [0, 1] */
extern void SDTReverb_setRandomness(SDTReverb *x, double f);

/** @brief Sets the global, frequency-independent reverberation time.
@param[in] f Reverberation time, in s */
extern void SDTReverb_setTime(SDTReverb *x, double f);

/** @brief Sets the reverberation time at 1kHz.
@param[in] f Reverberation time at 1kHz, in s */
extern void SDTReverb_setTime1k(SDTReverb *x, double f);

/** @brief Updates the internal filters.
Call this function after every sample rate change. */
extern void SDTReverb_update(SDTReverb *x);

/** @brief Signal processing routine.
Call this function at sample rate to compute the reverberated signal.
@param[in] in Input sample
@return Output sample */
extern double SDTReverb_dsp(SDTReverb *x, double in);

/** @} */

/** @defgroup pitchshift Pitch shift
Frequency domain pitch shifter, useful to simulate doppler effect
or other applications requiring pitch shifting.
@{ */

/** @brief Opaque data structure for a pitch shifter object. */
typedef struct SDTPitchShift SDTPitchShift;

/** @brief Object constructor.
@param[in] size Internal buffer size, in samples
@param[in] oversample FFT oversampling rate
@return Pointer to the new instance */
extern SDTPitchShift *SDTPitchShift_new(int size, int oversample);

/** @brief Object destructor.
@param[in] x Pointer to the instance to destroy */
extern void SDTPitchShift_free(SDTPitchShift *x);

#define SDT_PITCHSHIFT PitchShift
#define SDT_PITCHSHIFT_NEW_ARGS 2048, 4
#define SDT_PITCHSHIFT_ATTRIBUTES(T, A)                     \
  A(T, size, int, Size, size, integer, 2048)                \
  A(T, oversample, int, Oversample, oversample, integer, 4) \
  A(T, ratio, double, Ratio, ratio, double, 1.0)            \
  A(T, overlap, double, Overlap, overlap, double, 0.75)

SDT_TYPE_COPY_H(SDT_PITCHSHIFT)
SDT_DEFINE_HASHMAP_H(SDT_PITCHSHIFT)
SDT_TYPE_MAKE_GETTERS_H(SDT_PITCHSHIFT)
SDT_JSON_SERIALIZE_H(SDT_PITCHSHIFT)
SDT_JSON_DESERIALIZE_H(SDT_PITCHSHIFT)

extern void SDTPitchShift_setSize(SDTPitchShift *x, int f);

extern void SDTPitchShift_setOversample(SDTPitchShift *x, int f);

/** @brief Sets the pitch shifting ratio.
@param[in] f New pitch / original pitch ratio */
extern void SDTPitchShift_setRatio(SDTPitchShift *x, double f);

/** @brief Sets the analysis window overlapping ratio.
Accepted values go from 0.0 to 1.0, with 0.0 meaning no overlap
and 1.0 meaning total overlap.
@param[in] x Pointer to the instance
@param[in] f Overlap ratio [0.0, 1.0] */
extern void SDTPitchShift_setOverlap(SDTPitchShift *x, double f);

/** @brief Signal processing routine.
Call this function at sample rate to compute the pitch shifted signal.
@param[in] in Input sample
@return Output sample */
extern double SDTPitchShift_dsp(SDTPitchShift *x, double in);

/** @} */

#ifdef __cplusplus
};
#endif

#endif

/** @} */
