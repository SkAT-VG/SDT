#include "../../3rdparty/json-builder/json-builder.h"
#include "SDTResonators.h"
#include "SDTInteractors.h"

/** @file SDTJSON.h
@defgroup JSON SDTJSON.h: JSON
SDT serialization and deserialization using JSON
@{
*/

#ifndef SDT_JSON_H
#define SDT_JSON_H

#ifdef __cplusplus
extern "C" {
#endif

/** @defgroup json_utils JSON Utils
JSON utility functions
@{ */

/** @brief Get the default JSON serialization options for SDT
@return The default JSON serialization options for SDT */
extern json_serialize_opts sdt_json_opts();

/** @brief Dump a JSON value to string
@param[in] x The JSON value
@return The string, or 0 on fail. Must be freed */
extern char *json_dumps(const json_value *x);

/** @brief Dump a JSON value to file
@param[in] x The JSON value
@param[in] fpath The file path
@return 0 on success, 1 on error */
extern int json_dump(const json_value *x, const char *fpath);

/** @brief Read JSON value from string
@param[in] s The string
@param[in] n The number of characters to read. If negative, all the string is read up until the first NULL character
@return The JSON value pointer, or 0 on failure. Memory must be freed with json_builder_free */
extern json_value *json_reads(const char *s, int n);

/** @brief Read JSON value from file
@param[in] fpath The file path
@return The JSON value pointer, or 0 on failure. Memory must be freed with json_builder_free */
extern json_value *json_read(const char *fpath);

/** @brief Get the value of a field of a JSON object
@param[in] x The JSON object pointer
@param[in] key The field name
@return The JSON value pointer, or 0 on failure (x is not an object or no field is found with the specified key) */
extern const json_value *json_object_get_by_key(const json_value *x, const char *key);

/** @brief Get the numeric value of a cell of a JSON array
@param[in] x The JSON array pointer
@param[in] idx The cell index
@param[in] dflt The default value
@return x[idx] as a double if x is an array and idx is a valid position with a numeric value, otherwise dflt */
extern double json_array_get_number(const json_value *x, unsigned int idx, double dflt);

/** @brief Deep copy of JSON value
@param[in] x The JSON value pointer
@return A deep copy of the JSON value */
extern json_value * json_deepcopy(const json_value * value);

/** @} */

/** @defgroup json_resonator SDT Resonators
JSON functions for SDT Resonators
@{ */

/** @brief Convert an SDTResonator object in a JSON object
@param[in] x Pointer to the SDTResonator
@return Pointer to the JSON object. Memory must be freed with json_builder_free */
extern json_value *SDTResonator_toJSON(SDTResonator *x);

/** @brief Load an SDTResonator object from a JSON object
@param[in] x Pointer to the JSON object
@return Pointer to the SDTResonator, or 0 on failure. Memory must be freed with ::SDTResonator_free */
extern SDTResonator *SDTResonator_fromJSON(const json_value *x);

/** @} */

/** @defgroup json_impact SDT Impact
JSON functions for SDT Impacts
@{ */

/** @brief Convert an SDTImpact object in a JSON object
@param[in] x Pointer to the SDTInteractor
@param[in] key0 First resonator ID
@param[in] key1 Second resonator ID
@return Pointer to the JSON object. Memory must be freed with json_builder_free */
extern json_value *SDTImpact_toJSON(const SDTInteractor *x, const char *key0, const char *key1);

/** @brief Load an SDTImpact object from a JSON object
@param[in] x Pointer to the JSON object
@return Pointer to the SDTImpact, or 0 on failure. Memory must be freed with ::SDTImpact_free */
extern SDTInteractor *SDTImpact_fromJSON(const json_value *x);

/** @} */

/** @defgroup json_frcition SDT Friction
JSON functions for SDT Frctions
@{ */

/** @brief Convert an SDTImpact object in a JSON object
@param[in] x Pointer to the SDTInteractor
@param[in] key0 First resonator ID
@param[in] key1 Second resonator ID
@return Pointer to the JSON object. Memory must be freed with json_builder_free */
extern json_value *SDTFriction_toJSON(const SDTInteractor *x, const char *key0, const char *key1);

/** @brief Load an SDTImpact object from a JSON object
@param[in] x Pointer to the JSON object
@return Pointer to the SDTImpact, or 0 on failure. Memory must be freed with ::SDTImpact_free */
extern SDTInteractor *SDTFriction_fromJSON(const json_value *x);

/** @} */

#ifdef __cplusplus
};
#endif

#endif

/** @} */