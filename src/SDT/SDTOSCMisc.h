#include "SDTAnalysis.h"
#include "SDTCommonMacros.h"
#include "SDTControl.h"
#include "SDTDCMotor.h"
#include "SDTDemix.h"
#include "SDTEffects.h"
#include "SDTFilters.h"
#include "SDTGases.h"
#include "SDTJSON.h"
#include "SDTLiquids.h"
#include "SDTModalTracker.h"
#include "SDTMotor.h"
#include "SDTOSCCommon.h"

#ifndef SDT_OSC_MISC_H
#define SDT_OSC_MISC_H

#ifdef __cplusplus
extern "C" {
#endif

/** @file SDTOSCMisc.h
@defgroup OSCMisc SDTOSCMisc.h: Miscellanea OSC Methods
OSC containers and methods for SDT objects that don't require special treatment
and, therefore, are implemented via macros. For a list of SDT classes whose OSC
methods are implemented this way, see the `SDT_OSC_CLASSES` macro. Every class
is associated to a container. The first argument for all methods is the object
ID. Every container has the following methods
 - log: log information about the object. Arguments: key (string)
 - save: save information about the object. Arguments: key (string), file path
(string)
 - load: load information about the object. Arguments: key (string), file path
(string)
 .
Additionally, every container has one setter method for setting each attribute
of the class. The first argument is the object ID and the second is the
attribute value. For a list of attributes of each class, see the macro
`SDT_<CLASS>_ATTRIBUTES` in the class's header file.

Also, every object belonging to these classes can be logged, saved, and loaded
as part of projects using the `/project` methods.
@{
*/

/** @defgroup osc_macros Macros
Macros for generating OSC methods
@{ */

/** @brief Define the OSC logging method declaration
@param[in] SDT_TYPE The SDT type macro */
#define SDT_OSC_LOG_H(SDT_TYPE)                                   \
  extern SDTOSCReturnCode CONCAT(CONCAT(SDTOSC, SDT_TYPE), _log)( \
      void (*log)(const char *, ...), const char *key,            \
      SDT_TYPE_FULL(SDT_TYPE) * x);

/** @brief Define the OSC logging method
@param[in] SDT_TYPE The SDT type macro */
#define SDT_OSC_LOG(SDT_TYPE)                                      \
  SDTOSCReturnCode CONCAT(CONCAT(SDTOSC, SDT_TYPE), _log)(         \
      void (*log)(const char *, ...), const char *key,             \
      SDT_TYPE_FULL(SDT_TYPE) * x) {                               \
    json_value *obj = CONCAT(SDT_TYPE_FULL(SDT_TYPE), _toJSON)(x); \
    char *s = malloc(sizeof(char) * (strlen(key) + 32));           \
    sprintf(s, "sdtOSC: %s", key);                                 \
    SDTOSCReturnCode r = SDTOSCJSON_log(log, s, obj);              \
    free(s);                                                       \
    json_builder_free(obj);                                        \
    return r;                                                      \
  }

/** @brief Define the OSC save method declaration
@param[in] SDT_TYPE The SDT type macro */
#define SDT_OSC_SAVE_H(SDT_TYPE)                                   \
  extern SDTOSCReturnCode CONCAT(CONCAT(SDTOSC, SDT_TYPE), _save)( \
      void (*log)(const char *, ...), const char *key,             \
      SDT_TYPE_FULL(SDT_TYPE) * x, const SDTOSCArgumentList *args);

/** @brief Define the OSC save method
@param[in] SDT_TYPE The SDT type macro */
#define SDT_OSC_SAVE(SDT_TYPE)                                            \
  SDTOSCReturnCode CONCAT(CONCAT(SDTOSC, SDT_TYPE), _save)(               \
      void (*log)(const char *, ...), const char *key,                    \
      SDT_TYPE_FULL(SDT_TYPE) * x, const SDTOSCArgumentList *args) {      \
    char *name = malloc(sizeof(char) * (strlen(key) + 8));                \
    sprintf(name, "'%s'", key);                                           \
    json_value *obj = CONCAT(SDT_TYPE_FULL(SDT_TYPE), _toJSON)(x);        \
    SDTOSCReturnCode return_code = SDTOSCJSON_save(log, name, obj, args); \
    json_builder_free(obj);                                               \
    free(name);                                                           \
    return return_code;                                                   \
  }

/** @brief Define the OSC load method declaration
@param[in] SDT_TYPE The SDT type macro */
#define SDT_OSC_LOAD_H(SDT_TYPE)                                   \
  extern SDTOSCReturnCode CONCAT(CONCAT(SDTOSC, SDT_TYPE), _load)( \
      void (*log)(const char *, ...), const char *key,             \
      SDT_TYPE_FULL(SDT_TYPE) * x, const SDTOSCArgumentList *args);

/** @brief Define the OSC load method
@param[in] SDT_TYPE The SDT type macro */
#define SDT_OSC_LOAD(SDT_TYPE)                                             \
  SDTOSCReturnCode CONCAT(CONCAT(SDTOSC, SDT_TYPE), _load)(                \
      void (*log)(const char *, ...), const char *key,                     \
      SDT_TYPE_FULL(SDT_TYPE) * x, const SDTOSCArgumentList *args) {       \
    json_value *obj;                                                       \
    char *name = malloc(sizeof(char) * (strlen(key) + 8));                 \
    sprintf(name, "'%s'", key);                                            \
    SDTOSCReturnCode return_code = SDTOSCJSON_load(log, name, &obj, args); \
    free(name);                                                            \
    if (return_code == SDT_OSC_RETURN_OK) {                                \
      SDT_TYPE_FULL(SDT_TYPE) *r =                                         \
          CONCAT(SDT_TYPE_FULL(SDT_TYPE), _fromJSON)(obj);                 \
      CONCAT(SDT_TYPE_FULL(SDT_TYPE), _copy)(x, r);                        \
      CONCAT(SDT_TYPE_FULL(SDT_TYPE), _free)(r);                           \
    }                                                                      \
    if (obj) json_builder_free(obj);                                       \
    return return_code;                                                    \
  }

#define OSC_TYPE_integer Float
#define OSC_TYPE_double Float
#define OSC_TYPE(T) OSC_TYPE_##T

#define SDT_OSC_TYPE_SETTER_H(SDT_TYPE, F, T, S, K, J, D)                    \
  extern SDTOSCReturnCode CONCAT(CONCAT(SDTOSC, SDT_TYPE), CONCAT(_set, S))( \
      SDT_TYPE_FULL(SDT_TYPE) * x, const SDTOSCArgumentList *args);

#define SDT_OSC_TYPE_SETTER(SDT_TYPE, F, T, S, K, J, D)               \
  SDTOSCReturnCode CONCAT(CONCAT(SDTOSC, SDT_TYPE), CONCAT(_set, S))( \
      SDT_TYPE_FULL(SDT_TYPE) * x, const SDTOSCArgumentList *args) {  \
    if (SDTOSCArgumentList_getNArgs(args) < 1 ||                      \
        !CONCAT(SDTOSCArgumentList_is, OSC_TYPE(J))(args, 0))         \
      return SDT_OSC_RETURN_ARGUMENT_ERROR;                           \
    CONCAT(SDT_TYPE_FULL(SDT_TYPE), CONCAT(_set, S))                  \
    (x, (T)CONCAT(SDTOSCArgumentList_get, OSC_TYPE(J))(args, 0));     \
    return SDT_OSC_RETURN_OK;                                         \
  }

/** @brief Define the OSC setter methods
@param[in] SDT_TYPE The SDT type macro */
#define SDT_OSC_TYPE_MAKE_SETTERS(SDT_TYPE) \
  SDT_TYPE##_ATTRIBUTES(SDT_TYPE, SDT_OSC_TYPE_SETTER)

/** @brief Define the OSC setter methods declarations
@param[in] SDT_TYPE The SDT type macro */
#define SDT_OSC_TYPE_MAKE_SETTERS_H(SDT_TYPE) \
  SDT_TYPE##_ATTRIBUTES(SDT_TYPE, SDT_OSC_TYPE_SETTER_H)

#define SDT_OSC_TYPE_SETTER_SWITCH(SDT_TYPE, F, T, S, K, J, D) \
  else if (!strcmp(#K, method)) return_code =                  \
      CONCAT(CONCAT(SDTOSC, SDT_TYPE), CONCAT(_set, S))(obj, sub_args);

/** @brief Define the OSC root method declaration for the class
@param[in] SDT_TYPE The SDT type macro */
#define SDT_OSC_ROOT_H(SDT_TYPE)                    \
  extern SDTOSCReturnCode CONCAT(SDTOSC, SDT_TYPE)( \
      void (*log)(const char *, ...), const SDTOSCMessage *x);

/** @brief Define the OSC root method for the class
@param[in] SDT_TYPE The SDT type macro */
#define SDT_OSC_ROOT(SDT_TYPE)                                                 \
  SDTOSCReturnCode CONCAT(SDTOSC, SDT_TYPE)(void (*log)(const char *, ...),    \
                                            const SDTOSCMessage *x) {          \
    SDTOSCArgumentList *args = SDTOSCMessage_getArguments(x);                  \
    const char *key = (SDTOSCArgumentList_getNArgs(args) &&                    \
                       SDTOSCArgumentList_isString(args, 0))                   \
                          ? SDTOSCArgumentList_getString(args, 0)              \
                          : 0;                                                 \
    SDT_TYPE_FULL(SDT_TYPE) *obj = (key) ? CONCAT(SDT_get, SDT_TYPE)(key) : 0; \
    SDTOSCReturnCode return_code;                                              \
    if (obj)                                                                   \
      if (SDTOSCMessage_hasContainer(x)) {                                     \
        SDTOSCArgumentList *sub_args = SDTOSCArgumentList_copyFromTo(          \
            SDTOSCMessage_getArguments(x), 1, -1);                             \
        char *method = SDTOSCMessage_getContainer(x);                          \
        if (!strcmp("log", method))                                            \
          return_code = CONCAT(CONCAT(SDTOSC, SDT_TYPE), _log)(log, key, obj); \
        else if (!strcmp("save", method))                                      \
          return_code = CONCAT(CONCAT(SDTOSC, SDT_TYPE), _save)(log, key, obj, \
                                                                sub_args);     \
        else if (!strcmp("load", method))                                      \
          return_code = CONCAT(CONCAT(SDTOSC, SDT_TYPE), _load)(log, key, obj, \
                                                                sub_args);     \
        SDT_TYPE##_ATTRIBUTES(SDT_TYPE,                                        \
                              SDT_OSC_TYPE_SETTER_SWITCH) else return_code =   \
            SDT_OSC_RETURN_NOT_IMPLEMENTED;                                    \
        SDTOSCArgumentList_free(sub_args);                                     \
      } else                                                                   \
        return_code = SDT_OSC_RETURN_MISSING_METHOD;                           \
    else if (key)                                                              \
      return_code = SDT_OSC_RETURN_OBJECT_NOT_FOUND;                           \
    else                                                                       \
      return_code = SDT_OSC_RETURN_ARGUMENT_ERROR;                             \
    return return_code;                                                        \
  }

/** @brief Define the declarations for all the OSC methods of the class (log,
save, load, setters and root)
@param[in] TYPE The SDT type macro (without the leading "SDT_")
@param[in] NAME The name of the class (as will be called via OSC) */
#define SDT_OSC_ALL_H(TYPE, NAME)         \
  SDT_OSC_LOG_H(SDT_##TYPE)               \
  SDT_OSC_SAVE_H(SDT_##TYPE)              \
  SDT_OSC_LOAD_H(SDT_##TYPE)              \
  SDT_OSC_TYPE_MAKE_SETTERS_H(SDT_##TYPE) \
  SDT_OSC_ROOT_H(SDT_##TYPE)

/** @brief Define the all the OSC methods for the class (log, save, load,
setters and root)
@param[in] TYPE The SDT type macro (without the leading "SDT_")
@param[in] NAME The name of the class (as will be called via OSC) */
#define SDT_OSC_ALL(TYPE, NAME)         \
  SDT_OSC_LOG(SDT_##TYPE)               \
  SDT_OSC_SAVE(SDT_##TYPE)              \
  SDT_OSC_LOAD(SDT_##TYPE)              \
  SDT_OSC_TYPE_MAKE_SETTERS(SDT_##TYPE) \
  SDT_OSC_ROOT(SDT_##TYPE)

/** @} */

/** @brief List of SDT classes whose OSC methods are automatically implemented.
Each class is defined as `C(SDT_MACRO, OSC_NAME)`, where `SDT_MACRO` is the name
of the macro associated to the class (without the leading `SDT_`) and `OSC_NAME`
is the name of the OSC container associated to the class
@param[in] C Macro to apply to each class
*/
#define SDT_OSC_CLASSES(C)        \
  C(BIQUAD, biquad)               \
  C(BOUNCING, bouncing)           \
  C(BREAKING, breaking)           \
  C(BUBBLE, bubble)               \
  C(CRUMPLING, crumpling)         \
  C(DCMOTOR, dcmotor)             \
  C(DEMIX, demix)                 \
  C(ENVELOPE, envelope)           \
  C(EXPLOSION, explosion)         \
  C(FLUIDFLOW, fluidflow)         \
  C(MODALTRACKER, modaltracker)   \
  C(MOTOR, motor)                 \
  C(MYOELASTIC, myo)              \
  C(PITCH, pitch)                 \
  C(PITCHSHIFT, pitchshift)       \
  C(REVERB, reverb)               \
  C(ROLLING, rolling)             \
  C(SCRAPING, scraping)           \
  C(SPECTRALFEATS, spectralfeats) \
  C(WINDCAVITY, windcavity)       \
  C(WINDKARMAN, windkarman)       \
  C(WINDFLOW, windflow)           \
  C(ZEROCROSSING, zerox)

SDT_OSC_CLASSES(SDT_OSC_ALL_H)

#ifdef __cplusplus
};
#endif

#endif

/** @} */
