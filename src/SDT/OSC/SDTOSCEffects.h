#include "SDTOSCCommon.h"

/** @file SDTOSCEffects.h
@defgroup osceffects SDTOSCEffects.h: OSC for digital audio effects
@{ */

#ifndef SDT_OSC_EFFECTS_H
#define SDT_OSC_EFFECTS_H

#ifdef __cplusplus
extern "C" {
#endif

/** @defgroup oscpitchshift SDTOSCPitchShift
OSC for #SDTPitchShift objects
@ingroup oscmethods
@{ */

/** @brief `/pitchshift/log <name>`

Function that implements OSC JSON log for #SDTPitchShift objects
@param x OSC message
@return Zero on success, non-zero otherwise */
extern int SDTOSCPitchShift_log(const SDTOSCMessage *x);

/** @brief `/pitchshift/save <name> <filepath>`

Function that implements OSC JSON save for #SDTPitchShift objects
@param x OSC message
@return Zero on success, non-zero otherwise */
extern int SDTOSCPitchShift_save(const SDTOSCMessage *x);

/** @brief `/pitchshift/load <name> <filepath>`

Function that implements OSC JSON file loading for #SDTPitchShift objects
@param x OSC message
@return Zero on success, non-zero otherwise */
extern int SDTOSCPitchShift_load(const SDTOSCMessage *x);

/** @brief `/pitchshift/loads <name> <json_string>`

Function that implements OSC JSON loading from string for #SDTPitchShift
objects
@param x OSC message
@return Zero on success, non-zero otherwise */
extern int SDTOSCPitchShift_loads(const SDTOSCMessage *x);

/** @brief `/pitchshift/size <name> <value>`

Function that implements OSC parameter setting for #SDTPitchShift objects
@param x OSC message
@return Zero on success, non-zero otherwise */
extern int SDTOSCPitchShift_setSize(const SDTOSCMessage *x);

/** @brief `/pitchshift/oversample <name> <value>`

Function that implements OSC parameter setting for #SDTPitchShift objects
@param x OSC message
@return Zero on success, non-zero otherwise */
extern int SDTOSCPitchShift_setOversample(const SDTOSCMessage *x);

/** @brief `/pitchshift/overlap <name> <value>`

Function that implements OSC parameter setting for #SDTPitchShift objects
@param x OSC message
@return Zero on success, non-zero otherwise */
extern int SDTOSCPitchShift_setOverlap(const SDTOSCMessage *x);

/** @brief `/pitchshift/ratio <name> <value>`

Function that implements OSC parameter setting for #SDTPitchShift objects
@param x OSC message
@return Zero on success, non-zero otherwise */
extern int SDTOSCPitchShift_setRatio(const SDTOSCMessage *x);

/** @brief `/pitchshift/...`

Function that routes OSC commands for #SDTPitchShift objects
@param x OSC message pointer
@return Zero on success, non-zero otherwise */
extern int SDTOSCPitchShift(const SDTOSCMessage *x);

/** @} */

/** @defgroup oscreverb SDTOSCReverb
OSC for #SDTReverb objects
@ingroup oscmethods
@{ */

/** @brief `/reverb/log <name>`

Function that implements OSC JSON log for #SDTReverb objects
@param x OSC message
@return Zero on success, non-zero otherwise */
extern int SDTOSCReverb_log(const SDTOSCMessage *x);

/** @brief `/reverb/save <name> <filepath>`

Function that implements OSC JSON save for #SDTReverb objects
@param x OSC message
@return Zero on success, non-zero otherwise */
extern int SDTOSCReverb_save(const SDTOSCMessage *x);

/** @brief `/reverb/load <name> <filepath>`

Function that implements OSC JSON file loading for #SDTReverb objects
@param x OSC message
@return Zero on success, non-zero otherwise */
extern int SDTOSCReverb_load(const SDTOSCMessage *x);

/** @brief `/reverb/loads <name> <json_string>`

Function that implements OSC JSON loading from string for #SDTReverb
objects
@param x OSC message
@return Zero on success, non-zero otherwise */
extern int SDTOSCReverb_loads(const SDTOSCMessage *x);

/** @brief `/reverb/xSize <name> <value>`

Function that implements OSC parameter setting for #SDTReverb objects
@param x OSC message
@return Zero on success, non-zero otherwise */
extern int SDTOSCReverb_setXSize(const SDTOSCMessage *x);

/** @brief `/reverb/ySize <name> <value>`

Function that implements OSC parameter setting for #SDTReverb objects
@param x OSC message
@return Zero on success, non-zero otherwise */
extern int SDTOSCReverb_setYSize(const SDTOSCMessage *x);

/** @brief `/reverb/zSize <name> <value>`

Function that implements OSC parameter setting for #SDTReverb objects
@param x OSC message
@return Zero on success, non-zero otherwise */
extern int SDTOSCReverb_setZSize(const SDTOSCMessage *x);

/** @brief `/reverb/randomness <name> <value>`

Function that implements OSC parameter setting for #SDTReverb objects
@param x OSC message
@return Zero on success, non-zero otherwise */
extern int SDTOSCReverb_setRandomness(const SDTOSCMessage *x);

/** @brief `/reverb/time <name> <value>`

Function that implements OSC parameter setting for #SDTReverb objects
@param x OSC message
@return Zero on success, non-zero otherwise */
extern int SDTOSCReverb_setTime(const SDTOSCMessage *x);

/** @brief `/reverb/time1k <name> <value>`

Function that implements OSC parameter setting for #SDTReverb objects
@param x OSC message
@return Zero on success, non-zero otherwise */
extern int SDTOSCReverb_setTime1k(const SDTOSCMessage *x);

/** @brief `/reverb/...`

Function that routes OSC commands for #SDTReverb objects
@param x OSC message pointer
@return Zero on success, non-zero otherwise */
extern int SDTOSCReverb(const SDTOSCMessage *x);

/** @} */

#ifdef __cplusplus
};
#endif

#endif

/** @} */
