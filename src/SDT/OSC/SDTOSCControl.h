#include "../SDTControl.h"
#include "SDTOSCCommon.h"

/** @file SDTOSCControl.h
@defgroup osccontrol SDTOSCControl.h: OSC for compound solid interactions
@{ */

#ifndef SDT_OSC_CONTROL_H
#define SDT_OSC_CONTROL_H

#ifdef __cplusplus
extern "C" {
#endif

/** @defgroup oscbouncing SDTOSCBouncing
OSC for #SDTBouncing objects
@ingroup oscmethods
@{ */

/** @brief `/bouncing/log <name>`

Function that implements OSC JSON log for #SDTBouncing objects
@param x OSC message
@return Zero on success, non-zero otherwise */
extern int SDTOSCBouncing_log(const SDTOSCMessage *x);

/** @brief `/bouncing/save <name> <filepath>`

Function that implements OSC JSON save for #SDTBouncing objects
@param x OSC message
@return Zero on success, non-zero otherwise */
extern int SDTOSCBouncing_save(const SDTOSCMessage *x);

/** @brief `/bouncing/load <name> <filepath>`

Function that implements OSC JSON file loading for #SDTBouncing objects
@param x OSC message
@return Zero on success, non-zero otherwise */
extern int SDTOSCBouncing_load(const SDTOSCMessage *x);

/** @brief `/bouncing/loads <name> <json_string>`

Function that implements OSC JSON loading from string for #SDTBouncing
objects
@param x OSC message
@return Zero on success, non-zero otherwise */
extern int SDTOSCBouncing_loads(const SDTOSCMessage *x);

/** @brief `/bouncing/restitution <name> <value>`

Function that implements OSC parameter setting for #SDTBouncing objects
@param x OSC message
@return Zero on success, non-zero otherwise */
extern int SDTOSCBouncing_setRestitution(const SDTOSCMessage *x);

/** @brief `/bouncing/height <name> <value>`

Function that implements OSC parameter setting for #SDTBouncing objects
@param x OSC message
@return Zero on success, non-zero otherwise */
extern int SDTOSCBouncing_setHeight(const SDTOSCMessage *x);

/** @brief `/bouncing/irregularity <name> <value>`

Function that implements OSC parameter setting for #SDTBouncing objects
@param x OSC message
@return Zero on success, non-zero otherwise */
extern int SDTOSCBouncing_setIrregularity(const SDTOSCMessage *x);

/** @brief `/bouncing/...`

Function that routes OSC commands for #SDTBouncing objects
@param x OSC message pointer
@return Zero on success, non-zero otherwise */
extern int SDTOSCBouncing(const SDTOSCMessage *x);

/** @} */

/** @defgroup oscbreaking SDTOSCBreaking
OSC for #SDTBreaking objects
@ingroup oscmethods
@{ */

/** @brief `/breaking/log <name>`

Function that implements OSC JSON log for #SDTBreaking objects
@param x OSC message
@return Zero on success, non-zero otherwise */
extern int SDTOSCBreaking_log(const SDTOSCMessage *x);

/** @brief `/breaking/save <name> <filepath>`

Function that implements OSC JSON save for #SDTBreaking objects
@param x OSC message
@return Zero on success, non-zero otherwise */
extern int SDTOSCBreaking_save(const SDTOSCMessage *x);

/** @brief `/breaking/load <name> <filepath>`

Function that implements OSC JSON file loading for #SDTBreaking objects
@param x OSC message
@return Zero on success, non-zero otherwise */
extern int SDTOSCBreaking_load(const SDTOSCMessage *x);

/** @brief `/breaking/loads <name> <json_string>`

Function that implements OSC JSON loading from string for #SDTBreaking
objects
@param x OSC message
@return Zero on success, non-zero otherwise */
extern int SDTOSCBreaking_loads(const SDTOSCMessage *x);

/** @brief `/breaking/storedEnergy <name> <value>`

Function that implements OSC parameter setting for #SDTBreaking objects
@param x OSC message
@return Zero on success, non-zero otherwise */
extern int SDTOSCBreaking_setStoredEnergy(const SDTOSCMessage *x);

/** @brief `/breaking/crushingEnergy <name> <value>`

Function that implements OSC parameter setting for #SDTBreaking objects
@param x OSC message
@return Zero on success, non-zero otherwise */
extern int SDTOSCBreaking_setCrushingEnergy(const SDTOSCMessage *x);

/** @brief `/breaking/granularity <name> <value>`

Function that implements OSC parameter setting for #SDTBreaking objects
@param x OSC message
@return Zero on success, non-zero otherwise */
extern int SDTOSCBreaking_setGranularity(const SDTOSCMessage *x);

/** @brief `/breaking/fragmentation <name> <value>`

Function that implements OSC parameter setting for #SDTBreaking objects
@param x OSC message
@return Zero on success, non-zero otherwise */
extern int SDTOSCBreaking_setFragmentation(const SDTOSCMessage *x);

/** @brief `/breaking/...`

Function that routes OSC commands for #SDTBreaking objects
@param x OSC message pointer
@return Zero on success, non-zero otherwise */
extern int SDTOSCBreaking(const SDTOSCMessage *x);

/** @} */

#ifdef __cplusplus
};
#endif

#endif

/** @} */
