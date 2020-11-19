#include "SDTOSCInteractors.h"
#include "SDTOSCMisc.h"
#include "SDTResonators.h"
#include <string.h>
#include <stdio.h>

//-------------------------------------------------------------------------------------//
// Private utils

int SDTInteractor_checkSameResonators(const SDTInteractor *x, const SDTInteractor *y) {
  return SDTInteractor_getFirstResonator(x) == SDTInteractor_getFirstResonator(y) && SDTInteractor_getSecondResonator(x) == SDTInteractor_getSecondResonator(y);
}

//-------------------------------------------------------------------------------------//

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

SDT_OSC_INTERACTOR_ROOT(SDT_IMPACT)
SDT_OSC_INTERACTOR_MAKE_SETTERS(SDT_IMPACT)

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
    if (!SDTInteractor_checkSameResonators(x, inter))
      return_code = SDT_OSC_RETURN_WARNING_INTERACTOR_KEY;

    SDTImpact_copy(x, inter);
    SDTImpact_free(inter);
  }
  if (obj)
    json_builder_free(obj);
  return return_code;
}

//-------------------------------------------------------------------------------------//

SDT_OSC_INTERACTOR_ROOT(SDT_FRICTION)
SDT_OSC_INTERACTOR_MAKE_SETTERS(SDT_FRICTION)

SDTOSCReturnCode SDTOSCFriction_log(void (* log)(const char *, ...), const char *key0, const char *key1, SDTInteractor *x) {
  json_value *obj = SDTFriction_toJSON(x, key0, key1);
  SDTOSCReturnCode r = SDTOSCJSON_log(log, "sdtOSC:", obj);
  json_builder_free(obj);
  return r;
}

SDTOSCReturnCode SDTOSCFriction_save(void (* log)(const char *, ...), const char *key0, const char *key1, SDTInteractor *x, const SDTOSCArgumentList *args) {
  json_value *obj = SDTFriction_toJSON(x, key0, key1);
  char *name = malloc(sizeof(char) * (strlen(key0) + strlen(key1) + 64));
  sprintf(name, "friction between '%s' and '%s'", key0, key1);
  SDTOSCReturnCode r = SDTOSCJSON_save(log, name, obj, args);
  free(name);
  json_builder_free(obj);
  return r;
}

SDTOSCReturnCode SDTOSCFriction_load(void (* log)(const char *, ...), const char *key0, const char *key1, SDTInteractor *x, const SDTOSCArgumentList *args) {
  json_value *obj = 0;
  char *name = malloc(sizeof(char) * (strlen(key0) + strlen(key1) + 64));
  sprintf(name, "friction between '%s' and '%s'", key0, key1);
  SDTOSCReturnCode return_code = SDTOSCJSON_load(log, name, &obj, args);
  free(name);
  if (return_code == SDT_OSC_RETURN_OK) {
    SDTInteractor *inter = SDTFriction_fromJSON(obj);
    if (!SDTInteractor_checkSameResonators(x, inter))
      return_code = SDT_OSC_RETURN_WARNING_INTERACTOR_KEY;

    SDTFriction_copy(x, inter);
    SDTFriction_free(inter);
  }
  if (obj)
    json_builder_free(obj);
  return return_code;
}