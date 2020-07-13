#include "../../3rdparty/json-builder/json-builder.h"
#include "SDTResonators.h"

/** @file SDTJSON.h
@defgroup OSC SDTJSON.h: JSON
SDT serialization and deserialization using JSON
@{
*/

#ifndef SDT_JSON_H
#define SDT_JSON_H

#ifdef __cplusplus
extern "C" {
#endif

/** @brief Convert an SDTResonator object in a JSON object
@param[in] x Pointer to the SDTResonator
@return Pointer to the JSON object */
extern json_value *json_SDTResonator_new(SDTResonator *x);

/** @brief Dump a JSON value to file
@param[in] x The JSON value
@param[in] fpath The file path
@return 0 on success, 1 on error */
extern int json_dump(json_value *x, const char *fpath);

#ifdef __cplusplus
};
#endif

#endif

/** @} */