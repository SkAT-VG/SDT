#include "../SDTResonators.h"
#include "SDTOSCCommon.h"

/** @file SDTOSCResonators.h
@defgroup OSCResonators SDTOSCResonators.h: OSC Resonators
OSC for #SDTResonator objects.
@{
*/

#ifndef SDT_OSC_RESONATORS_H
#define SDT_OSC_RESONATORS_H

#ifdef __cplusplus
extern "C" {
#endif

/** @defgroup oscresonators SDTOSCResonators
OSC for #SDTResonators objects
@ingroup osc
@{ */

/** @brief `/resonator/log <name>`

Function that implements OSC JSON log for #SDTResonator objects
@param x OSC message
@return Zero on success, non-zero otherwise */
extern int SDTOSCResonator_log(const SDTOSCMessage *x);

/** @brief `/resonator/save <name> <filepath>`

Function that implements OSC JSON save for #SDTResonator objects
@param x OSC message
@return Zero on success, non-zero otherwise */
extern int SDTOSCResonator_save(const SDTOSCMessage *x);

/** @brief `/resonator/load <name> <filepath>`

Function that implements OSC JSON file loading for #SDTResonator objects
@param x OSC message
@return Zero on success, non-zero otherwise */
extern int SDTOSCResonator_load(const SDTOSCMessage *x);

/** @brief `/resonator/loads <name> <json_string>`

Function that implements OSC JSON loading from string for #SDTResonator
objects
@param x OSC message
@return Zero on success, non-zero otherwise */
extern int SDTOSCResonator_loads(const SDTOSCMessage *x);

/** @brief `/resonator/...`

Function that routes OSC commands for #SDTResonator objects
@param x OSC message pointer
@return Zero on success, non-zero otherwise */
extern int SDTOSCResonator(const SDTOSCMessage *x);

/** @brief `/resonator/frequency <name> <mode_index> <frequency>`

Function that sets one modal frequency
@param x OSC message pointer
@return Zero on success, non-zero otherwise */
extern int SDTOSCResonator_setFrequency(const SDTOSCMessage *x);

/** @brief `/resonator/decay <name> <mode_index> <decay>`

Function that sets one modal decay
@param x OSC message pointer
@return Zero on success, non-zero otherwise */
extern int SDTOSCResonator_setDecay(const SDTOSCMessage *x);

/** @brief `/resonator/weight <name> <mode_index> <weight>`

Function that sets one modal weight
@param x OSC message pointer
@return Zero on success, non-zero otherwise */
extern int SDTOSCResonator_setWeight(const SDTOSCMessage *x);

/** @brief `/resonator/gain <name> <pickup_index> <mode_index> <gain>`

Function that sets one modal gain
@param x OSC message pointer
@return Zero on success, non-zero otherwise */
extern int SDTOSCResonator_setGain(const SDTOSCMessage *x);

/** @brief `/resonator/fragmentSize <name> <value>`

Function that sets the resonator fragment size
@param x OSC message pointer
@return Zero on success, non-zero otherwise */
extern int SDTOSCResonator_setFragmentSize(const SDTOSCMessage *x);

/** @brief `/resonator/activeModes <name> <value>`

Function that sets the resonator active modes
@param x OSC message pointer
@return Zero on success, non-zero otherwise */
extern int SDTOSCResonator_setActiveModes(const SDTOSCMessage *x);

/** @} */

#ifdef __cplusplus
};
#endif

#endif

/** @} */
