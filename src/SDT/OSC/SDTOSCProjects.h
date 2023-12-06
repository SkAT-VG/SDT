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

/** @defgroup oscprojects SDTOSCProjects
OSC for SDT projects
@ingroup oscmethods
@{
*/

/** @brief `/project/log <name_1> <name_2> ...`

Function that implements OSC JSON log for SDT projects
@param x OSC message
@return Zero on success, non-zero otherwise */
extern int SDTOSCProject_log(const SDTOSCMessage *x);

/** @brief `/project/save <filepath> <name_1> <name_2> ...`

Function that implements OSC JSON save for SDT projects
@param x OSC message
@return Zero on success, non-zero otherwise */
extern int SDTOSCProject_save(const SDTOSCMessage *x);

/** @brief `/project/load <filepath>`

Function that implements OSC JSON file loading for SDT projects
@param x OSC message
@return Zero on success, non-zero otherwise */
extern int SDTOSCProject_load(const SDTOSCMessage *x);

/** @brief `/project/loads <json_string>`

Function that implements OSC JSON loading from string for SDT projects
@param x OSC message
@return Zero on success, non-zero otherwise */
extern int SDTOSCProject_loads(const SDTOSCMessage *x);

/** @brief `/project/...`

Function that routes OSC commands for SDT projects
@param x OSC message pointer
@return Zero on success, non-zero otherwise */
extern int SDTOSCProject(const SDTOSCMessage *x);

/** @} */

#ifdef __cplusplus
};
#endif

#endif

/** @} */
