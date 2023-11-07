#include "../SDTGases.h"
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

#ifdef __cplusplus
};
#endif

#endif

/** @} */
