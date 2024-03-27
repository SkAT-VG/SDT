#include "SDTOSCCommon.h"

/** @file SDTOSCDCMotor.h
@defgroup OSCDCMotor SDTOSCDCMotor.h: OSC DCMotor
OSC for #SDTDCMotor objects.
@{
*/

#ifndef SDT_OSC_DCMOTOR_H
#define SDT_OSC_DCMOTOR_H

#ifdef __cplusplus
extern "C" {
#endif

/** @defgroup oscdcmotor SDTOSCDCMotor
OSC for #SDTDCMotor objects.
@ingroup oscmethods
@{
*/

/** @brief `/dcmotor/log <name>`

Function that implements OSC JSON log for #SDTDCMotor objects
@param x OSC message
@return Zero on success, non-zero otherwise */
extern int SDTOSCDCMotor_log(const SDTOSCMessage *x);

/** @brief `/dcmotor/save <name> <filepath>`

Function that implements OSC JSON save for #SDTDCMotor objects
@param x OSC message
@return Zero on success, non-zero otherwise */
extern int SDTOSCDCMotor_save(const SDTOSCMessage *x);

/** @brief `/dcmotor/load <name> <filepath>`

Function that implements OSC JSON file loading for #SDTDCMotor objects
@param x OSC message
@return Zero on success, non-zero otherwise */
extern int SDTOSCDCMotor_load(const SDTOSCMessage *x);

/** @brief `/dcmotor/loads <name> <json_string>`

Function that implements OSC JSON loading from string for #SDTDCMotor
objects
@param x OSC message
@return Zero on success, non-zero otherwise */
extern int SDTOSCDCMotor_loads(const SDTOSCMessage *x);

/** @brief `/dcmotor/...`

Function that routes OSC commands for #SDTDCMotor objects
@param x OSC message pointer
@return Zero on success, non-zero otherwise */
extern int SDTOSCDCMotor(const SDTOSCMessage *x);

/** @brief `/dcmotor/rpm <name> <value>`

Function that sets the Revolutions Per Minute (RPM) of the engine rotor.
@param x OSC message pointer
@return Zero on success, non-zero otherwise */
extern int SDTOSCDCMotor_setRpm(const SDTOSCMessage *x);

/** @brief `/dcmotor/stress <name> <value>`

Function that sets the mechanical stress on the rotor.
@param x OSC message pointer
@return Zero on success, non-zero otherwise */
extern int SDTOSCDCMotor_setLoad(const SDTOSCMessage *x);

/** @brief `/dcmotor/coils <name> <value>`

Function that sets the number of coils on the rotor.
@param x OSC message pointer
@return Zero on success, non-zero otherwise */
extern int SDTOSCDCMotor_setCoils(const SDTOSCMessage *x);

/** @brief `/dcmotor/size <name> <value>`

Function that sets the size of the chassis (in meters).
@param x OSC message pointer
@return Zero on success, non-zero otherwise */
extern int SDTOSCDCMotor_setSize(const SDTOSCMessage *x);

/** @brief `/dcmotor/reson <name> <value>`

Function that sets the amount of resonance caused by the chassis.
@param x OSC message pointer
@return Zero on success, non-zero otherwise */
extern int SDTOSCDCMotor_setReson(const SDTOSCMessage *x);

/** @brief `/dcmotor/gearRatio <name> <value>`

Function that sets the gear ratio of the engine.
@param x OSC message pointer
@return Zero on success, non-zero otherwise */
extern int SDTOSCDCMotor_setGearRatio(const SDTOSCMessage *x);

/** @brief `/dcmotor/harshness <name> <value>`

Function that sets the harshness of the engine sound.
@param x OSC message pointer
@return Zero on success, non-zero otherwise */
extern int SDTOSCDCMotor_setHarshness(const SDTOSCMessage *x);

/** @brief `/dcmotor/rotorGain <name> <value>`

Function that sets the sound volume coming from the rotor.
@param x OSC message pointer
@return Zero on success, non-zero otherwise */
extern int SDTOSCDCMotor_setRotorGain(const SDTOSCMessage *x);

/** @brief `/dcmotor/gearGain <name> <value>`

Function that sets the sound volume coming from the gears.
@param x OSC message pointer
@return Zero on success, non-zero otherwise */
extern int SDTOSCDCMotor_setGearGain(const SDTOSCMessage *x);

/** @brief `/dcmotor/brushGain <name> <value>`

Function that sets the sound volume coming from the brushes.
@param x OSC message pointer
@return Zero on success, non-zero otherwise */
extern int SDTOSCDCMotor_setBrushGain(const SDTOSCMessage *x);

/** @brief `/dcmotor/airGain <name> <value>`

Function that sets the sound volume air turbulence caused by rotation.
@param x OSC message pointer
@return Zero on success, non-zero otherwise */
extern int SDTOSCDCMotor_setAirGain(const SDTOSCMessage *x);

/** @} */

#ifdef __cplusplus
};
#endif

#endif

/** @} */
