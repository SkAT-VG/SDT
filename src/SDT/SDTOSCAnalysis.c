#include "SDTOSCAnalysis.h"
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "SDTCommon.h"

SDTOSCReturnCode SDTOSCZeroCrossing_log(void (*log)(const char *, ...),
                                        const char *key, SDTZeroCrossing *x) {
  json_value *obj = SDTZeroCrossing_toJSON(x);
  char *s = malloc(sizeof(char) * (strlen(key) + 32));
  sprintf(s, "sdtOSC: %s", key);
  SDTOSCReturnCode r = SDTOSCJSON_log(s, obj);
  free(s);
  json_builder_free(obj);
  return r;
}

SDTOSCReturnCode SDTOSCZeroCrossing_save(void (*log)(const char *, ...),
                                         const char *key, SDTZeroCrossing *x,
                                         const SDTOSCArgumentList *args) {
  char *name = malloc(sizeof(char) * (strlen(key) + 8));
  sprintf(name, "'%s'", key);
  json_value *obj = SDTZeroCrossing_toJSON(x);
  SDTOSCReturnCode return_code = SDTOSCJSON_save(log, name, obj, args);
  json_builder_free(obj);
  free(name);
  return return_code;
}

SDTOSCReturnCode SDTOSCZeroCrossing_load(void (*log)(const char *, ...),
                                         const char *key, SDTZeroCrossing *x,
                                         const SDTOSCArgumentList *args) {
  json_value *obj;
  char *name = malloc(sizeof(char) * (strlen(key) + 8));
  sprintf(name, "'%s'", key);
  SDTOSCReturnCode return_code = SDTOSCJSON_load(log, name, &obj, args);
  free(name);
  if (return_code == SDT_OSC_RETURN_OK) SDTZeroCrossing_setParams(x, obj, 0);
  if (obj) json_builder_free(obj);
  return return_code;
}

SDTOSCReturnCode SDTOSCZeroCrossing_setSize(SDTZeroCrossing *x,
                                            const SDTOSCArgumentList *args) {
  if (SDTOSCArgumentList_getNArgs(args) < 1 ||
      !SDTOSCArgumentList_isFloat(args, 0))
    return SDT_OSC_RETURN_ARGUMENT_ERROR;
  SDTZeroCrossing_setSize(x,
                          (unsigned int)SDTOSCArgumentList_getFloat(args, 0));
  return SDT_OSC_RETURN_OK;
}

SDTOSCReturnCode SDTOSCZeroCrossing_setOverlap(SDTZeroCrossing *x,
                                               const SDTOSCArgumentList *args) {
  if (SDTOSCArgumentList_getNArgs(args) < 1 ||
      !SDTOSCArgumentList_isFloat(args, 0))
    return SDT_OSC_RETURN_ARGUMENT_ERROR;
  SDTZeroCrossing_setOverlap(x, (double)SDTOSCArgumentList_getFloat(args, 0));
  return SDT_OSC_RETURN_OK;
}

SDTOSCReturnCode SDTOSCZeroCrossing(void (*log)(const char *, ...),
                                    const SDTOSCMessage *x) {
  SDTOSCArgumentList *args = SDTOSCMessage_getArguments(x);
  const char *key = (SDTOSCArgumentList_getNArgs(args) &&
                     SDTOSCArgumentList_isString(args, 0))
                        ? SDTOSCArgumentList_getString(args, 0)
                        : 0;
  SDTZeroCrossing *obj = (key) ? SDT_getZeroCrossing(key) : 0;
  SDTOSCReturnCode return_code;
  if (obj)
    if (SDTOSCMessage_hasContainer(x)) {
      SDTOSCArgumentList *sub_args =
          SDTOSCArgumentList_copyFromTo(SDTOSCMessage_getArguments(x), 1, -1);
      char *method = SDTOSCMessage_getContainer(x);
      if (!strcmp("log", method))
        return_code = SDTOSCZeroCrossing_log(log, key, obj);
      else if (!strcmp("save", method))
        return_code = SDTOSCZeroCrossing_save(log, key, obj, sub_args);
      else if (!strcmp("load", method))
        return_code = SDTOSCZeroCrossing_load(log, key, obj, sub_args);
      else if (!strcmp("size", method))
        return_code = SDTOSCZeroCrossing_setSize(obj, sub_args);
      else if (!strcmp("overlap", method))
        return_code = SDTOSCZeroCrossing_setOverlap(obj, sub_args);
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
