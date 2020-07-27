#include "SDTOSCCommon.h"
#include "SDTJSON.h"

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

/** @brief Convert to a JSON array the information about a SDT project
@param[in] argc Number of arguments
@param[in] argv Array of keys of the objects in the project
@return The JSON array of key / value pairs */
extern json_value *SDTOSCProject_toJSON(int argc, const char **argv);

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
@param [in] args Additional OSC arguments: object IDs (strings)
@return Return code */
extern SDTOSCReturnCode SDTOSCProject_log(void (* log)(const char *, ...), const SDTOSCArgumentList* args);

/** @brief OSC method for saving information about SDT Projects
\par OSC Address
/project/save
\par OSC Arguments
FILE ID0 ID1 ...
@param [in] log Log function pointer
@param [in] args Additional OSC arguments: file path (string), object IDs (strings)
@return Return code */
extern SDTOSCReturnCode SDTOSCProject_save(void (* log)(const char *, ...), const SDTOSCArgumentList* args);

/** @brief OSC method for loading information for SDT Projects from a JSON file
\par OSC Address
/project/load
\par OSC Arguments
FILE
@param [in] log Log function pointer
@param [in] args Additional OSC arguments: file path (string)
@return Return code */
SDTOSCReturnCode SDTOSCProject_load(void (* log)(const char *, ...), const SDTOSCArgumentList* args);

#ifdef __cplusplus
};
#endif

#endif

/** @} */