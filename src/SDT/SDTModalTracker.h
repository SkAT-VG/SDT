/** @file SDTModalTracker.h
@defgroup modaltracker Modal analyzer
This object detects the prominent modal components
in an audio segment and tracks their temporal evolution across time.
@{ */

#ifndef SDT_MODALTRACKER_H
#define SDT_MODALTRACKER_H

#ifdef __cplusplus
extern "C" {
#endif

/** @brief Opaque data structure for a modal analyzer. */
typedef struct SDTModalTracker SDTModalTracker;

/** @brief Instantiates a modal analyzer object.
@param[in] bufferSize Size of the audio buffer, in samples
@param[in] winSize Size of the analysis window, in samples
@return Pointer to the new instance */
extern SDTModalTracker *SDTModalTracker_new(long nModes, long bufferSize, long winSize);

/** @brief Destroys a modal analyzer instance.
@param[in] x Pointer to the instance to destroy */
extern void SDTModalTracker_free(SDTModalTracker *x);

/** @brief Sets the analysis window overlapping ratio.
Accepted values go from 0.0 to 1.0, with 0.0 meaning no overlap
and 1.0 meaning total overlap.
@param[in] x Pointer to the instance
@param[in] f Overlap ratio [0.0, 1.0] */
extern void SDTModalTracker_setOverlap(SDTModalTracker *x, double f);

/** @brief Reads incoming sound samples and stores them into the object's audio buffer.
@param[in] x Pointer to the instance
@param[in] in Samples to read
@param[in] n Number of samples to read
@return Number of samples actually stored in the buffer */
extern long SDTModalTracker_readSamples(SDTModalTracker *x, double *in, long n);

/** @brief Clears n samples from the object's audio buffer.
@param[in] x Pointer to the instance
@param[in] n Number of samples to clear
@return Number of samples actually cleared from the buffer */
extern long SDTModalTracker_clearSamples(SDTModalTracker *x, long n);

/** @brief Updates the modal analysis.
@param[in] x Pointer to the instance */
extern void SDTModalTracker_update(SDTModalTracker *x);

/** @brief Gives a representation of the detected modes in terms of magnitude, frequency, and decay time.
@param[in] x Pointer to the instance
@param[out] mags Magnitudes array
@param[out] freqs Frequencies array
@param[out] decays Decay times array */
extern void SDTModalTracker_static(SDTModalTracker *x, double *mags, double *freqs, double *decays);

/** @brief Returns modal weights and frequencies at a given time.
@param[in] x Pointer to the instance
@param[in] time Time after the impact, in seconds
@param[out] mags Magnitudes array
@param[out] freqs Frequencies array */
extern void SDTModalTracker_dynamic(SDTModalTracker *x, double time, double *mags, double *freqs);

/** @brief Registers a modal tracker into the modal trackers list with a unique ID.
@param[in] x ModalTracker instance to register
@param[in] key Unique ID assigned to the modal tracker instance */
extern int SDT_registerModalTracker(SDTModalTracker *x, char *key);

/** @brief Queries the modal trackers list by its unique ID.
If a modal tracker with the ID is present, a pointer to the modal tracker is returned.
Otherwise, a NULL pointer is returned.
@param[in] key Unique ID assigned to the ModalTracker instance
@return ModalTracker instance pointer */
extern SDTModalTracker *SDT_getModalTracker(const char *key);

/** @brief Unregisters a modal tracker from the modal trackers list.
If a modal tracker with the given ID is present, it is unregistered from the list.
@param[in] key Unique ID of the ModalTracker instance to unregister */
extern int SDT_unregisterModalTracker(char *key);

#ifdef __cplusplus
};
#endif

#endif

/** @} */