#include "SDTOSCInteractors.h"
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

/*
//-------------------------------------------------------------------------------------//
// Private utils

static int SDTInteractor_checkSameResonators(const SDTInteractor *x,
                                             const SDTInteractor *y) {
  return SDTInteractor_getFirstResonator(x) ==
             SDTInteractor_getFirstResonator(y) &&
         SDTInteractor_getSecondResonator(x) ==
             SDTInteractor_getSecondResonator(y);
}

//-------------------------------------------------------------------------------------//

SDTOSCReturnCode SDTOSCInteractor(void (*log)(const char *, ...),
                                  const SDTOSCMessage *x) {
  SDTOSCArgumentList *args = SDTOSCMessage_getArguments(x);
  if (SDTOSCArgumentList_getNArgs(args) < 2 ||
      !SDTOSCArgumentList_isString(args, 0) ||
      !SDTOSCArgumentList_isString(args, 1))
    return SDT_OSC_RETURN_ARGUMENT_ERROR;

  const char *key0 = SDTOSCArgumentList_getString(args, 0);
  const char *key1 = SDTOSCArgumentList_getString(args, 1);
  SDTInteractor *obj = (key0 && key1) ? SDT_getInteractor(key0, key1) : 0;
  SDTOSCReturnCode return_code;

  if (obj)
    if (SDTOSCMessage_hasContainer(x)) {
      SDTOSCMessage *sub = SDTOSCMessage_new(
          SDTOSCMessage_openContainerAddress(x),
          SDTOSCArgumentList_copyFromTo(SDTOSCMessage_getArguments(x), 2, -1));
      SDTOSCArgumentList *sub_args = SDTOSCMessage_getArguments(sub);
      char *method = SDTOSCMessage_getContainer(x);
      if (!strcmp("impact", method))
        return_code = SDTOSCImpact(log, key0, key1, obj, sub);
      else if (!strcmp("friction", method))
        return_code = SDTOSCFriction(log, key0, key1, obj, sub);
      else if (!strcmp("contact0", method))
        return_code = SDTOSCInteractor_setFirstPoint(obj, sub_args);
      else if (!strcmp("contact1", method))
        return_code = SDTOSCInteractor_setSecondPoint(obj, sub_args);
      else
        return_code = SDT_OSC_RETURN_NOT_IMPLEMENTED;
      SDTOSCMessage_free(sub);
    } else
      return_code = SDT_OSC_RETURN_MISSING_METHOD;
  else if (key0 && key1)
    return_code = SDT_OSC_RETURN_OBJECT_NOT_FOUND;
  else
    return_code = SDT_OSC_RETURN_ARGUMENT_ERROR;

  return return_code;
}

SDTOSCReturnCode SDTOSCInteractor_setFirstPoint(
    SDTInteractor *x, const SDTOSCArgumentList *args) {
  if (SDTOSCArgumentList_getNArgs(args) < 1 ||
      !SDTOSCArgumentList_isFloat(args, 0))
    return SDT_OSC_RETURN_ARGUMENT_ERROR;
  SDTInteractor_setFirstPoint(x, (int)SDTOSCArgumentList_getFloat(args, 0));
  return SDT_OSC_RETURN_OK;
}

SDTOSCReturnCode SDTOSCInteractor_setSecondPoint(
    SDTInteractor *x, const SDTOSCArgumentList *args) {
  if (SDTOSCArgumentList_getNArgs(args) < 1 ||
      !SDTOSCArgumentList_isFloat(args, 0))
    return SDT_OSC_RETURN_ARGUMENT_ERROR;
  SDTInteractor_setSecondPoint(x, (int)SDTOSCArgumentList_getFloat(args, 0));
  return SDT_OSC_RETURN_OK;
}

SDTOSCReturnCode SDTOSCImpact(void (*log)(const char *, ...), const char *key0,
                              const char *key1, SDTInteractor *obj,
                              const SDTOSCMessage *x) {
  if (!SDTInteractor_isImpact(obj))
    return SDT_OSC_RETURN_INCORRECT_INTERACTOR_TYPE;
  SDTOSCArgumentList *sub_args = SDTOSCMessage_getArguments(x);
  SDTOSCReturnCode return_code;
  if (obj)
    if (SDTOSCMessage_hasContainer(x)) {
      char *method = SDTOSCMessage_getContainer(x);
      if (!strcmp("log", method))
        return_code = SDTOSCImpact_log(log, key0, key1, obj);
      else if (!strcmp("save", method))
        return_code = SDTOSCImpact_save(log, key0, key1, obj, sub_args);
      else if (!strcmp("load", method))
        return_code = SDTOSCImpact_load(log, key0, key1, obj, sub_args);
      else if (!strcmp("shape", method))
        return_code = SDTOSCImpact_setShape(obj, sub_args);
      else if (!strcmp("stiffness", method))
        return_code = SDTOSCImpact_setStiffness(obj, sub_args);
      else if (!strcmp("dissipation", method))
        return_code = SDTOSCImpact_setDissipation(obj, sub_args);
      else if (!strcmp("contact0", method))
        return_code = SDTOSCInteractor_setFirstPoint(obj, sub_args);
      else if (!strcmp("contact1", method))
        return_code = SDTOSCInteractor_setSecondPoint(obj, sub_args);
      else
        return_code = SDT_OSC_RETURN_NOT_IMPLEMENTED;
    } else
      return_code = SDT_OSC_RETURN_MISSING_METHOD;
  else
    return_code = SDT_OSC_RETURN_OBJECT_NOT_FOUND;
  return return_code;
}

SDTOSCReturnCode SDTOSCImpact_setShape(SDTInteractor *x,
                                       const SDTOSCArgumentList *args) {
  if (SDTOSCArgumentList_getNArgs(args) < 1 ||
      !SDTOSCArgumentList_isFloat(args, 0))
    return SDT_OSC_RETURN_ARGUMENT_ERROR;
  SDTImpact_setShape(x, (double)SDTOSCArgumentList_getFloat(args, 0));
  return SDT_OSC_RETURN_OK;
}

SDTOSCReturnCode SDTOSCImpact_setStiffness(SDTInteractor *x,
                                           const SDTOSCArgumentList *args) {
  if (SDTOSCArgumentList_getNArgs(args) < 1 ||
      !SDTOSCArgumentList_isFloat(args, 0))
    return SDT_OSC_RETURN_ARGUMENT_ERROR;
  SDTImpact_setStiffness(x, (double)SDTOSCArgumentList_getFloat(args, 0));
  return SDT_OSC_RETURN_OK;
}

SDTOSCReturnCode SDTOSCImpact_setDissipation(SDTInteractor *x,
                                             const SDTOSCArgumentList *args) {
  if (SDTOSCArgumentList_getNArgs(args) < 1 ||
      !SDTOSCArgumentList_isFloat(args, 0))
    return SDT_OSC_RETURN_ARGUMENT_ERROR;
  SDTImpact_setDissipation(x, (double)SDTOSCArgumentList_getFloat(args, 0));
  return SDT_OSC_RETURN_OK;
}

//-------------------------------------------------------------------------------------//

SDTOSCReturnCode SDTOSCImpact_log(void (*log)(const char *, ...),
                                  const char *key0, const char *key1,
                                  SDTInteractor *x) {
  json_value *obj = SDTImpact_toJSON(x, key0, key1);
  SDTOSCReturnCode r = SDTOSCJSON_log("sdtOSC:", obj);
  json_builder_free(obj);
  return r;
}

SDTOSCReturnCode SDTOSCImpact_save(void (*log)(const char *, ...),
                                   const char *key0, const char *key1,
                                   SDTInteractor *x,
                                   const SDTOSCArgumentList *args) {
  json_value *obj = SDTImpact_toJSON(x, key0, key1);
  char *name = malloc(sizeof(char) * (strlen(key0) + strlen(key1) + 64));
  sprintf(name, "impact between '%s' and '%s'", key0, key1);
  SDTOSCReturnCode r = SDTOSCJSON_save(name, obj, args);
  free(name);
  json_builder_free(obj);
  return r;
}

SDTOSCReturnCode SDTOSCImpact_load(void (*log)(const char *, ...),
                                   const char *key0, const char *key1,
                                   SDTInteractor *x,
                                   const SDTOSCArgumentList *args) {
  json_value *obj = 0;
  char *name = malloc(sizeof(char) * (strlen(key0) + strlen(key1) + 64));
  sprintf(name, "impact between '%s' and '%s'", key0, key1);
  SDTOSCReturnCode return_code = SDTOSCJSON_load(name, &obj, args);
  free(name);
  if (return_code == SDT_OSC_RETURN_OK) {
    SDTInteractor *inter = SDTImpact_fromJSON(obj);
    if (!SDTInteractor_checkSameResonators(x, inter))
      return_code = SDT_OSC_RETURN_WARNING_INTERACTOR_KEY;

    SDTImpact_copy(x, inter);
    SDTImpact_free(inter);
  }
  if (obj) json_builder_free(obj);
  return return_code;
}

//-------------------------------------------------------------------------------------//

SDTOSCReturnCode SDTOSCFriction(void (*log)(const char *, ...),
                                const char *key0, const char *key1,
                                SDTInteractor *obj, const SDTOSCMessage *x) {
  if (!SDTInteractor_isFriction(obj))
    return SDT_OSC_RETURN_INCORRECT_INTERACTOR_TYPE;
  SDTOSCArgumentList *sub_args = SDTOSCMessage_getArguments(x);
  SDTOSCReturnCode return_code;
  if (obj)
    if (SDTOSCMessage_hasContainer(x)) {
      char *method = SDTOSCMessage_getContainer(x);
      if (!strcmp("log", method))
        return_code = SDTOSCFriction_log(log, key0, key1, obj);
      else if (!strcmp("save", method))
        return_code = SDTOSCFriction_save(log, key0, key1, obj, sub_args);
      else if (!strcmp("load", method))
        return_code = SDTOSCFriction_load(log, key0, key1, obj, sub_args);
      else if (!strcmp("force", method))
        return_code = SDTOSCFriction_setNormalForce(obj, sub_args);
      else if (!strcmp("stribeck", method))
        return_code = SDTOSCFriction_setStribeckVelocity(obj, sub_args);
      else if (!strcmp("kStatic", method))
        return_code = SDTOSCFriction_setStaticCoefficient(obj, sub_args);
      else if (!strcmp("kDynamic", method))
        return_code = SDTOSCFriction_setDynamicCoefficient(obj, sub_args);
      else if (!strcmp("breakAway", method))
        return_code = SDTOSCFriction_setBreakAway(obj, sub_args);
      else if (!strcmp("stiffness", method))
        return_code = SDTOSCFriction_setStiffness(obj, sub_args);
      else if (!strcmp("dissipation", method))
        return_code = SDTOSCFriction_setDissipation(obj, sub_args);
      else if (!strcmp("viscosity", method))
        return_code = SDTOSCFriction_setViscosity(obj, sub_args);
      else if (!strcmp("noisiness", method))
        return_code = SDTOSCFriction_setNoisiness(obj, sub_args);
      else if (!strcmp("contact0", method))
        return_code = SDTOSCInteractor_setFirstPoint(obj, sub_args);
      else if (!strcmp("contact1", method))
        return_code = SDTOSCInteractor_setSecondPoint(obj, sub_args);
      else
        return_code = SDT_OSC_RETURN_NOT_IMPLEMENTED;
    } else
      return_code = SDT_OSC_RETURN_MISSING_METHOD;
  else
    return_code = SDT_OSC_RETURN_OBJECT_NOT_FOUND;
  return return_code;
}

SDTOSCReturnCode SDTOSCFriction_setNormalForce(SDTInteractor *x,
                                               const SDTOSCArgumentList *args) {
  if (SDTOSCArgumentList_getNArgs(args) < 1 ||
      !SDTOSCArgumentList_isFloat(args, 0))
    return SDT_OSC_RETURN_ARGUMENT_ERROR;
  SDTFriction_setNormalForce(x, (double)SDTOSCArgumentList_getFloat(args, 0));
  return SDT_OSC_RETURN_OK;
}

SDTOSCReturnCode SDTOSCFriction_setStribeckVelocity(
    SDTInteractor *x, const SDTOSCArgumentList *args) {
  if (SDTOSCArgumentList_getNArgs(args) < 1 ||
      !SDTOSCArgumentList_isFloat(args, 0))
    return SDT_OSC_RETURN_ARGUMENT_ERROR;
  SDTFriction_setStribeckVelocity(x,
                                  (double)SDTOSCArgumentList_getFloat(args, 0));
  return SDT_OSC_RETURN_OK;
}

SDTOSCReturnCode SDTOSCFriction_setStaticCoefficient(
    SDTInteractor *x, const SDTOSCArgumentList *args) {
  if (SDTOSCArgumentList_getNArgs(args) < 1 ||
      !SDTOSCArgumentList_isFloat(args, 0))
    return SDT_OSC_RETURN_ARGUMENT_ERROR;
  SDTFriction_setStaticCoefficient(
      x, (double)SDTOSCArgumentList_getFloat(args, 0));
  return SDT_OSC_RETURN_OK;
}

SDTOSCReturnCode SDTOSCFriction_setDynamicCoefficient(
    SDTInteractor *x, const SDTOSCArgumentList *args) {
  if (SDTOSCArgumentList_getNArgs(args) < 1 ||
      !SDTOSCArgumentList_isFloat(args, 0))
    return SDT_OSC_RETURN_ARGUMENT_ERROR;
  SDTFriction_setDynamicCoefficient(
      x, (double)SDTOSCArgumentList_getFloat(args, 0));
  return SDT_OSC_RETURN_OK;
}

SDTOSCReturnCode SDTOSCFriction_setBreakAway(SDTInteractor *x,
                                             const SDTOSCArgumentList *args) {
  if (SDTOSCArgumentList_getNArgs(args) < 1 ||
      !SDTOSCArgumentList_isFloat(args, 0))
    return SDT_OSC_RETURN_ARGUMENT_ERROR;
  SDTFriction_setBreakAway(x, (double)SDTOSCArgumentList_getFloat(args, 0));
  return SDT_OSC_RETURN_OK;
}

SDTOSCReturnCode SDTOSCFriction_setStiffness(SDTInteractor *x,
                                             const SDTOSCArgumentList *args) {
  if (SDTOSCArgumentList_getNArgs(args) < 1 ||
      !SDTOSCArgumentList_isFloat(args, 0))
    return SDT_OSC_RETURN_ARGUMENT_ERROR;
  SDTFriction_setStiffness(x, (double)SDTOSCArgumentList_getFloat(args, 0));
  return SDT_OSC_RETURN_OK;
}

SDTOSCReturnCode SDTOSCFriction_setDissipation(SDTInteractor *x,
                                               const SDTOSCArgumentList *args) {
  if (SDTOSCArgumentList_getNArgs(args) < 1 ||
      !SDTOSCArgumentList_isFloat(args, 0))
    return SDT_OSC_RETURN_ARGUMENT_ERROR;
  SDTFriction_setDissipation(x, (double)SDTOSCArgumentList_getFloat(args, 0));
  return SDT_OSC_RETURN_OK;
}

SDTOSCReturnCode SDTOSCFriction_setViscosity(SDTInteractor *x,
                                             const SDTOSCArgumentList *args) {
  if (SDTOSCArgumentList_getNArgs(args) < 1 ||
      !SDTOSCArgumentList_isFloat(args, 0))
    return SDT_OSC_RETURN_ARGUMENT_ERROR;
  SDTFriction_setViscosity(x, (double)SDTOSCArgumentList_getFloat(args, 0));
  return SDT_OSC_RETURN_OK;
}

SDTOSCReturnCode SDTOSCFriction_setNoisiness(SDTInteractor *x,
                                             const SDTOSCArgumentList *args) {
  if (SDTOSCArgumentList_getNArgs(args) < 1 ||
      !SDTOSCArgumentList_isFloat(args, 0))
    return SDT_OSC_RETURN_ARGUMENT_ERROR;
  SDTFriction_setNoisiness(x, (double)SDTOSCArgumentList_getFloat(args, 0));
  return SDT_OSC_RETURN_OK;
}

SDTOSCReturnCode SDTOSCFriction_log(void (*log)(const char *, ...),
                                    const char *key0, const char *key1,
                                    SDTInteractor *x) {
  json_value *obj = SDTFriction_toJSON(x, key0, key1);
  SDTOSCReturnCode r = SDTOSCJSON_log("sdtOSC:", obj);
  json_builder_free(obj);
  return r;
}

SDTOSCReturnCode SDTOSCFriction_save(void (*log)(const char *, ...),
                                     const char *key0, const char *key1,
                                     SDTInteractor *x,
                                     const SDTOSCArgumentList *args) {
  json_value *obj = SDTFriction_toJSON(x, key0, key1);
  char *name = malloc(sizeof(char) * (strlen(key0) + strlen(key1) + 64));
  sprintf(name, "friction between '%s' and '%s'", key0, key1);
  SDTOSCReturnCode r = SDTOSCJSON_save(name, obj, args);
  free(name);
  json_builder_free(obj);
  return r;
}

SDTOSCReturnCode SDTOSCFriction_load(void (*log)(const char *, ...),
                                     const char *key0, const char *key1,
                                     SDTInteractor *x,
                                     const SDTOSCArgumentList *args) {
  json_value *obj = 0;
  char *name = malloc(sizeof(char) * (strlen(key0) + strlen(key1) + 64));
  sprintf(name, "friction between '%s' and '%s'", key0, key1);
  SDTOSCReturnCode return_code = SDTOSCJSON_load(name, &obj, args);
  free(name);
  if (return_code == SDT_OSC_RETURN_OK) {
    SDTInteractor *inter = SDTFriction_fromJSON(obj);
    if (!SDTInteractor_checkSameResonators(x, inter))
      return_code = SDT_OSC_RETURN_WARNING_INTERACTOR_KEY;

    SDTFriction_copy(x, inter);
    SDTFriction_free(inter);
  }
  if (obj) json_builder_free(obj);
  return return_code;
}
*/
