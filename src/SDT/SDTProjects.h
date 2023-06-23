#include "SDTJSON.h"
#include "SDTOSCCommon.h"

/** @file SDTProjects.h
@defgroup sdt_projects SDTProjects.h: SDT Projects
Functions for SDT Projects
@{
*/

#ifndef SDT_PROJECTS_H
#define SDT_PROJECTS_H

/** @brief Convert to a JSON object the information about a SDT project
@param[in] argc Number of arguments
@param[in] argv Array of keys of the objects in the project
@return The project JSON object */
// extern json_value *SDTProject_toJSON(int argc, const char **argv);

/** @brief Load information about a SDT project from a JSON object
@param[in] prj The project JSON object
@param[in,out] return_code The return code
@param[out] msg The failure messages, as a JSON object */
// extern void SDTProject_fromJSON(const json_value *prj, int *return_code,
// json_value *msg);

/** @brief Sets the SDT Project Metadata
@param [in] value The metadata JSON object
@return The metadata JSON object */
// extern json_value
// *SDTProjectMetadata_set(json_value *value);

/** @brief Resets the SDT Project Metadata to
 * null */
// extern void SDTProjectMetadata_reset();

/** @brief Gets the SDT Project Metadata
@return The metadata JSON object (read only) */
// extern const json_value
// *SDTProjectMetadata_get();

/** @brief Gets the SDT Project Metadata
@return The metadata JSON object (must be freed
with json_builder_free) */
// extern json_value *SDTProjectMetadata_pop();

#endif

/** @} */
