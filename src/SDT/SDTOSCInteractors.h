#include "SDTOSCCommon.h"
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