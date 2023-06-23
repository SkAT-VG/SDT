#include "json-builder.h"

/** @file SDTJSON.h
@defgroup JSON SDTJSON.h: JSON
JSON utility functions
@{
*/

#ifndef SDT_JSON_H
#define SDT_JSON_H

#ifdef __cplusplus
extern "C" {
#endif

/** @brief Dump a JSON value to string
@param[in] x The JSON value
@return The string, or 0 on fail. Must be freed */
extern char *SDTJSON_dumps(const json_value *x);

/** @brief Dump a JSON value to file
@param[in] x The JSON value
@param[in] fpath The file path
@return 0 on success, 1 on error */
extern int SDTJSON_dump(const json_value *x, const char *fpath);

/** @brief Read JSON value from string
@param[in] s The string
@param[in] n The number of characters to read. If negative, all the string is
read up until the first NULL character
@return The JSON value pointer, or 0 on failure. Memory must be freed with
json_builder_free */
extern json_value *SDTJSON_reads(const char *s, int n);

/** @brief Read JSON value from file
@param[in] fpath The file path
@return The JSON value pointer, or 0 on failure. Memory must be freed with
json_builder_free */
extern json_value *SDTJSON_read(const char *fpath);

/** @brief Get the value of a field of a JSON object
@param[in] x The JSON object pointer
@param[in] key The field name
@return The JSON value pointer, or 0 on failure (x is not an object or no field
is found with the specified key) */
extern const json_value *SDTJSON_object_get_by_key(const json_value *x,
                                                   const char *key);

/** @brief Get the numeric value of a cell of a JSON array
@param[in] x The JSON array pointer
@param[in] idx The cell index
@param[in] dflt The default value
@return x[idx] as a double if x is an array and idx is a valid position with a
numeric value, otherwise dflt */
extern double SDTJSON_array_get_number(const json_value *x, unsigned int idx,
                                       double dflt);

/** @brief Deep copy of JSON value
@param[in] x The JSON value pointer
@return A deep copy of the JSON value */
extern json_value *SDTJSON_deepcopy(const json_value *value);

#ifdef __cplusplus
};
#endif

#endif

/** @} */
