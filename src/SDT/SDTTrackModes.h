/** @defgroup trackmodes Modal analyzer
This object detects the prominent modal components
in an audio segment and tracks their temporal evolution across time.
@{ */

/** @brief Opaque data structure for a modal analyzer. */
typedef struct SDTTrackModes SDTTrackModes;

/** @brief Instantiates a modal analyzer object.
@param[in] bufferSize Size of the audio buffer, in samples
@param[in] winSize Size of the analysis window, in samples
@return Pointer to the new instance */
extern SDTTrackModes *SDTTrackModes_new(unsigned int bufferSize, unsigned int winSize);

/** @brief Destroys a modal analyzer instance.
@param[in] x Pointer to the instance to destroy */
extern void SDTTrackModes_free(SDTTrackModes *x);

/** @brief Sets the analysis window overlapping ratio.
Accepted values go from 0.0 to 1.0, with 0.0 meaning no overlap
and 1.0 meaning total overlap.
@param[in] x Pointer to the instance
@param[in] f Overlap ratio [0.0, 1.0] */
extern void SDTTrackModes_setOverlap(SDTTrackModes *x, double f);

/** @brief Reads incoming sound samples and stores them into the object's audio buffer.
@param[in] x Pointer to the instance
@param[in] in Samples to read
@param[in] n Number of samples to read
@return Number of samples actually stored in the buffer */
extern int SDTTrackModes_readSamples(SDTTrackModes *x, double *in, unsigned int n);