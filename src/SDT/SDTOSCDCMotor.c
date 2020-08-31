#include "SDTOSCDCMotor.h"
#include <stdlib.h>
#include <string.h>
#include <stdio.h>

SDTOSCReturnCode SDTOSCDCMotor(void (* log)(const char *, ...), const SDTOSCMessage* x) {
  SDTOSCArgumentList *args = SDTOSCMessage_getArguments(x);
  const char *key = (SDTOSCArgumentList_getNArgs(args) && SDTOSCArgumentList_isString(args, 0))? SDTOSCArgumentList_getString(args, 0) : 0;
  SDTDCMotor *mot = (key)? SDT_getDCMotor(key) : 0;
  SDTOSCReturnCode return_code;

  if (mot)
    if (SDTOSCMessage_hasContainer(x)) {
      SDTOSCArgumentList *sub_args = SDTOSCArgumentList_copyFromTo(SDTOSCMessage_getArguments(x), 1, -1);
      char *method = SDTOSCMessage_getContainer(x);
      if (!strcmp("log", method))
        return_code = SDTOSCDCMotor_log(log, key, mot);
      else if (!strcmp("save", method))
        return_code = SDTOSCDCMotor_save(log, key, mot, sub_args);
      else if (!strcmp("load", method))
        return_code = SDTOSCDCMotor_load(log, key, mot, sub_args);
      else
        return_code = SDT_OSC_RETURN_NOT_IMPLEMENTED;
      SDTOSCArgumentList_free(sub_args);
    } else
      return_code = SDT_OSC_RETURN_MISSING_METHOD;
  else if (key)
    return_code = SDT_OSC_RETURN_OBJECT_NOT_FOUND;
  else
    return_code = SDT_OSC_RETURN_ARGUMENT_ERROR;

  return return_code;
}

SDTOSCReturnCode SDTOSCDCMotor_log(void (* log)(const char *, ...), const char *key, SDTDCMotor *x) {
  json_value *obj = SDTDCMotor_toJSON(x);
  char *s = malloc(sizeof(char) * (strlen(key) + 32));
  sprintf(s, "sdtOSC: %s", key);
  SDTOSCReturnCode r = SDTOSCJSON_log(log, s, obj);
  free(s);
  json_builder_free(obj);
  return r;
}

SDTOSCReturnCode SDTOSCDCMotor_save(void (* log)(const char *, ...), const char *key, SDTDCMotor *x, const SDTOSCArgumentList *args) {
  char *name = malloc(sizeof(char) * (strlen(key) + 8));
  sprintf(name, "'%s'", key);
  json_value *obj = SDTDCMotor_toJSON(x);
  SDTOSCReturnCode return_code = SDTOSCJSON_save(log, name, obj, args);

  json_builder_free(obj);
  free(name);
  return return_code;
}

SDTOSCReturnCode SDTOSCDCMotor_load(void (* log)(const char *, ...), const char *key, SDTDCMotor *x, const SDTOSCArgumentList *args) {
  json_value *obj;
  char *name = malloc(sizeof(char) * (strlen(key) + 8));
  sprintf(name, "'%s'", key);
  SDTOSCReturnCode return_code = SDTOSCJSON_load(log, name, &obj, args);
  free(name);
  if (return_code == SDT_OSC_RETURN_OK) {
    SDTDCMotor *r = SDTDCMotor_fromJSON(obj);
    SDTDCMotor_copy(x, r);
    SDTDCMotor_free(r);
  }
  if (obj)
    json_builder_free(obj);
  return return_code;
}
