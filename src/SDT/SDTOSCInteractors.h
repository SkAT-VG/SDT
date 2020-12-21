#include "SDTOSCCommon.h"
#include "SDTOSCMisc.h"
#include "SDTInteractors.h"
#include "SDTSolids.h"

/** @file SDTOSCInteractors.h
@defgroup OSCInteractors SDTOSCInteractors.h: OSC Interactors
OSC containers and methods for SDT Interactors
@{ */

#ifndef SDT_OSC_INTERACTORS_H
#define SDT_OSC_INTERACTORS_H

#ifdef __cplusplus
extern "C" {
#endif

/** @brief The container of OSC methods for SDT Interactors
\par OSC Address
/interactor
\par OSC Arguments
ID0 ID1 [args...]
@param[in] x OSC message: the first two argument must be resonator IDs. All other arguments are passed down to the method
@return Return code */
extern SDTOSCReturnCode SDTOSCInteractor(void (* log)(const char *, ...), const SDTOSCMessage* x);

#define SDT_OSC_INTERACTOR_SETTER_H(SDT_TYPE, F, T, S, K, J, D) extern SDTOSCReturnCode CONCAT(CONCAT(SDTOSC, SDT_TYPE), CONCAT(_set, S))(SDTInteractor *x, const SDTOSCArgumentList *args);

#define SDT_OSC_INTERACTOR_SETTER(SDT_TYPE, F, T, S, K, J, D) SDTOSCReturnCode CONCAT(CONCAT(SDTOSC, SDT_TYPE), CONCAT(_set, S))(SDTInteractor *x, const SDTOSCArgumentList *args) { \
  if (SDTOSCArgumentList_getNArgs(args) < 1 || !CONCAT(SDTOSCArgumentList_is, OSC_TYPE(J))(args, 0)) \
    return SDT_OSC_RETURN_ARGUMENT_ERROR; \
  CONCAT(SDT_TYPE_FULL(SDT_TYPE), CONCAT(_set, S))(x, ( T ) CONCAT(SDTOSCArgumentList_get, OSC_TYPE(J))(args, 0)); \
  return SDT_OSC_RETURN_OK; \
}

/** @brief Define the OSC setter methods declarations for interactors
@param[in] SDT_TYPE The SDT type macro */
#define SDT_OSC_INTERACTOR_MAKE_SETTERS_H(SDT_TYPE) SDT_TYPE ## _ATTRIBUTES(SDT_TYPE, SDT_OSC_INTERACTOR_SETTER_H)

/** @brief Define the OSC setter methods for interactors
@param[in] SDT_TYPE The SDT type macro */
#define SDT_OSC_INTERACTOR_MAKE_SETTERS(SDT_TYPE) SDT_TYPE ## _ATTRIBUTES(SDT_TYPE, SDT_OSC_INTERACTOR_SETTER)

/** @brief Define the OSC root method for the interactor class
@param[in] SDT_TYPE The SDT type macro */
#define SDT_OSC_INTERACTOR_ROOT(SDT_TYPE) SDTOSCReturnCode CONCAT(SDTOSC, SDT_TYPE)(void (* log)(const char *, ...), const char *key0, const char *key1, SDTInteractor *obj, const SDTOSCMessage* x) { \
  if (! CONCAT(SDTInteractor_is, SDT_TYPE)(obj)) \
    return SDT_OSC_RETURN_INCORRECT_INTERACTOR_TYPE; \
  SDTOSCArgumentList *sub_args = SDTOSCMessage_getArguments(x); \
  SDTOSCReturnCode return_code; \
  if (obj) \
    if (SDTOSCMessage_hasContainer(x)) { \
      char *method = SDTOSCMessage_getContainer(x); \
      if (!strcmp("log", method)) \
        return_code = CONCAT(CONCAT(SDTOSC, SDT_TYPE), _log)(log, key0, key1, obj); \
      else if (!strcmp("save", method)) \
        return_code = CONCAT(CONCAT(SDTOSC, SDT_TYPE), _save)(log, key0, key1, obj, sub_args); \
      else if (!strcmp("load", method)) \
        return_code = CONCAT(CONCAT(SDTOSC, SDT_TYPE), _load)(log, key0, key1, obj, sub_args); \
      SDT_TYPE ## _ATTRIBUTES(SDT_TYPE, SDT_OSC_TYPE_SETTER_SWITCH) \
      SDT_INTERACTOR_ATTRIBUTES(SDT_INTERACTOR, SDT_OSC_TYPE_SETTER_SWITCH) \
      else \
        return_code = SDT_OSC_RETURN_NOT_IMPLEMENTED; \
    } else \
      return_code = SDT_OSC_RETURN_MISSING_METHOD; \
    else \
      return_code = SDT_OSC_RETURN_OBJECT_NOT_FOUND; \
  return return_code; \
}

SDT_OSC_TYPE_MAKE_SETTERS_H(SDT_INTERACTOR)

/** @defgroup osc_impact OSC Impact
OSC containers and methods for SDT Impacts
@{ */

/** @brief The container of OSC methods for SDT Impacts
\par OSC Address
/interactor/impact
\par OSC Arguments
ID0 ID1 [args...]
@param[in] key0 First resonator ID
@param[in] key1 Second resonator ID
@param[in] x Interactor instance pointer
@param[in] m OSC message pointer
@return Return code */
extern SDTOSCReturnCode SDTOSCImpact(void (* log)(const char *, ...), const char *key0, const char *key1, SDTInteractor *x, const SDTOSCMessage* m);

SDT_OSC_INTERACTOR_MAKE_SETTERS_H(SDT_IMPACT)

/** @brief OSC method for logging information about SDT Impacts
\par OSC Address
/interactor/impact/log
\par OSC Arguments
ID0 ID1
\par Calls
::SDTImpact_toJSON
@param [in] log Log function pointer
@param[in] key0 First resonator ID
@param[in] key1 Second resonator ID
@param[in] x Interactor instance pointer
@return Return code */
extern SDTOSCReturnCode SDTOSCImpact_log(void (* log)(const char *, ...), const char *key0, const char *key1, SDTInteractor *x);

/** @brief OSC method for saving information about SDT Impacts
\par OSC Address
/interactor/impact/save
\par OSC Arguments
ID0 ID1 FILEPATH
\par Calls
::SDTImpact_toJSON
@param [in] log Log function pointer
@param[in] key0 First resonator ID
@param[in] key1 Second resonator ID
@param[in] x Interactor instance pointer
@param [in] args Additional OSC arguments: file path (string)
@return Return code */
extern SDTOSCReturnCode SDTOSCImpact_save(void (* log)(const char *, ...), const char *key0, const char *key1, SDTInteractor *x, const SDTOSCArgumentList *args);

/** @brief OSC method for loading information about SDT Impacts
\par OSC Address
/interactor/impact/load
\par OSC Arguments
ID0 ID1 FILEPATH
\par Calls
::SDTImpact_fromJSON
@param[in] log Log function pointer
@param[in] key0 First resonator ID
@param[in] key1 Second resonator ID
@param[in] x Interactor instance pointer
@param[in] args Additional OSC arguments: file path (string)
@return Return code */
extern SDTOSCReturnCode SDTOSCImpact_load(void (* log)(const char *, ...), const char *key0, const char *key1, SDTInteractor *x, const SDTOSCArgumentList *args);

/** @} */

/** @defgroup osc_friction OSC Friction
OSC containers and methods for SDT Frictions
@{ */

/** @brief The container of OSC methods for SDT Frictions
\par OSC Address
/interactor/friction
\par OSC Arguments
ID0 ID1 [args...]
@param[in] key0 First resonator ID
@param[in] key1 Second resonator ID
@param[in] x Interactor instance pointer
@param[in] m OSC message pointer
@return Return code */
extern SDTOSCReturnCode SDTOSCFriction(void (* log)(const char *, ...), const char *key0, const char *key1, SDTInteractor *x, const SDTOSCMessage* m);

SDT_OSC_INTERACTOR_MAKE_SETTERS_H(SDT_FRICTION)

/** @brief OSC method for logging information about SDT Frictions
\par OSC Address
/interactor/friction/log
\par OSC Arguments
ID0 ID1
\par Calls
::SDTFriction_toJSON
@param [in] log Log function pointer
@param[in] key0 First resonator ID
@param[in] key1 Second resonator ID
@param[in] x Interactor instance pointer
@return Return code */
extern SDTOSCReturnCode SDTOSCFriction_log(void (* log)(const char *, ...), const char *key0, const char *key1, SDTInteractor *x);

/** @brief OSC method for saving information about SDT Frictions
\par OSC Address
/interactor/friction/save
\par OSC Arguments
ID0 ID1 FILEPATH
\par Calls
::SDTFriction_toJSON
@param [in] log Log function pointer
@param[in] key0 First resonator ID
@param[in] key1 Second resonator ID
@param[in] x Interactor instance pointer
@param [in] args Additional OSC arguments: file path (string)
@return Return code */
extern SDTOSCReturnCode SDTOSCFriction_save(void (* log)(const char *, ...), const char *key0, const char *key1, SDTInteractor *x, const SDTOSCArgumentList *args);

/** @brief OSC method for loading information about SDT Frictions
\par OSC Address
/interactor/friction/load
\par OSC Arguments
ID0 ID1 FILEPATH
\par Calls
::SDTFriction_fromJSON
@param[in] log Log function pointer
@param[in] key0 First resonator ID
@param[in] key1 Second resonator ID
@param[in] x Interactor instance pointer
@param[in] args Additional OSC arguments: file path (string)
@return Return code */
extern SDTOSCReturnCode SDTOSCFriction_load(void (* log)(const char *, ...), const char *key0, const char *key1, SDTInteractor *x, const SDTOSCArgumentList *args);

/** @} */

#ifdef __cplusplus
};
#endif

#endif

/** @} */