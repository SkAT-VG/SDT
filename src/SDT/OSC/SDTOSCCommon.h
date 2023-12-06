#include "../SDTCommon.h"
#include "../SDTStructs.h"
#include "json-builder.h"

/** @file SDTOSCCommon.h
@defgroup OSCCommon SDTOSCCommon.h: OSC Commons
Functions and structures to handle OSC messages in SDT.
@ingroup osc
@{
*/

#ifndef SDT_OSC_COMMON_H
#define SDT_OSC_COMMON_H

#ifdef __cplusplus
extern "C" {
#endif

/** @defgroup osc_address OSC Address
This class represents OSC addresses
@{ */

/** @brief Data structure representing an OSC address. */
typedef struct SDTOSCAddress SDTOSCAddress;

/** @brief Object constructor. Input string will NOT be
owned by the address object.
@param[in] s String OSC address to parse. Null pointer is returned if string
doesn't start with '/'
@return Pointer to the new instance */
extern SDTOSCAddress *SDTOSCAddress_new(const char *s);

/** @brief Object destructor.
@param[in] x Pointer to the instance to destroy */
extern void SDTOSCAddress_free(SDTOSCAddress *x);

/** @brief Print OSC address to string.
@param[in] s Pointer to a buffer where the resulting C-string is stored. The
buffer should have a size of at least n characters.
@param[in] n Maximum number of bytes to be used in the buffer.
@param[in] a OSC address pointer
@return The number of characters that would have been written if n had been
sufficiently large, not counting the terminating null character. If an encoding
error occurs, a negative number is returned. */
extern int SDTOSCAddress_snprintf(char *s, size_t n, const SDTOSCAddress *a);

/** @brief Gets the number of nodes in the OSC address
@param[in] x OSC address pointer
@return Depth of OSC address */
extern unsigned int SDTOSCAddress_getDepth(const SDTOSCAddress *x);

/** @brief Gets the container or method name at the specified
depth in the address
@param[in] x OSC address pointer
@param[in] node_idx Depth of the node (container / method) in the OSC address.
Index 0 is for the first (non-root) node.
@return Node name as a C-string */
extern const char *SDTOSCAddress_getNode(const SDTOSCAddress *x,
                                         unsigned int node_idx);

/** @} */
/** @defgroup osc_arguments OSC Argument
This class represents OSC arguments
@{ */

/** @brief Data structure representing an OSC argument */
typedef struct SDTOSCArgument SDTOSCArgument;

/** @brief Object constructor.
This object represents an unsupported argument.
@return Pointer to the new instance */
extern SDTOSCArgument *SDTOSCArgument_new();

/** @brief Object destructor.
@param[in] x Pointer to the instance to destroy */
extern void SDTOSCArgument_free(SDTOSCArgument *x);

/** @brief Object constructor.
@param[in] f Float value to use as an OSC argument
@return Pointer to the new instance */
extern SDTOSCArgument *SDTOSCArgument_newFloat(float f);

/** @brief Object constructor.

The input string will NOT be handled alongside the object.
@param[in] s String value (C-string) to use as an OSC argument
@return Pointer to the new instance */
extern SDTOSCArgument *SDTOSCArgument_newString(const char *s);

/** @brief Checks if the argument is a float
@return The truth value of the check */
extern int SDTOSCArgument_isFloat(const SDTOSCArgument *x);

/** @brief Gets the float value of the argument.
Argument should be previously checked with ::SDTOSCArgument_isFloat
@return The float value */
extern float SDTOSCArgument_getFloat(const SDTOSCArgument *x);

/** @brief Checks if the argument is a string
@return The truth value of the check */
extern int SDTOSCArgument_isString(const SDTOSCArgument *x);

/** @brief Gets the string value of the argument.
Argument should be previously checked with ::SDTOSCArgument_isString
@return The string as a character pointer */
extern const char *SDTOSCArgument_getString(const SDTOSCArgument *x);

/** @brief Print OSC argument to string.
@param[in] s Pointer to a buffer where the resulting C-string is stored. The
buffer should have a size of at least n characters.
@param[in] n Maximum number of bytes to be used in the buffer.
@param[in] float_fmt Format string for floating point numbers, e.g. `"%f"`
@param[in] a OSC argument pointer
@return The number of characters that would have been written if n had been
sufficiently large, not counting the terminating null character. If an encoding
error occurs, a negative number is returned. */
extern int SDTOSCArgument_snprintf(char *s, size_t n, const char *float_fmt,
                                   const SDTOSCArgument *a);

/** @} */
/** @defgroup osc_argument_lists OSC Argument List
This class represents OSC argument lists
@{ */

/** @brief Data structure representing a list of OSC arguments */
typedef struct SDTOSCArgumentList SDTOSCArgumentList;

/** @brief Object constructor.
@return Pointer to the new instance */
extern SDTOSCArgumentList *SDTOSCArgumentList_new(int argc);

/** @brief Puts a new argument in the list at the specified position.
Memory allocated for any old argument should be freed.
@param[in] x Instance pointer
@param[in] i The position in the list where to put the new argument.
If the position is occupied, the old argument is returned.
@param[in] a #SDTOSCArgument instance pointer
@return Old argument, if any, otherwise zero. Returned pointer should be freed
*/
extern SDTOSCArgument *SDTOSCArgumentList_setArgument(SDTOSCArgumentList *x,
                                                      int i, SDTOSCArgument *a);

/** @brief Checks if the argument at the specified position is a float
@param[in] x Instance pointer
@param[in] i The position in the list to check
@return The truth value of the check. Check fails also if NULL pointer is at
position i. */
extern int SDTOSCArgumentList_isFloat(const SDTOSCArgumentList *x, int i);

/** @brief Checks if the argument at the specified position is a string
@param[in] x Instance pointer
@param[in] i The position in the list to check
@return The truth value of the check. Check fails also if NULL pointer is at
position i. */
extern int SDTOSCArgumentList_isString(const SDTOSCArgumentList *x, int i);

/** @brief Gets the number of arguments in the list
@param[in] x Instance pointer
@return Number of arguments */
extern int SDTOSCArgumentList_getNArgs(const SDTOSCArgumentList *x);

/** @brief Gets the float value of the argument at the specified position
@param[in] x Instance pointer
Argument should be previously checked with ::SDTOSCArgumentList_isFloat
@return The float value */
extern float SDTOSCArgumentList_getFloat(const SDTOSCArgumentList *x, int i);

/** @brief Gets the string value of the argument at the specified position
@param[in] x Instance pointer
Argument should be previously checked with ::SDTOSCArgumentList_isString
@return The string pointer */
extern const char *SDTOSCArgumentList_getString(const SDTOSCArgumentList *x,
                                                int i);

/** @brief Print OSC argument list to string.
@param[in] s Pointer to a buffer where the resulting C-string is stored. The
buffer should have a size of at least n characters.
@param[in] n Maximum number of bytes to be used in the buffer.
@param[in] float_fmt Format string for floating point numbers, e.g. `"%f"`
@param[in] x OSC argument list pointer
@param[in] start Index of first argument to print (included)
@param[in] end Index of last argument to print (excluded)
@return The number of characters that would have been written if n had been
sufficiently large, not counting the terminating null character. If an encoding
error occurs, a negative number is returned. */
extern int SDTOSCArgumentList_snprintf(char *s, size_t n, const char *float_fmt,
                                       const SDTOSCArgumentList *x, int start,
                                       int end);

/** @} */

/** @defgroup osc_message OSC Message
This class represents OSC messages
@{ */

/** @brief Data structure representing an OSC message. */
typedef struct SDTOSCMessage SDTOSCMessage;

/** @brief Object constructor. Memory for address and arguments
will be handled automatically alongside the message.
@param[in] address OSC address
@param[in] args OSC argument list
@return Pointer to the new instance */
extern SDTOSCMessage *SDTOSCMessage_new(SDTOSCAddress *address,
                                        SDTOSCArgumentList *args);

/** @brief Object destructor.
@param[in] x Pointer to the instance to destroy */
extern void SDTOSCMessage_free(SDTOSCMessage *x);

/** @brief Checks validity of OSC message.
@param[in] x Pointer to the instance to check
@returns A true value if the message is valid, otherwise 0 */
extern int SDTOSCMessage_valid(const SDTOSCMessage *x);

/** @brief Gets the arguments of the message
@param[in] x Instance pointer
@return The argument list */
extern const SDTOSCArgumentList *SDTOSCMessage_getArguments(
    const SDTOSCMessage *x);

/** @brief Gets the address of the message
@param[in] x Instance pointer
@return The address */
extern const SDTOSCAddress *SDTOSCMessage_getAddress(const SDTOSCMessage *x);

/** @brief Print OSC message to string.
@param[in] s Pointer to a buffer where the resulting C-string is stored. The
buffer should have a size of at least n characters.
@param[in] n Maximum number of bytes to be used in the buffer.
@param[in] float_fmt Format string for floating point numbers, e.g. `"%f"`
@param[in] m OSC message pointer
@return The number of characters that would have been written if n had been
sufficiently large, not counting the terminating null character. If an encoding
error occurs, a negative number is returned. */
extern int SDTOSCMessage_snprintf(char *s, size_t n, const char *float_fmt,
                                  const SDTOSCMessage *m);

/** @brief Print OSC message onto a statically-allocated string.
Please, note that any subsequent calls to SDT log functions
may write over this string. Use the macro ::SDTOSC_MESSAGE_LOGA for ease of use.
@param[in] m OSC message pointer
@return String pointer or zero on fail */
extern const char *SDTOSCMessage_staticPrint(const SDTOSCMessage *m);

/** @brief Log OSC message in any build with log level below LEVEL
@param[in] LEVEL Minimum level for logging
@param[in] FMT C string that contains a format string that follows the same
specifications as format in printf
@param[in] m SDTOSCMessage pointer */
#define SDTOSC_MESSAGE_LOGA(LEVEL, FMT, m, ...)                           \
  {                                                                       \
    SDT_ONLY_IN_LEVEL(                                                    \
        LEVEL, const char *__msg_ptr = SDTOSCMessage_staticPrint(m);      \
        if (__msg_ptr) { SDT_LOGA(LEVEL, FMT, __msg_ptr, __VA_ARGS__); }) \
  }

/** @brief Gets a string that invites to Read The Fantastic Manual */
extern const char *SDTOSC_rtfm_string();

/** @}

@defgroup osc_jsn OSC JSON
Utilities for OSC methods using JSON
@{ */

/** @brief Log JSON information with a custom log function
@param[in] preamble Preamble to the log information
@param[in] obj JSON object
@return Zero on success, non-zero on error */
extern int SDTOSCJSON_log(const char *preamble, json_value *obj);

/** @brief Save JSON information to file
@param[in] name Name of the object
@param[in] obj JSON object
@param[in] fpath File path
@return Zero on success, non-zero on error */
extern int SDTOSCJSON_save(const char *name, const json_value *obj,
                           const char *fpath);

/** @brief Load information from JSON files
@param[in] name Name of the object
@param [out] obj Loaded JSON object
@param[in] fpath File path
@return Zero on success, non-zero on error */
extern int SDTOSCJSON_load(const char *name, json_value **obj,
                           const char *fpath);

/** @} @defgroup _osc_macros OSC Macros
Macros for implementing OSC methods
@{ */

/** @brief Implement OSC hashmap lookup
@param[in] TYPENAME SDT type name, without the leading `SDT`
@param[in] OBJVAR Object variable identifier
@param[in] NAMEVAR Name variable identifier
@param[in] MSGVAR Message variable identifier */
#define _SDTOSC_FIND_IN_HASHMAP(TYPENAME, OBJVAR, NAMEVAR, MSGVAR)          \
  SDT##TYPENAME *OBJVAR = NULL;                                             \
  const char *NAMEVAR = NULL;                                               \
  const SDTOSCArgumentList *args = SDTOSCMessage_getArguments(MSGVAR);      \
  if (!SDTOSCArgumentList_getNArgs(args)) {                                 \
    SDTOSC_MESSAGE_LOGA(                                                    \
        ERROR,                                                              \
        "\n  %s\n  [ARGUMENT ERROR] Missing argument: instance name\n "     \
        " %s\n",                                                            \
        x, SDTOSC_rtfm_string());                                           \
    return 1;                                                               \
  }                                                                         \
  if (SDTOSCArgumentList_isString(args, 0)) {                               \
    NAMEVAR = SDTOSCArgumentList_getString(args, 0);                        \
  } else {                                                                  \
    SDTOSC_MESSAGE_LOGA(                                                    \
        ERROR,                                                              \
        "\n  %s\n  [ARGUMENT ERROR] First argument should be a string\n "   \
        " %s\n",                                                            \
        x, SDTOSC_rtfm_string());                                           \
    return 2;                                                               \
  }                                                                         \
  if (!NAMEVAR) {                                                           \
    SDTOSC_MESSAGE_LOGA(ERROR,                                              \
                        "\n  %s\n  [NULL POINTER] Instance name is a null " \
                        "pointer string %s\n",                              \
                        x, SDTOSC_rtfm_string());                           \
    return 3;                                                               \
  }                                                                         \
  OBJVAR = SDT_get##TYPENAME(NAMEVAR);                                      \
  if (!OBJVAR) {                                                            \
    SDTOSC_MESSAGE_LOGA(ERROR,                                              \
                        "\n  %s\n  [OBJECT NOT FOUND] No " #TYPENAME        \
                        " object registered as: %s\n "                      \
                        " %s\n",                                            \
                        x, NAMEVAR, SDTOSC_rtfm_string());                  \
    return 4;                                                               \
  }

/** @brief Implement OSC file path read
@param[in] FPATHVAR Filepath variable identifier
@param[in] MSGVAR Message variable identifier
@param[in] IDX Argument index in message */
#define _SDTOSC_GETFPATH(FPATHVAR, MSGVAR, IDX)                            \
  const char *FPATHVAR = NULL;                                             \
  if (SDTOSCArgumentList_getNArgs(args) < ((IDX) + 1)) {                   \
    SDTOSC_MESSAGE_LOGA(                                                   \
        ERROR,                                                             \
        "\n  %s\n  [ARGUMENT ERROR] Missing argument: file path\n "        \
        " %s\n",                                                           \
        x, SDTOSC_rtfm_string());                                          \
    return 5;                                                              \
  }                                                                        \
  if (SDTOSCArgumentList_isString(args, IDX)) {                            \
    FPATHVAR = SDTOSCArgumentList_getString(args, IDX);                    \
  } else {                                                                 \
    SDTOSC_MESSAGE_LOGA(                                                   \
        ERROR,                                                             \
        "\n  %s\n  [ARGUMENT ERROR] Second argument should be a string\n " \
        " %s\n",                                                           \
        x, SDTOSC_rtfm_string());                                          \
    return 6;                                                              \
  }                                                                        \
  if (!FPATHVAR) {                                                         \
    SDTOSC_MESSAGE_LOGA(ERROR,                                             \
                        "\n  %s\n  [NULL POINTER] File path is a null "    \
                        "pointer string %s\n",                             \
                        x, SDTOSC_rtfm_string());                          \
    return 7;                                                              \
  }

/** @brief Implement OSC argument read
@param[in] VAR Argument destination variable
@param[in] IDX Argument index
@param[in] CTYPE C type for destination variable
@param[in] OSCTYPE OSC type of argument
@param[in] OSCTYPELCASE OSC type of argument (lowercase)
@param[in] MSGVAR Message variable identifier */
#define _SDTOSC_GETARG(VAR, IDX, CTYPE, OSCTYPE, OSCTYPELCASE, MSGVAR)       \
  CTYPE VAR;                                                                 \
  if (SDTOSCArgumentList_getNArgs(args) < ((IDX) + 1)) {                     \
    SDTOSC_MESSAGE_LOGA(ERROR,                                               \
                        "\n  %s\n  [ARGUMENT ERROR] Missing argument: " #VAR \
                        "\n  %s\n",                                          \
                        x, SDTOSC_rtfm_string());                            \
    return 5;                                                                \
  }                                                                          \
  if (SDTOSCArgumentList_is##OSCTYPE(args, IDX)) {                           \
    VAR = (CTYPE)SDTOSCArgumentList_get##OSCTYPE(args, IDX);                 \
  } else {                                                                   \
    SDTOSC_MESSAGE_LOGA(ERROR,                                               \
                        "\n  %s\n  [ARGUMENT ERROR] Second argument should " \
                        "be a " #OSCTYPELCASE                                \
                        "\n "                                                \
                        " %s\n",                                             \
                        x, SDTOSC_rtfm_string());                            \
    return 6;                                                                \
  }

/** @brief Implement OSC JSON log method
@param[in] TYPENAME SDT type name, without the leading `SDT` */
#define _SDTOSC_LOG_FUNCTION(TYPENAME)                 \
  int SDTOSC##TYPENAME##_log(const SDTOSCMessage *x) { \
    SDTOSC_MESSAGE_LOGA(VERBOSE, "\n  %s\n", x, "")    \
    _SDTOSC_FIND_IN_HASHMAP(TYPENAME, obj, name, x)    \
    json_value *jobj = SDT##TYPENAME##_toJSON(obj);    \
    int r = SDTOSCJSON_log(name, jobj);                \
    json_builder_free(jobj);                           \
    return r;                                          \
  }

/** @brief Implement OSC JSON save method
@param[in] TYPENAME SDT type name, without the leading `SDT` */
#define _SDTOSC_SAVE_FUNCTION(TYPENAME)                 \
  int SDTOSC##TYPENAME##_save(const SDTOSCMessage *x) { \
    SDTOSC_MESSAGE_LOGA(VERBOSE, "\n  %s\n", x, "")     \
    _SDTOSC_FIND_IN_HASHMAP(TYPENAME, obj, name, x)     \
    _SDTOSC_GETFPATH(fpath, x, 1)                       \
    json_value *jobj = SDT##TYPENAME##_toJSON(obj);     \
    int r = SDTOSCJSON_save(name, jobj, fpath);         \
    json_builder_free(jobj);                            \
    return r;                                           \
  }

/** @brief Implement OSC JSON file load method
@param[in] TYPENAME SDT type name, without the leading `SDT`
@param[in] U Type `update` to trigger the structure update function */
#define _SDTOSC_LOAD_FUNCTION(TYPENAME, U)              \
  int SDTOSC##TYPENAME##_load(const SDTOSCMessage *x) { \
    SDTOSC_MESSAGE_LOGA(VERBOSE, "\n  %s\n", x, "")     \
    _SDTOSC_FIND_IN_HASHMAP(TYPENAME, obj, name, x)     \
    _SDTOSC_GETFPATH(fpath, x, 1)                       \
    json_value *jobj;                                   \
    int r = SDTOSCJSON_load(name, &jobj, fpath);        \
    if (jobj) {                                         \
      SDT##TYPENAME##_setParams(obj, jobj, 0);          \
      json_builder_free(jobj);                          \
      _SDT_TYPE_UPDATE_##U(TYPENAME, obj);              \
    }                                                   \
    return r;                                           \
  }

/** @brief Dump last arguments to a JSON object
@param[in] x OSC message
@param[in] start Index of the first parameter to include in the dump
@return JSON object, if valid, NULL pointer otherwise. Memory must be freed
with json_builder_free */
extern json_value *_SDTOSC_trailingArgsToJSON(const SDTOSCMessage *x,
                                              int start);

/** @brief Implement OSC JSON string load method
@param[in] TYPENAME SDT type name, without the leading `SDT`
@param[in] U Type `update` to trigger the structure update function */
#define _SDTOSC_LOADS_FUNCTION(TYPENAME, U)                                  \
  int SDTOSC##TYPENAME##_loads(const SDTOSCMessage *x) {                     \
    SDTOSC_MESSAGE_LOGA(VERBOSE, "\n  %s\n", x, "")                          \
    _SDTOSC_FIND_IN_HASHMAP(TYPENAME, obj, name, x)                          \
    json_value *jobj = _SDTOSC_trailingArgsToJSON(x, 1);                     \
    if (!jobj) {                                                             \
      SDTOSC_MESSAGE_LOGA(                                                   \
          ERROR,                                                             \
          "\n  %s\n  [PARSER ERROR] Error while parsing JSON string\n%s", x, \
          "");                                                               \
      return 7;                                                              \
    }                                                                        \
    SDT##TYPENAME##_setParams(obj, jobj, 0);                                 \
    json_builder_free(jobj);                                                 \
    _SDT_TYPE_UPDATE_##U(TYPENAME, obj);                                     \
    return 0;                                                                \
  }

/** @brief Implement OSC argument setters
@param[in] TYPENAME SDT type name, without the leading `SDT`
@param[in] LCASE Attribute name (lowercase)
@param[in] UCASE Attribute name (Capitalized)
@param[in] CTYPE C type for argument
@param[in] OSCTYPE OSC type of argument
@param[in] OSCTYPELCASE OSC type of argument (lowercase)
@param[in] U Type `update` to trigger the structure update function */
#define _SDTOSC_SETTER_FUNCTION(TYPENAME, LCASE, UCASE, CTYPE, OSCTYPE, \
                                OSCTYPELCASE, U)                        \
  int SDTOSC##TYPENAME##_set##UCASE(const SDTOSCMessage *x) {           \
    SDTOSC_MESSAGE_LOGA(VERBOSE, "\n  %s\n", x, "")                     \
    _SDTOSC_FIND_IN_HASHMAP(TYPENAME, obj, name, x)                     \
    _SDTOSC_GETARG(LCASE, 1, CTYPE, OSCTYPE, OSCTYPELCASE, x)           \
    SDT##TYPENAME##_set##UCASE(obj, LCASE);                             \
    _SDT_TYPE_UPDATE_##U(TYPENAME, obj);                                \
    return 0;                                                           \
  }

/** @brief Implement OSC float argument setters
@param[in] TYPENAME SDT type name, without the leading `SDT`
@param[in] LCASE Attribute name (lowercase)
@param[in] UCASE Attribute name (Capitalized)
@param[in] CTYPE C type for argument
@param[in] U Type `update` to trigger the structure update function */
#define _SDTOSC_FLOAT_SETTER_FUNCTION(TYPENAME, LCASE, UCASE, CTYPE, U) \
  _SDTOSC_SETTER_FUNCTION(TYPENAME, LCASE, UCASE, CTYPE, Float, float, U)

/** @} */

#ifdef __cplusplus
};
#endif

#endif

/** @} */
