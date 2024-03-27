#ifndef SDT_COMMONMACROS_H
#define SDT_COMMONMACROS_H

/** @file SDTCommonMacros.h
@defgroup commonmacros SDTCommonMacros.h: Macros
Macros for automatic generation of common functions
To use this macros you should define
 - The macro SDT_<TYPE> as the SDT type, without the leading "SDT". E.g. if the
type is SDTExample, then \code{.c}#define SDT_EXAMPLE Example \endcode
 - The macro SDT_<TYPE>_NEW_ARGS as the arguments to pass on to the initializer
function when instantiating during deserialization. E.g. \code{.c}#define
SDT_EXAMPLE_NEW_ARGS 1024, 8 // -> Calls SDTExample_new(1024, 8) \endcode
 - The macro SDT_<TYPE>_ATTRIBUTES(T, A) to be the list of attributes. An
attribute is defined inside the macro as "A(T, field, type, Field, key,
json_type, default)", where
   - "field" is the field name of the attribute in the struct
   - "type" is the C type of the attribute in the struct
   - "Field" is the field name of the attribute as in the setter and getter
functions (e.g. if the setter is "SDTType_setField", the "Field" is the field
name)
   - "key" is the key name of the attribute as in the json file
   - "json_type" is the json type of the attribute as in json_parser (without
the leading "json_")
   - "default" is the default value for the attribute
   .
   E.g. \code{.c}#define SDT_EXAMPLE_ATTRIBUTES(T, A)\
A(T, x, long, AttributeX, attribute_x, integer, 0)\
A(T, p, double, Pi, pi, double, 3.14)\endcode Here it has been declared that
  - `SDTExample` has a field `x` of type `long`
   - the the getter function is: `long SDTExample_getAttributeX(SDTExample *x)`
   - the the setter function is: `void SDTExample_setAttributeX(SDTExample *x,
long f)`
   - the corresponding key in a JSON object is `attribute_x`
   - the corresponding value in a JSON object is a `json_integer`
   - the default value is: `0`
   .
  - `SDTExample` has a field `p` of type `double`
   - the the getter function is: `double SDTExample_getPi(SDTExample *x)`
   - the the setter function is: `void SDTExample_setPi(SDTExample *x, double
f)`
   - the corresponding key in a JSON object is `pi`
   - the corresponding value in a JSON object is a `json_double`
   - the default value is: `3.14`
   .
 @{
*/

#ifndef __CONCAT
#define __CONCAT(X, Y) X##Y
#endif
#define _CONCAT(X, Y) __CONCAT(X, Y)
#define CONCAT(X, Y) _CONCAT(X, Y)

#define _STRINGIFY(X) #X
#define STRINGIFY(X) _STRINGIFY(X)

#define SDT_TYPE_FULL(SDT_TYPE) CONCAT(SDT, SDT_TYPE)

#define SDT_TYPE_COPY_H(SDT_TYPE)                                          \
  extern SDT_TYPE_FULL(SDT_TYPE) * CONCAT(SDT_TYPE_FULL(SDT_TYPE), _copy)( \
                                       SDT_TYPE_FULL(SDT_TYPE) * dest,     \
                                       const SDT_TYPE_FULL(SDT_TYPE) * src);
#define SDT_TYPE_COPY_A(SDT_TYPE, F, T, G, K, J, D) \
  CONCAT(SDT_TYPE_FULL(SDT_TYPE), CONCAT(_set, G))  \
  (dest, CONCAT(SDT_TYPE_FULL(SDT_TYPE), CONCAT(_get, G))(src));
#define SDT_TYPE_COPY(SDT_TYPE)                                        \
  SDT_TYPE_FULL(SDT_TYPE) * CONCAT(SDT_TYPE_FULL(SDT_TYPE), _copy)(    \
                                SDT_TYPE_FULL(SDT_TYPE) * dest,        \
                                const SDT_TYPE_FULL(SDT_TYPE) * src) { \
    SDT_TYPE##_ATTRIBUTES(SDT_TYPE, SDT_TYPE_COPY_A) return dest;      \
  }

/** @defgroup setget_macros Setters/Getters
Macros for generating setter and getter functions
@{ */

#define SDT_TYPE_GETTER_H(SDT_TYPE, F, T, G, K, J, D) \
  extern T CONCAT(SDT_TYPE_FULL(SDT_TYPE),            \
                  CONCAT(_get, G))(const SDT_TYPE_FULL(SDT_TYPE) * x);
#define SDT_TYPE_GETTER(SDT_TYPE, F, T, G, K, J, D)              \
  T CONCAT(SDT_TYPE_FULL(SDT_TYPE),                              \
           CONCAT(_get, G))(const SDT_TYPE_FULL(SDT_TYPE) * x) { \
    return x->F;                                                 \
  }
#define SDT_TYPE_SETTER_H(SDT_TYPE, F, T, S, K, J, D)           \
  extern void CONCAT(SDT_TYPE_FULL(SDT_TYPE), CONCAT(_set, S))( \
      const SDT_TYPE_FULL(SDT_TYPE) * x, T f);
#define SDT_TYPE_SETTER(SDT_TYPE, F, T, S, K, J, D)      \
  void CONCAT(SDT_TYPE_FULL(SDT_TYPE), CONCAT(_set, S))( \
      const SDT_TYPE_FULL(SDT_TYPE) * x, T f) {          \
    x->F = f;                                            \
  }

/** @brief Create getter function declarations for all attributes \par
See the example at the beginning of the section for an explanation of the
generated functions
@param[in] SDT_TYPE The SDT type macro */
#define SDT_TYPE_MAKE_GETTERS_H(SDT_TYPE) \
  SDT_TYPE##_ATTRIBUTES(SDT_TYPE, SDT_TYPE_GETTER_H)

/** @brief Create getter functions for all attributes \par
See the example at the beginning of the section for an explanation of the
generated functions
@param[in] SDT_TYPE The SDT type macro */
#define SDT_TYPE_MAKE_GETTERS(SDT_TYPE) \
  SDT_TYPE##_ATTRIBUTES(SDT_TYPE, SDT_TYPE_GETTER)

/** @brief Create setter function declarations for all attributes \par
See the example at the beginning of the section for an explanation of the
generated functions
@param[in] SDT_TYPE The SDT type macro */
#define SDT_TYPE_MAKE_SETTERS_H(SDT_TYPE) \
  SDT_TYPE##_ATTRIBUTES(SDT_TYPE, SDT_TYPE_SETTER_H)

/** @brief Create setter functions for all attributes \par
See the example at the beginning of the section for an explanation of the
generated functions
@param[in] SDT_TYPE The SDT type macro */
#define SDT_TYPE_MAKE_SETTERS(SDT_TYPE) \
  SDT_TYPE##_ATTRIBUTES(SDT_TYPE, SDT_TYPE_SETTER)

/** @} */

/** @defgroup json_macros JSON
Macros for generating JSON serialization and deserialization functions
@{ */

#define JSON_integer_FIELD integer
#define JSON_double_FIELD dbl
#define JSON_TYPE_FIELD(T) JSON_##T##_FIELD

#define SDT_JSON_PUSH(SDT_TYPE, F, T, G, K, J, D) \
  json_object_push(                               \
      obj, #K,                                    \
      json_##J##_new(CONCAT(SDT_TYPE_FULL(SDT_TYPE), CONCAT(_get, G))(x)));
#define SDT_JSON_PULL(SDT_TYPE, F, T, S, K, J, D)             \
  const json_value *v_##F = SDTJSON_object_get_by_key(x, #K); \
  CONCAT(SDT_TYPE_FULL(SDT_TYPE), CONCAT(_set, S))            \
  (y, (v_##F && (v_##F->type == json_##J)) ? v_##F->u.JSON_TYPE_FIELD(J) : D);
#define SDT_TYPE_INIT(SDT_TYPE, ...) \
  SDT_TYPE_FULL(SDT_TYPE) *y =       \
      CONCAT(SDT_TYPE_FULL(SDT_TYPE), _new)(__VA_ARGS__)

/** @brief Create the serialization function declaration
@param[in] SDT_TYPE The SDT type macro */
#define SDT_JSON_SERIALIZE_H(SDT_TYPE)               \
  extern json_value *CONCAT(SDT_TYPE_FULL(SDT_TYPE), \
                            _toJSON)(const SDT_TYPE_FULL(SDT_TYPE) * x);

/** @brief Create the serialization function \par
Following the example, the function would have the signature \code{.c}json_value
*SDTExample_toJSON(const SDTExample *x);\endcode The newly created `json_value`
instance will have to be manually deallocated
@param[in] SDT_TYPE The SDT type macro */
#define SDT_JSON_SERIALIZE(SDT_TYPE)                               \
  json_value *CONCAT(SDT_TYPE_FULL(SDT_TYPE),                      \
                     _toJSON)(const SDT_TYPE_FULL(SDT_TYPE) * x) { \
    json_value *obj = json_object_new(0);                          \
    SDT_TYPE##_ATTRIBUTES(SDT_TYPE, SDT_JSON_PUSH) return obj;     \
  }

/** @brief Create the deserialization function declaration
@param[in] SDT_TYPE The SDT type macro */
#define SDT_JSON_DESERIALIZE_H(SDT_TYPE) \
  extern SDT_TYPE_FULL(SDT_TYPE) *       \
      CONCAT(SDT_TYPE_FULL(SDT_TYPE), _fromJSON)(const json_value *x);

/** @brief Create the deserialization function \par
Following the example, the function would have the signature \code{.c}SDTExample
*SDTExample_fromJSON(const json_value *x);\endcode The newly created instance
will have to be manually deallocated
@param[in] SDT_TYPE The SDT type macro */
#define SDT_JSON_DESERIALIZE(SDT_TYPE)                                  \
  SDT_TYPE_FULL(SDT_TYPE) *                                             \
      CONCAT(SDT_TYPE_FULL(SDT_TYPE), _fromJSON)(const json_value *x) { \
    if (!x || x->type != json_object) return 0;                         \
    SDT_TYPE_INIT(SDT_TYPE, SDT_TYPE##_NEW_ARGS);                       \
    SDT_TYPE##_ATTRIBUTES(SDT_TYPE, SDT_JSON_PULL) return y;            \
  }

/** @} */

/** @defgroup hashmap_macros Hashmap
Macros for generating Hashmap-related functions
@{ */

/** @brief Define a global SDTHashmap
@param[in] X Name of the global variable */
#define SDT_DEFINE_HASHMAP_GLOBAL(X) SDTHashmap *X = NULL;

/** @brief Define a SDTHashmap "register" function declaration
@param[in] T Name of the SDT type (without the leading "SDT")
@param[in] X Name of the SDTHashmap global variable
@param[in] S Size of the SDTHashmap */
#define SDT_HASHMAP_REGISTER_H(T, X) \
  extern int SDT_register##T(SDT##T *x, const char *key);

/** @brief Define a SDTHashmap "register" function
@param[in] T Name of the SDT type (without the leading "SDT")
@param[in] X Name of the SDTHashmap global variable
@param[in] S Size of the SDTHashmap */
#define SDT_HASHMAP_REGISTER(T, X, S)               \
  int SDT_register##T(SDT##T *x, const char *key) { \
    if (!X) X = SDTHashmap_new(S);                  \
    if (SDTHashmap_put(X, key, x)) return 1;        \
    return 0;                                       \
  }

/** @brief Define a SDTHashmap "get" function declaration
@param[in] T Name of the SDT type (without the leading "SDT")
@param[in] X Name of the SDTHashmap global variable */
#define SDT_HASHMAP_GET_H(T, X) extern SDT##T *SDT_get##T(const char *key);

/** @brief Define a SDTHashmap "get" function
@param[in] T Name of the SDT type (without the leading "SDT")
@param[in] X Name of the SDTHashmap global variable */
#define SDT_HASHMAP_GET(T, X)                \
  SDT##T *SDT_get##T(const char *key) {      \
    return (X) ? SDTHashmap_get(X, key) : 0; \
  }

/** @brief Define a SDTHashmap "unregister" function declaration
@param[in] T Name of the SDT type (without the leading "SDT")
@param[in] X Name of the SDTHashmap global variable */
#define SDT_HASHMAP_UNREGISTER_H(T, X) \
  extern int SDT_unregister##T(const char *key);

/** @brief Define a SDTHashmap "unregister" function
@param[in] T Name of the SDT type (without the leading "SDT")
@param[in] X Name of the SDTHashmap global variable */
#define SDT_HASHMAP_UNREGISTER(T, X)       \
  int SDT_unregister##T(const char *key) { \
    if (!X) return 1;                      \
    if (SDTHashmap_del(X, key)) return 1;  \
    return 0;                              \
  }

/** @brief Define SDTHashmap related function declarations (register, get,
unregister)
@param[in] SDT_TYPE The SDT type macro */
#define SDT_DEFINE_HASHMAP_H(SDT_TYPE)                 \
  SDT_HASHMAP_REGISTER_H(SDT_TYPE, hashmap_##SDT_TYPE) \
  SDT_HASHMAP_GET_H(SDT_TYPE, hashmap_##SDT_TYPE)      \
  SDT_HASHMAP_UNREGISTER_H(SDT_TYPE, hashmap_##SDT_TYPE)

/** @brief Define a SDTHashmap and its correlated functions (register, get,
unregister)
@param[in] SDT_TYPE The SDT type macro
@param[in] S Size of the SDTHashmap */
#define SDT_DEFINE_HASHMAP(SDT_TYPE, S)                 \
  SDT_DEFINE_HASHMAP_GLOBAL(hashmap_##SDT_TYPE)         \
  SDT_HASHMAP_REGISTER(SDT_TYPE, hashmap_##SDT_TYPE, S) \
  SDT_HASHMAP_GET(SDT_TYPE, hashmap_##SDT_TYPE)         \
  SDT_HASHMAP_UNREGISTER(SDT_TYPE, hashmap_##SDT_TYPE)

/** @} */
/** @} */

#endif
