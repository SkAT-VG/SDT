#include "SDTOSCCommon.h"
#include "SDTResonators.h"

/** @file SDTOSCResonators.h
@defgroup OSC SDTOSCResonators.h: OSC Resonators
OSC containers and methods for SDT resonators
@{
*/

#ifndef SDT_OSC_RESONATORS_H
#define SDT_OSC_RESONATORS_H

#ifdef __cplusplus
extern "C" {
#endif

/** @brief The container of OSC methods for SDT Resonators
\par OSC Address
/resonator
\par OSC Arguments
ID [args...]
\par
/inertial (alias)
@param[in] x OSC message: the first argument must be the resonator's ID. All other arguments are passed down to the method
@return Return code */
extern SDTOSCReturnCode SDTOSCResonator(void (* log)(const char *, ...), const SDTOSCMessage* x);

/** @brief OSC method for logging information about SDT Resonators
\par OSC Address
/resonator/log
\par OSC Arguments
ID
\par Calls
::SDTResonator_toJSON
@param [in] log Log function pointer
@param [in] key Resonator name (ID)
@param [in] x Pointer to the SDT resonator instance to inspect
@return Return code */
extern SDTOSCReturnCode SDTOSCResonator_log(void (* log)(const char *, ...), const char *key, SDTResonator *x);

/** @brief OSC method for reinitializing a resonator
\par OSC Address
/resonator/renew
\par OSC Arguments
ID NMODES NPICKUPS
\par Calls
::SDTResonator_renew
@param [in] x Pointer to the SDT resonator instance to affect
@param [in] args Additional OSC arguments: number of modes (int), number of pickup points (int)
@return Return code */
extern SDTOSCReturnCode SDTOSCResonator_renew(SDTResonator *x, const SDTOSCArgumentList *args);

/** @brief OSC method for saving information about SDT Resonators
\par OSC Address
/resonator/save
\par OSC Arguments
ID FILEPATH
\par Calls
::SDTResonator_toJSON
@param [in] log Log function pointer
@param [in] key Resonator name (ID)
@param [in] x Pointer to the SDT resonator instance to save
@param [in] args Additional OSC arguments: file path (string)
@return Return code */
extern SDTOSCReturnCode SDTOSCResonator_save(void (* log)(const char *, ...), const char *key, SDTResonator *x, const SDTOSCArgumentList *args);

/** @brief OSC method for loading information about SDT Resonators
\par OSC Address
/resonator/load
\par OSC Arguments
ID FILEPATH
\par Calls
::SDTResonator_fromJSON
\par
::SDTResonator_copy
@param [in] log Log function pointer
@param [in] key Resonator name (ID)
@param [in] x Pointer to the SDT resonator instance to change
@param [in] args Additional OSC arguments: file path (string)
@return Return code */
extern SDTOSCReturnCode SDTOSCResonator_load(void (* log)(const char *, ...), const char *key, SDTResonator *x, const SDTOSCArgumentList *args);

/** @brief OSC method for setting modal frequencies of SDT Resonators
\par OSC Address
/resonator/frequency
\par OSC Arguments
ID MODE F
\par Calls
::SDTResonator_setFrequency
@param [in] x Pointer to the SDT resonator instance to affect
@param [in] args Additional OSC arguments: mode index (int), modal frequency (float)
@return Return code */
extern SDTOSCReturnCode SDTOSCResonator_setFrequency(SDTResonator *x, const SDTOSCArgumentList *args);

/** @brief OSC method for setting modal decays of SDT Resonators
\par OSC Address
/resonator/decay
\par OSC Arguments
ID MODE F
\par Calls
::SDTResonator_setDecay
@param [in] x Pointer to the SDT resonator instance to affect
@param [in] args Additional OSC arguments: mode index (int), modal decay (float)
@return Return code */
extern SDTOSCReturnCode SDTOSCResonator_setDecay(SDTResonator *x, const SDTOSCArgumentList *args);

/** @brief OSC method for setting modal weights of SDT Resonators
\par OSC Address
/resonator/weight
\par OSC Arguments
ID MODE F
\par Calls
::SDTResonator_setWeight
@param [in] x Pointer to the SDT resonator instance to affect
@param [in] args Additional OSC arguments: mode index (int), modal weight (float)
@return Return code */
extern SDTOSCReturnCode SDTOSCResonator_setWeight(SDTResonator *x, const SDTOSCArgumentList *args);

/** @brief OSC method for setting pickup gains of SDT Resonators
\par OSC Address
/resonator/gain
\par OSC Arguments
ID PICKUP MODE F
\par Calls
::SDTResonator_setGain
@param [in] x Pointer to the SDT resonator instance to affect
@param [in] args Additional OSC arguments: pickup point index (int), mode index (int), gain (float)
@return Return code */
extern SDTOSCReturnCode SDTOSCResonator_setGain(SDTResonator *x, const SDTOSCArgumentList *args);

/** @brief OSC method for setting the fragment size of SDT Resonators
\par OSC Address
/resonator/fragmentsize
\par OSC Arguments
ID F
\par Calls
::SDTResonator_setFragmentSize
@param [in] x Pointer to the SDT resonator instance to affect
@param [in] args Additional OSC arguments: fragment size (float)
@return Return code */
extern SDTOSCReturnCode SDTOSCResonator_setFragmentSize(SDTResonator *x, const SDTOSCArgumentList *args);

/** @brief OSC method for setting the active modes of SDT Resonators
\par OSC Address
/resonator/activemodes
\par OSC Arguments
ID N
\par Calls
::SDTResonator_setActiveModes
@param [in] x Pointer to the SDT resonator instance to affect
@param [in] args Additional OSC arguments: active modes (int)
@return Return code */
extern SDTOSCReturnCode SDTOSCResonator_setActiveModes(SDTResonator *x, const SDTOSCArgumentList *args);

/** @brief OSC method for striking SDT Resonators
\par OSC Address
/resonator/strike
\par OSC Arguments
ID P V
\par Calls
::SDTResonator_setPosition
\par
::SDTResonator_setVelocity
@param [in] x Pointer to the SDT resonator instance to affect
@param [in] args Additional OSC arguments: modal displacement (float), modal velocity (float)
@return Return code */
extern SDTOSCReturnCode SDTOSCResonator_strike(SDTResonator *x, const SDTOSCArgumentList *args);

/** @brief OSC method for setting multiple modal frequencies of SDT Resonators
\par OSC Address
/resonator/freqs
\par OSC Arguments
ID [F...]
\par Calls
::SDTResonator_setFrequency
@param [in] x Pointer to the SDT resonator instance to affect
@param [in] args Additional OSC arguments: a modal frequency (float) per mode, in order of mode index
@return Return code */
extern SDTOSCReturnCode SDTOSCResonator_setFreqs(SDTResonator *x, const SDTOSCArgumentList *args);

/** @brief OSC method for setting multiple modal decays of SDT Resonators
\par OSC Address
/resonator/decays
\par OSC Arguments
ID [F...]
\par Calls
::SDTResonator_setDecay
@param [in] x Pointer to the SDT resonator instance to affect
@param [in] args Additional OSC arguments: a modal decay (float) per mode, in order of mode index
@return Return code */
extern SDTOSCReturnCode SDTOSCResonator_setDecays(SDTResonator *x, const SDTOSCArgumentList *args);

/** @brief OSC method for setting multiple modal weights of SDT Resonators
\par OSC Address
/resonator/weights
\par OSC Arguments
ID [F...]
\par Calls
::SDTResonator_setWeight
@param [in] x Pointer to the SDT resonator instance to affect
@param [in] args Additional OSC arguments: a modal weight (float) per mode, in order of mode index
@return Return code */
extern SDTOSCReturnCode SDTOSCResonator_setWeights(SDTResonator *x, const SDTOSCArgumentList *args);

/** @brief OSC method for setting multiple pickup gains of SDT Resonators
\par OSC Address
/resonator/pickup
\par OSC Arguments
ID PICKUP [F...]
\par Calls
::SDTResonator_setGain
@param [in] x Pointer to the SDT resonator instance to affect
@param [in] args Additional OSC arguments: the pickup point index (int), then a pickup gain (float) per mode, in order of mode index
@return Return code */
extern SDTOSCReturnCode SDTOSCResonator_setGains(SDTResonator *x, const SDTOSCArgumentList *args);

#ifdef __cplusplus
};
#endif

#endif

/** @} */