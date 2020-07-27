#include "SDTOSCCommon.h"

/** @file SDTOSCProjects.h
@defgroup osc_projects SDTOSCProjects.h: OSC Projects
OSC containers and methods for SDT Projects
@{
*/

#ifndef SDT_OSC_PROJECTS_H
#define SDT_OSC_PROJECTS_H

#ifdef __cplusplus
extern "C" {
#endif

/** @brief The container of OSC methods for SDT Projects
\par OSC Address
/project
@param[in] x OSC message: the first argument must be the resonator's ID. All other arguments are passed down to the method
@return Return code */
extern SDTOSCReturnCode SDTOSCProject(void (* log)(const char *, ...), const SDTOSCMessage* x);

/** @brief OSC method for logging information about SDT Projects
\par OSC Address
/project/log
\par OSC Arguments
ID0 ID1 ...
@param [in] log Log function pointer
@param [in] args Additional OSC arguments: object IDs
@return Return code */
extern SDTOSCReturnCode SDTOSCProject_log(void (* log)(const char *, ...), const SDTOSCArgumentList* args);

#ifdef __cplusplus
};
#endif

#endif

/** @} */