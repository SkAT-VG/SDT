#include "SDTOSCCommon.h"

/** @file SDTOSCInteractors.h
@defgroup OSCInteractors SDTOSCInteractors.h: OSC Interactors
OSC for #SDTInteractor objects.

\section interactor_methods Interactor methods
Interactor objects can be controlled like any other SDT object, but they are
identified by the two interacting resonators. Whereas ordinary class methods
expect one key argument, interactors expect two. Please refer to the specific
method documentation for further clarification.

\subsection setter_methods Setter methods
Interactors have setter methods.
The arguments for the setter methods are:
\code{osc} /<class>/<attribute> <key0> <key1> <value> \endcode
Please note that, for a SDT interactor to be controllable via OSC, the
interactor object and the two resonators should be registered (see
#SDT_registerInteractor and #SDT_registerResonator).

\subsection json_methods JSON methods
Interactors also have methods for JSON serialization and
deserialization.\code{osc}
/<class>/log   <key0> <key1>
/<class>/save  <key0> <key1> <filepath>
/<class>/load  <key0> <key1> <filepath>
/<class>/loads <key0> <key1> <json>...
\endcode
@{
*/

#ifndef SDT_OSC_INTERACTORS_H
#define SDT_OSC_INTERACTORS_H

#ifdef __cplusplus
extern "C" {
#endif

/** @defgroup oscimpact SDTOSCImpact
OSC for impact objects.

Please note that all interactors are special classes, because they are
identified by two keys. Read the documentation at @ref OSCInteractors for
further details.
@ingroup oscmethods
@{
*/

/** @brief `/impact/log <res0> <res1>`

Function that implements OSC JSON log for impact objects
@param x OSC message
@return Zero on success, non-zero otherwise */
extern int SDTOSCImpact_log(const SDTOSCMessage *x);

/** @brief `/impact/save <res0> <res1> <filepath>`

Function that implements OSC JSON save for impact objects
@param x OSC message
@return Zero on success, non-zero otherwise */
extern int SDTOSCImpact_save(const SDTOSCMessage *x);

/** @brief `/impact/load <res0> <res1> <filepath>`

Function that implements OSC JSON file loading for impact objects
@param x OSC message
@return Zero on success, non-zero otherwise */
extern int SDTOSCImpact_load(const SDTOSCMessage *x);

/** @brief `/impact/loads <res0> <res1> <json_string>`

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

/** @brief `/impact/stiffness <res0> <res1> <value>`

Function that implements OSC parameter setting for #SDTBouncing objects
@param x OSC message
@return Zero on success, non-zero otherwise */
extern int SDTOSCImpact_setStiffness(const SDTOSCMessage *x);

/** @brief `/impact/dissipation <res0> <res1> <value>`

Function that implements OSC parameter setting for #SDTBouncing objects
@param x OSC message
@return Zero on success, non-zero otherwise */
extern int SDTOSCImpact_setDissipation(const SDTOSCMessage *x);

/** @brief `/impact/shape <res0> <res1> <value>`

Function that implements OSC parameter setting for #SDTBouncing objects
@param x OSC message
@return Zero on success, non-zero otherwise */
extern int SDTOSCImpact_setShape(const SDTOSCMessage *x);

/** @brief `/impact/contact0 <res0> <res1> <value>`

Function that implements OSC parameter setting for #SDTBouncing objects
@param x OSC message
@return Zero on success, non-zero otherwise */
extern int SDTOSCImpact_setFirstPoint(const SDTOSCMessage *x);

/** @brief `/impact/contact1 <res0> <res1> <value>`

Function that implements OSC parameter setting for #SDTBouncing objects
@param x OSC message
@return Zero on success, non-zero otherwise */
extern int SDTOSCImpact_setSecondPoint(const SDTOSCMessage *x);

/** @} */

/** @defgroup oscfriction SDTOSCFriction
OSC for friction objects.

Please note that all interactors are special classes, because they are
identified by two keys. Read the documentation at @ref OSCInteractors for
further details.
@ingroup oscmethods
@{
*/

/** @brief `/friction/log <res0> <res1>`

Function that implements OSC JSON log for friction objects
@param x OSC message
@return Zero on success, non-zero otherwise */
extern int SDTOSCFriction_log(const SDTOSCMessage *x);

/** @brief `/friction/save <res0> <res1> <filepath>`

Function that implements OSC JSON save for friction objects
@param x OSC message
@return Zero on success, non-zero otherwise */
extern int SDTOSCFriction_save(const SDTOSCMessage *x);

/** @brief `/friction/load <res0> <res1> <filepath>`

Function that implements OSC JSON file loading for friction objects
@param x OSC message
@return Zero on success, non-zero otherwise */
extern int SDTOSCFriction_load(const SDTOSCMessage *x);

/** @brief `/friction/loads <res0> <res1> <json_string>`

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

/** @brief `/friction/force <res0> <res1> <value>`

Function that implements OSC parameter setting for #SDTBouncing objects
@param x OSC message
@return Zero on success, non-zero otherwise */
extern int SDTOSCFriction_setNormalForce(const SDTOSCMessage *x);

/** @brief `/friction/stribeck <res0> <res1> <value>`

Function that implements OSC parameter setting for #SDTBouncing objects
@param x OSC message
@return Zero on success, non-zero otherwise */
extern int SDTOSCFriction_setStribeckVelocity(const SDTOSCMessage *x);

/** @brief `/friction/kStatic <res0> <res1> <value>`

Function that implements OSC parameter setting for #SDTBouncing objects
@param x OSC message
@return Zero on success, non-zero otherwise */
extern int SDTOSCFriction_setStaticCoefficient(const SDTOSCMessage *x);

/** @brief `/friction/kDynamic <res0> <res1> <value>`

Function that implements OSC parameter setting for #SDTBouncing objects
@param x OSC message
@return Zero on success, non-zero otherwise */
extern int SDTOSCFriction_setDynamicCoefficient(const SDTOSCMessage *x);

/** @brief `/friction/stiffness <res0> <res1> <value>`

Function that implements OSC parameter setting for #SDTBouncing objects
@param x OSC message
@return Zero on success, non-zero otherwise */
extern int SDTOSCFriction_setStiffness(const SDTOSCMessage *x);

/** @brief `/friction/dissipation <res0> <res1> <value>`

Function that implements OSC parameter setting for #SDTBouncing objects
@param x OSC message
@return Zero on success, non-zero otherwise */
extern int SDTOSCFriction_setDissipation(const SDTOSCMessage *x);

/** @brief `/friction/viscosity <res0> <res1> <value>`

Function that implements OSC parameter setting for #SDTBouncing objects
@param x OSC message
@return Zero on success, non-zero otherwise */
extern int SDTOSCFriction_setViscosity(const SDTOSCMessage *x);

/** @brief `/friction/noisiness <res0> <res1> <value>`

Function that implements OSC parameter setting for #SDTBouncing objects
@param x OSC message
@return Zero on success, non-zero otherwise */
extern int SDTOSCFriction_setNoisiness(const SDTOSCMessage *x);

/** @brief `/friction/breakAway <res0> <res1> <value>`

Function that implements OSC parameter setting for #SDTBouncing objects
@param x OSC message
@return Zero on success, non-zero otherwise */
extern int SDTOSCFriction_setBreakAway(const SDTOSCMessage *x);

/** @brief `/friction/contact0 <res0> <res1> <value>`

Function that implements OSC parameter setting for #SDTBouncing objects
@param x OSC message
@return Zero on success, non-zero otherwise */
extern int SDTOSCFriction_setFirstPoint(const SDTOSCMessage *x);

/** @brief `/friction/contact1 <res0> <res1> <value>`

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
