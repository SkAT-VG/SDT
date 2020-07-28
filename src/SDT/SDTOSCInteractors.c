#include "SDTOSCInteractors.h"
#include "SDTResonators.h"
#include <string.h>
#include <stdio.h>

SDTOSCReturnCode SDTOSCInteractor(void (* log)(const char *, ...), const SDTOSCMessage* x) {
  SDTOSCArgumentList *args = SDTOSCMessage_getArguments(x);
  if (SDTOSCArgumentList_getNArgs(args) < 2 || !SDTOSCArgumentList_isString(args, 0) || !SDTOSCArgumentList_isString(args, 1))
    return SDT_OSC_RETURN_ARGUMENT_ERROR;

  const char *key0 = SDTOSCArgumentList_getString(args, 0);
  const char *key1 = SDTOSCArgumentList_getString(args, 1);
  SDTInteractor *inter = (key0 && key1)? SDT_getInteractor(key0, key1) : 0;
  SDTOSCReturnCode return_code;

  if (inter)
    if (SDTOSCMessage_hasContainer(x)) {
      SDTOSCMessage *sub = SDTOSCMessage_new(SDTOSCMessage_openContainerAddress(x), SDTOSCArgumentList_copyFromTo(SDTOSCMessage_getArguments(x), 2, -1));
      char *method = SDTOSCMessage_getContainer(x);
      if (!strcmp("impact", method))
        return_code = SDTOSCImpact(log, key0, key1, inter, sub);
      else if (!strcmp("friction", method))
        return_code = SDTOSCFriction(log, key0, key1, inter, sub);
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

//-------------------------------------------------------------------------------------//

SDTOSCReturnCode SDTOSCImpact(void (* log)(const char *, ...), const char *key0, const char *key1, SDTInteractor *x, const SDTOSCMessage* m) {
  if (!SDTInteractor_isImpact(x))
    return SDT_OSC_RETURN_INCORRECT_INTERACTOR_TYPE;

  SDTOSCReturnCode return_code = SDT_OSC_RETURN_NOT_IMPLEMENTED;
  if (SDTOSCMessage_hasContainer(m)) {
      char *method = SDTOSCMessage_getContainer(m);
      const SDTOSCArgumentList *args = SDTOSCMessage_getArguments(m);
      if (!strcmp("log", method))
        return_code = SDTOSCImpact_log(log, key0, key1, x);
      else if (!strcmp("save", method))
        return_code = SDTOSCImpact_save(log, key0, key1, x, args);
      else if (!strcmp("load", method))
        return_code = SDTOSCImpact_load(log, key0, key1, x, args);
    }
  else
    return_code = SDT_OSC_RETURN_MISSING_METHOD;
  return return_code;
}

SDTOSCReturnCode SDTOSCImpact_log(void (* log)(const char *, ...), const char *key0, const char *key1, SDTInteractor *x) {
  json_value *obj = SDTImpact_toJSON(x, key0, key1);
  SDTOSCReturnCode r = SDTOSCJSON_log(log, "sdtOSC:", obj);
  json_builder_free(obj);
  return r;
}

SDTOSCReturnCode SDTOSCImpact_save(void (* log)(const char *, ...), const char *key0, const char *key1, SDTInteractor *x, const SDTOSCArgumentList *args) {
  json_value *obj = SDTImpact_toJSON(x, key0, key1);
  char *name = malloc(sizeof(char) * (strlen(key0) + strlen(key1) + 64));
  sprintf(name, "impact between '%s' and '%s'", key0, key1);
  SDTOSCReturnCode r = SDTOSCJSON_save(log, name, obj, args);
  free(name);
  json_builder_free(obj);
  return r;
}

SDTOSCReturnCode SDTOSCImpact_load(void (* log)(const char *, ...), const char *key0, const char *key1, SDTInteractor *x, const SDTOSCArgumentList *args) {
  json_value *obj = 0;
  char *name = malloc(sizeof(char) * (strlen(key0) + strlen(key1) + 64));
  sprintf(name, "impact between '%s' and '%s'", key0, key1);
  SDTOSCReturnCode return_code = SDTOSCJSON_load(log, name, &obj, args);
  free(name);
  if (return_code == SDT_OSC_RETURN_OK) {
    SDTInteractor *inter = SDTImpact_fromJSON(obj);

    SDTImpact_setStiffness(x, SDTImpact_getStiffness(inter));
    SDTImpact_setDissipation(x, SDTImpact_getDissipation(inter));
    SDTImpact_setShape(x, SDTImpact_getShape(inter));
    if (SDTInteractor_getFirstResonator(inter) != SDTInteractor_getFirstResonator(x) || SDTInteractor_getSecondResonator(inter) != SDTInteractor_getSecondResonator(x))
      return_code = SDT_OSC_RETURN_WARNING_INTERACTOR_KEY;
    SDTInteractor_setFirstResonator(x, SDTInteractor_getFirstResonator(inter));
    SDTInteractor_setSecondResonator(x, SDTInteractor_getSecondResonator(inter));
    SDTInteractor_setFirstPoint(x, SDTInteractor_getFirstPoint(inter));
    SDTInteractor_setSecondPoint(x, SDTInteractor_getSecondPoint(inter));

    SDTImpact_free(inter);
  }
  if (obj)
    json_value_free(obj);
  return return_code;
}

//-------------------------------------------------------------------------------------//

SDTOSCReturnCode SDTOSCFriction(void (* log)(const char *, ...), const char *key0, const char *key1, SDTInteractor *x, const SDTOSCMessage* m) {
  if (!SDTInteractor_isFriction(x))
    return SDT_OSC_RETURN_INCORRECT_INTERACTOR_TYPE;

  SDTOSCReturnCode return_code = SDT_OSC_RETURN_NOT_IMPLEMENTED;
  if (SDTOSCMessage_hasContainer(m)) {
      char *method = SDTOSCMessage_getContainer(m);
      const SDTOSCArgumentList *args = SDTOSCMessage_getArguments(m);
      if (!strcmp("log", method))
        return_code = SDTOSCFriction_log(log, key0, key1, x);
      else if (!strcmp("save", method))
        return_code = SDTOSCFriction_save(log, key0, key1, x, args);
      else if (!strcmp("load", method))
        return_code = SDTOSCFriction_load(log, key0, key1, x, args);
    }
  else
    return_code = SDT_OSC_RETURN_MISSING_METHOD;
  return return_code;
}

SDTOSCReturnCode SDTOSCFriction_log(void (* log)(const char *, ...), const char *key0, const char *key1, SDTInteractor *x) {
  json_value *obj = SDTFriction_toJSON(x, key0, key1);
  SDTOSCReturnCode r = SDTOSCJSON_log(log, "sdtOSC:", obj);
  json_builder_free(obj);
  return r;
}

SDTOSCReturnCode SDTOSCFriction_save(void (* log)(const char *, ...), const char *key0, const char *key1, SDTInteractor *x, const SDTOSCArgumentList *args) {
  return SDT_OSC_RETURN_NOT_IMPLEMENTED;
}

SDTOSCReturnCode SDTOSCFriction_load(void (* log)(const char *, ...), const char *key0, const char *key1, SDTInteractor *x, const SDTOSCArgumentList *args) {
  return SDT_OSC_RETURN_NOT_IMPLEMENTED;
}