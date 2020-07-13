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

#ifdef __cplusplus
};
#endif

#endif

/** @} */