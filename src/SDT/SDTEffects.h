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

#define SDT_REVERB_MAXDELAY_DEFAULT 44100

/** @brief Object constructor.
@param[in] maxDelay Maximum length of the delay lines, in samples
@return Pointer to the new instance */
extern SDTReverb *SDTReverb_new(long maxDelay);

/** @brief Object destructor.
@param[in] x Pointer to the instance to destroy */
extern void SDTReverb_free(SDTReverb *x);

/** @brief Deep-copies a reverberator.
@param[in] dest Pointer to the instance to modify
@param[in] src Pointer to the instance to copy
@param[in] unsafe If false, do not perform any memory-related changes
@return Pointer to destination instance */
extern SDTReverb *SDTReverb_copy(SDTReverb *dest, const SDTReverb *src,
                                 unsigned char unsafe);

/** @brief Registers a reverberator into the reverberators list with a unique
ID.
@param[in] x Reverb instance to register
@param[in] key Unique ID assigned to the reverberator instance
@return Zero on success, otherwise one */
extern int SDT_registerReverb(SDTReverb *x, const char *key);

/** @brief Queries the reverberators list by its unique ID. If a reverberator
with the ID is present, a pointer to the reverberator is returned. Otherwise, a
NULL pointer is returned.
@param[in] key Unique ID assigned to the reverberator instance
@return Reverb instance pointer */
extern SDTReverb *SDT_getReverb(const char *key);

/** @brief Unregisters a reverberator from the reverberator list. If a
reverberator with the given ID is present, it is unregistered from the list.
@param[in] key Unique ID of the reverberator instance to
unregister
@return Zero on success, otherwise one */
extern int SDT_unregisterReverb(const char *key);

/** @brief Gets the maximum delay.
@return Maximum length of the delay lines, in samples */
extern long SDTReverb_getMaxDelay(const SDTReverb *x);

/** @brief Gets the room width.
@return Room width, in m */
extern double SDTReverb_getXSize(const SDTReverb *x);

/** @brief Gets the room height.
@return Room height, in m */
extern double SDTReverb_getYSize(const SDTReverb *x);

/** @brief Gets the room depth.
@return Room depth, in m */
extern double SDTReverb_getZSize(const SDTReverb *x);

/** @brief Gets how randomly distributed are the resonant modes.
This parameter is directly proportional to the irregularity of the shape of the
room.
@return Randomness in the modal distribution [0, 1] */
extern double SDTReverb_getRandomness(const SDTReverb *x);

/** @brief Gets the global, frequency-independent reverberation time.
@return Reverberation time, in s */
extern double SDTReverb_getTime(const SDTReverb *x);

/** @brief Gets the reverberation time at 1kHz.
@return Reverberation time at 1kHz, in s */
extern double SDTReverb_getTime1k(const SDTReverb *x);

/** @brief Represent a reverberator as a JSON object.
@param[in] x Pointer to the instance
@return JSON object */
extern json_value *SDTReverb_toJSON(const SDTReverb *x);

/** @brief Initialize a reverberator from a JSON object.
@param[in] x Pointer to the instance
@return JSON object */
extern SDTReverb *SDTReverb_fromJSON(const json_value *x);

/** @brief Set parameters of a reverberator from a JSON object.
@param[in] x Pointer to the instance
@param[in] j JSON object
@param[in] unsafe If false, do not perform any memory-related changes
@return Pointer to destination instance */
extern SDTReverb *SDTReverb_setParams(SDTReverb *x, const json_value *j,
                                      unsigned char unsafe);

/** @brief Sets the maximum delay.
@param[in] f Maximum length of the delay lines, in samples */
extern void SDTReverb_setMaxDelay(SDTReverb *x, long f);

/** @brief Sets the room width.

You should call #SDTReverb_update after this function.
@param[in] f Room width, in m */
extern void SDTReverb_setXSize(SDTReverb *x, double f);

/** @brief Sets the room height.

You should call #SDTReverb_update after this function.
@param[in] f Room height, in m */
extern void SDTReverb_setYSize(SDTReverb *x, double f);

/** @brief Sets the room depth.

You should call #SDTReverb_update after this function.
@param[in] f Room depth, in m */
extern void SDTReverb_setZSize(SDTReverb *x, double f);

/** @brief Sets how randomly distributed are the resonant modes.
This parameter is directly proportional to the irregularity of the shape of the
room.

You should call #SDTReverb_update after this function.
@param[in] f Randomness in the modal distribution [0, 1] */
extern void SDTReverb_setRandomness(SDTReverb *x, double f);

/** @brief Sets the global, frequency-independent reverberation time.

You should call #SDTReverb_update after this function.
@param[in] f Reverberation time, in s */
extern void SDTReverb_setTime(SDTReverb *x, double f);

/** @brief Sets the reverberation time at 1kHz.

You should call #SDTReverb_update after this function.
@param[in] f Reverberation time at 1kHz, in s */
extern void SDTReverb_setTime1k(SDTReverb *x, double f);

/** @brief Updates the internal filters.
Call this function after changing the sample rate or any parameter. */
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

#define SDT_PITCHSHIFT_SIZE_DEFAULT 2048
#define SDT_PITCHSHIFT_OVERSAMPLE_DEFAULT 4

/** @brief Object constructor.
@param[in] size Internal buffer size, in samples
@param[in] oversample FFT oversampling rate
@return Pointer to the new instance */
extern SDTPitchShift *SDTPitchShift_new(int size, int oversample);

/** @brief Object destructor.
@param[in] x Pointer to the instance to destroy */
extern void SDTPitchShift_free(SDTPitchShift *x);

/** @brief Deep-copies a pitch shifter.
@param[in] dest Pointer to the instance to modify
@param[in] src Pointer to the instance to copy
@param[in] unsafe If false, do not perform any memory-related changes
@return Pointer to destination instance */
extern SDTPitchShift *SDTPitchShift_copy(SDTPitchShift *dest,
                                         const SDTPitchShift *src,
                                         unsigned char unsafe);

/** @brief Registers a pitch shifter into the pitch shifters list with a unique
ID.
@param[in] x PitchShift instance to register
@param[in] key Unique ID assigned to the pitch shifter instance
@return Zero on success, otherwise one */
extern int SDT_registerPitchShift(SDTPitchShift *x, const char *key);

/** @brief Queries the pitch shifters list by its unique ID. If a pitch shifter
with the ID is present, a pointer to the pitch shifter is returned. Otherwise, a
NULL pointer is returned.
@param[in] key Unique ID assigned to the pitch shifter instance
@return PitchShift instance pointer */
extern SDTPitchShift *SDT_getPitchShift(const char *key);

/** @brief Unregisters a pitch shifter from the pitch shifters list. If a pitch
shifter with the given ID is present, it is unregistered from the list.
@param[in] key Unique ID of the pitch shifter instance to unregister
@return Zero on success, otherwise one */
extern int SDT_unregisterPitchShift(const char *key);

/** @brief Gets the internal buffer size.
@return Internal buffer size, in samples */
extern int SDTPitchShift_getSize(const SDTPitchShift *x);

/** @brief Gets the FFT oversampling rate.
@return FFT oversampling rate */
extern int SDTPitchShift_getOversample(const SDTPitchShift *x);

/** @brief Gets the pitch shifting ratio.
@return New pitch / original pitch ratio */
extern double SDTPitchShift_getRatio(const SDTPitchShift *x);

/** @brief Gets the analysis window overlapping ratio.
@return Overlap ratio [0.0, 1.0] */
extern double SDTPitchShift_getOverlap(const SDTPitchShift *x);

/** @brief Represent a pitch shifter as a JSON object.
@param[in] x Pointer to the instance
@return JSON object */
extern json_value *SDTPitchShift_toJSON(const SDTPitchShift *x);

/** @brief Initialize a pitch shifter from a JSON object.
@param[in] x Pointer to the instance
@return JSON object */
extern SDTPitchShift *SDTPitchShift_fromJSON(const json_value *x);

/** @brief Set parameters of a pitch shifter from a JSON object.
@param[in] x Pointer to the instance
@param[in] j JSON object
@param[in] unsafe If false, do not perform any memory-related changes
@return Pointer to destination instance */
extern SDTPitchShift *SDTPitchShift_setParams(SDTPitchShift *x,
                                              const json_value *j,
                                              unsigned char unsafe);

/** @brief Sets the internal buffer size.
@param[in] f Internal buffer size, in samples */
extern void SDTPitchShift_setSize(SDTPitchShift *x, int f);

/** @brief Sets the FFT oversampling rate.
@param[in] f FFT oversampling rate */
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
