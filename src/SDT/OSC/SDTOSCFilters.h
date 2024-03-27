#include "SDTOSCCommon.h"

/** @file SDTOSCFilters.h
@defgroup oscfilters SDTOSCFilters.h: OSC for audio filters
@{ */

#ifndef SDT_OSC_FILTERS_H
#define SDT_OSC_FILTERS_H

#ifdef __cplusplus
extern "C" {
#endif

/** @defgroup oscenvelope SDTOSCEnvelope
OSC for #SDTEnvelope objects
@ingroup oscmethods
@{ */

/** @brief `/envelope/log <name>`

Function that implements OSC JSON log for #SDTEnvelope objects
@param x OSC message
@return Zero on success, non-zero otherwise */
extern int SDTOSCEnvelope_log(const SDTOSCMessage *x);

/** @brief `/envelope/save <name> <filepath>`

Function that implements OSC JSON save for #SDTEnvelope objects
@param x OSC message
@return Zero on success, non-zero otherwise */
extern int SDTOSCEnvelope_save(const SDTOSCMessage *x);

/** @brief `/envelope/load <name> <filepath>`

Function that implements OSC JSON file loading for #SDTEnvelope objects
@param x OSC message
@return Zero on success, non-zero otherwise */
extern int SDTOSCEnvelope_load(const SDTOSCMessage *x);

/** @brief `/envelope/loads <name> <json_string>`

Function that implements OSC JSON loading from string for #SDTEnvelope
objects
@param x OSC message
@return Zero on success, non-zero otherwise */
extern int SDTOSCEnvelope_loads(const SDTOSCMessage *x);

/** @brief `/envelope/attack <name> <value>`

Function that implements OSC parameter setting for #SDTEnvelope objects
@param x OSC message
@return Zero on success, non-zero otherwise */
extern int SDTOSCEnvelope_setAttack(const SDTOSCMessage *x);

/** @brief `/envelope/release <name> <value>`

Function that implements OSC parameter setting for #SDTEnvelope objects
@param x OSC message
@return Zero on success, non-zero otherwise */
extern int SDTOSCEnvelope_setRelease(const SDTOSCMessage *x);

/** @brief `/envelope/...`

Function that routes OSC commands for #SDTEnvelope objects
@param x OSC message pointer
@return Zero on success, non-zero otherwise */
extern int SDTOSCEnvelope(const SDTOSCMessage *x);

/** @} */

#ifdef __cplusplus
};
#endif

#endif

/** @} */
