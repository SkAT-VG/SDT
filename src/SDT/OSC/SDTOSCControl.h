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

/** @defgroup osccrumpling SDTOSCCrumpling
OSC for #SDTCrumpling objects
@ingroup oscmethods
@{ */

/** @brief `/crumpling/log <name>`

Function that implements OSC JSON log for #SDTCrumpling objects
@param x OSC message
@return Zero on success, non-zero otherwise */
extern int SDTOSCCrumpling_log(const SDTOSCMessage *x);

/** @brief `/crumpling/save <name> <filepath>`

Function that implements OSC JSON save for #SDTCrumpling objects
@param x OSC message
@return Zero on success, non-zero otherwise */
extern int SDTOSCCrumpling_save(const SDTOSCMessage *x);

/** @brief `/crumpling/load <name> <filepath>`

Function that implements OSC JSON file loading for #SDTCrumpling objects
@param x OSC message
@return Zero on success, non-zero otherwise */
extern int SDTOSCCrumpling_load(const SDTOSCMessage *x);

/** @brief `/crumpling/loads <name> <json_string>`

Function that implements OSC JSON loading from string for #SDTCrumpling
objects
@param x OSC message
@return Zero on success, non-zero otherwise */
extern int SDTOSCCrumpling_loads(const SDTOSCMessage *x);

/** @brief `/crumpling/crushingEnergy <name> <value>`

Function that implements OSC parameter setting for #SDTCrumpling objects
@param x OSC message
@return Zero on success, non-zero otherwise */
extern int SDTOSCCrumpling_setCrushingEnergy(const SDTOSCMessage *x);

/** @brief `/crumpling/granularity <name> <value>`

Function that implements OSC parameter setting for #SDTCrumpling objects
@param x OSC message
@return Zero on success, non-zero otherwise */
extern int SDTOSCCrumpling_setGranularity(const SDTOSCMessage *x);

/** @brief `/crumpling/fragmentation <name> <value>`

Function that implements OSC parameter setting for #SDTCrumpling objects
@param x OSC message
@return Zero on success, non-zero otherwise */
extern int SDTOSCCrumpling_setFragmentation(const SDTOSCMessage *x);

/** @brief `/crumpling/...`

Function that routes OSC commands for #SDTCrumpling objects
@param x OSC message pointer
@return Zero on success, non-zero otherwise */
extern int SDTOSCCrumpling(const SDTOSCMessage *x);

/** @} */

/** @defgroup oscrolling SDTOSCRolling
OSC for #SDTRolling objects.
@ingroup oscmethods
@{
*/

/** @brief `/rolling/log <name>`

Function that implements OSC JSON log for #SDTRolling objects
@param x OSC message
@return Zero on success, non-zero otherwise */
extern int SDTOSCRolling_log(const SDTOSCMessage *x);

/** @brief `/rolling/save <name> <filepath>`

Function that implements OSC JSON save for #SDTRolling objects
@param x OSC message
@return Zero on success, non-zero otherwise */
extern int SDTOSCRolling_save(const SDTOSCMessage *x);

/** @brief `/rolling/load <name> <filepath>`

Function that implements OSC JSON file loading for #SDTRolling objects
@param x OSC message
@return Zero on success, non-zero otherwise */
extern int SDTOSCRolling_load(const SDTOSCMessage *x);

/** @brief `/rolling/loads <name> <json_string>`

Function that implements OSC JSON loading from string for #SDTRolling
objects
@param x OSC message
@return Zero on success, non-zero otherwise */
extern int SDTOSCRolling_loads(const SDTOSCMessage *x);

/** @brief `/rolling/...`

Function that routes OSC commands for #SDTRolling objects
@param x OSC message pointer
@return Zero on success, non-zero otherwise */
extern int SDTOSCRolling(const SDTOSCMessage *x);

/** @brief `/rolling/grain <name> <value>`

Function that implements OSC parameter setting for #SDTBouncing objects
@param x OSC message
@return Zero on success, non-zero otherwise */
extern int SDTOSCRolling_setGrain(const SDTOSCMessage *x);

/** @brief `/rolling/depth <name> <value>`

Function that implements OSC parameter setting for #SDTBouncing objects
@param x OSC message
@return Zero on success, non-zero otherwise */
extern int SDTOSCRolling_setDepth(const SDTOSCMessage *x);

/** @brief `/rolling/mass <name> <value>`

Function that implements OSC parameter setting for #SDTBouncing objects
@param x OSC message
@return Zero on success, non-zero otherwise */
extern int SDTOSCRolling_setMass(const SDTOSCMessage *x);

/** @brief `/rolling/velocity <name> <value>`

Function that implements OSC parameter setting for #SDTBouncing objects
@param x OSC message
@return Zero on success, non-zero otherwise */
extern int SDTOSCRolling_setVelocity(const SDTOSCMessage *x);

/** @} */

/** @defgroup oscscraping SDTOSCScraping
OSC for #SDTScraping objects.
@ingroup oscmethods
@{
*/

/** @brief `/scraping/log <name>`

Function that implements OSC JSON log for #SDTScraping objects
@param x OSC message
@return Zero on success, non-zero otherwise */
extern int SDTOSCScraping_log(const SDTOSCMessage *x);

/** @brief `/scraping/save <name> <filepath>`

Function that implements OSC JSON save for #SDTScraping objects
@param x OSC message
@return Zero on success, non-zero otherwise */
extern int SDTOSCScraping_save(const SDTOSCMessage *x);

/** @brief `/scraping/load <name> <filepath>`

Function that implements OSC JSON file loading for #SDTScraping objects
@param x OSC message
@return Zero on success, non-zero otherwise */
extern int SDTOSCScraping_load(const SDTOSCMessage *x);

/** @brief `/scraping/loads <name> <json_string>`

Function that implements OSC JSON loading from string for #SDTScraping
objects
@param x OSC message
@return Zero on success, non-zero otherwise */
extern int SDTOSCScraping_loads(const SDTOSCMessage *x);

/** @brief `/scraping/...`

Function that routes OSC commands for #SDTScraping objects
@param x OSC message pointer
@return Zero on success, non-zero otherwise */
extern int SDTOSCScraping(const SDTOSCMessage *x);

/** @brief `/scraping/grain <name> <value>`

Function that implements OSC parameter setting for #SDTBouncing objects
@param x OSC message
@return Zero on success, non-zero otherwise */
extern int SDTOSCScraping_setGrain(const SDTOSCMessage *x);

/** @brief `/scraping/force <name> <value>`

Function that implements OSC parameter setting for #SDTBouncing objects
@param x OSC message
@return Zero on success, non-zero otherwise */
extern int SDTOSCScraping_setForce(const SDTOSCMessage *x);

/** @brief `/scraping/velocity <name> <value>`

Function that implements OSC parameter setting for #SDTBouncing objects
@param x OSC message
@return Zero on success, non-zero otherwise */
extern int SDTOSCScraping_setVelocity(const SDTOSCMessage *x);

/** @} */

#ifdef __cplusplus
};
#endif

#endif

/** @} */
