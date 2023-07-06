#include "SDTCommon.h"
#include "json-builder.h"

/** @file SDTOSCCommon.h
@defgroup OSCCommon SDTOSCCommon.h: OSC Commons
Functions and structures to handle OSC messages for SDT.
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
@return The float value */
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
may write over this string. Use the macro ::SDTOSC_MESSAGE_LOG for ease of use.
@param[in] m OSC message pointer
@return String pointer or zero on fail */
extern const char *SDTOSCMessage_staticPrint(const SDTOSCMessage *m);

/** @brief Log OSC message in any build with log level below LEVEL
@param[in] LEVEL Minimum level for logging
@param[in] FMT C string that contains a format string that follows the same
specifications as format in printf
@param[in] m SDTOSCMessage pointer */
#define SDTOSC_MESSAGE_LOGA(LEVEL, FMT, m, ...)           \
  {                                                       \
    const char *__msg_ptr = SDTOSCMessage_staticPrint(m); \
    if (__msg_ptr) {                                      \
      SDT_LOGA(LEVEL, FMT, __msg_ptr, __VA_ARGS__);       \
    }                                                     \
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
@param [in] name Name of the object
@param [out] obj Loaded JSON object
@param[in] fpath File path
@return Zero on success, non-zero on error */
extern int SDTOSCJSON_load(const char *name, json_value **obj,
                           const char *fpath);

/** @} @defgroup _osc_macros OSC Macros
Macros for implementing OSC methods
@{ */

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

#define _SDTOSC_GETFPATH(FPATHVAR, MSGVAR)                                 \
  const char *FPATHVAR = NULL;                                             \
  if (SDTOSCArgumentList_getNArgs(args) < 2) {                             \
    SDTOSC_MESSAGE_LOGA(                                                   \
        ERROR,                                                             \
        "\n  %s\n  [ARGUMENT ERROR] Missing argument: file path\n "        \
        " %s\n",                                                           \
        x, SDTOSC_rtfm_string());                                          \
    return 5;                                                              \
  }                                                                        \
  if (SDTOSCArgumentList_isString(args, 1)) {                              \
    FPATHVAR = SDTOSCArgumentList_getString(args, 1);                      \
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

#define _SDTOSC_GETARG(VAR, UCASE, CTYPE, OSCTYPE, OSCTYPELCASE, MSGVAR)     \
  CTYPE VAR;                                                                 \
  if (SDTOSCArgumentList_getNArgs(args) < 2) {                               \
    SDTOSC_MESSAGE_LOGA(ERROR,                                               \
                        "\n  %s\n  [ARGUMENT ERROR] Missing argument: " #VAR \
                        "\n  %s\n",                                          \
                        x, SDTOSC_rtfm_string());                            \
    return 5;                                                                \
  }                                                                          \
  if (SDTOSCArgumentList_is##OSCTYPE(args, 1)) {                             \
    VAR = (CTYPE)SDTOSCArgumentList_get##OSCTYPE(args, 1);                   \
  } else {                                                                   \
    SDTOSC_MESSAGE_LOGA(ERROR,                                               \
                        "\n  %s\n  [ARGUMENT ERROR] Second argument should " \
                        "be a " #OSCTYPELCASE                                \
                        "\n "                                                \
                        " %s\n",                                             \
                        x, SDTOSC_rtfm_string());                            \
    return 6;                                                                \
  }

#define _SDTOSC_LOG_FUNCTION(TYPENAME)                 \
  int SDTOSC##TYPENAME##_log(const SDTOSCMessage *x) { \
    SDTOSC_MESSAGE_LOGA(VERBOSE, "\n  %s\n", x, "")    \
    _SDTOSC_FIND_IN_HASHMAP(TYPENAME, obj, name, x)    \
    json_value *jobj = SDT##TYPENAME##_toJSON(obj);    \
    int r = SDTOSCJSON_log(name, jobj);                \
    json_builder_free(jobj);                           \
    return r;                                          \
  }

#define _SDTOSC_SAVE_FUNCTION(TYPENAME)                 \
  int SDTOSC##TYPENAME##_save(const SDTOSCMessage *x) { \
    SDTOSC_MESSAGE_LOGA(VERBOSE, "\n  %s\n", x, "")     \
    _SDTOSC_FIND_IN_HASHMAP(TYPENAME, obj, name, x)     \
    _SDTOSC_GETFPATH(fpath, x)                          \
    json_value *jobj = SDT##TYPENAME##_toJSON(obj);     \
    int r = SDTOSCJSON_save(name, jobj, fpath);         \
    json_builder_free(jobj);                            \
    return r;                                           \
  }

#define _SDTOSC_LOAD_FUNCTION(TYPENAME)                 \
  int SDTOSC##TYPENAME##_load(const SDTOSCMessage *x) { \
    SDTOSC_MESSAGE_LOGA(VERBOSE, "\n  %s\n", x, "")     \
    _SDTOSC_FIND_IN_HASHMAP(TYPENAME, obj, name, x)     \
    _SDTOSC_GETFPATH(fpath, x)                          \
    json_value *jobj;                                   \
    int r = SDTOSCJSON_load(name, &jobj, fpath);        \
    SDT##TYPENAME##_setParams(obj, jobj, 0);            \
    json_builder_free(jobj);                            \
    return r;                                           \
  }

#define _SDTOSC_LOADS_FUNCTION(TYPENAME)                                     \
  int SDTOSC##TYPENAME##_loads(const SDTOSCMessage *x) {                     \
    SDTOSC_MESSAGE_LOGA(VERBOSE, "\n  %s\n", x, "")                          \
    _SDTOSC_FIND_IN_HASHMAP(TYPENAME, obj, name, x)                          \
    int nchars = SDTOSCArgumentList_snprintf(NULL, 0, "%f", args, 1, -1);    \
    char *js = (char *)malloc(sizeof(char) * (nchars + 2));                  \
    SDTOSCArgumentList_snprintf(js, nchars + 1, "%f", args, 1, -1);          \
    /* SDT_LOGA(VERBOSE, "JSON string: %s\n", js); */                        \
    json_value *jobj = SDTJSON_reads(js, -1);                                \
    free(js);                                                                \
    if (!jobj) {                                                             \
      SDTOSC_MESSAGE_LOGA(                                                   \
          ERROR,                                                             \
          "\n  %s\n  [PARSER ERROR] Error while parsing JSON string\n%s", x, \
          "");                                                               \
      return 7;                                                              \
    }                                                                        \
    SDT##TYPENAME##_setParams(obj, jobj, 0);                                 \
    json_builder_free(jobj);                                                 \
    return 0;                                                                \
  }

#define _SDTOSC_SETTER_FUNCTION(TYPENAME, LCASE, UCASE, CTYPE, OSCTYPE, \
                                OSCTYPELCASE)                           \
  int SDTOSC##TYPENAME##_set##UCASE(const SDTOSCMessage *x) {           \
    SDTOSC_MESSAGE_LOGA(VERBOSE, "\n  %s\n", x, "")                     \
    _SDTOSC_FIND_IN_HASHMAP(TYPENAME, obj, name, x)                     \
    _SDTOSC_GETARG(LCASE, UCASE, CTYPE, OSCTYPE, OSCTYPELCASE, x)       \
    SDT##TYPENAME##_set##UCASE(obj, LCASE);                             \
    return 0;                                                           \
  }

#define _SDTOSC_FLOAT_SETTER_FUNCTION(TYPENAME, LCASE, UCASE, CTYPE) \
  _SDTOSC_SETTER_FUNCTION(TYPENAME, LCASE, UCASE, CTYPE, Float, float)

/** @} */

#ifdef __cplusplus
};
#endif

#endif

/** @} */