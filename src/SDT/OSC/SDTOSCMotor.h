#include "SDTOSCCommon.h"

/** @file SDTOSCMotor.h
@defgroup OSCMotor SDTOSCMotor.h: OSC Motor
OSC for #SDTMotor objects.
@{
*/

#ifndef SDT_OSC_MOTOR_H
#define SDT_OSC_MOTOR_H

#ifdef __cplusplus
extern "C" {
#endif

/** @defgroup oscmotor SDTOSCMotor
OSC for #SDTMotor objects.
@ingroup oscmethods
@{
*/

/** @brief `/motor/log <name>`

Function that implements OSC JSON log for #SDTMotor objects
@param x OSC message
@return Zero on success, non-zero otherwise */
extern int SDTOSCMotor_log(const SDTOSCMessage *x);

/** @brief `/motor/save <name> <filepath>`

Function that implements OSC JSON save for #SDTMotor objects
@param x OSC message
@return Zero on success, non-zero otherwise */
extern int SDTOSCMotor_save(const SDTOSCMessage *x);

/** @brief `/motor/load <name> <filepath>`

Function that implements OSC JSON file loading for #SDTMotor objects
@param x OSC message
@return Zero on success, non-zero otherwise */
extern int SDTOSCMotor_load(const SDTOSCMessage *x);

/** @brief `/motor/loads <name> <json_string>`

Function that implements OSC JSON loading from string for #SDTMotor
objects
@param x OSC message
@return Zero on success, non-zero otherwise */
extern int SDTOSCMotor_loads(const SDTOSCMessage *x);

/** @brief `/motor/...`

Function that routes OSC commands for #SDTMotor objects
@param x OSC message pointer
@return Zero on success, non-zero otherwise */
extern int SDTOSCMotor(const SDTOSCMessage *x);

/** @brief `/motor/cycle <name> <value>`

Function that sets the Revolutions Per Minute (RPM) of the engine rotor.
@param x OSC message pointer
@return Zero on success, non-zero otherwise */
extern int SDTOSCMotor_setCycle(const SDTOSCMessage *x);

/** @brief `/motor/rpm <name> <value>`

Function that sets the Revolutions Per Minute (RPM) of the engine rotor.
@param x OSC message pointer
@return Zero on success, non-zero otherwise */
extern int SDTOSCMotor_setRpm(const SDTOSCMessage *x);

/** @brief `/motor/throttle <name> <value>`

Function that sets the Revolutions Per Minute (RPM) of the engine rotor.
@param x OSC message pointer
@return Zero on success, non-zero otherwise */
extern int SDTOSCMotor_setThrottle(const SDTOSCMessage *x);

/** @brief `/motor/nCylinders <name> <value>`

Function that sets the Revolutions Per Minute (RPM) of the engine rotor.
@param x OSC message pointer
@return Zero on success, non-zero otherwise */
extern int SDTOSCMotor_setNCylinders(const SDTOSCMessage *x);

/** @brief `/motor/cylinderSize <name> <value>`

Function that sets the Revolutions Per Minute (RPM) of the engine rotor.
@param x OSC message pointer
@return Zero on success, non-zero otherwise */
extern int SDTOSCMotor_setCylinderSize(const SDTOSCMessage *x);

/** @brief `/motor/compressionRatio <name> <value>`

Function that sets the Revolutions Per Minute (RPM) of the engine rotor.
@param x OSC message pointer
@return Zero on success, non-zero otherwise */
extern int SDTOSCMotor_setCompressionRatio(const SDTOSCMessage *x);

/** @brief `/motor/sparkTime <name> <value>`

Function that sets the Revolutions Per Minute (RPM) of the engine rotor.
@param x OSC message pointer
@return Zero on success, non-zero otherwise */
extern int SDTOSCMotor_setSparkTime(const SDTOSCMessage *x);

/** @brief `/motor/asymmetry <name> <value>`

Function that sets the Revolutions Per Minute (RPM) of the engine rotor.
@param x OSC message pointer
@return Zero on success, non-zero otherwise */
extern int SDTOSCMotor_setAsymmetry(const SDTOSCMessage *x);

/** @brief `/motor/backfire <name> <value>`

Function that sets the Revolutions Per Minute (RPM) of the engine rotor.
@param x OSC message pointer
@return Zero on success, non-zero otherwise */
extern int SDTOSCMotor_setBackfire(const SDTOSCMessage *x);

/** @brief `/motor/intakeSize <name> <value>`

Function that sets the Revolutions Per Minute (RPM) of the engine rotor.
@param x OSC message pointer
@return Zero on success, non-zero otherwise */
extern int SDTOSCMotor_setIntakeSize(const SDTOSCMessage *x);

/** @brief `/motor/extractorSize <name> <value>`

Function that sets the Revolutions Per Minute (RPM) of the engine rotor.
@param x OSC message pointer
@return Zero on success, non-zero otherwise */
extern int SDTOSCMotor_setExtractorSize(const SDTOSCMessage *x);

/** @brief `/motor/exhaustSize <name> <value>`

Function that sets the Revolutions Per Minute (RPM) of the engine rotor.
@param x OSC message pointer
@return Zero on success, non-zero otherwise */
extern int SDTOSCMotor_setExhaustSize(const SDTOSCMessage *x);

/** @brief `/motor/expansion <name> <value>`

Function that sets the Revolutions Per Minute (RPM) of the engine rotor.
@param x OSC message pointer
@return Zero on success, non-zero otherwise */
extern int SDTOSCMotor_setExpansion(const SDTOSCMessage *x);

/** @brief `/motor/mufflerSize <name> <value>`

Function that sets the Revolutions Per Minute (RPM) of the engine rotor.
@param x OSC message pointer
@return Zero on success, non-zero otherwise */
extern int SDTOSCMotor_setMufflerSize(const SDTOSCMessage *x);

/** @brief `/motor/mufflerFeedback <name> <value>`

Function that sets the Revolutions Per Minute (RPM) of the engine rotor.
@param x OSC message pointer
@return Zero on success, non-zero otherwise */
extern int SDTOSCMotor_setMufflerFeedback(const SDTOSCMessage *x);

/** @brief `/motor/outletSize <name> <value>`

Function that sets the Revolutions Per Minute (RPM) of the engine rotor.
@param x OSC message pointer
@return Zero on success, non-zero otherwise */
extern int SDTOSCMotor_setOutletSize(const SDTOSCMessage *x);

/** @brief `/motor/damp <name> <value>`

Function that sets the Revolutions Per Minute (RPM) of the engine rotor.
@param x OSC message pointer
@return Zero on success, non-zero otherwise */
extern int SDTOSCMotor_setDamp(const SDTOSCMessage *x);

/** @brief `/motor/dc <name> <value>`

Function that sets the Revolutions Per Minute (RPM) of the engine rotor.
@param x OSC message pointer
@return Zero on success, non-zero otherwise */
extern int SDTOSCMotor_setDc(const SDTOSCMessage *x);

/** @} */

#ifdef __cplusplus
};
#endif

#endif

/** @} */
