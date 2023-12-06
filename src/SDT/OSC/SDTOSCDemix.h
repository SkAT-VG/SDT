#include "SDTOSCCommon.h"

/** @file SDTOSCDemix.h
@defgroup OSCDemix SDTOSCDemix.h: OSC Demix
OSC for #SDTDemix objects.
@{
*/

#ifndef SDT_OSC_DEMIX_H
#define SDT_OSC_DEMIX_H

#ifdef __cplusplus
extern "C" {
#endif

/** @defgroup oscdemix SDTOSCDemix
OSC for #SDTDemix objects.
@ingroup oscmethods
@{
*/

/** @brief `/demix/log <name>`

Function that implements OSC JSON log for #SDTDemix objects
@param x OSC message
@return Zero on success, non-zero otherwise */
extern int SDTOSCDemix_log(const SDTOSCMessage *x);

/** @brief `/demix/save <name> <filepath>`

Function that implements OSC JSON save for #SDTDemix objects
@param x OSC message
@return Zero on success, non-zero otherwise */
extern int SDTOSCDemix_save(const SDTOSCMessage *x);

/** @brief `/demix/load <name> <filepath>`

Function that implements OSC JSON file loading for #SDTDemix objects
@param x OSC message
@return Zero on success, non-zero otherwise */
extern int SDTOSCDemix_load(const SDTOSCMessage *x);

/** @brief `/demix/loads <name> <json_string>`

Function that implements OSC JSON loading from string for #SDTDemix
objects
@param x OSC message
@return Zero on success, non-zero otherwise */
extern int SDTOSCDemix_loads(const SDTOSCMessage *x);

/** @brief `/demix/...`

Function that routes OSC commands for #SDTDemix objects
@param x OSC message pointer
@return Zero on success, non-zero otherwise */
extern int SDTOSCDemix(const SDTOSCMessage *x);

/** @brief `/demix/overlap <name> <value>`

Function that implements OSC parameter setting for #SDTBouncing objects
@param x OSC message
@return Zero on success, non-zero otherwise */
extern int SDTOSCDemix_setOverlap(const SDTOSCMessage *x);

/** @brief `/demix/noiseThreshold <name> <value>`

Function that implements OSC parameter setting for #SDTBouncing objects
@param x OSC message
@return Zero on success, non-zero otherwise */
extern int SDTOSCDemix_setNoiseThreshold(const SDTOSCMessage *x);

/** @brief `/demix/tonalThreshold <name> <value>`

Function that implements OSC parameter setting for #SDTBouncing objects
@param x OSC message
@return Zero on success, non-zero otherwise */
extern int SDTOSCDemix_setTonalThreshold(const SDTOSCMessage *x);

/** @} */

#ifdef __cplusplus
};
#endif

#endif

/** @} */
