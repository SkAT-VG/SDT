#include "SDTAnalysis.h"
#include "SDTOSCCommon.h"

/**
\addtogroup OSC
@{
@file SDTOSCAnalysis.h @{ */

#ifndef SDT_OSC_ANALYSIS_H
#define SDT_OSC_ANALYSIS_H

#ifdef __cplusplus
extern "C" {
#endif

/**


@defgroup OSCZerox SDTOSC.h: Open Sound Control root
@file SDTOSCAnalysis.h
@{
@defgroup osczerox SDTOSCZeroCrossing
OSC for #SDTZeroCrossing objects @{ */

/** @brief `/zerox/log <name>`

Function that implements OSC JSON log for #SDTZeroCrossing objects
@param x OSC message
@return Zero on success, non-zero otherwise */
extern int SDTOSCZeroCrossing_log(const SDTOSCMessage *x);

/** @brief `/zerox/save <name> <filepath>`

Function that implements OSC JSON save for #SDTZeroCrossing objects
@param x OSC message
@return Zero on success, non-zero otherwise */
extern int SDTOSCZeroCrossing_save(const SDTOSCMessage *x);

/** @brief `/zerox/load <name> <filepath>`

Function that implements OSC JSON file loading for #SDTZeroCrossing objects
@param x OSC message
@return Zero on success, non-zero otherwise */
extern int SDTOSCZeroCrossing_load(const SDTOSCMessage *x);

/** @brief `/zerox/loads <name> <json_string>`

Function that implements OSC JSON loading from string for #SDTZeroCrossing
objects
@param x OSC message
@return Zero on success, non-zero otherwise */
extern int SDTOSCZeroCrossing_loads(const SDTOSCMessage *x);

/** @brief `/zerox/size <name> <value>`

Function that implements OSC parameter setting for #SDTZeroCrossing objects
@param x OSC message
@return Zero on success, non-zero otherwise */
extern int SDTOSCZeroCrossing_setSize(const SDTOSCMessage *x);

/** @brief `/zerox/overlap <name> <value>`

Function that implements OSC parameter setting for #SDTZeroCrossing objects
@param x OSC message
@return Zero on success, non-zero otherwise */
extern int SDTOSCZeroCrossing_setOverlap(const SDTOSCMessage *x);

/** @brief `/zerox/...`

Function that routes OSC commands for #SDTZeroCrossing objects
@param x OSC message pointer
@return Zero on success, non-zero otherwise */
extern int SDTOSCZeroCrossing(const SDTOSCMessage *x);

/** @} */

#ifdef __cplusplus
};
#endif

#endif

/** @}@} */
