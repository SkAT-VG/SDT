#include "SDTJSON.h"

/** @file SDTProjects.h
@defgroup Projects SDTProjects.h: SDT Projects
Functions and strutures for SDT Projects
@{
*/

#ifndef SDT_PROJECTS_H
#define SDT_PROJECTS_H

#ifdef __cplusplus
extern "C" {
#endif

/** @brief Convert to a JSON array the information about a SDT project
@param[in] argc Number of arguments
@param[in] argv Array of keys of the objects in the project
@return The JSON array of key / value pairs */
extern json_value *SDTProject_toJSON(int argc, const char **argv);

#ifdef __cplusplus
};
#endif

#endif

/** @} */