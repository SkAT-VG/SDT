#include "../../3rdparty/json-builder/json-builder.h"
#include "SDTResonators.h"

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

/** @brief Dump a JSON value to file
@param[in] x The JSON value
@param[in] fpath The file path
@return 0 on success, 1 on error */
extern int json_dump(json_value *x, const char *fpath);

/** @brief Check write access for the file path
@param[in] fpath The file path
@return 0 if not accessible, non-zero if accessible */
extern int can_write_file(const char *fpath);

/** @brief Check read access for the file path
@param[in] fpath The file path
@return 0 if not accessible, non-zero if accessible */
extern int can_read_file(const char *fpath);

/** @brief Read JSON value from file
@param[in] fpath The file path
@return The JSON value pointer, or 0 on failure. Memory must be freed with json_value_free */
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

#ifdef __cplusplus
};
#endif

#endif

/** @} */