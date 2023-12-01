#include "SDTCommonMacros.h"
#include "SDTJSON.h"

/** @file SDTDemix.h
@defgroup demix SDTDemix.h: Transient/tonal/residual components separator
This algorithm looks for vertical and horizontal structures in the spectrogram
to separate an arbitrary audio signal into its percussive (transients), harmonic
(sustained tones) and residual (noise) components. It is based on a technique
called structure tensor, frequently used in image processing for edge and corner
detection or to estimate the orientation of an object.

The structure tensor can be thought as a smoothed gradient
of the spectrogram, which describes the consistency and direction of changes in
the energy content of each bin. The anisotropy (consistency) and direction
descriptors extracted from the structure tensor are used to classify the
spectrogram bins into three categories: Bins which do not exhibit a particular
gradient direction (low anisotropy) become part of the residual, noisy
component; Bins which tend to have a vertical orientation (high anisotropy, high
direction) are included in the percussive component; Bins with a mostly
horizontal orientation (high anisotropy, low direction) fall into the harmonic
component.

This percussive/harmonic/residual separation is suitable to separate attacks,
decays and noise from a musical signal, or to isolate myoelastic (percussive),
phonatory (harmonic) and turbulent (noisy) activities from a vocal signal. In
particular, the algorithm can be used as a preprocessing step to improve the
results of the myoelastic detector, pitch tracker and spectral moments extractor
present in the analysis part of the Sound Design Toolkit.
@{
*/

#ifndef SDT_DEMIX_H
#define SDT_DEMIX_H

#ifdef __cplusplus
extern "C" {
#endif

/** @brief Opaque data structure for the percussive/harmonic/residual components
 * separator. */
typedef struct SDTDemix SDTDemix;

#define SDT_DEMIX_SIZE_DEFAULT 1024
#define SDT_DEMIX_RADIUS_DEFAULT 4

/** @brief Object constructor.
@param[in] size Analysis window length, in samples
@param[in] radius Smoothing kernel radius, in samples
@return Pointer to the new instance */
extern SDTDemix *SDTDemix_new(int size, int radius);

/** @brief Object destructor.
@param[in] x Pointer to the instance to destroy */
extern void SDTDemix_free(SDTDemix *x);

/** @brief Deep-copies a demixer
@param[in] dest Pointer to the instance to modify
@param[in] src Pointer to the instance to copy
@param[in] unsafe If false, do not perform any memory-related changes
@return Pointer to destination instance */
extern SDTDemix *SDTDemix_copy(SDTDemix *dest, const SDTDemix *src,
                               unsigned char unsafe);

/** @brief Registers a demixer into the demixers list with
a unique ID.
@param[in] x Demix process instance to register
@param[in] key Unique ID assigned to the demixer instance
@return Zero on success, otherwise one */
extern int SDT_registerDemix(SDTDemix *x, const char *key);

/** @brief Queries the demixers list by its unique ID.
If a demixer with the ID is present, a pointer to the demixer is returned.
Otherwise, a NULL pointer is returned.
@param[in] key Unique ID assigned to the demixer instance
@return Demix process instance pointer */
extern SDTDemix *SDT_getDemix(const char *key);

/** @brief Unregisters a demixer from the demixers list. If a demixer with the
given ID is present, it is unregistered from the list.
@param[in] key Unique ID of the demixer instance to unregister
@return Zero on success, otherwise one */
extern int SDT_unregisterDemix(const char *key);

/** @brief Gets the analysis window length.
@param[in] x Pointer to the instance
@return Analysis window length, in samples */
extern int SDTDemix_getSize(const SDTDemix *x);

/** @brief Gets the smoothing kernel radius.
@param[in] x Pointer to the instance
@return Smoothing kernel radius, in samples */
extern int SDTDemix_getRadius(const SDTDemix *x);

/** @brief Gets the window overlapping factor.
@param[in] x Pointer to the instance
@return Window overlapping factor */
extern double SDTDemix_getOverlap(const SDTDemix *x);

/** @brief Gets the noise threshold.
@param[in] x Pointer to the instance
@return Amount of signal falling into the residual category */
extern double SDTDemix_getNoiseThreshold(const SDTDemix *x);

/** @brief Gets the tonal threshold.
@param[in] x Pointer to the instance
@return Amount of non-residual falling into the tonal category */
extern double SDTDemix_getTonalThreshold(const SDTDemix *x);

/** @brief Represent a demixer as a JSON object.
@param[in] x Pointer to the instance
@return JSON object */
extern json_value *SDTDemix_toJSON(const SDTDemix *x);

/** @brief Initialize a demixer from a JSON object.
@param[in] x JSON object
@return Pointer to the instance */
extern SDTDemix *SDTDemix_fromJSON(const json_value *x);

/** @brief Set parameters of a demixer from a JSON object.
@param[in] x Pointer to the instance
@param[in] j JSON object
@param[in] unsafe If false, do not perform any memory-related changes
@return Pointer to destination instance */
extern SDTDemix *SDTDemix_setParams(SDTDemix *x, const json_value *j,
                                    unsigned char unsafe);

/** @brief Sets the analysis window length.
@param[in] f Analysis window length, in samples */
extern void SDTDemix_setSize(SDTDemix *x, int f);

/** @brief Sets the smoothing kernel radius.
@param[in] f Smoothing kernel radius, in samples */
extern void SDTDemix_setRadius(SDTDemix *x, int f);

/** @brief Sets the window overlapping factor.
@param[in] f Window overlapping factor */
extern void SDTDemix_setOverlap(SDTDemix *x, double f);

/** @brief Sets the noise threshold.
@param[in] f Amount of signal falling into the residual category */
extern void SDTDemix_setNoiseThreshold(SDTDemix *x, double f);

/** @brief Sets the tonal threshold.
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