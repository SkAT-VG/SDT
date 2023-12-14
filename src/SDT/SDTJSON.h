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

/** @brief Dump a JSON value to string (packed)
@param[in] x The JSON value
@return The string, or 0 on fail. Must be freed */
extern char *SDTJSON_dumps_packed(const json_value *x);

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

/* --- Macros -------------------------------------------------------------- */
#define _JSON_integer_FIELD integer
#define _JSON_double_FIELD dbl
#define _JSON_TYPE_FIELD(T) _JSON_##T##_FIELD

#define _JSON_integer_CFMT "%d"
#define _JSON_double_CFMT "%f"
#define _JSON_TYPE_CFMT(T) _JSON_##T##_CFMT

/** @brief Implement parameter setting from JSON
@param[in] TYPENAME SDT type name, without the leading `SDT`
@param[in] VAR Structure variable identifier
@param[in] JVAR JSON variable identifier
@param[in] CATTR C attribute name
@param[in] KEY JSON attribute key
@param[in] JTYPE JSON type */
#define _SDT_SET_PARAM_FROM_JSON(TYPENAME, VAR, JVAR, CATTR, KEY, JTYPE)   \
  {                                                                        \
    const json_value *v_##KEY = SDTJSON_object_get_by_key(JVAR, #KEY);     \
    if (v_##KEY && (v_##KEY->type == json_##JTYPE)) {                      \
      SDT##TYPENAME##_set##CATTR(VAR, v_##KEY->u._JSON_TYPE_FIELD(JTYPE)); \
    }                                                                      \
  }

/** @brief Implement double parameter setting from JSON
@param[in] TYPENAME SDT type name, without the leading `SDT`
@param[in] VAR Structure variable identifier
@param[in] JVAR JSON variable identifier
@param[in] CATTR C attribute name
@param[in] KEY JSON attribute key */
#define _SDT_SET_DOUBLE_FROM_JSON(TYPENAME, VAR, JVAR, CATTR, KEY)     \
  {                                                                    \
    const json_value *v_##KEY = SDTJSON_object_get_by_key(JVAR, #KEY); \
    if (v_##KEY) {                                                     \
      switch (v_##KEY->type) {                                         \
        case json_double:                                              \
          SDT##TYPENAME##_set##CATTR(VAR, v_##KEY->u.dbl);             \
          break;                                                       \
        case json_integer:                                             \
          SDT##TYPENAME##_set##CATTR(VAR, v_##KEY->u.integer);         \
          break;                                                       \
        default:                                                       \
          break;                                                       \
      }                                                                \
    }                                                                  \
  }

/** @brief Implement parameter getting from JSON
@param[in] VAR Structure variable identifier
@param[in] JVAR JSON variable identifier
@param[in] KEY JSON attribute key
@param[in] JTYPE JSON type */
#define _SDT_GET_PARAM_FROM_JSON(VAR, JVAR, KEY, JTYPE)                \
  {                                                                    \
    const json_value *v_##KEY = SDTJSON_object_get_by_key(JVAR, #KEY); \
    if (v_##KEY && (v_##KEY->type == json_##JTYPE)) {                  \
      VAR = v_##KEY->u._JSON_TYPE_FIELD(JTYPE);                        \
    }                                                                  \
  }

/** @brief Implement parameter setting from JSON for unsafe attributes
@param[in] TYPENAME SDT type name, without the leading `SDT`
@param[in] VAR Structure variable identifier
@param[in] JVAR JSON variable identifier
@param[in] CATTR C attribute name
@param[in] KEY JSON attribute key
@param[in] JTYPE JSON type
@param[in] UNSAFE Unsafe flag variable identifier */
#define _SDT_SET_UNSAFE_PARAM_FROM_JSON(TYPENAME, VAR, JVAR, CATTR, KEY,       \
                                        JTYPE, UNSAFE)                         \
  {                                                                            \
    const json_value *v_##KEY = SDTJSON_object_get_by_key(JVAR, #KEY);         \
    if (v_##KEY && (v_##KEY->type == json_##JTYPE)) {                          \
      if (SDT##TYPENAME##_get##CATTR(VAR) !=                                   \
          v_##KEY->u._JSON_TYPE_FIELD(JTYPE)) {                                \
        if (UNSAFE) {                                                          \
          SDT##TYPENAME##_set##CATTR(VAR, v_##KEY->u._JSON_TYPE_FIELD(JTYPE)); \
        } else {                                                               \
          SDT_LOGA(WARN,                                                       \
                   "Not setting parameter \"" #KEY                             \
                   "\" because it is unsafe.\n  Current: " _JSON_TYPE_CFMT(    \
                       JTYPE) "\n  JSON:    " _JSON_TYPE_CFMT(JTYPE) "\n",     \
                   SDT##TYPENAME##_get##CATTR(VAR),                            \
                   v_##KEY->u._JSON_TYPE_FIELD(JTYPE));                        \
        }                                                                      \
      }                                                                        \
    }                                                                          \
  }
/* ------------------------------------------------------------------------- */

#ifdef __cplusplus
};
#endif

#endif

/** @} */
