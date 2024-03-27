#include "SDTOSCCommon.h"

/** @file SDTOSCGases.h
@defgroup oscgases SDTOSCGases.h: OSC for air turbulence and explosions
@{ */

#ifndef SDT_OSC_GASES_H
#define SDT_OSC_GASES_H

#ifdef __cplusplus
extern "C" {
#endif

/** @defgroup oscexplosion SDTOSCExplosion
OSC for #SDTExplosion objects
@ingroup oscmethods
@{ */

/** @brief `/explosion/log <name>`

Function that implements OSC JSON log for #SDTExplosion objects
@param x OSC message
@return Zero on success, non-zero otherwise */
extern int SDTOSCExplosion_log(const SDTOSCMessage *x);

/** @brief `/explosion/save <name> <filepath>`

Function that implements OSC JSON save for #SDTExplosion objects
@param x OSC message
@return Zero on success, non-zero otherwise */
extern int SDTOSCExplosion_save(const SDTOSCMessage *x);

/** @brief `/explosion/load <name> <filepath>`

Function that implements OSC JSON file loading for #SDTExplosion objects
@param x OSC message
@return Zero on success, non-zero otherwise */
extern int SDTOSCExplosion_load(const SDTOSCMessage *x);

/** @brief `/explosion/loads <name> <json_string>`

Function that implements OSC JSON loading from string for #SDTExplosion
objects
@param x OSC message
@return Zero on success, non-zero otherwise */
extern int SDTOSCExplosion_loads(const SDTOSCMessage *x);

/** @brief `/explosion/blastTime <name> <value>`

Function that implements OSC parameter setting for #SDTExplosion objects
@param x OSC message
@return Zero on success, non-zero otherwise */
extern int SDTOSCExplosion_setBlastTime(const SDTOSCMessage *x);

/** @brief `/explosion/scatterTime( <name> <value>`

Function that implements OSC parameter setting for #SDTExplosion objects
@param x OSC message
@return Zero on success, non-zero otherwise */
extern int SDTOSCExplosion_setScatterTime(const SDTOSCMessage *x);

/** @brief `/explosion/dispersion <name> <value>`

Function that implements OSC parameter setting for #SDTExplosion objects
@param x OSC message
@return Zero on success, non-zero otherwise */
extern int SDTOSCExplosion_setDispersion(const SDTOSCMessage *x);

/** @brief `/explosion/distance <name> <value>`

Function that implements OSC parameter setting for #SDTExplosion objects
@param x OSC message
@return Zero on success, non-zero otherwise */
extern int SDTOSCExplosion_setDistance(const SDTOSCMessage *x);

/** @brief `/explosion/waveSpeed <name> <value>`

Function that implements OSC parameter setting for #SDTExplosion objects
@param x OSC message
@return Zero on success, non-zero otherwise */
extern int SDTOSCExplosion_setWaveSpeed(const SDTOSCMessage *x);

/** @brief `/explosion/windSpeed <name> <value>`

Function that implements OSC parameter setting for #SDTExplosion objects
@param x OSC message
@return Zero on success, non-zero otherwise */
extern int SDTOSCExplosion_setWindSpeed(const SDTOSCMessage *x);

/** @brief `/explosion/...`

Function that routes OSC commands for #SDTExplosion objects
@param x OSC message pointer
@return Zero on success, non-zero otherwise */
extern int SDTOSCExplosion(const SDTOSCMessage *x);

/** @} */

/** @defgroup oscwindcavity SDTOSCWindCavity
OSC for #SDTWindCavity objects.
@ingroup oscmethods
@{
*/

/** @brief `/windcavity/log <name>`

Function that implements OSC JSON log for #SDTWindCavity objects
@param x OSC message
@return Zero on success, non-zero otherwise */
extern int SDTOSCWindCavity_log(const SDTOSCMessage *x);

/** @brief `/windcavity/save <name> <filepath>`

Function that implements OSC JSON save for #SDTWindCavity objects
@param x OSC message
@return Zero on success, non-zero otherwise */
extern int SDTOSCWindCavity_save(const SDTOSCMessage *x);

/** @brief `/windcavity/load <name> <filepath>`

Function that implements OSC JSON file loading for #SDTWindCavity objects
@param x OSC message
@return Zero on success, non-zero otherwise */
extern int SDTOSCWindCavity_load(const SDTOSCMessage *x);

/** @brief `/windcavity/loads <name> <json_string>`

Function that implements OSC JSON loading from string for #SDTWindCavity
objects
@param x OSC message
@return Zero on success, non-zero otherwise */
extern int SDTOSCWindCavity_loads(const SDTOSCMessage *x);

/** @brief `/windcavity/...`

Function that routes OSC commands for #SDTWindCavity objects
@param x OSC message pointer
@return Zero on success, non-zero otherwise */
extern int SDTOSCWindCavity(const SDTOSCMessage *x);

/** @brief `/windcavity/length <name> <value>`

Function that implements OSC parameter setting for #SDTBouncing objects
@param x OSC message
@return Zero on success, non-zero otherwise */
extern int SDTOSCWindCavity_setLength(const SDTOSCMessage *x);

/** @brief `/windcavity/diameter <name> <value>`

Function that implements OSC parameter setting for #SDTBouncing objects
@param x OSC message
@return Zero on success, non-zero otherwise */
extern int SDTOSCWindCavity_setDiameter(const SDTOSCMessage *x);

/** @brief `/windcavity/windSpeed <name> <value>`

Function that implements OSC parameter setting for #SDTBouncing objects
@param x OSC message
@return Zero on success, non-zero otherwise */
extern int SDTOSCWindCavity_setWindSpeed(const SDTOSCMessage *x);

/** @} */

/** @defgroup oscwindflow SDTOSCWindFlow
OSC for #SDTWindFlow objects.
@ingroup oscmethods
@{
*/

/** @brief `/windflow/log <name>`

Function that implements OSC JSON log for #SDTWindFlow objects
@param x OSC message
@return Zero on success, non-zero otherwise */
extern int SDTOSCWindFlow_log(const SDTOSCMessage *x);

/** @brief `/windflow/save <name> <filepath>`

Function that implements OSC JSON save for #SDTWindFlow objects
@param x OSC message
@return Zero on success, non-zero otherwise */
extern int SDTOSCWindFlow_save(const SDTOSCMessage *x);

/** @brief `/windflow/load <name> <filepath>`

Function that implements OSC JSON file loading for #SDTWindFlow objects
@param x OSC message
@return Zero on success, non-zero otherwise */
extern int SDTOSCWindFlow_load(const SDTOSCMessage *x);

/** @brief `/windflow/loads <name> <json_string>`

Function that implements OSC JSON loading from string for #SDTWindFlow
objects
@param x OSC message
@return Zero on success, non-zero otherwise */
extern int SDTOSCWindFlow_loads(const SDTOSCMessage *x);

/** @brief `/windflow/...`

Function that routes OSC commands for #SDTWindFlow objects
@param x OSC message pointer
@return Zero on success, non-zero otherwise */
extern int SDTOSCWindFlow(const SDTOSCMessage *x);

/** @brief `/windflow/windSpeed <name> <value>`

Function that implements OSC parameter setting for #SDTBouncing objects
@param x OSC message
@return Zero on success, non-zero otherwise */
extern int SDTOSCWindFlow_setWindSpeed(const SDTOSCMessage *x);

/** @} */

/** @defgroup oscwindkarman SDTOSCWindKarman
OSC for #SDTWindKarman objects.
@ingroup oscmethods
@{
*/

/** @brief `/windkarman/log <name>`

Function that implements OSC JSON log for #SDTWindKarman objects
@param x OSC message
@return Zero on success, non-zero otherwise */
extern int SDTOSCWindKarman_log(const SDTOSCMessage *x);

/** @brief `/windkarman/save <name> <filepath>`

Function that implements OSC JSON save for #SDTWindKarman objects
@param x OSC message
@return Zero on success, non-zero otherwise */
extern int SDTOSCWindKarman_save(const SDTOSCMessage *x);

/** @brief `/windkarman/load <name> <filepath>`

Function that implements OSC JSON file loading for #SDTWindKarman objects
@param x OSC message
@return Zero on success, non-zero otherwise */
extern int SDTOSCWindKarman_load(const SDTOSCMessage *x);

/** @brief `/windkarman/loads <name> <json_string>`

Function that implements OSC JSON loading from string for #SDTWindKarman
objects
@param x OSC message
@return Zero on success, non-zero otherwise */
extern int SDTOSCWindKarman_loads(const SDTOSCMessage *x);

/** @brief `/windkarman/...`

Function that routes OSC commands for #SDTWindKarman objects
@param x OSC message pointer
@return Zero on success, non-zero otherwise */
extern int SDTOSCWindKarman(const SDTOSCMessage *x);

/** @brief `/windkarman/diameter <name> <value>`

Function that implements OSC parameter setting for #SDTBouncing objects
@param x OSC message
@return Zero on success, non-zero otherwise */
extern int SDTOSCWindKarman_setDiameter(const SDTOSCMessage *x);

/** @brief `/windkarman/windSpeed <name> <value>`

Function that implements OSC parameter setting for #SDTBouncing objects
@param x OSC message
@return Zero on success, non-zero otherwise */
extern int SDTOSCWindKarman_setWindSpeed(const SDTOSCMessage *x);

/** @} */

#ifdef __cplusplus
};
#endif

#endif

/** @} */
