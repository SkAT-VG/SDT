#include "SDTOSCInteractors.h"

#include <string.h>

#include "../SDTInteractors.h"

/** @brief Implement OSC hashmap lookup for interactors
@param[in] TYPENAME SDT type name, without the leading `SDT`
@param[in] OBJVAR Object variable identifier
@param[in] NAMEVAR0 First name variable identifier
@param[in] NAMEVAR1 Second name variable identifier
@param[in] MSGVAR Message variable identifier */
#define _SDTOSCINTERACTOR_FIND_IN_HASHMAP(TYPENAME, OBJVAR, NAMEVAR0,          \
                                          NAMEVAR1, MSGVAR)                    \
  SDTInteractor* OBJVAR = NULL;                                                \
  const char* NAMEVAR0 = NULL;                                                 \
  const char* NAMEVAR1 = NULL;                                                 \
  const SDTOSCArgumentList* args = SDTOSCMessage_getArguments(MSGVAR);         \
  if (!SDTOSCArgumentList_getNArgs(args)) {                                    \
    SDTOSC_MESSAGE_LOGA(                                                       \
        ERROR,                                                                 \
        "\n  %s\n  [ARGUMENT ERROR] Missing argument: first resonator name\n " \
        " %s\n",                                                               \
        x, SDTOSC_rtfm_string());                                              \
    return 1;                                                                  \
  }                                                                            \
  if (SDTOSCArgumentList_isString(args, 0)) {                                  \
    NAMEVAR0 = SDTOSCArgumentList_getString(args, 0);                          \
  } else {                                                                     \
    SDTOSC_MESSAGE_LOGA(                                                       \
        ERROR,                                                                 \
        "\n  %s\n  [ARGUMENT ERROR] First argument should be a string\n "      \
        " %s\n",                                                               \
        x, SDTOSC_rtfm_string());                                              \
    return 2;                                                                  \
  }                                                                            \
  if (!NAMEVAR0) {                                                             \
    SDTOSC_MESSAGE_LOGA(ERROR,                                                 \
                        "\n  %s\n  [NULL POINTER] First argument is a null "   \
                        "pointer string %s\n",                                 \
                        x, SDTOSC_rtfm_string());                              \
    return 3;                                                                  \
  }                                                                            \
  if (SDTOSCArgumentList_getNArgs(args) < 2) {                                 \
    SDTOSC_MESSAGE_LOGA(ERROR,                                                 \
                        "\n  %s\n  [ARGUMENT ERROR] Missing argument: second " \
                        "resonator name\n "                                    \
                        " %s\n",                                               \
                        x, SDTOSC_rtfm_string());                              \
    return 11;                                                                 \
  }                                                                            \
  if (SDTOSCArgumentList_isString(args, 1)) {                                  \
    NAMEVAR1 = SDTOSCArgumentList_getString(args, 1);                          \
  } else {                                                                     \
    SDTOSC_MESSAGE_LOGA(                                                       \
        ERROR,                                                                 \
        "\n  %s\n  [ARGUMENT ERROR] Second argument should be a string\n "     \
        " %s\n",                                                               \
        x, SDTOSC_rtfm_string());                                              \
    return 12;                                                                 \
  }                                                                            \
  if (!NAMEVAR1) {                                                             \
    SDTOSC_MESSAGE_LOGA(ERROR,                                                 \
                        "\n  %s\n  [NULL POINTER] Second argument is a null "  \
                        "pointer string %s\n",                                 \
                        x, SDTOSC_rtfm_string());                              \
    return 13;                                                                 \
  }                                                                            \
  OBJVAR = SDT_getInteractor(NAMEVAR0, NAMEVAR1);                              \
  if (!OBJVAR) {                                                               \
    SDTOSC_MESSAGE_LOGA(                                                       \
        ERROR,                                                                 \
        "\n  %s\n  [OBJECT NOT FOUND] No SDTInteractor object registered "     \
        "between the specified resonators:\n    %s\n    %s\n  %s\n",           \
        x, NAMEVAR0, NAMEVAR1, SDTOSC_rtfm_string());                          \
    return 4;                                                                  \
  }                                                                            \
  if (!SDTInteractor_is##TYPENAME(OBJVAR)) {                                   \
    SDTOSC_MESSAGE_LOGA(                                                       \
        ERROR,                                                                 \
        "\n  %s\n  [INTERACTOR TYPE] SDTInteractor found between the "         \
        "specified resonators is not of type " #TYPENAME                       \
        ":\n    %s\n    %s\n  %s\n",                                           \
        x, NAMEVAR0, NAMEVAR1, SDTOSC_rtfm_string());                          \
    return 5;                                                                  \
  }

#define _SDTOSCINTERACTORS_MAKENAME(VAR, KEY0, KEY1)                           \
  char* VAR = (char*)malloc(sizeof(char) * (strlen(KEY0) + strlen(KEY1) + 2)); \
  sprintf(VAR, "%s~%s", KEY0, KEY1);

/** @brief Implement OSC JSON log method for interactors
@param[in] TYPENAME SDT type name, without the leading `SDT` */
#define _SDTOSCINTERACTOR_LOG_FUNCTION(TYPENAME)                \
  int SDTOSC##TYPENAME##_log(const SDTOSCMessage* x) {          \
    SDTOSC_MESSAGE_LOGA(VERBOSE, "\n  %s\n", x, "")             \
    _SDTOSCINTERACTOR_FIND_IN_HASHMAP(TYPENAME, obj, k0, k1, x) \
    json_value* jobj = SDTInteractor_toJSON(obj);               \
    _SDTOSCINTERACTORS_MAKENAME(keys, k0, k1);                  \
    int r = SDTOSCJSON_log(keys, jobj);                         \
    json_builder_free(jobj);                                    \
    free(keys);                                                 \
    return r;                                                   \
  }

/** @brief Implement OSC JSON save method for interactors
@param[in] TYPENAME SDT type name, without the leading `SDT` */
#define _SDTOSCINTERACTOR_SAVE_FUNCTION(TYPENAME)               \
  int SDTOSC##TYPENAME##_save(const SDTOSCMessage* x) {         \
    SDTOSC_MESSAGE_LOGA(VERBOSE, "\n  %s\n", x, "")             \
    _SDTOSCINTERACTOR_FIND_IN_HASHMAP(TYPENAME, obj, k0, k1, x) \
    _SDTOSC_GETFPATH(fpath, x, 2)                               \
    _SDTOSCINTERACTORS_MAKENAME(keys, k0, k1);                  \
    json_value* jobj = SDTInteractor_toJSON(obj);               \
    int r = SDTOSCJSON_save(keys, jobj, fpath);                 \
    json_builder_free(jobj);                                    \
    free(keys);                                                 \
    return r;                                                   \
  }

/** @brief Implement OSC JSON file load method for interactors
@param[in] TYPENAME SDT type name, without the leading `SDT`
@param[in] U Type `update` to trigger the structure update function */
#define _SDTOSCINTERACTOR_LOAD_FUNCTION(TYPENAME, U)            \
  int SDTOSC##TYPENAME##_load(const SDTOSCMessage* x) {         \
    SDTOSC_MESSAGE_LOGA(VERBOSE, "\n  %s\n", x, "")             \
    _SDTOSCINTERACTOR_FIND_IN_HASHMAP(TYPENAME, obj, k0, k1, x) \
    _SDTOSC_GETFPATH(fpath, x, 2)                               \
    json_value* jobj;                                           \
    _SDTOSCINTERACTORS_MAKENAME(keys, k0, k1);                  \
    int r = SDTOSCJSON_load(keys, &jobj, fpath);                \
    free(keys);                                                 \
    SDTInteractor_setParams(obj, jobj, 0);                      \
    json_builder_free(jobj);                                    \
    _SDT_TYPE_UPDATE_##U(TYPENAME, obj);                        \
    return r;                                                   \
  }

/** @brief Implement OSC JSON string load method for interactors
@param[in] TYPENAME SDT type name, without the leading `SDT`
@param[in] U Type `update` to trigger the structure update function */
#define _SDTOSCINTERACTOR_LOADS_FUNCTION(TYPENAME, U)                        \
  int SDTOSC##TYPENAME##_loads(const SDTOSCMessage* x) {                     \
    SDTOSC_MESSAGE_LOGA(VERBOSE, "\n  %s\n", x, "")                          \
    _SDTOSCINTERACTOR_FIND_IN_HASHMAP(TYPENAME, obj, k0, k1, x)              \
    json_value* jobj = _SDTOSC_trailingArgsToJSON(x, 2);                     \
    if (!jobj) {                                                             \
      SDTOSC_MESSAGE_LOGA(                                                   \
          ERROR,                                                             \
          "\n  %s\n  [PARSER ERROR] Error while parsing JSON string\n%s", x, \
          "");                                                               \
      return 7;                                                              \
    }                                                                        \
    SDTInteractor_setParams(obj, jobj, 0);                                   \
    json_builder_free(jobj);                                                 \
    _SDT_TYPE_UPDATE_##U(TYPENAME, obj);                                     \
    return 0;                                                                \
  }

/** @brief Implement OSC argument setters for interactors
@param[in] TYPENAME SDT type name, without the leading `SDT`
@param[in] SETTYPENAME SDT type name for the setter, without the leading `SDT`
@param[in] LCASE Attribute name (lowercase)
@param[in] UCASE Attribute name (Capitalized)
@param[in] CTYPE C type for argument
@param[in] OSCTYPE OSC type of argument
@param[in] OSCTYPELCASE OSC type of argument (lowercase)
@param[in] U Type `update` to trigger the structure update function */
#define _SDTOSCINTERACTOR_SETTER_FUNCTION(TYPENAME, SETTYPENAME, LCASE, UCASE, \
                                          CTYPE, OSCTYPE, OSCTYPELCASE, U)     \
  int SDTOSC##TYPENAME##_set##UCASE(const SDTOSCMessage* x) {                  \
    SDTOSC_MESSAGE_LOGA(VERBOSE, "\n  %s\n", x, "")                            \
    _SDTOSCINTERACTOR_FIND_IN_HASHMAP(TYPENAME, obj, k0, k1, x)                \
    _SDTOSC_GETARG(LCASE, 2, CTYPE, OSCTYPE, OSCTYPELCASE, x)                  \
    SDT##SETTYPENAME##_set##UCASE(obj, LCASE);                                 \
    _SDT_TYPE_UPDATE_##U(TYPENAME, obj);                                       \
    return 0;                                                                  \
  }

/* --- Impact -------------------------------------------------------------- */
int SDTOSCImpact(const SDTOSCMessage* x) {
  SDTOSC_MESSAGE_LOGA(VERBOSE, "\n  %s\n", x, "");
  const SDTOSCAddress* a = SDTOSCMessage_getAddress(x);
  if (SDTOSCAddress_getDepth(a) < 2) {
    SDTOSC_MESSAGE_LOGA(ERROR,
                        "\n  %s\n  [MISSING METHOD] Please, specify an OSC "
                        "method from the container\n  %s\n",
                        x, SDTOSC_rtfm_string());
    return 1;
  }
  const char* k = SDTOSCAddress_getNode(a, 1);
  if (!strcmp("log", k)) return SDTOSCImpact_log(x);
  if (!strcmp("save", k)) return SDTOSCImpact_save(x);
  if (!strcmp("load", k)) return SDTOSCImpact_load(x);
  if (!strcmp("loads", k)) return SDTOSCImpact_loads(x);
  if (!strcmp("stiffness", k)) return SDTOSCImpact_setStiffness(x);
  if (!strcmp("dissipation", k)) return SDTOSCImpact_setDissipation(x);
  if (!strcmp("shape", k)) return SDTOSCImpact_setShape(x);
  if (!strcmp("contact0", k)) return SDTOSCImpact_setFirstPoint(x);
  if (!strcmp("contact1", k)) return SDTOSCImpact_setSecondPoint(x);
  SDTOSC_MESSAGE_LOGA(ERROR,
                      "\n  %s\n  [NOT IMPLEMENTED] The specified method is not "
                      "implemented: %s\n  %s\n",
                      x, k, SDTOSC_rtfm_string());
  return 2;
}

_SDTOSCINTERACTOR_LOG_FUNCTION(Impact)
_SDTOSCINTERACTOR_SAVE_FUNCTION(Impact)
_SDTOSCINTERACTOR_LOAD_FUNCTION(Impact, )
_SDTOSCINTERACTOR_LOADS_FUNCTION(Impact, )
_SDTOSCINTERACTOR_SETTER_FUNCTION(Impact, Impact, stiffness, Stiffness, double,
                                  Float, float, )
_SDTOSCINTERACTOR_SETTER_FUNCTION(Impact, Impact, dissipation, Dissipation,
                                  double, Float, float, )
_SDTOSCINTERACTOR_SETTER_FUNCTION(Impact, Impact, shape, Shape, double, Float,
                                  float, )
_SDTOSCINTERACTOR_SETTER_FUNCTION(Impact, Interactor, contact0, FirstPoint, int,
                                  Float, float, )
_SDTOSCINTERACTOR_SETTER_FUNCTION(Impact, Interactor, contact1, SecondPoint,
                                  int, Float, float, )
/* ------------------------------------------------------------------------- */

/* --- Friction ------------------------------------------------------------ */
int SDTOSCFriction(const SDTOSCMessage* x) {
  SDTOSC_MESSAGE_LOGA(VERBOSE, "\n  %s\n", x, "");
  const SDTOSCAddress* a = SDTOSCMessage_getAddress(x);
  if (SDTOSCAddress_getDepth(a) < 2) {
    SDTOSC_MESSAGE_LOGA(ERROR,
                        "\n  %s\n  [MISSING METHOD] Please, specify an OSC "
                        "method from the container\n  %s\n",
                        x, SDTOSC_rtfm_string());
    return 1;
  }
  const char* k = SDTOSCAddress_getNode(a, 1);
  if (!strcmp("log", k)) return SDTOSCFriction_log(x);
  if (!strcmp("save", k)) return SDTOSCFriction_save(x);
  if (!strcmp("load", k)) return SDTOSCFriction_load(x);
  if (!strcmp("loads", k)) return SDTOSCFriction_loads(x);
  if (!strcmp("force", k)) return SDTOSCFriction_setNormalForce(x);
  if (!strcmp("stribeck", k)) return SDTOSCFriction_setStribeckVelocity(x);
  if (!strcmp("kStatic", k) || !strcmp("static", k))
    return SDTOSCFriction_setStaticCoefficient(x);
  if (!strcmp("kDynamic", k) || !strcmp("dynamic", k))
    return SDTOSCFriction_setDynamicCoefficient(x);
  if (!strcmp("stiffness", k)) return SDTOSCFriction_setStiffness(x);
  if (!strcmp("dissipation", k)) return SDTOSCFriction_setDissipation(x);
  if (!strcmp("viscosity", k)) return SDTOSCFriction_setViscosity(x);
  if (!strcmp("noisiness", k)) return SDTOSCFriction_setNoisiness(x);
  if (!strcmp("breakAway", k) || !strcmp("breakaway", k))
    return SDTOSCFriction_setBreakAway(x);
  if (!strcmp("contact0", k)) return SDTOSCFriction_setFirstPoint(x);
  if (!strcmp("contact1", k)) return SDTOSCFriction_setSecondPoint(x);
  SDTOSC_MESSAGE_LOGA(ERROR,
                      "\n  %s\n  [NOT IMPLEMENTED] The specified method is not "
                      "implemented: %s\n  %s\n",
                      x, k, SDTOSC_rtfm_string());
  return 2;
}

_SDTOSCINTERACTOR_LOG_FUNCTION(Friction)
_SDTOSCINTERACTOR_SAVE_FUNCTION(Friction)
_SDTOSCINTERACTOR_LOAD_FUNCTION(Friction, )
_SDTOSCINTERACTOR_LOADS_FUNCTION(Friction, )
_SDTOSCINTERACTOR_SETTER_FUNCTION(Friction, Friction, force, NormalForce,
                                  double, Float, float, )
_SDTOSCINTERACTOR_SETTER_FUNCTION(Friction, Friction, stribeck,
                                  StribeckVelocity, double, Float, float, )
_SDTOSCINTERACTOR_SETTER_FUNCTION(Friction, Friction, kStatic,
                                  StaticCoefficient, double, Float, float, )
_SDTOSCINTERACTOR_SETTER_FUNCTION(Friction, Friction, kDynamic,
                                  DynamicCoefficient, double, Float, float, )
_SDTOSCINTERACTOR_SETTER_FUNCTION(Friction, Friction, stiffness, Stiffness,
                                  double, Float, float, )
_SDTOSCINTERACTOR_SETTER_FUNCTION(Friction, Friction, dissipation, Dissipation,
                                  double, Float, float, )
_SDTOSCINTERACTOR_SETTER_FUNCTION(Friction, Friction, viscosity, Viscosity,
                                  double, Float, float, )
_SDTOSCINTERACTOR_SETTER_FUNCTION(Friction, Friction, noisiness, Noisiness,
                                  double, Float, float, )
_SDTOSCINTERACTOR_SETTER_FUNCTION(Friction, Friction, breakAway, BreakAway,
                                  double, Float, float, )
_SDTOSCINTERACTOR_SETTER_FUNCTION(Friction, Interactor, contact0, FirstPoint,
                                  int, Float, float, )
_SDTOSCINTERACTOR_SETTER_FUNCTION(Friction, Interactor, contact1, SecondPoint,
                                  int, Float, float, )
/* ------------------------------------------------------------------------- */
