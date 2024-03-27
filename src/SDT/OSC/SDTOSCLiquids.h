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
@ingroup oscmethods
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

/** @defgroup oscfluidflow SDTOSCFluidFlow
OSC for #SDTFluidFlow objects
@ingroup oscmethods
@{ */

/** @brief `/fluidflow/log <name>`

Function that implements OSC JSON log for #SDTFluidFlow objects
@param x OSC message
@return Zero on success, non-zero otherwise */
extern int SDTOSCFluidFlow_log(const SDTOSCMessage *x);

/** @brief `/fluidflow/save <name> <filepath>`

Function that implements OSC JSON save for #SDTFluidFlow objects
@param x OSC message
@return Zero on success, non-zero otherwise */
extern int SDTOSCFluidFlow_save(const SDTOSCMessage *x);

/** @brief `/fluidflow/load <name> <filepath>`

Function that implements OSC JSON file loading for #SDTFluidFlow objects
@param x OSC message
@return Zero on success, non-zero otherwise */
extern int SDTOSCFluidFlow_load(const SDTOSCMessage *x);

/** @brief `/fluidflow/loads <name> <json_string>`

Function that implements OSC JSON loading from string for #SDTFluidFlow
objects
@param x OSC message
@return Zero on success, non-zero otherwise */
extern int SDTOSCFluidFlow_loads(const SDTOSCMessage *x);

/** @brief `/fluidflow/avgRate <name> <value>`

Function that implements OSC parameter setting for #SDTFluidFlow objects
@param x OSC message
@return Zero on success, non-zero otherwise */
extern int SDTOSCFluidFlow_setAvgRate(const SDTOSCMessage *x);

/** @brief `/fluidflow/minRadius <name> <value>`

Function that implements OSC parameter setting for #SDTFluidFlow objects
@param x OSC message
@return Zero on success, non-zero otherwise */
extern int SDTOSCFluidFlow_setMinRadius(const SDTOSCMessage *x);

/** @brief `/fluidflow/maxRadius <name> <value>`

Function that implements OSC parameter setting for #SDTFluidFlow objects
@param x OSC message
@return Zero on success, non-zero otherwise */
extern int SDTOSCFluidFlow_setMaxRadius(const SDTOSCMessage *x);

/** @brief `/fluidflow/expRadius <name> <value>`

Function that implements OSC parameter setting for #SDTFluidFlow objects
@param x OSC message
@return Zero on success, non-zero otherwise */
extern int SDTOSCFluidFlow_setExpRadius(const SDTOSCMessage *x);

/** @brief `/fluidflow/minDepth <name> <value>`

Function that implements OSC parameter setting for #SDTFluidFlow objects
@param x OSC message
@return Zero on success, non-zero otherwise */
extern int SDTOSCFluidFlow_setMinDepth(const SDTOSCMessage *x);

/** @brief `/fluidflow/maxDepth <name> <value>`

Function that implements OSC parameter setting for #SDTFluidFlow objects
@param x OSC message
@return Zero on success, non-zero otherwise */
extern int SDTOSCFluidFlow_setMaxDepth(const SDTOSCMessage *x);

/** @brief `/fluidflow/expDepth <name> <value>`

Function that implements OSC parameter setting for #SDTFluidFlow objects
@param x OSC message
@return Zero on success, non-zero otherwise */
extern int SDTOSCFluidFlow_setExpDepth(const SDTOSCMessage *x);

/** @brief `/fluidflow/riseFactor <name> <value>`

Function that implements OSC parameter setting for #SDTFluidFlow objects
@param x OSC message
@return Zero on success, non-zero otherwise */
extern int SDTOSCFluidFlow_setRiseFactor(const SDTOSCMessage *x);

/** @brief `/fluidflow/riseCutoff <name> <value>`

Function that implements OSC parameter setting for #SDTFluidFlow objects
@param x OSC message
@return Zero on success, non-zero otherwise */
extern int SDTOSCFluidFlow_setRiseCutoff(const SDTOSCMessage *x);

/** @brief `/fluidflow/...`

Function that routes OSC commands for #SDTFluidFlow objects
@param x OSC message pointer
@return Zero on success, non-zero otherwise */
extern int SDTOSCFluidFlow(const SDTOSCMessage *x);

/** @} */

#ifdef __cplusplus
};
#endif

#endif

/** @} */
