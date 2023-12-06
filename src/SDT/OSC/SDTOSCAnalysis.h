#include "SDTOSCCommon.h"

/** @file SDTOSCAnalysis.h
@defgroup oscanalysis SDTOSCAnalysis.h: OSC for sound analysis tools
@{ */

#ifndef SDT_OSC_ANALYSIS_H
#define SDT_OSC_ANALYSIS_H

#ifdef __cplusplus
extern "C" {
#endif

/** @defgroup osczerox SDTOSCZeroCrossing
OSC for #SDTZeroCrossing objects
@ingroup oscmethods
@{ */

/** @brief `/zerox/log <name>`

Function that implements OSC JSON log for #SDTZeroCrossing objects
@param x OSC message
@return Zero on success, non-zero otherwise */
extern int SDTOSCZeroCrossing_log(const SDTOSCMessage *x);

/** @brief `/zerox/save <name> <filepath>`

Function that implements OSC JSON save for #SDTZeroCrossing objects
@param x OSC message
@return Zero on success, non-zero otherwise */
extern int SDTOSCZeroCrossing_save(const SDTOSCMessage *x);

/** @brief `/zerox/load <name> <filepath>`

Function that implements OSC JSON file loading for #SDTZeroCrossing objects
@param x OSC message
@return Zero on success, non-zero otherwise */
extern int SDTOSCZeroCrossing_load(const SDTOSCMessage *x);

/** @brief `/zerox/loads <name> <json_string>`

Function that implements OSC JSON loading from string for #SDTZeroCrossing
objects
@param x OSC message
@return Zero on success, non-zero otherwise */
extern int SDTOSCZeroCrossing_loads(const SDTOSCMessage *x);

/** @brief `/zerox/size <name> <value>`

Function that implements OSC parameter setting for #SDTZeroCrossing objects
@param x OSC message
@return Zero on success, non-zero otherwise */
extern int SDTOSCZeroCrossing_setSize(const SDTOSCMessage *x);

/** @brief `/zerox/overlap <name> <value>`

Function that implements OSC parameter setting for #SDTZeroCrossing objects
@param x OSC message
@return Zero on success, non-zero otherwise */
extern int SDTOSCZeroCrossing_setOverlap(const SDTOSCMessage *x);

/** @brief `/zerox/...`

Function that routes OSC commands for #SDTZeroCrossing objects
@param x OSC message pointer
@return Zero on success, non-zero otherwise */
extern int SDTOSCZeroCrossing(const SDTOSCMessage *x);

/** @} */

/** @defgroup oscmyo SDTOSCMyoelastic
OSC for #SDTMyoelastic objects
@ingroup oscmethods
@{ */

/** @brief `/myo/log <name>`

Function that implements OSC JSON log for #SDTMyoelastic objects
@param x OSC message
@return Zero on success, non-zero otherwise */
extern int SDTOSCMyoelastic_log(const SDTOSCMessage *x);

/** @brief `/myo/save <name> <filepath>`

Function that implements OSC JSON save for #SDTMyoelastic objects
@param x OSC message
@return Zero on success, non-zero otherwise */
extern int SDTOSCMyoelastic_save(const SDTOSCMessage *x);

/** @brief `/myo/load <name> <filepath>`

Function that implements OSC JSON file loading for #SDTMyoelastic objects
@param x OSC message
@return Zero on success, non-zero otherwise */
extern int SDTOSCMyoelastic_load(const SDTOSCMessage *x);

/** @brief `/myo/loads <name> <json_string>`

Function that implements OSC JSON loading from string for #SDTMyoelastic
objects
@param x OSC message
@return Zero on success, non-zero otherwise */
extern int SDTOSCMyoelastic_loads(const SDTOSCMessage *x);

/** @brief `/myo/dc <name> <value>`

Function that implements OSC parameter setting for #SDTMyoelastic  objects
@param x OSC message
@return Zero on success, non-zero otherwise */
extern int SDTOSCMyoelastic_setDcFrequency(const SDTOSCMessage *x);

/** @brief `/myo/low <name> <value>`

Function that implements OSC parameter setting for #SDTMyoelastic  objects
@param x OSC message
@return Zero on success, non-zero otherwise */
extern int SDTOSCMyoelastic_setLowFrequency(const SDTOSCMessage *x);

/** @brief `/myo/high <name> <value>`

Function that implements OSC parameter setting for #SDTMyoelastic  objects
@param x OSC message
@return Zero on success, non-zero otherwise */
extern int SDTOSCMyoelastic_setHighFrequency(const SDTOSCMessage *x);

/** @brief `/myo/threshold <name> <value>`

Function that implements OSC parameter setting for #SDTMyoelastic  objects
@param x OSC message
@return Zero on success, non-zero otherwise */
extern int SDTOSCMyoelastic_setThreshold(const SDTOSCMessage *x);

/** @brief `/myo/...`

Function that routes OSC commands for #SDTMyoelastic objects
@param x OSC message pointer
@return Zero on success, non-zero otherwise */
extern int SDTOSCMyoelastic(const SDTOSCMessage *x);

/** @} */

/** @defgroup oscspectralfeats SDTOSCSpectralFeats
OSC for #SDTSpectralFeats objects
@ingroup oscmethods
@{ */

/** @brief `/spectralfeats/log <name>`

Function that implements OSC JSON log for #SDTSpectralFeats objects
@param x OSC message
@return Zero on success, non-zero otherwise */
extern int SDTOSCSpectralFeats_log(const SDTOSCMessage *x);

/** @brief `/spectralfeats/save <name> <filepath>`

Function that implements OSC JSON save for #SDTSpectralFeats objects
@param x OSC message
@return Zero on success, non-zero otherwise */
extern int SDTOSCSpectralFeats_save(const SDTOSCMessage *x);

/** @brief `/spectralfeats/load <name> <filepath>`

Function that implements OSC JSON file loading for #SDTSpectralFeats objects
@param x OSC message
@return Zero on success, non-zero otherwise */
extern int SDTOSCSpectralFeats_load(const SDTOSCMessage *x);

/** @brief `/spectralfeats/loads <name> <json_string>`

Function that implements OSC JSON loading from string for #SDTSpectralFeats
objects
@param x OSC message
@return Zero on success, non-zero otherwise */
extern int SDTOSCSpectralFeats_loads(const SDTOSCMessage *x);

/** @brief `/spectralfeats/size <name> <value>`

Function that implements OSC parameter setting for #SDTSpectralFeats objects
@param x OSC message
@return Zero on success, non-zero otherwise */
extern int SDTOSCSpectralFeats_setSize(const SDTOSCMessage *x);

/** @brief `/spectralfeats/overlap <name> <value>`

Function that implements OSC parameter setting for #SDTSpectralFeats  objects
@param x OSC message
@return Zero on success, non-zero otherwise */
extern int SDTOSCSpectralFeats_setOverlap(const SDTOSCMessage *x);

/** @brief `/spectralfeats/minFreq <name> <value>`

Function that implements OSC parameter setting for #SDTSpectralFeats  objects
@param x OSC message
@return Zero on success, non-zero otherwise */
extern int SDTOSCSpectralFeats_setMinFreq(const SDTOSCMessage *x);

/** @brief `/spectralfeats/maxFreq <name> <value>`

Function that implements OSC parameter setting for #SDTSpectralFeats  objects
@param x OSC message
@return Zero on success, non-zero otherwise */
extern int SDTOSCSpectralFeats_setMaxFreq(const SDTOSCMessage *x);

/** @brief `/spectralfeats/...`

Function that routes OSC commands for #SDTSpectralFeats objects
@param x OSC message pointer
@return Zero on success, non-zero otherwise */
extern int SDTOSCSpectralFeats(const SDTOSCMessage *x);

/** @} */

/** @defgroup oscpitch SDTOSCPitch
OSC for #SDTPitch objects
@ingroup oscmethods
@{ */

/** @brief `/pitch/log <name>`

Function that implements OSC JSON log for #SDTPitch objects
@param x OSC message
@return Zero on success, non-zero otherwise */
extern int SDTOSCPitch_log(const SDTOSCMessage *x);

/** @brief `/pitch/save <name> <filepath>`

Function that implements OSC JSON save for #SDTPitch objects
@param x OSC message
@return Zero on success, non-zero otherwise */
extern int SDTOSCPitch_save(const SDTOSCMessage *x);

/** @brief `/pitch/load <name> <filepath>`

Function that implements OSC JSON file loading for #SDTPitch objects
@param x OSC message
@return Zero on success, non-zero otherwise */
extern int SDTOSCPitch_load(const SDTOSCMessage *x);

/** @brief `/pitch/loads <name> <json_string>`

Function that implements OSC JSON loading from string for #SDTPitch
objects
@param x OSC message
@return Zero on success, non-zero otherwise */
extern int SDTOSCPitch_loads(const SDTOSCMessage *x);

/** @brief `/pitch/size <name> <value>`

Function that implements OSC parameter setting for #SDTPitch objects
@param x OSC message
@return Zero on success, non-zero otherwise */
extern int SDTOSCPitch_setSize(const SDTOSCMessage *x);

/** @brief `/pitch/overlap <name> <value>`

Function that implements OSC parameter setting for #SDTPitch  objects
@param x OSC message
@return Zero on success, non-zero otherwise */
extern int SDTOSCPitch_setOverlap(const SDTOSCMessage *x);

/** @brief `/pitch/tolerance <name> <value>`

Function that implements OSC parameter setting for #SDTPitch  objects
@param x OSC message
@return Zero on success, non-zero otherwise */
extern int SDTOSCPitch_setTolerance(const SDTOSCMessage *x);

/** @brief `/pitch/...`

Function that routes OSC commands for #SDTPitch objects
@param x OSC message pointer
@return Zero on success, non-zero otherwise */
extern int SDTOSCPitch(const SDTOSCMessage *x);

/** @} */

#ifdef __cplusplus
};
#endif

#endif

/** @} */
