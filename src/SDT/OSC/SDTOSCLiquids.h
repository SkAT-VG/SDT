#include "../SDTLiquids.h"
#include "SDTOSCCommon.h"

/** @file SDTOSCLiquids.h
@defgroup oscliquids SDTOSCLiquids.h: OSC for liquid sounds
@{ */

#ifndef SDT_OSC_LIQUIDS_H
#define SDT_OSC_LIQUIDS_H

#ifdef __cplusplus
extern "C" {
#endif

/** @defgroup oscbubble SDTOSCBubble
OSC for #SDTBubble objects
@ingroup osc
@{ */

/** @brief `/bubble/log <name>`

Function that implements OSC JSON log for #SDTBubble objects
@param x OSC message
@return Zero on success, non-zero otherwise */
extern int SDTOSCBubble_log(const SDTOSCMessage *x);

/** @brief `/bubble/save <name> <filepath>`

Function that implements OSC JSON save for #SDTBubble objects
@param x OSC message
@return Zero on success, non-zero otherwise */
extern int SDTOSCBubble_save(const SDTOSCMessage *x);

/** @brief `/bubble/load <name> <filepath>`

Function that implements OSC JSON file loading for #SDTBubble objects
@param x OSC message
@return Zero on success, non-zero otherwise */
extern int SDTOSCBubble_load(const SDTOSCMessage *x);

/** @brief `/bubble/loads <name> <json_string>`

Function that implements OSC JSON loading from string for #SDTBubble
objects
@param x OSC message
@return Zero on success, non-zero otherwise */
extern int SDTOSCBubble_loads(const SDTOSCMessage *x);

/** @brief `/bubble/radius <name> <value>`

Function that implements OSC parameter setting for #SDTBubble objects
@param x OSC message
@return Zero on success, non-zero otherwise */
extern int SDTOSCBubble_setRadius(const SDTOSCMessage *x);

/** @brief `/bubble/depth <name> <value>`

Function that implements OSC parameter setting for #SDTBubble objects
@param x OSC message
@return Zero on success, non-zero otherwise */
extern int SDTOSCBubble_setDepth(const SDTOSCMessage *x);

/** @brief `/bubble/riseFactor <name> <value>`

Function that implements OSC parameter setting for #SDTBubble objects
@param x OSC message
@return Zero on success, non-zero otherwise */
extern int SDTOSCBubble_setRiseFactor(const SDTOSCMessage *x);

/** @brief `/bubble/trigger <name>`

Trigger a new bubble
@param x OSC message
@return Zero on success, non-zero otherwise */
extern int SDTOSCBubble_trigger(const SDTOSCMessage *x);

/** @brief `/bubble/...`

Function that routes OSC commands for #SDTBubble objects
@param x OSC message pointer
@return Zero on success, non-zero otherwise */
extern int SDTOSCBubble(const SDTOSCMessage *x);

/** @} */

#ifdef __cplusplus
};
#endif

#endif

/** @} */
