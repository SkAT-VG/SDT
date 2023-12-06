#include "SDTOSCCommon.h"

/** @file SDTOSCInteractors.h
@defgroup OSCInteractors SDTOSCInteractors.h: OSC Interactors
OSC for #SDTInteractor objects.
@{
*/

#ifndef SDT_OSC_INTERACTORS_H
#define SDT_OSC_INTERACTORS_H

#ifdef __cplusplus
extern "C" {
#endif

/** @defgroup oscimpact SDTOSCImpact
OSC for impact objects.
@ingroup oscmethods
@{
*/

/** @brief `/impact/log <name>`

Function that implements OSC JSON log for impact objects
@param x OSC message
@return Zero on success, non-zero otherwise */
extern int SDTOSCImpact_log(const SDTOSCMessage *x);

/** @brief `/impact/save <name> <filepath>`

Function that implements OSC JSON save for impact objects
@param x OSC message
@return Zero on success, non-zero otherwise */
extern int SDTOSCImpact_save(const SDTOSCMessage *x);

/** @brief `/impact/load <name> <filepath>`

Function that implements OSC JSON file loading for impact objects
@param x OSC message
@return Zero on success, non-zero otherwise */
extern int SDTOSCImpact_load(const SDTOSCMessage *x);

/** @brief `/impact/loads <name> <json_string>`

Function that implements OSC JSON loading from string for impact
objects
@param x OSC message
@return Zero on success, non-zero otherwise */
extern int SDTOSCImpact_loads(const SDTOSCMessage *x);

/** @brief `/impact/...`

Function that routes OSC commands for impact objects
@param x OSC message pointer
@return Zero on success, non-zero otherwise */
extern int SDTOSCImpact(const SDTOSCMessage *x);

/** @brief `/impact/stiffness <name> <value>`

Function that implements OSC parameter setting for #SDTBouncing objects
@param x OSC message
@return Zero on success, non-zero otherwise */
extern int SDTOSCImpact_setStiffness(const SDTOSCMessage *x);

/** @brief `/impact/dissipation <name> <value>`

Function that implements OSC parameter setting for #SDTBouncing objects
@param x OSC message
@return Zero on success, non-zero otherwise */
extern int SDTOSCImpact_setDissipation(const SDTOSCMessage *x);

/** @brief `/impact/shape <name> <value>`

Function that implements OSC parameter setting for #SDTBouncing objects
@param x OSC message
@return Zero on success, non-zero otherwise */
extern int SDTOSCImpact_setShape(const SDTOSCMessage *x);

/** @brief `/impact/contact0 <name> <value>`

Function that implements OSC parameter setting for #SDTBouncing objects
@param x OSC message
@return Zero on success, non-zero otherwise */
extern int SDTOSCImpact_setFirstPoint(const SDTOSCMessage *x);

/** @brief `/impact/contact1 <name> <value>`

Function that implements OSC parameter setting for #SDTBouncing objects
@param x OSC message
@return Zero on success, non-zero otherwise */
extern int SDTOSCImpact_setSecondPoint(const SDTOSCMessage *x);

/** @} */

/** @defgroup oscfriction SDTOSCFriction
OSC for friction objects.
@ingroup oscmethods
@{
*/

/** @brief `/friction/log <name>`

Function that implements OSC JSON log for friction objects
@param x OSC message
@return Zero on success, non-zero otherwise */
extern int SDTOSCFriction_log(const SDTOSCMessage *x);

/** @brief `/friction/save <name> <filepath>`

Function that implements OSC JSON save for friction objects
@param x OSC message
@return Zero on success, non-zero otherwise */
extern int SDTOSCFriction_save(const SDTOSCMessage *x);

/** @brief `/friction/load <name> <filepath>`

Function that implements OSC JSON file loading for friction objects
@param x OSC message
@return Zero on success, non-zero otherwise */
extern int SDTOSCFriction_load(const SDTOSCMessage *x);

/** @brief `/friction/loads <name> <json_string>`

Function that implements OSC JSON loading from string for friction
objects
@param x OSC message
@return Zero on success, non-zero otherwise */
extern int SDTOSCFriction_loads(const SDTOSCMessage *x);

/** @brief `/friction/...`

Function that routes OSC commands for friction objects
@param x OSC message pointer
@return Zero on success, non-zero otherwise */
extern int SDTOSCFriction(const SDTOSCMessage *x);

/** @brief `/friction/force <name> <value>`

Function that implements OSC parameter setting for #SDTBouncing objects
@param x OSC message
@return Zero on success, non-zero otherwise */
extern int SDTOSCFriction_setNormalForce(const SDTOSCMessage *x);

/** @brief `/friction/stribeck <name> <value>`

Function that implements OSC parameter setting for #SDTBouncing objects
@param x OSC message
@return Zero on success, non-zero otherwise */
extern int SDTOSCFriction_setStribeckVelocity(const SDTOSCMessage *x);

/** @brief `/friction/kStatic <name> <value>`

Function that implements OSC parameter setting for #SDTBouncing objects
@param x OSC message
@return Zero on success, non-zero otherwise */
extern int SDTOSCFriction_setStaticCoefficient(const SDTOSCMessage *x);

/** @brief `/friction/kDynamic <name> <value>`

Function that implements OSC parameter setting for #SDTBouncing objects
@param x OSC message
@return Zero on success, non-zero otherwise */
extern int SDTOSCFriction_setDynamicCoefficient(const SDTOSCMessage *x);

/** @brief `/friction/stiffness <name> <value>`

Function that implements OSC parameter setting for #SDTBouncing objects
@param x OSC message
@return Zero on success, non-zero otherwise */
extern int SDTOSCFriction_setStiffness(const SDTOSCMessage *x);

/** @brief `/friction/dissipation <name> <value>`

Function that implements OSC parameter setting for #SDTBouncing objects
@param x OSC message
@return Zero on success, non-zero otherwise */
extern int SDTOSCFriction_setDissipation(const SDTOSCMessage *x);

/** @brief `/friction/viscosity <name> <value>`

Function that implements OSC parameter setting for #SDTBouncing objects
@param x OSC message
@return Zero on success, non-zero otherwise */
extern int SDTOSCFriction_setViscosity(const SDTOSCMessage *x);

/** @brief `/friction/noisiness <name> <value>`

Function that implements OSC parameter setting for #SDTBouncing objects
@param x OSC message
@return Zero on success, non-zero otherwise */
extern int SDTOSCFriction_setNoisiness(const SDTOSCMessage *x);

/** @brief `/friction/breakAway <name> <value>`

Function that implements OSC parameter setting for #SDTBouncing objects
@param x OSC message
@return Zero on success, non-zero otherwise */
extern int SDTOSCFriction_setBreakAway(const SDTOSCMessage *x);

/** @brief `/friction/contact0 <name> <value>`

Function that implements OSC parameter setting for #SDTBouncing objects
@param x OSC message
@return Zero on success, non-zero otherwise */
extern int SDTOSCFriction_setFirstPoint(const SDTOSCMessage *x);

/** @brief `/friction/contact1 <name> <value>`

Function that implements OSC parameter setting for #SDTBouncing objects
@param x OSC message
@return Zero on success, non-zero otherwise */
extern int SDTOSCFriction_setSecondPoint(const SDTOSCMessage *x);

/** @} */

#ifdef __cplusplus
};
#endif

#endif

/** @} */
