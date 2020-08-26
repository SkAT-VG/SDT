#include "SDTOSCCommon.h"
#include "SDTDCMotor.h"

/** @file SDTOSCDCMotor.h
@defgroup OSCDCMotor SDTOSCDCMotor.h: OSC DCMotor
OSC containers and methods for SDT DCMotors
@{
*/

#ifndef SDT_OSC_DCMOTOR_H
#define SDT_OSC_DCMOTOR_H

#ifdef __cplusplus
extern "C" {
#endif

/** @brief The container of OSC methods for SDT DCMotors
\par OSC Address
/dcmotor
\par OSC Arguments
ID [args...]
@param[in] x OSC message: the first argument must be the DC motor's ID. All other arguments are passed down to the method
@return Return code */
extern SDTOSCReturnCode SDTOSCDCMotor(void (* log)(const char *, ...), const SDTOSCMessage* x);

/** @brief OSC method for logging information about SDT DCMotors
\par OSC Address
/dcmotor/log
\par OSC Arguments
ID
\par Calls
::SDTDCMotor_toJSON
@param [in] log Log function pointer
@param [in] key DC motor name (ID)
@param [in] x Pointer to the SDT DC motor instance to inspect
@return Return code */
extern SDTOSCReturnCode SDTOSCDCMotor_log(void (* log)(const char *, ...), const char *key, SDTDCMotor *x);

/** @brief OSC method for saving information about SDT DCMotors
\par OSC Address
/dcmotor/save
\par OSC Arguments
ID FILEPATH
\par Calls
::SDTDCMotor_toJSON
@param [in] log Log function pointer
@param [in] key DC motor name (ID)
@param [in] x Pointer to the SDT DC motor instance to save
@param [in] args Additional OSC arguments: file path (string)
@return Return code */
extern SDTOSCReturnCode SDTOSCDCMotor_save(void (* log)(const char *, ...), const char *key, SDTDCMotor *x, const SDTOSCArgumentList *args);

/** @brief OSC method for loading information about SDT DCMotors
\par OSC Address
/dcmotor/load
\par OSC Arguments
ID FILEPATH
\par Calls
::SDTDCMotor_fromJSON
\par
::SDTDCMotor_copy
@param [in] log Log function pointer
@param [in] key DC motor name (ID)
@param [in] x Pointer to the SDT DC motor instance to change
@param [in] args Additional OSC arguments: file path (string)
@return Return code */
extern SDTOSCReturnCode SDTOSCDCMotor_load(void (* log)(const char *, ...), const char *key, SDTDCMotor *x, const SDTOSCArgumentList *args);

#ifdef __cplusplus
};
#endif

#endif

/** @} */