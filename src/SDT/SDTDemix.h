/** @file SDTDemix.h
@defgroup demix SDTDemix.h: Transient/tonal/residual components separator
This algorithm looks for vertical and horizontal structures in the spectrogram to
separate an arbitrary audio signal into its percussive (transients), harmonic (sustained
tones) and residual (noise) components. It is based on a technique called structure
tensor, frequently used in image processing for edge and corner detection or to estimate
the orientation of an object.

The structure tensor can be thought as a smoothed gradient
of the spectrogram, which describes the consistency and direction of changes in the
energy content of each bin. The anisotropy (consistency) and direction descriptors
extracted from the structure tensor are used to classify the spectrogram bins into three
categories: Bins which do not exhibit a particular gradient direction (low anisotropy)
become part of the residual, noisy component; Bins which tend to have a vertical
orientation (high anisotropy, high direction) are included in the percussive component;
Bins with a mostly horizontal orientation (high anisotropy, low direction) fall into the
harmonic component.

This percussive/harmonic/residual separation is suitable to separate attacks, decays
and noise from a musical signal, or to isolate myoelastic (percussive), phonatory
(harmonic) and turbulent (noisy) activities from a vocal signal. In particular, the
algorithm can be used as a preprocessing step to improve the results of the myoelastic
detector, pitch tracker and spectral moments extractor present in the analysis part of
the Sound Design Toolkit. 
@{
*/

#ifndef SDT_EFFECTS_H
#define SDT_EFFECTS_H

#ifdef __cplusplus
extern "C" {
#endif

/** @brief Opaque data structure for the percussive/harmonic/residual components separator. */
typedef struct SDTDemix SDTDemix;

/** @brief Object constructor.
@param[in] size Analysis window length, in samples
@param[in] radius Smoothing kernel radius, in samples
@return Pointer to the new instance */
extern SDTDemix *SDTDemix_new(int size, int radius);

/** @brief Object destructor.
@param[in] x Pointer to the instance to destroy */
extern void SDTDemix_free(SDTDemix *x);

/** @brief Sets the window overlapping factor.
@param[in] f Window overlapping factor */
extern void SDTDemix_setOverlap(SDTDemix *x, double f);

/** @brief Sets the noise threshold.
@param[in] f Amount of signal falling into the residual category */
extern void SDTDemix_setNoiseThreshold(SDTDemix *x, double f);

/** @brief Sets the tornal threshold.
@param[in] f Amount of non-residual falling into the tonal category */
extern void SDTDemix_setTonalThreshold(SDTDemix *x, double f);

/** @brief Signal processing routine.
Call this function at sample rate to separate an arbitrary signal into its
percussive/harmonic/residual components
@param[out] outs Pointer to a 3-elements output array. outs[0] is the percussive
component, outs[1] is the harmonic component and outs[2] is the residual.
@param[in] in Input sample */
extern void SDTDemix_dsp(SDTDemix *x, double *outs, double in);

#ifdef __cplusplus
};
#endif

#endif

/** @} */