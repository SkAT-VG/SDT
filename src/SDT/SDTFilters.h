#include "SDTCommonMacros.h"
#include "SDTJSON.h"

/** @file SDTFilters.h
@defgroup filters SDTFilters.h: Audio filters
Various commonly used LTI systems:
filters, delay lines, circular buffers, waveguides and so on.
Extensively used in many other SDT modules.
@{ */

#ifndef SDT_FILTERS_H
#define SDT_FILTERS_H

#ifdef __cplusplus
extern "C" {
#endif

/** @defgroup onepole One pole filter
Simple one pole filter.
@{ */

/** @brief Opaque data structure for a one pole filter object. */
typedef struct SDTOnePole SDTOnePole;

/** @brief Object constructor.
@return Pointer to the new instance */
extern SDTOnePole *SDTOnePole_new();

/** @brief Object destructor.
@param[in] x Pointer to the instance to destroy */
extern void SDTOnePole_free(SDTOnePole *x);

/** @brief Manually sets the alpha coefficient
@param[in] f Weight of the input sample */
extern void SDTOnePole_setFeedback(SDTOnePole *x, double f);

/** @brief Puts the filter in lowpass mode, at the given cutoff frequency.
@param[in] f Cutoff frequency, in Hz */
extern void SDTOnePole_lowpass(SDTOnePole *x, double f);

/** @brief Puts the filter in highpass mode, at the given cutoff frequency.
@param[in] f Cutoff frequency, in Hz */
extern void SDTOnePole_highpass(SDTOnePole *x, double f);

/** @brief Signal processing routine.
Call this function at sample rate to compute the filtered signal.
@param[in] in Input sample
@return Output sample */
extern double SDTOnePole_dsp(SDTOnePole *x, double in);

/** @} */

/** @defgroup dcf DC Filter
One-pole one-zero filter intended for DC removal.
Gain is normalized to peak at 0dB.
@{ */

/** @brief Opaque data structure for a DC filter object. */
typedef struct SDTDCFilter SDTDCFilter;

/** @brief Object constructor.
@return Pointer to the new instance */
extern SDTDCFilter *SDTDCFilter_new();

/** @brief Object destructor.
@param[in] x Pointer to the instance to destroy */
extern void SDTDCFilter_free(SDTDCFilter *x);

/** @brief Sets the alpha coefficient
@param[in] f Feedback coefficient */
extern void SDTDCFilter_setFeedback(SDTDCFilter *x, double f);

/** @brief Sets the alpha coefficient so that the filter
has the desired -3dB cutoff frequency.

Call this function again when changing the sample rate
@param[in] f Cutoff frequency, in hertz */
extern void SDTDCFilter_setFrequency(SDTDCFilter *x, double f);

/** @brief Gets the alpha coefficient
@return Feedback coefficient */
extern double SDTDCFilter_getFeedback(const SDTDCFilter *x);

/** @brief Gets the -3dB cutoff frequency of the filter.
@return Cutoff frequency, in hertz */
extern double SDTDCFilter_getFrequency(const SDTDCFilter *x);

/** @brief Signal processing routine.
Call this function at sample rate to compute the filtered signal.
@param[in] in Input sample
@return Output sample */
extern double SDTDCFilter_dsp(SDTDCFilter *x, double in);

/** @} */

/** @defgroup allpass Allpass filter
Allpass filter, used to adjust phases in fractional delay lines.
@{ */

/** @brief Opaque data structure for an allpass filter object. */
typedef struct SDTAllPass SDTAllPass;

/** @brief Object constructor.
@return Pointer to the new instance */
extern SDTAllPass *SDTAllPass_new();

/** @brief Object destructor.
@param[in] x Pointer to the instance to destroy */
extern void SDTAllPass_free(SDTAllPass *x);

/** @brief Sets the feedback coefficient.
@param[in] f Weight of the input sample */
extern void SDTAllPass_setFeedback(SDTAllPass *x, double f);

/** @brief Signal processing routine.
Call this function at sample rate to compute the filtered signal.
@param[in] in Input sample
@return Output sample */
extern double SDTAllPass_dsp(SDTAllPass *x, double in);

/** @} */

/** @defgroup envelope Envelope follower
One pole envelope follower, with independent attack and release times.
@{ */

/** @brief Opaque data structure for an envelope tracker object. */
typedef struct SDTEnvelope SDTEnvelope;

/** @brief Object constructor.
@return Pointer to the new instance */
extern SDTEnvelope *SDTEnvelope_new();

/** @brief Object destructor.
@param[in] x Pointer to the instance to destroy */
extern void SDTEnvelope_free(SDTEnvelope *x);

/** @brief Deep-copies an envelope tracker.
@param[in] dest Pointer to the instance to modify
@param[in] src Pointer to the instance to copy
@param[in] unsafe If false, do not perform any memory-related changes
@return Pointer to destination instance */
extern SDTEnvelope *SDTEnvelope_copy(SDTEnvelope *dest, const SDTEnvelope *src,
                                     unsigned char unsafe);

/** @brief Update inner filters. Manually call this function whenever you change
the SDT sample rate
@param[in] x Pointer to the instance to update */
extern void SDTEnvelope_update(SDTEnvelope *x);

/** @brief Registers an envelope tracker into the envelope trackers list with a
unique ID.
@param[in] x Envelope instance to register
@param[in] key Unique ID assigned to the envelope tracker instance
@return Zero on success, otherwise one */
extern int SDT_registerEnvelope(SDTEnvelope *x, const char *key);

/** @brief Queries the envelope trackers list by its unique ID.
If an envelope tracker with the ID is present, a pointer to the
envelope tracker is returned. Otherwise, a NULL pointer is
returned.
@param[in] key Unique ID assigned to the envelope tracker instance
@return Envelope instance pointer */
extern SDTEnvelope *SDT_getEnvelope(const char *key);

/** @brief Unregisters an envelope tracker from the envelope trackers list. If
an envelope tracker with the given ID is present, it is unregistered from the
list.
@param[in] key Unique ID of the envelope tracker instance to
unregister
@return Zero on success, otherwise one */
extern int SDT_unregisterEnvelope(const char *key);

/** @brief Gets the attack time.
@return Attack time, in ms */
extern double SDTEnvelope_getAttack(const SDTEnvelope *x);

/** @brief Gets the release time.
@return Release time, in ms */
extern double SDTEnvelope_getRelease(const SDTEnvelope *x);

/** @brief Represent an envelope tracker as a JSON object.
@param[in] x Pointer to the instance
@return JSON object */
extern json_value *SDTEnvelope_toJSON(const SDTEnvelope *x);

/** @brief Initialize an envelope tracker from a JSON object.
@param[in] x Pointer to the instance
@return JSON object */
extern SDTEnvelope *SDTEnvelope_fromJSON(const json_value *x);

/** @brief Set parameters of an envelope tracker from a JSON object.
@param[in] x Pointer to the instance
@param[in] j JSON object
@param[in] unsafe If false, do not perform any memory-related changes
@return Pointer to destination instance */
extern SDTEnvelope *SDTEnvelope_setParams(SDTEnvelope *x, const json_value *j,
                                          unsigned char unsafe);

/** @brief Sets the attack time.
@param[in] a Attack time, in ms */
extern void SDTEnvelope_setAttack(SDTEnvelope *x, double a);

/** @brief Sets the release time.
@param[in] r Release time, in ms */
extern void SDTEnvelope_setRelease(SDTEnvelope *x, double r);

/** @brief Signal processing routine.
Call this function at sample rate to compute the filtered signal.
@param[in] in Input sample
@return Output sample */
extern double SDTEnvelope_dsp(SDTEnvelope *x, double in);

/** @} */

/** @defgroup twopoles Two poles filter
Two poles filter, configurable as lowpass, highpass or resonant bandpass.
@{ */

/** @brief Opaque data structure for a two poles filter object. */
typedef struct SDTTwoPoles SDTTwoPoles;

/** @brief Object constructor.
@return Pointer to the new instance */
extern SDTTwoPoles *SDTTwoPoles_new();

/** @brief Object destructor.
@param[in] x Pointer to the instance to destroy */
extern void SDTTwoPoles_free(SDTTwoPoles *x);

/** @brief Puts the filter in lowpass mode, at the given cutoff frequency.
@param[in] fc Cutoff frequency, in Hz */
extern void SDTTwoPoles_lowpass(SDTTwoPoles *x, double fc);

/** @brief Puts the filter in highpass mode, at the given cutoff frequency.
@param[in] fc Cutoff frequency, in Hz */
extern void SDTTwoPoles_highpass(SDTTwoPoles *x, double fc);

/** @brief Puts the filter in resonant bandpass mode, at the given center
frequency and Q.
@param[in] fc Center frequency, in Hz
@param[in] q Q factor, in 1/octave */
extern void SDTTwoPoles_resonant(SDTTwoPoles *x, double fc, double q);

/** @brief Signal processing routine.
Call this function at sample rate to compute the filtered signal.
@param[in] in Input sample
@return Output sample */
extern double SDTTwoPoles_dsp(SDTTwoPoles *x, double in);

/** @} */

/** @defgroup biquad Cascade of biquadratic sections
Classic cascade of biquad sections, useful to implement a wide variety of
filters.
@{ */

/** @brief Opaque data structure for biquad cascade object. */
typedef struct SDTBiquad SDTBiquad;

/** @brief Object constructor.
@param[in] nSections Number of sections in the cascade.
The order of the resulting filter is twice this value (i.e. nSections = 4 ->
order = 8).
@return Pointer to the new instance */
extern SDTBiquad *SDTBiquad_new(int nSections);

/** @brief Object destructor.
@param[in] x Pointer to the instance to destroy */
extern void SDTBiquad_free(SDTBiquad *x);

#define SDT_BIQUAD Biquad
#define SDT_BIQUAD_NEW_ARGS 1
#define SDT_BIQUAD_ATTRIBUTES(T, A)

SDT_TYPE_COPY_H(SDT_BIQUAD)
SDT_DEFINE_HASHMAP_H(SDT_BIQUAD)
SDT_JSON_SERIALIZE_H(SDT_BIQUAD)
SDT_JSON_DESERIALIZE_H(SDT_BIQUAD)

/** @brief Designs a Butterworth lowpass filter, at the given cutoff frequency.
@param[in] fc Cutoff frequency, in Hz */
extern void SDTBiquad_butterworthLP(SDTBiquad *x, double fc);

/** @brief Designs a Butterworth highpass filter, at the given cutoff frequency.
@param[in] fc Cutoff frequency, in Hz */
extern void SDTBiquad_butterworthHP(SDTBiquad *x, double fc);

extern void SDTBiquad_butterworthAP(SDTBiquad *x, double fc);

/** @brief Designs the lowpass part of a Linkwitz-Riley crossover filter,
    at the given cutoff frequency.
    WARNING: the filter must have an even number of biquad sections!
@param[in] fc Cutoff frequency, in Hz */
extern void SDTBiquad_linkwitzRileyLP(SDTBiquad *x, double fc);

/** @brief Designs the highpass part of a Linkwitz-Riley crossover filter,
    at the given cutoff frequency.
    WARNING: the filter must have an even number of biquad sections!
@param[in] fc Cutoff frequency, in Hz */
extern void SDTBiquad_linkwitzRileyHP(SDTBiquad *x, double fc);

/** @brief Signal processing routine.
Call this function at sample rate to compute the filtered signal.
@param[in] in Input sample
@return Output sample */
extern double SDTBiquad_dsp(SDTBiquad *x, double in);

/** @} */

/** @defgroup average Moving average
Moving average filter, producing as output the average of the last input
samples.
@{ */

/** @brief Opaque data structure for a moving average filter object. */
typedef struct SDTAverage SDTAverage;

/** @brief Object constructor.
@param[in] size Moving average buffer size
@return Pointer to the new instance */
extern SDTAverage *SDTAverage_new(long size);

/** @brief Object destructor.
@param[in] x Pointer to the instance to destroy */
extern void SDTAverage_free(SDTAverage *x);

/** @brief Sets the averaging window.
@param[in] size Moving average window size [1,bufferSize] */
extern void SDTAverage_setWindow(SDTAverage *x, unsigned int i);

/** @brief Signal processing routine.
Call this function at sample rate to compute the filtered signal.
@param[in] in Input sample
@return Output sample */
extern double SDTAverage_dsp(SDTAverage *x, double in);

/** @} */

/** @defgroup delay Delay line
Delay line, supporting fractional and time-varying delay lengths.
@{ */

/** @brief Opaque data structure for a delay line object. */
typedef struct SDTDelay SDTDelay;

/** @brief Object constructor.
@param[in] maxDelay Buffer size, determining the maximum delay length, in
samples
@return Pointer to the new instance */
extern SDTDelay *SDTDelay_new(long maxDelay);

/** @brief Object destructor.
@param[in] x Pointer to the instance to destroy */
extern void SDTDelay_free(SDTDelay *x);

/** @brief Clears the buffer, therefore silencing the delayed signal. */
extern void SDTDelay_clear(SDTDelay *x);

extern long SDTDelay_getMaxDelay(const SDTDelay *x);
extern double SDTDelay_getDelay(const SDTDelay *x);

/** @brief Sets the delay time.
Fractional values are allowed. The delay time can be
continuously changed over time without audible glitches.
@param[in] f Delay time, in samples */
extern void SDTDelay_setDelay(SDTDelay *x, double f);

/** @brief Signal processing routine.
Call this function at sample rate to output the delayed signal.
@param[in] in Input sample
@return Output sample */
extern double SDTDelay_dsp(SDTDelay *x, double in);

/** @} */

/** @defgroup comb Comb filter
Comb filter, obtained adding to the input signal a rescaled and delayed copy of
itself. The filter works both in feed forward (delayed copy added to the output)
and feedback (delayed copy added to the input, causing a loop) configurations,
with independent gains and delay times.
@{ */

/** @brief Opaque data structure representing a comb filter object. */
typedef struct SDTComb SDTComb;

/** @brief Object constructor.
@param[in] maxXDelay Feed forward buffer size, in samples
@param[in] maxXDelay Feedback buffer size, in samples
@return Pointer to the new instance */
extern SDTComb *SDTComb_new(long maxXDelay, long maxYDelay);

/** @brief Object destructor.
@param[in] x Pointer to the instance to destroy */
extern void SDTComb_free(SDTComb *x);

extern long SDTComb_getMaxXDelay(const SDTComb *x);

extern long SDTComb_getMaxYDelay(const SDTComb *x);

/** @brief Sets the delay time for the feed forward section.
@param[in] f Feed forward delay time, in samples */
extern void SDTComb_setXDelay(SDTComb *x, double f);

/** @brief Sets the delay time for the feedback section.
@param[in] f Feedback delay time, in samples */
extern void SDTComb_setYDelay(SDTComb *x, double f);

/** @brief Sets the delay time for both sections.
@param[in] f Delay time, in samples */
extern void SDTComb_setXYDelay(SDTComb *x, double f);

/** @brief Sets the gain for the feed forward section.
@param[in] f Feed forward gain [0,1] */
extern void SDTComb_setXGain(SDTComb *x, double f);

/** @brief Sets the gain for the feedback section.
@param[in] f Feedback gain [0,1] */
extern void SDTComb_setYGain(SDTComb *x, double f);

/** @brief Sets the gain for both sections.
@param[in] f Gain [0,1] */
extern void SDTComb_setXYGain(SDTComb *x, double f);

/** @brief Signal processing routine.
Call this function at sample rate to output the filtered signal.
@param[in] in Input sample
@return Output sample */
extern double SDTComb_dsp(SDTComb *x, double in);

/** @} */

/** @defgroup waveguide Digital waveguide
Digital waveguide, simulating relection/refraction of waves in a medium
such as the air column in a tube or a vibrating string. Composed of two
delay lines of the same length, in a mutual feedback configuration.
@{ */

/** @brief Opaque data structure representing a digital waveguide object. */
typedef struct SDTWaveguide SDTWaveguide;

/** @brief Object constructor.
@param[in] maxDelay Size of the two buffers, in samples
@return Pointer to the new instance */
extern SDTWaveguide *SDTWaveguide_new(int maxDelay);

/** @brief Object destructor.
@param[in] x Pointer to the instance to destroy */
extern void SDTWaveguide_free(SDTWaveguide *x);

extern int SDTWaveguide_getMaxDelay(const SDTWaveguide *x);

extern double SDTWaveguide_getDelay(const SDTWaveguide *x);

extern double SDTWaveguide_getFwdFeedback(const SDTWaveguide *x);

extern double SDTWaveguide_getRevFeedback(const SDTWaveguide *x);

/** @brief Reads the output signal coming from the right side of the waveguide.
@return Output sample */
extern double SDTWaveguide_getFwdOut(SDTWaveguide *x);

/** @brief Reads the output signal coming from the left side of the waveguide.
@return Output sample */
extern double SDTWaveguide_getRevOut(SDTWaveguide *x);

/** @brief Sets the length of the waveguide, in samples.
@param[in] f Delay time, in samples */
extern void SDTWaveguide_setDelay(SDTWaveguide *x, double f);

/** @brief Sets the feedback on the right side.
Determines how much energy gets fed back into the system
after the wave reaches the right side of the waveguide.
Consequently, this value also determines how much attenuated
is the output on the same side.
@param[in] f Feedback gain [0,1] */
extern void SDTWaveguide_setFwdFeedback(SDTWaveguide *x, double f);

/** @brief Sets the feedback on the left side.
Determines how much energy gets fed back into the system
after the wave reaches the left side of the waveguide.
Consequently, this value also determines how much attenuated
is the output on the same side.
@param[in] f Feedback gain [0,1] */
extern void SDTWaveguide_setRevFeedback(SDTWaveguide *x, double f);

/** @brief Sets the frequency damping on the right side.
@param[in] f High frequency damping [0,1] */
extern void SDTWaveguide_setFwdDamping(SDTWaveguide *x, double f);

/** @brief Sets the frequency damping on the left side.
@param[in] f High frequency damping [0,1] */
extern void SDTWaveguide_setRevDamping(SDTWaveguide *x, double f);

/** @brief Signal processing routine.
Call this function at sample rate to compute the output samples.
To read them, call the respective functions
SDTWaveguide_getFwdOut() and SDTWaveguide_getRevOut().
@param[in] fwdIn Input coming from the left side of the waveguide
@param[in] fwdIn Input coming from the right side of the waveguide */
extern void SDTWaveguide_dsp(SDTWaveguide *x, double fwdIn, double revIn);

/** @} */

#ifdef __cplusplus
};
#endif

#endif

/** @} */