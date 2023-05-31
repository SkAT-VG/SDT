#include "SDTOSCMisc.h"
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

SDTOSCReturnCode SDTOSCBiquad_log(void (*log)(const char *, ...),
                                  const char *key, SDTBiquad *x) {
  json_value *obj = SDTBiquad_toJSON(x);
  char *s = malloc(sizeof(char) * (strlen(key) + 32));
  sprintf(s, "sdtOSC: %s", key);
  SDTOSCReturnCode r = SDTOSCJSON_log(log, s, obj);
  free(s);
  json_builder_free(obj);
  return r;
}

SDTOSCReturnCode SDTOSCBiquad_save(void (*log)(const char *, ...),
                                   const char *key, SDTBiquad *x,
                                   const SDTOSCArgumentList *args) {
  char *name = malloc(sizeof(char) * (strlen(key) + 8));
  sprintf(name, "'%s'", key);
  json_value *obj = SDTBiquad_toJSON(x);
  SDTOSCReturnCode return_code = SDTOSCJSON_save(log, name, obj, args);
  json_builder_free(obj);
  free(name);
  return return_code;
}

SDTOSCReturnCode SDTOSCBiquad_load(void (*log)(const char *, ...),
                                   const char *key, SDTBiquad *x,
                                   const SDTOSCArgumentList *args) {
  json_value *obj;
  char *name = malloc(sizeof(char) * (strlen(key) + 8));
  sprintf(name, "'%s'", key);
  SDTOSCReturnCode return_code = SDTOSCJSON_load(log, name, &obj, args);
  free(name);
  if (return_code == SDT_OSC_RETURN_OK) {
    SDTBiquad *r = SDTBiquad_fromJSON(obj);
    SDTBiquad_copy(x, r);
    SDTBiquad_free(r);
  }
  if (obj) json_builder_free(obj);
  return return_code;
}

SDTOSCReturnCode SDTOSCBiquad(void (*log)(const char *, ...),
                              const SDTOSCMessage *x) {
  SDTOSCArgumentList *args = SDTOSCMessage_getArguments(x);
  const char *key = (SDTOSCArgumentList_getNArgs(args) &&
                     SDTOSCArgumentList_isString(args, 0))
                        ? SDTOSCArgumentList_getString(args, 0)
                        : 0;
  SDTBiquad *obj = (key) ? SDT_getBiquad(key) : 0;
  SDTOSCReturnCode return_code;
  if (obj)
    if (SDTOSCMessage_hasContainer(x)) {
      SDTOSCArgumentList *sub_args =
          SDTOSCArgumentList_copyFromTo(SDTOSCMessage_getArguments(x), 1, -1);
      char *method = SDTOSCMessage_getContainer(x);
      if (!strcmp("log", method))
        return_code = SDTOSCBiquad_log(log, key, obj);
      else if (!strcmp("save", method))
        return_code = SDTOSCBiquad_save(log, key, obj, sub_args);
      else if (!strcmp("load", method))
        return_code = SDTOSCBiquad_load(log, key, obj, sub_args);
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

SDTOSCReturnCode SDTOSCBouncing_log(void (*log)(const char *, ...),
                                    const char *key, SDTBouncing *x) {
  json_value *obj = SDTBouncing_toJSON(x);
  char *s = malloc(sizeof(char) * (strlen(key) + 32));
  sprintf(s, "sdtOSC: %s", key);
  SDTOSCReturnCode r = SDTOSCJSON_log(log, s, obj);
  free(s);
  json_builder_free(obj);
  return r;
}

SDTOSCReturnCode SDTOSCBouncing_save(void (*log)(const char *, ...),
                                     const char *key, SDTBouncing *x,
                                     const SDTOSCArgumentList *args) {
  char *name = malloc(sizeof(char) * (strlen(key) + 8));
  sprintf(name, "'%s'", key);
  json_value *obj = SDTBouncing_toJSON(x);
  SDTOSCReturnCode return_code = SDTOSCJSON_save(log, name, obj, args);
  json_builder_free(obj);
  free(name);
  return return_code;
}

SDTOSCReturnCode SDTOSCBouncing_load(void (*log)(const char *, ...),
                                     const char *key, SDTBouncing *x,
                                     const SDTOSCArgumentList *args) {
  json_value *obj;
  char *name = malloc(sizeof(char) * (strlen(key) + 8));
  sprintf(name, "'%s'", key);
  SDTOSCReturnCode return_code = SDTOSCJSON_load(log, name, &obj, args);
  free(name);
  if (return_code == SDT_OSC_RETURN_OK) {
    SDTBouncing *r = SDTBouncing_fromJSON(obj);
    SDTBouncing_copy(x, r);
    SDTBouncing_free(r);
  }
  if (obj) json_builder_free(obj);
  return return_code;
}

SDTOSCReturnCode SDTOSCBouncing_setRestitution(SDTBouncing *x,
                                               const SDTOSCArgumentList *args) {
  if (SDTOSCArgumentList_getNArgs(args) < 1 ||
      !SDTOSCArgumentList_isFloat(args, 0))
    return SDT_OSC_RETURN_ARGUMENT_ERROR;
  SDTBouncing_setRestitution(x, (double)SDTOSCArgumentList_getFloat(args, 0));
  return SDT_OSC_RETURN_OK;
}

SDTOSCReturnCode SDTOSCBouncing_setHeight(SDTBouncing *x,
                                          const SDTOSCArgumentList *args) {
  if (SDTOSCArgumentList_getNArgs(args) < 1 ||
      !SDTOSCArgumentList_isFloat(args, 0))
    return SDT_OSC_RETURN_ARGUMENT_ERROR;
  SDTBouncing_setHeight(x, (double)SDTOSCArgumentList_getFloat(args, 0));
  return SDT_OSC_RETURN_OK;
}

SDTOSCReturnCode SDTOSCBouncing_setIrregularity(
    SDTBouncing *x, const SDTOSCArgumentList *args) {
  if (SDTOSCArgumentList_getNArgs(args) < 1 ||
      !SDTOSCArgumentList_isFloat(args, 0))
    return SDT_OSC_RETURN_ARGUMENT_ERROR;
  SDTBouncing_setIrregularity(x, (double)SDTOSCArgumentList_getFloat(args, 0));
  return SDT_OSC_RETURN_OK;
}

SDTOSCReturnCode SDTOSCBouncing(void (*log)(const char *, ...),
                                const SDTOSCMessage *x) {
  SDTOSCArgumentList *args = SDTOSCMessage_getArguments(x);
  const char *key = (SDTOSCArgumentList_getNArgs(args) &&
                     SDTOSCArgumentList_isString(args, 0))
                        ? SDTOSCArgumentList_getString(args, 0)
                        : 0;
  SDTBouncing *obj = (key) ? SDT_getBouncing(key) : 0;
  SDTOSCReturnCode return_code;
  if (obj)
    if (SDTOSCMessage_hasContainer(x)) {
      SDTOSCArgumentList *sub_args =
          SDTOSCArgumentList_copyFromTo(SDTOSCMessage_getArguments(x), 1, -1);
      char *method = SDTOSCMessage_getContainer(x);
      if (!strcmp("log", method))
        return_code = SDTOSCBouncing_log(log, key, obj);
      else if (!strcmp("save", method))
        return_code = SDTOSCBouncing_save(log, key, obj, sub_args);
      else if (!strcmp("load", method))
        return_code = SDTOSCBouncing_load(log, key, obj, sub_args);
      else if (!strcmp("restitution", method))
        return_code = SDTOSCBouncing_setRestitution(obj, sub_args);
      else if (!strcmp("height", method))
        return_code = SDTOSCBouncing_setHeight(obj, sub_args);
      else if (!strcmp("irregularity", method))
        return_code = SDTOSCBouncing_setIrregularity(obj, sub_args);
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

SDTOSCReturnCode SDTOSCBreaking_log(void (*log)(const char *, ...),
                                    const char *key, SDTBreaking *x) {
  json_value *obj = SDTBreaking_toJSON(x);
  char *s = malloc(sizeof(char) * (strlen(key) + 32));
  sprintf(s, "sdtOSC: %s", key);
  SDTOSCReturnCode r = SDTOSCJSON_log(log, s, obj);
  free(s);
  json_builder_free(obj);
  return r;
}

SDTOSCReturnCode SDTOSCBreaking_save(void (*log)(const char *, ...),
                                     const char *key, SDTBreaking *x,
                                     const SDTOSCArgumentList *args) {
  char *name = malloc(sizeof(char) * (strlen(key) + 8));
  sprintf(name, "'%s'", key);
  json_value *obj = SDTBreaking_toJSON(x);
  SDTOSCReturnCode return_code = SDTOSCJSON_save(log, name, obj, args);
  json_builder_free(obj);
  free(name);
  return return_code;
}

SDTOSCReturnCode SDTOSCBreaking_load(void (*log)(const char *, ...),
                                     const char *key, SDTBreaking *x,
                                     const SDTOSCArgumentList *args) {
  json_value *obj;
  char *name = malloc(sizeof(char) * (strlen(key) + 8));
  sprintf(name, "'%s'", key);
  SDTOSCReturnCode return_code = SDTOSCJSON_load(log, name, &obj, args);
  free(name);
  if (return_code == SDT_OSC_RETURN_OK) {
    SDTBreaking *r = SDTBreaking_fromJSON(obj);
    SDTBreaking_copy(x, r);
    SDTBreaking_free(r);
  }
  if (obj) json_builder_free(obj);
  return return_code;
}

SDTOSCReturnCode SDTOSCBreaking_setStoredEnergy(
    SDTBreaking *x, const SDTOSCArgumentList *args) {
  if (SDTOSCArgumentList_getNArgs(args) < 1 ||
      !SDTOSCArgumentList_isFloat(args, 0))
    return SDT_OSC_RETURN_ARGUMENT_ERROR;
  SDTBreaking_setStoredEnergy(x, (double)SDTOSCArgumentList_getFloat(args, 0));
  return SDT_OSC_RETURN_OK;
}

SDTOSCReturnCode SDTOSCBreaking_setCrushingEnergy(
    SDTBreaking *x, const SDTOSCArgumentList *args) {
  if (SDTOSCArgumentList_getNArgs(args) < 1 ||
      !SDTOSCArgumentList_isFloat(args, 0))
    return SDT_OSC_RETURN_ARGUMENT_ERROR;
  SDTBreaking_setCrushingEnergy(x,
                                (double)SDTOSCArgumentList_getFloat(args, 0));
  return SDT_OSC_RETURN_OK;
}

SDTOSCReturnCode SDTOSCBreaking_setGranularity(SDTBreaking *x,
                                               const SDTOSCArgumentList *args) {
  if (SDTOSCArgumentList_getNArgs(args) < 1 ||
      !SDTOSCArgumentList_isFloat(args, 0))
    return SDT_OSC_RETURN_ARGUMENT_ERROR;
  SDTBreaking_setGranularity(x, (double)SDTOSCArgumentList_getFloat(args, 0));
  return SDT_OSC_RETURN_OK;
}

SDTOSCReturnCode SDTOSCBreaking_setFragmentation(
    SDTBreaking *x, const SDTOSCArgumentList *args) {
  if (SDTOSCArgumentList_getNArgs(args) < 1 ||
      !SDTOSCArgumentList_isFloat(args, 0))
    return SDT_OSC_RETURN_ARGUMENT_ERROR;
  SDTBreaking_setFragmentation(x, (double)SDTOSCArgumentList_getFloat(args, 0));
  return SDT_OSC_RETURN_OK;
}

SDTOSCReturnCode SDTOSCBreaking(void (*log)(const char *, ...),
                                const SDTOSCMessage *x) {
  SDTOSCArgumentList *args = SDTOSCMessage_getArguments(x);
  const char *key = (SDTOSCArgumentList_getNArgs(args) &&
                     SDTOSCArgumentList_isString(args, 0))
                        ? SDTOSCArgumentList_getString(args, 0)
                        : 0;
  SDTBreaking *obj = (key) ? SDT_getBreaking(key) : 0;
  SDTOSCReturnCode return_code;
  if (obj)
    if (SDTOSCMessage_hasContainer(x)) {
      SDTOSCArgumentList *sub_args =
          SDTOSCArgumentList_copyFromTo(SDTOSCMessage_getArguments(x), 1, -1);
      char *method = SDTOSCMessage_getContainer(x);
      if (!strcmp("log", method))
        return_code = SDTOSCBreaking_log(log, key, obj);
      else if (!strcmp("save", method))
        return_code = SDTOSCBreaking_save(log, key, obj, sub_args);
      else if (!strcmp("load", method))
        return_code = SDTOSCBreaking_load(log, key, obj, sub_args);
      else if (!strcmp("storedEnergy", method))
        return_code = SDTOSCBreaking_setStoredEnergy(obj, sub_args);
      else if (!strcmp("crushing", method))
        return_code = SDTOSCBreaking_setCrushingEnergy(obj, sub_args);
      else if (!strcmp("granularity", method))
        return_code = SDTOSCBreaking_setGranularity(obj, sub_args);
      else if (!strcmp("fragmentation", method))
        return_code = SDTOSCBreaking_setFragmentation(obj, sub_args);
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

SDTOSCReturnCode SDTOSCBubble_log(void (*log)(const char *, ...),
                                  const char *key, SDTBubble *x) {
  json_value *obj = SDTBubble_toJSON(x);
  char *s = malloc(sizeof(char) * (strlen(key) + 32));
  sprintf(s, "sdtOSC: %s", key);
  SDTOSCReturnCode r = SDTOSCJSON_log(log, s, obj);
  free(s);
  json_builder_free(obj);
  return r;
}

SDTOSCReturnCode SDTOSCBubble_save(void (*log)(const char *, ...),
                                   const char *key, SDTBubble *x,
                                   const SDTOSCArgumentList *args) {
  char *name = malloc(sizeof(char) * (strlen(key) + 8));
  sprintf(name, "'%s'", key);
  json_value *obj = SDTBubble_toJSON(x);
  SDTOSCReturnCode return_code = SDTOSCJSON_save(log, name, obj, args);
  json_builder_free(obj);
  free(name);
  return return_code;
}

SDTOSCReturnCode SDTOSCBubble_load(void (*log)(const char *, ...),
                                   const char *key, SDTBubble *x,
                                   const SDTOSCArgumentList *args) {
  json_value *obj;
  char *name = malloc(sizeof(char) * (strlen(key) + 8));
  sprintf(name, "'%s'", key);
  SDTOSCReturnCode return_code = SDTOSCJSON_load(log, name, &obj, args);
  free(name);
  if (return_code == SDT_OSC_RETURN_OK) {
    SDTBubble *r = SDTBubble_fromJSON(obj);
    SDTBubble_copy(x, r);
    SDTBubble_free(r);
  }
  if (obj) json_builder_free(obj);
  return return_code;
}

SDTOSCReturnCode SDTOSCBubble_setRadius(SDTBubble *x,
                                        const SDTOSCArgumentList *args) {
  if (SDTOSCArgumentList_getNArgs(args) < 1 ||
      !SDTOSCArgumentList_isFloat(args, 0))
    return SDT_OSC_RETURN_ARGUMENT_ERROR;
  SDTBubble_setRadius(x, (double)SDTOSCArgumentList_getFloat(args, 0));
  return SDT_OSC_RETURN_OK;
}

SDTOSCReturnCode SDTOSCBubble_setRiseFactor(SDTBubble *x,
                                            const SDTOSCArgumentList *args) {
  if (SDTOSCArgumentList_getNArgs(args) < 1 ||
      !SDTOSCArgumentList_isFloat(args, 0))
    return SDT_OSC_RETURN_ARGUMENT_ERROR;
  SDTBubble_setRiseFactor(x, (double)SDTOSCArgumentList_getFloat(args, 0));
  return SDT_OSC_RETURN_OK;
}

SDTOSCReturnCode SDTOSCBubble_setDepth(SDTBubble *x,
                                       const SDTOSCArgumentList *args) {
  if (SDTOSCArgumentList_getNArgs(args) < 1 ||
      !SDTOSCArgumentList_isFloat(args, 0))
    return SDT_OSC_RETURN_ARGUMENT_ERROR;
  SDTBubble_setDepth(x, (double)SDTOSCArgumentList_getFloat(args, 0));
  return SDT_OSC_RETURN_OK;
}

SDTOSCReturnCode SDTOSCBubble(void (*log)(const char *, ...),
                              const SDTOSCMessage *x) {
  SDTOSCArgumentList *args = SDTOSCMessage_getArguments(x);
  const char *key = (SDTOSCArgumentList_getNArgs(args) &&
                     SDTOSCArgumentList_isString(args, 0))
                        ? SDTOSCArgumentList_getString(args, 0)
                        : 0;
  SDTBubble *obj = (key) ? SDT_getBubble(key) : 0;
  SDTOSCReturnCode return_code;
  if (obj)
    if (SDTOSCMessage_hasContainer(x)) {
      SDTOSCArgumentList *sub_args =
          SDTOSCArgumentList_copyFromTo(SDTOSCMessage_getArguments(x), 1, -1);
      char *method = SDTOSCMessage_getContainer(x);
      if (!strcmp("log", method))
        return_code = SDTOSCBubble_log(log, key, obj);
      else if (!strcmp("save", method))
        return_code = SDTOSCBubble_save(log, key, obj, sub_args);
      else if (!strcmp("load", method))
        return_code = SDTOSCBubble_load(log, key, obj, sub_args);
      else if (!strcmp("radius", method))
        return_code = SDTOSCBubble_setRadius(obj, sub_args);
      else if (!strcmp("riseFactor", method))
        return_code = SDTOSCBubble_setRiseFactor(obj, sub_args);
      else if (!strcmp("depth", method))
        return_code = SDTOSCBubble_setDepth(obj, sub_args);
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

SDTOSCReturnCode SDTOSCCrumpling_log(void (*log)(const char *, ...),
                                     const char *key, SDTCrumpling *x) {
  json_value *obj = SDTCrumpling_toJSON(x);
  char *s = malloc(sizeof(char) * (strlen(key) + 32));
  sprintf(s, "sdtOSC: %s", key);
  SDTOSCReturnCode r = SDTOSCJSON_log(log, s, obj);
  free(s);
  json_builder_free(obj);
  return r;
}

SDTOSCReturnCode SDTOSCCrumpling_save(void (*log)(const char *, ...),
                                      const char *key, SDTCrumpling *x,
                                      const SDTOSCArgumentList *args) {
  char *name = malloc(sizeof(char) * (strlen(key) + 8));
  sprintf(name, "'%s'", key);
  json_value *obj = SDTCrumpling_toJSON(x);
  SDTOSCReturnCode return_code = SDTOSCJSON_save(log, name, obj, args);
  json_builder_free(obj);
  free(name);
  return return_code;
}

SDTOSCReturnCode SDTOSCCrumpling_load(void (*log)(const char *, ...),
                                      const char *key, SDTCrumpling *x,
                                      const SDTOSCArgumentList *args) {
  json_value *obj;
  char *name = malloc(sizeof(char) * (strlen(key) + 8));
  sprintf(name, "'%s'", key);
  SDTOSCReturnCode return_code = SDTOSCJSON_load(log, name, &obj, args);
  free(name);
  if (return_code == SDT_OSC_RETURN_OK) {
    SDTCrumpling *r = SDTCrumpling_fromJSON(obj);
    SDTCrumpling_copy(x, r);
    SDTCrumpling_free(r);
  }
  if (obj) json_builder_free(obj);
  return return_code;
}

SDTOSCReturnCode SDTOSCCrumpling_setCrushingEnergy(
    SDTCrumpling *x, const SDTOSCArgumentList *args) {
  if (SDTOSCArgumentList_getNArgs(args) < 1 ||
      !SDTOSCArgumentList_isFloat(args, 0))
    return SDT_OSC_RETURN_ARGUMENT_ERROR;
  SDTCrumpling_setCrushingEnergy(x,
                                 (double)SDTOSCArgumentList_getFloat(args, 0));
  return SDT_OSC_RETURN_OK;
}

SDTOSCReturnCode SDTOSCCrumpling_setGranularity(
    SDTCrumpling *x, const SDTOSCArgumentList *args) {
  if (SDTOSCArgumentList_getNArgs(args) < 1 ||
      !SDTOSCArgumentList_isFloat(args, 0))
    return SDT_OSC_RETURN_ARGUMENT_ERROR;
  SDTCrumpling_setGranularity(x, (double)SDTOSCArgumentList_getFloat(args, 0));
  return SDT_OSC_RETURN_OK;
}

SDTOSCReturnCode SDTOSCCrumpling_setFragmentation(
    SDTCrumpling *x, const SDTOSCArgumentList *args) {
  if (SDTOSCArgumentList_getNArgs(args) < 1 ||
      !SDTOSCArgumentList_isFloat(args, 0))
    return SDT_OSC_RETURN_ARGUMENT_ERROR;
  SDTCrumpling_setFragmentation(x,
                                (double)SDTOSCArgumentList_getFloat(args, 0));
  return SDT_OSC_RETURN_OK;
}

SDTOSCReturnCode SDTOSCCrumpling(void (*log)(const char *, ...),
                                 const SDTOSCMessage *x) {
  SDTOSCArgumentList *args = SDTOSCMessage_getArguments(x);
  const char *key = (SDTOSCArgumentList_getNArgs(args) &&
                     SDTOSCArgumentList_isString(args, 0))
                        ? SDTOSCArgumentList_getString(args, 0)
                        : 0;
  SDTCrumpling *obj = (key) ? SDT_getCrumpling(key) : 0;
  SDTOSCReturnCode return_code;
  if (obj)
    if (SDTOSCMessage_hasContainer(x)) {
      SDTOSCArgumentList *sub_args =
          SDTOSCArgumentList_copyFromTo(SDTOSCMessage_getArguments(x), 1, -1);
      char *method = SDTOSCMessage_getContainer(x);
      if (!strcmp("log", method))
        return_code = SDTOSCCrumpling_log(log, key, obj);
      else if (!strcmp("save", method))
        return_code = SDTOSCCrumpling_save(log, key, obj, sub_args);
      else if (!strcmp("load", method))
        return_code = SDTOSCCrumpling_load(log, key, obj, sub_args);
      else if (!strcmp("crushing", method))
        return_code = SDTOSCCrumpling_setCrushingEnergy(obj, sub_args);
      else if (!strcmp("granularity", method))
        return_code = SDTOSCCrumpling_setGranularity(obj, sub_args);
      else if (!strcmp("fragmentation", method))
        return_code = SDTOSCCrumpling_setFragmentation(obj, sub_args);
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

SDTOSCReturnCode SDTOSCDCMotor_log(void (*log)(const char *, ...),
                                   const char *key, SDTDCMotor *x) {
  json_value *obj = SDTDCMotor_toJSON(x);
  char *s = malloc(sizeof(char) * (strlen(key) + 32));
  sprintf(s, "sdtOSC: %s", key);
  SDTOSCReturnCode r = SDTOSCJSON_log(log, s, obj);
  free(s);
  json_builder_free(obj);
  return r;
}

SDTOSCReturnCode SDTOSCDCMotor_save(void (*log)(const char *, ...),
                                    const char *key, SDTDCMotor *x,
                                    const SDTOSCArgumentList *args) {
  char *name = malloc(sizeof(char) * (strlen(key) + 8));
  sprintf(name, "'%s'", key);
  json_value *obj = SDTDCMotor_toJSON(x);
  SDTOSCReturnCode return_code = SDTOSCJSON_save(log, name, obj, args);
  json_builder_free(obj);
  free(name);
  return return_code;
}

SDTOSCReturnCode SDTOSCDCMotor_load(void (*log)(const char *, ...),
                                    const char *key, SDTDCMotor *x,
                                    const SDTOSCArgumentList *args) {
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
  if (obj) json_builder_free(obj);
  return return_code;
}

SDTOSCReturnCode SDTOSCDCMotor_setMaxSize(SDTDCMotor *x,
                                          const SDTOSCArgumentList *args) {
  if (SDTOSCArgumentList_getNArgs(args) < 1 ||
      !SDTOSCArgumentList_isFloat(args, 0))
    return SDT_OSC_RETURN_ARGUMENT_ERROR;
  SDTDCMotor_setMaxSize(x, (long)SDTOSCArgumentList_getFloat(args, 0));
  return SDT_OSC_RETURN_OK;
}

SDTOSCReturnCode SDTOSCDCMotor_setCoils(SDTDCMotor *x,
                                        const SDTOSCArgumentList *args) {
  if (SDTOSCArgumentList_getNArgs(args) < 1 ||
      !SDTOSCArgumentList_isFloat(args, 0))
    return SDT_OSC_RETURN_ARGUMENT_ERROR;
  SDTDCMotor_setCoils(x, (long)SDTOSCArgumentList_getFloat(args, 0));
  return SDT_OSC_RETURN_OK;
}

SDTOSCReturnCode SDTOSCDCMotor_setSize(SDTDCMotor *x,
                                       const SDTOSCArgumentList *args) {
  if (SDTOSCArgumentList_getNArgs(args) < 1 ||
      !SDTOSCArgumentList_isFloat(args, 0))
    return SDT_OSC_RETURN_ARGUMENT_ERROR;
  SDTDCMotor_setSize(x, (double)SDTOSCArgumentList_getFloat(args, 0));
  return SDT_OSC_RETURN_OK;
}

SDTOSCReturnCode SDTOSCDCMotor_setReson(SDTDCMotor *x,
                                        const SDTOSCArgumentList *args) {
  if (SDTOSCArgumentList_getNArgs(args) < 1 ||
      !SDTOSCArgumentList_isFloat(args, 0))
    return SDT_OSC_RETURN_ARGUMENT_ERROR;
  SDTDCMotor_setReson(x, (double)SDTOSCArgumentList_getFloat(args, 0));
  return SDT_OSC_RETURN_OK;
}

SDTOSCReturnCode SDTOSCDCMotor_setGearRatio(SDTDCMotor *x,
                                            const SDTOSCArgumentList *args) {
  if (SDTOSCArgumentList_getNArgs(args) < 1 ||
      !SDTOSCArgumentList_isFloat(args, 0))
    return SDT_OSC_RETURN_ARGUMENT_ERROR;
  SDTDCMotor_setGearRatio(x, (double)SDTOSCArgumentList_getFloat(args, 0));
  return SDT_OSC_RETURN_OK;
}

SDTOSCReturnCode SDTOSCDCMotor_setHarshness(SDTDCMotor *x,
                                            const SDTOSCArgumentList *args) {
  if (SDTOSCArgumentList_getNArgs(args) < 1 ||
      !SDTOSCArgumentList_isFloat(args, 0))
    return SDT_OSC_RETURN_ARGUMENT_ERROR;
  SDTDCMotor_setHarshness(x, (double)SDTOSCArgumentList_getFloat(args, 0));
  return SDT_OSC_RETURN_OK;
}

SDTOSCReturnCode SDTOSCDCMotor_setRotorGain(SDTDCMotor *x,
                                            const SDTOSCArgumentList *args) {
  if (SDTOSCArgumentList_getNArgs(args) < 1 ||
      !SDTOSCArgumentList_isFloat(args, 0))
    return SDT_OSC_RETURN_ARGUMENT_ERROR;
  SDTDCMotor_setRotorGain(x, (double)SDTOSCArgumentList_getFloat(args, 0));
  return SDT_OSC_RETURN_OK;
}

SDTOSCReturnCode SDTOSCDCMotor_setGearGain(SDTDCMotor *x,
                                           const SDTOSCArgumentList *args) {
  if (SDTOSCArgumentList_getNArgs(args) < 1 ||
      !SDTOSCArgumentList_isFloat(args, 0))
    return SDT_OSC_RETURN_ARGUMENT_ERROR;
  SDTDCMotor_setGearGain(x, (double)SDTOSCArgumentList_getFloat(args, 0));
  return SDT_OSC_RETURN_OK;
}

SDTOSCReturnCode SDTOSCDCMotor_setBrushGain(SDTDCMotor *x,
                                            const SDTOSCArgumentList *args) {
  if (SDTOSCArgumentList_getNArgs(args) < 1 ||
      !SDTOSCArgumentList_isFloat(args, 0))
    return SDT_OSC_RETURN_ARGUMENT_ERROR;
  SDTDCMotor_setBrushGain(x, (double)SDTOSCArgumentList_getFloat(args, 0));
  return SDT_OSC_RETURN_OK;
}

SDTOSCReturnCode SDTOSCDCMotor_setAirGain(SDTDCMotor *x,
                                          const SDTOSCArgumentList *args) {
  if (SDTOSCArgumentList_getNArgs(args) < 1 ||
      !SDTOSCArgumentList_isFloat(args, 0))
    return SDT_OSC_RETURN_ARGUMENT_ERROR;
  SDTDCMotor_setAirGain(x, (double)SDTOSCArgumentList_getFloat(args, 0));
  return SDT_OSC_RETURN_OK;
}

SDTOSCReturnCode SDTOSCDCMotor(void (*log)(const char *, ...),
                               const SDTOSCMessage *x) {
  SDTOSCArgumentList *args = SDTOSCMessage_getArguments(x);
  const char *key = (SDTOSCArgumentList_getNArgs(args) &&
                     SDTOSCArgumentList_isString(args, 0))
                        ? SDTOSCArgumentList_getString(args, 0)
                        : 0;
  SDTDCMotor *obj = (key) ? SDT_getDCMotor(key) : 0;
  SDTOSCReturnCode return_code;
  if (obj)
    if (SDTOSCMessage_hasContainer(x)) {
      SDTOSCArgumentList *sub_args =
          SDTOSCArgumentList_copyFromTo(SDTOSCMessage_getArguments(x), 1, -1);
      char *method = SDTOSCMessage_getContainer(x);
      if (!strcmp("log", method))
        return_code = SDTOSCDCMotor_log(log, key, obj);
      else if (!strcmp("save", method))
        return_code = SDTOSCDCMotor_save(log, key, obj, sub_args);
      else if (!strcmp("load", method))
        return_code = SDTOSCDCMotor_load(log, key, obj, sub_args);
      else if (!strcmp("maxSize", method))
        return_code = SDTOSCDCMotor_setMaxSize(obj, sub_args);
      else if (!strcmp("coils", method))
        return_code = SDTOSCDCMotor_setCoils(obj, sub_args);
      else if (!strcmp("size", method))
        return_code = SDTOSCDCMotor_setSize(obj, sub_args);
      else if (!strcmp("reson", method))
        return_code = SDTOSCDCMotor_setReson(obj, sub_args);
      else if (!strcmp("gearRatio", method))
        return_code = SDTOSCDCMotor_setGearRatio(obj, sub_args);
      else if (!strcmp("harshness", method))
        return_code = SDTOSCDCMotor_setHarshness(obj, sub_args);
      else if (!strcmp("rotorGain", method))
        return_code = SDTOSCDCMotor_setRotorGain(obj, sub_args);
      else if (!strcmp("gearGain", method))
        return_code = SDTOSCDCMotor_setGearGain(obj, sub_args);
      else if (!strcmp("brushGain", method))
        return_code = SDTOSCDCMotor_setBrushGain(obj, sub_args);
      else if (!strcmp("airGain", method))
        return_code = SDTOSCDCMotor_setAirGain(obj, sub_args);
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

SDTOSCReturnCode SDTOSCDemix_log(void (*log)(const char *, ...),
                                 const char *key, SDTDemix *x) {
  json_value *obj = SDTDemix_toJSON(x);
  char *s = malloc(sizeof(char) * (strlen(key) + 32));
  sprintf(s, "sdtOSC: %s", key);
  SDTOSCReturnCode r = SDTOSCJSON_log(log, s, obj);
  free(s);
  json_builder_free(obj);
  return r;
}

SDTOSCReturnCode SDTOSCDemix_save(void (*log)(const char *, ...),
                                  const char *key, SDTDemix *x,
                                  const SDTOSCArgumentList *args) {
  char *name = malloc(sizeof(char) * (strlen(key) + 8));
  sprintf(name, "'%s'", key);
  json_value *obj = SDTDemix_toJSON(x);
  SDTOSCReturnCode return_code = SDTOSCJSON_save(log, name, obj, args);
  json_builder_free(obj);
  free(name);
  return return_code;
}

SDTOSCReturnCode SDTOSCDemix_load(void (*log)(const char *, ...),
                                  const char *key, SDTDemix *x,
                                  const SDTOSCArgumentList *args) {
  json_value *obj;
  char *name = malloc(sizeof(char) * (strlen(key) + 8));
  sprintf(name, "'%s'", key);
  SDTOSCReturnCode return_code = SDTOSCJSON_load(log, name, &obj, args);
  free(name);
  if (return_code == SDT_OSC_RETURN_OK) {
    SDTDemix *r = SDTDemix_fromJSON(obj);
    SDTDemix_copy(x, r);
    SDTDemix_free(r);
  }
  if (obj) json_builder_free(obj);
  return return_code;
}

SDTOSCReturnCode SDTOSCDemix_setSize(SDTDemix *x,
                                     const SDTOSCArgumentList *args) {
  if (SDTOSCArgumentList_getNArgs(args) < 1 ||
      !SDTOSCArgumentList_isFloat(args, 0))
    return SDT_OSC_RETURN_ARGUMENT_ERROR;
  SDTDemix_setSize(x, (int)SDTOSCArgumentList_getFloat(args, 0));
  return SDT_OSC_RETURN_OK;
}

SDTOSCReturnCode SDTOSCDemix_setRadius(SDTDemix *x,
                                       const SDTOSCArgumentList *args) {
  if (SDTOSCArgumentList_getNArgs(args) < 1 ||
      !SDTOSCArgumentList_isFloat(args, 0))
    return SDT_OSC_RETURN_ARGUMENT_ERROR;
  SDTDemix_setRadius(x, (int)SDTOSCArgumentList_getFloat(args, 0));
  return SDT_OSC_RETURN_OK;
}

SDTOSCReturnCode SDTOSCDemix_setOverlap(SDTDemix *x,
                                        const SDTOSCArgumentList *args) {
  if (SDTOSCArgumentList_getNArgs(args) < 1 ||
      !SDTOSCArgumentList_isFloat(args, 0))
    return SDT_OSC_RETURN_ARGUMENT_ERROR;
  SDTDemix_setOverlap(x, (double)SDTOSCArgumentList_getFloat(args, 0));
  return SDT_OSC_RETURN_OK;
}

SDTOSCReturnCode SDTOSCDemix_setNoiseThreshold(SDTDemix *x,
                                               const SDTOSCArgumentList *args) {
  if (SDTOSCArgumentList_getNArgs(args) < 1 ||
      !SDTOSCArgumentList_isFloat(args, 0))
    return SDT_OSC_RETURN_ARGUMENT_ERROR;
  SDTDemix_setNoiseThreshold(x, (double)SDTOSCArgumentList_getFloat(args, 0));
  return SDT_OSC_RETURN_OK;
}

SDTOSCReturnCode SDTOSCDemix_setTonalThreshold(SDTDemix *x,
                                               const SDTOSCArgumentList *args) {
  if (SDTOSCArgumentList_getNArgs(args) < 1 ||
      !SDTOSCArgumentList_isFloat(args, 0))
    return SDT_OSC_RETURN_ARGUMENT_ERROR;
  SDTDemix_setTonalThreshold(x, (double)SDTOSCArgumentList_getFloat(args, 0));
  return SDT_OSC_RETURN_OK;
}

SDTOSCReturnCode SDTOSCDemix(void (*log)(const char *, ...),
                             const SDTOSCMessage *x) {
  SDTOSCArgumentList *args = SDTOSCMessage_getArguments(x);
  const char *key = (SDTOSCArgumentList_getNArgs(args) &&
                     SDTOSCArgumentList_isString(args, 0))
                        ? SDTOSCArgumentList_getString(args, 0)
                        : 0;
  SDTDemix *obj = (key) ? SDT_getDemix(key) : 0;
  SDTOSCReturnCode return_code;
  if (obj)
    if (SDTOSCMessage_hasContainer(x)) {
      SDTOSCArgumentList *sub_args =
          SDTOSCArgumentList_copyFromTo(SDTOSCMessage_getArguments(x), 1, -1);
      char *method = SDTOSCMessage_getContainer(x);
      if (!strcmp("log", method))
        return_code = SDTOSCDemix_log(log, key, obj);
      else if (!strcmp("save", method))
        return_code = SDTOSCDemix_save(log, key, obj, sub_args);
      else if (!strcmp("load", method))
        return_code = SDTOSCDemix_load(log, key, obj, sub_args);
      else if (!strcmp("size", method))
        return_code = SDTOSCDemix_setSize(obj, sub_args);
      else if (!strcmp("radius", method))
        return_code = SDTOSCDemix_setRadius(obj, sub_args);
      else if (!strcmp("overlap", method))
        return_code = SDTOSCDemix_setOverlap(obj, sub_args);
      else if (!strcmp("noiseThreshold", method))
        return_code = SDTOSCDemix_setNoiseThreshold(obj, sub_args);
      else if (!strcmp("tonalThreshold", method))
        return_code = SDTOSCDemix_setTonalThreshold(obj, sub_args);
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

SDTOSCReturnCode SDTOSCEnvelope_log(void (*log)(const char *, ...),
                                    const char *key, SDTEnvelope *x) {
  json_value *obj = SDTEnvelope_toJSON(x);
  char *s = malloc(sizeof(char) * (strlen(key) + 32));
  sprintf(s, "sdtOSC: %s", key);
  SDTOSCReturnCode r = SDTOSCJSON_log(log, s, obj);
  free(s);
  json_builder_free(obj);
  return r;
}

SDTOSCReturnCode SDTOSCEnvelope_save(void (*log)(const char *, ...),
                                     const char *key, SDTEnvelope *x,
                                     const SDTOSCArgumentList *args) {
  char *name = malloc(sizeof(char) * (strlen(key) + 8));
  sprintf(name, "'%s'", key);
  json_value *obj = SDTEnvelope_toJSON(x);
  SDTOSCReturnCode return_code = SDTOSCJSON_save(log, name, obj, args);
  json_builder_free(obj);
  free(name);
  return return_code;
}

SDTOSCReturnCode SDTOSCEnvelope_load(void (*log)(const char *, ...),
                                     const char *key, SDTEnvelope *x,
                                     const SDTOSCArgumentList *args) {
  json_value *obj;
  char *name = malloc(sizeof(char) * (strlen(key) + 8));
  sprintf(name, "'%s'", key);
  SDTOSCReturnCode return_code = SDTOSCJSON_load(log, name, &obj, args);
  free(name);
  if (return_code == SDT_OSC_RETURN_OK) {
    SDTEnvelope *r = SDTEnvelope_fromJSON(obj);
    SDTEnvelope_copy(x, r);
    SDTEnvelope_free(r);
  }
  if (obj) json_builder_free(obj);
  return return_code;
}

SDTOSCReturnCode SDTOSCEnvelope_setAttack(SDTEnvelope *x,
                                          const SDTOSCArgumentList *args) {
  if (SDTOSCArgumentList_getNArgs(args) < 1 ||
      !SDTOSCArgumentList_isFloat(args, 0))
    return SDT_OSC_RETURN_ARGUMENT_ERROR;
  SDTEnvelope_setAttack(x, (double)SDTOSCArgumentList_getFloat(args, 0));
  return SDT_OSC_RETURN_OK;
}

SDTOSCReturnCode SDTOSCEnvelope_setRelease(SDTEnvelope *x,
                                           const SDTOSCArgumentList *args) {
  if (SDTOSCArgumentList_getNArgs(args) < 1 ||
      !SDTOSCArgumentList_isFloat(args, 0))
    return SDT_OSC_RETURN_ARGUMENT_ERROR;
  SDTEnvelope_setRelease(x, (double)SDTOSCArgumentList_getFloat(args, 0));
  return SDT_OSC_RETURN_OK;
}

SDTOSCReturnCode SDTOSCEnvelope(void (*log)(const char *, ...),
                                const SDTOSCMessage *x) {
  SDTOSCArgumentList *args = SDTOSCMessage_getArguments(x);
  const char *key = (SDTOSCArgumentList_getNArgs(args) &&
                     SDTOSCArgumentList_isString(args, 0))
                        ? SDTOSCArgumentList_getString(args, 0)
                        : 0;
  SDTEnvelope *obj = (key) ? SDT_getEnvelope(key) : 0;
  SDTOSCReturnCode return_code;
  if (obj)
    if (SDTOSCMessage_hasContainer(x)) {
      SDTOSCArgumentList *sub_args =
          SDTOSCArgumentList_copyFromTo(SDTOSCMessage_getArguments(x), 1, -1);
      char *method = SDTOSCMessage_getContainer(x);
      if (!strcmp("log", method))
        return_code = SDTOSCEnvelope_log(log, key, obj);
      else if (!strcmp("save", method))
        return_code = SDTOSCEnvelope_save(log, key, obj, sub_args);
      else if (!strcmp("load", method))
        return_code = SDTOSCEnvelope_load(log, key, obj, sub_args);
      else if (!strcmp("attack", method))
        return_code = SDTOSCEnvelope_setAttack(obj, sub_args);
      else if (!strcmp("release", method))
        return_code = SDTOSCEnvelope_setRelease(obj, sub_args);
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

SDTOSCReturnCode SDTOSCExplosion_log(void (*log)(const char *, ...),
                                     const char *key, SDTExplosion *x) {
  json_value *obj = SDTExplosion_toJSON(x);
  char *s = malloc(sizeof(char) * (strlen(key) + 32));
  sprintf(s, "sdtOSC: %s", key);
  SDTOSCReturnCode r = SDTOSCJSON_log(log, s, obj);
  free(s);
  json_builder_free(obj);
  return r;
}

SDTOSCReturnCode SDTOSCExplosion_save(void (*log)(const char *, ...),
                                      const char *key, SDTExplosion *x,
                                      const SDTOSCArgumentList *args) {
  char *name = malloc(sizeof(char) * (strlen(key) + 8));
  sprintf(name, "'%s'", key);
  json_value *obj = SDTExplosion_toJSON(x);
  SDTOSCReturnCode return_code = SDTOSCJSON_save(log, name, obj, args);
  json_builder_free(obj);
  free(name);
  return return_code;
}

SDTOSCReturnCode SDTOSCExplosion_load(void (*log)(const char *, ...),
                                      const char *key, SDTExplosion *x,
                                      const SDTOSCArgumentList *args) {
  json_value *obj;
  char *name = malloc(sizeof(char) * (strlen(key) + 8));
  sprintf(name, "'%s'", key);
  SDTOSCReturnCode return_code = SDTOSCJSON_load(log, name, &obj, args);
  free(name);
  if (return_code == SDT_OSC_RETURN_OK) {
    SDTExplosion *r = SDTExplosion_fromJSON(obj);
    SDTExplosion_copy(x, r);
    SDTExplosion_free(r);
  }
  if (obj) json_builder_free(obj);
  return return_code;
}

SDTOSCReturnCode SDTOSCExplosion_setMaxScatter(SDTExplosion *x,
                                               const SDTOSCArgumentList *args) {
  if (SDTOSCArgumentList_getNArgs(args) < 1 ||
      !SDTOSCArgumentList_isFloat(args, 0))
    return SDT_OSC_RETURN_ARGUMENT_ERROR;
  SDTExplosion_setMaxScatter(x, (long)SDTOSCArgumentList_getFloat(args, 0));
  return SDT_OSC_RETURN_OK;
}

SDTOSCReturnCode SDTOSCExplosion_setMaxDelay(SDTExplosion *x,
                                             const SDTOSCArgumentList *args) {
  if (SDTOSCArgumentList_getNArgs(args) < 1 ||
      !SDTOSCArgumentList_isFloat(args, 0))
    return SDT_OSC_RETURN_ARGUMENT_ERROR;
  SDTExplosion_setMaxDelay(x, (long)SDTOSCArgumentList_getFloat(args, 0));
  return SDT_OSC_RETURN_OK;
}

SDTOSCReturnCode SDTOSCExplosion_setBlastTime(SDTExplosion *x,
                                              const SDTOSCArgumentList *args) {
  if (SDTOSCArgumentList_getNArgs(args) < 1 ||
      !SDTOSCArgumentList_isFloat(args, 0))
    return SDT_OSC_RETURN_ARGUMENT_ERROR;
  SDTExplosion_setBlastTime(x, (double)SDTOSCArgumentList_getFloat(args, 0));
  return SDT_OSC_RETURN_OK;
}

SDTOSCReturnCode SDTOSCExplosion_setScatterTime(
    SDTExplosion *x, const SDTOSCArgumentList *args) {
  if (SDTOSCArgumentList_getNArgs(args) < 1 ||
      !SDTOSCArgumentList_isFloat(args, 0))
    return SDT_OSC_RETURN_ARGUMENT_ERROR;
  SDTExplosion_setScatterTime(x, (double)SDTOSCArgumentList_getFloat(args, 0));
  return SDT_OSC_RETURN_OK;
}

SDTOSCReturnCode SDTOSCExplosion_setDispersion(SDTExplosion *x,
                                               const SDTOSCArgumentList *args) {
  if (SDTOSCArgumentList_getNArgs(args) < 1 ||
      !SDTOSCArgumentList_isFloat(args, 0))
    return SDT_OSC_RETURN_ARGUMENT_ERROR;
  SDTExplosion_setDispersion(x, (double)SDTOSCArgumentList_getFloat(args, 0));
  return SDT_OSC_RETURN_OK;
}

SDTOSCReturnCode SDTOSCExplosion_setDistance(SDTExplosion *x,
                                             const SDTOSCArgumentList *args) {
  if (SDTOSCArgumentList_getNArgs(args) < 1 ||
      !SDTOSCArgumentList_isFloat(args, 0))
    return SDT_OSC_RETURN_ARGUMENT_ERROR;
  SDTExplosion_setDistance(x, (double)SDTOSCArgumentList_getFloat(args, 0));
  return SDT_OSC_RETURN_OK;
}

SDTOSCReturnCode SDTOSCExplosion_setWaveSpeed(SDTExplosion *x,
                                              const SDTOSCArgumentList *args) {
  if (SDTOSCArgumentList_getNArgs(args) < 1 ||
      !SDTOSCArgumentList_isFloat(args, 0))
    return SDT_OSC_RETURN_ARGUMENT_ERROR;
  SDTExplosion_setWaveSpeed(x, (double)SDTOSCArgumentList_getFloat(args, 0));
  return SDT_OSC_RETURN_OK;
}

SDTOSCReturnCode SDTOSCExplosion_setWindSpeed(SDTExplosion *x,
                                              const SDTOSCArgumentList *args) {
  if (SDTOSCArgumentList_getNArgs(args) < 1 ||
      !SDTOSCArgumentList_isFloat(args, 0))
    return SDT_OSC_RETURN_ARGUMENT_ERROR;
  SDTExplosion_setWindSpeed(x, (double)SDTOSCArgumentList_getFloat(args, 0));
  return SDT_OSC_RETURN_OK;
}

SDTOSCReturnCode SDTOSCExplosion(void (*log)(const char *, ...),
                                 const SDTOSCMessage *x) {
  SDTOSCArgumentList *args = SDTOSCMessage_getArguments(x);
  const char *key = (SDTOSCArgumentList_getNArgs(args) &&
                     SDTOSCArgumentList_isString(args, 0))
                        ? SDTOSCArgumentList_getString(args, 0)
                        : 0;
  SDTExplosion *obj = (key) ? SDT_getExplosion(key) : 0;
  SDTOSCReturnCode return_code;
  if (obj)
    if (SDTOSCMessage_hasContainer(x)) {
      SDTOSCArgumentList *sub_args =
          SDTOSCArgumentList_copyFromTo(SDTOSCMessage_getArguments(x), 1, -1);
      char *method = SDTOSCMessage_getContainer(x);
      if (!strcmp("log", method))
        return_code = SDTOSCExplosion_log(log, key, obj);
      else if (!strcmp("save", method))
        return_code = SDTOSCExplosion_save(log, key, obj, sub_args);
      else if (!strcmp("load", method))
        return_code = SDTOSCExplosion_load(log, key, obj, sub_args);
      else if (!strcmp("maxScatter", method))
        return_code = SDTOSCExplosion_setMaxScatter(obj, sub_args);
      else if (!strcmp("maxDelay", method))
        return_code = SDTOSCExplosion_setMaxDelay(obj, sub_args);
      else if (!strcmp("blastTime", method))
        return_code = SDTOSCExplosion_setBlastTime(obj, sub_args);
      else if (!strcmp("scatterTime", method))
        return_code = SDTOSCExplosion_setScatterTime(obj, sub_args);
      else if (!strcmp("dispersion", method))
        return_code = SDTOSCExplosion_setDispersion(obj, sub_args);
      else if (!strcmp("distance", method))
        return_code = SDTOSCExplosion_setDistance(obj, sub_args);
      else if (!strcmp("waveSpeed", method))
        return_code = SDTOSCExplosion_setWaveSpeed(obj, sub_args);
      else if (!strcmp("windSpeed", method))
        return_code = SDTOSCExplosion_setWindSpeed(obj, sub_args);
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

SDTOSCReturnCode SDTOSCFluidFlow_log(void (*log)(const char *, ...),
                                     const char *key, SDTFluidFlow *x) {
  json_value *obj = SDTFluidFlow_toJSON(x);
  char *s = malloc(sizeof(char) * (strlen(key) + 32));
  sprintf(s, "sdtOSC: %s", key);
  SDTOSCReturnCode r = SDTOSCJSON_log(log, s, obj);
  free(s);
  json_builder_free(obj);
  return r;
}

SDTOSCReturnCode SDTOSCFluidFlow_save(void (*log)(const char *, ...),
                                      const char *key, SDTFluidFlow *x,
                                      const SDTOSCArgumentList *args) {
  char *name = malloc(sizeof(char) * (strlen(key) + 8));
  sprintf(name, "'%s'", key);
  json_value *obj = SDTFluidFlow_toJSON(x);
  SDTOSCReturnCode return_code = SDTOSCJSON_save(log, name, obj, args);
  json_builder_free(obj);
  free(name);
  return return_code;
}

SDTOSCReturnCode SDTOSCFluidFlow_load(void (*log)(const char *, ...),
                                      const char *key, SDTFluidFlow *x,
                                      const SDTOSCArgumentList *args) {
  json_value *obj;
  char *name = malloc(sizeof(char) * (strlen(key) + 8));
  sprintf(name, "'%s'", key);
  SDTOSCReturnCode return_code = SDTOSCJSON_load(log, name, &obj, args);
  free(name);
  if (return_code == SDT_OSC_RETURN_OK) {
    SDTFluidFlow *r = SDTFluidFlow_fromJSON(obj);
    SDTFluidFlow_copy(x, r);
    SDTFluidFlow_free(r);
  }
  if (obj) json_builder_free(obj);
  return return_code;
}

SDTOSCReturnCode SDTOSCFluidFlow_setNBubbles(SDTFluidFlow *x,
                                             const SDTOSCArgumentList *args) {
  if (SDTOSCArgumentList_getNArgs(args) < 1 ||
      !SDTOSCArgumentList_isFloat(args, 0))
    return SDT_OSC_RETURN_ARGUMENT_ERROR;
  SDTFluidFlow_setNBubbles(x, (int)SDTOSCArgumentList_getFloat(args, 0));
  return SDT_OSC_RETURN_OK;
}

SDTOSCReturnCode SDTOSCFluidFlow_setAvgRate(SDTFluidFlow *x,
                                            const SDTOSCArgumentList *args) {
  if (SDTOSCArgumentList_getNArgs(args) < 1 ||
      !SDTOSCArgumentList_isFloat(args, 0))
    return SDT_OSC_RETURN_ARGUMENT_ERROR;
  SDTFluidFlow_setAvgRate(x, (double)SDTOSCArgumentList_getFloat(args, 0));
  return SDT_OSC_RETURN_OK;
}

SDTOSCReturnCode SDTOSCFluidFlow_setMinRadius(SDTFluidFlow *x,
                                              const SDTOSCArgumentList *args) {
  if (SDTOSCArgumentList_getNArgs(args) < 1 ||
      !SDTOSCArgumentList_isFloat(args, 0))
    return SDT_OSC_RETURN_ARGUMENT_ERROR;
  SDTFluidFlow_setMinRadius(x, (double)SDTOSCArgumentList_getFloat(args, 0));
  return SDT_OSC_RETURN_OK;
}

SDTOSCReturnCode SDTOSCFluidFlow_setMaxRadius(SDTFluidFlow *x,
                                              const SDTOSCArgumentList *args) {
  if (SDTOSCArgumentList_getNArgs(args) < 1 ||
      !SDTOSCArgumentList_isFloat(args, 0))
    return SDT_OSC_RETURN_ARGUMENT_ERROR;
  SDTFluidFlow_setMaxRadius(x, (double)SDTOSCArgumentList_getFloat(args, 0));
  return SDT_OSC_RETURN_OK;
}

SDTOSCReturnCode SDTOSCFluidFlow_setExpRadius(SDTFluidFlow *x,
                                              const SDTOSCArgumentList *args) {
  if (SDTOSCArgumentList_getNArgs(args) < 1 ||
      !SDTOSCArgumentList_isFloat(args, 0))
    return SDT_OSC_RETURN_ARGUMENT_ERROR;
  SDTFluidFlow_setExpRadius(x, (double)SDTOSCArgumentList_getFloat(args, 0));
  return SDT_OSC_RETURN_OK;
}

SDTOSCReturnCode SDTOSCFluidFlow_setMinDepth(SDTFluidFlow *x,
                                             const SDTOSCArgumentList *args) {
  if (SDTOSCArgumentList_getNArgs(args) < 1 ||
      !SDTOSCArgumentList_isFloat(args, 0))
    return SDT_OSC_RETURN_ARGUMENT_ERROR;
  SDTFluidFlow_setMinDepth(x, (double)SDTOSCArgumentList_getFloat(args, 0));
  return SDT_OSC_RETURN_OK;
}

SDTOSCReturnCode SDTOSCFluidFlow_setMaxDepth(SDTFluidFlow *x,
                                             const SDTOSCArgumentList *args) {
  if (SDTOSCArgumentList_getNArgs(args) < 1 ||
      !SDTOSCArgumentList_isFloat(args, 0))
    return SDT_OSC_RETURN_ARGUMENT_ERROR;
  SDTFluidFlow_setMaxDepth(x, (double)SDTOSCArgumentList_getFloat(args, 0));
  return SDT_OSC_RETURN_OK;
}

SDTOSCReturnCode SDTOSCFluidFlow_setExpDepth(SDTFluidFlow *x,
                                             const SDTOSCArgumentList *args) {
  if (SDTOSCArgumentList_getNArgs(args) < 1 ||
      !SDTOSCArgumentList_isFloat(args, 0))
    return SDT_OSC_RETURN_ARGUMENT_ERROR;
  SDTFluidFlow_setExpDepth(x, (double)SDTOSCArgumentList_getFloat(args, 0));
  return SDT_OSC_RETURN_OK;
}

SDTOSCReturnCode SDTOSCFluidFlow_setRiseFactor(SDTFluidFlow *x,
                                               const SDTOSCArgumentList *args) {
  if (SDTOSCArgumentList_getNArgs(args) < 1 ||
      !SDTOSCArgumentList_isFloat(args, 0))
    return SDT_OSC_RETURN_ARGUMENT_ERROR;
  SDTFluidFlow_setRiseFactor(x, (double)SDTOSCArgumentList_getFloat(args, 0));
  return SDT_OSC_RETURN_OK;
}

SDTOSCReturnCode SDTOSCFluidFlow_setRiseCutoff(SDTFluidFlow *x,
                                               const SDTOSCArgumentList *args) {
  if (SDTOSCArgumentList_getNArgs(args) < 1 ||
      !SDTOSCArgumentList_isFloat(args, 0))
    return SDT_OSC_RETURN_ARGUMENT_ERROR;
  SDTFluidFlow_setRiseCutoff(x, (double)SDTOSCArgumentList_getFloat(args, 0));
  return SDT_OSC_RETURN_OK;
}

SDTOSCReturnCode SDTOSCFluidFlow(void (*log)(const char *, ...),
                                 const SDTOSCMessage *x) {
  SDTOSCArgumentList *args = SDTOSCMessage_getArguments(x);
  const char *key = (SDTOSCArgumentList_getNArgs(args) &&
                     SDTOSCArgumentList_isString(args, 0))
                        ? SDTOSCArgumentList_getString(args, 0)
                        : 0;
  SDTFluidFlow *obj = (key) ? SDT_getFluidFlow(key) : 0;
  SDTOSCReturnCode return_code;
  if (obj)
    if (SDTOSCMessage_hasContainer(x)) {
      SDTOSCArgumentList *sub_args =
          SDTOSCArgumentList_copyFromTo(SDTOSCMessage_getArguments(x), 1, -1);
      char *method = SDTOSCMessage_getContainer(x);
      if (!strcmp("log", method))
        return_code = SDTOSCFluidFlow_log(log, key, obj);
      else if (!strcmp("save", method))
        return_code = SDTOSCFluidFlow_save(log, key, obj, sub_args);
      else if (!strcmp("load", method))
        return_code = SDTOSCFluidFlow_load(log, key, obj, sub_args);
      else if (!strcmp("nBubbles", method))
        return_code = SDTOSCFluidFlow_setNBubbles(obj, sub_args);
      else if (!strcmp("avgRate", method))
        return_code = SDTOSCFluidFlow_setAvgRate(obj, sub_args);
      else if (!strcmp("minRadius", method))
        return_code = SDTOSCFluidFlow_setMinRadius(obj, sub_args);
      else if (!strcmp("maxRadius", method))
        return_code = SDTOSCFluidFlow_setMaxRadius(obj, sub_args);
      else if (!strcmp("expRadius", method))
        return_code = SDTOSCFluidFlow_setExpRadius(obj, sub_args);
      else if (!strcmp("minDepth", method))
        return_code = SDTOSCFluidFlow_setMinDepth(obj, sub_args);
      else if (!strcmp("maxDepth", method))
        return_code = SDTOSCFluidFlow_setMaxDepth(obj, sub_args);
      else if (!strcmp("expDepth", method))
        return_code = SDTOSCFluidFlow_setExpDepth(obj, sub_args);
      else if (!strcmp("riseFactor", method))
        return_code = SDTOSCFluidFlow_setRiseFactor(obj, sub_args);
      else if (!strcmp("riseCutoff", method))
        return_code = SDTOSCFluidFlow_setRiseCutoff(obj, sub_args);
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

SDTOSCReturnCode SDTOSCModalTracker_log(void (*log)(const char *, ...),
                                        const char *key, SDTModalTracker *x) {
  json_value *obj = SDTModalTracker_toJSON(x);
  char *s = malloc(sizeof(char) * (strlen(key) + 32));
  sprintf(s, "sdtOSC: %s", key);
  SDTOSCReturnCode r = SDTOSCJSON_log(log, s, obj);
  free(s);
  json_builder_free(obj);
  return r;
}

SDTOSCReturnCode SDTOSCModalTracker_save(void (*log)(const char *, ...),
                                         const char *key, SDTModalTracker *x,
                                         const SDTOSCArgumentList *args) {
  char *name = malloc(sizeof(char) * (strlen(key) + 8));
  sprintf(name, "'%s'", key);
  json_value *obj = SDTModalTracker_toJSON(x);
  SDTOSCReturnCode return_code = SDTOSCJSON_save(log, name, obj, args);
  json_builder_free(obj);
  free(name);
  return return_code;
}

SDTOSCReturnCode SDTOSCModalTracker_load(void (*log)(const char *, ...),
                                         const char *key, SDTModalTracker *x,
                                         const SDTOSCArgumentList *args) {
  json_value *obj;
  char *name = malloc(sizeof(char) * (strlen(key) + 8));
  sprintf(name, "'%s'", key);
  SDTOSCReturnCode return_code = SDTOSCJSON_load(log, name, &obj, args);
  free(name);
  if (return_code == SDT_OSC_RETURN_OK) {
    SDTModalTracker *r = SDTModalTracker_fromJSON(obj);
    SDTModalTracker_copy(x, r);
    SDTModalTracker_free(r);
  }
  if (obj) json_builder_free(obj);
  return return_code;
}

SDTOSCReturnCode SDTOSCModalTracker_setNModes(SDTModalTracker *x,
                                              const SDTOSCArgumentList *args) {
  if (SDTOSCArgumentList_getNArgs(args) < 1 ||
      !SDTOSCArgumentList_isFloat(args, 0))
    return SDT_OSC_RETURN_ARGUMENT_ERROR;
  SDTModalTracker_setNModes(x, (long)SDTOSCArgumentList_getFloat(args, 0));
  return SDT_OSC_RETURN_OK;
}

SDTOSCReturnCode SDTOSCModalTracker_setBufferSize(
    SDTModalTracker *x, const SDTOSCArgumentList *args) {
  if (SDTOSCArgumentList_getNArgs(args) < 1 ||
      !SDTOSCArgumentList_isFloat(args, 0))
    return SDT_OSC_RETURN_ARGUMENT_ERROR;
  SDTModalTracker_setBufferSize(x, (long)SDTOSCArgumentList_getFloat(args, 0));
  return SDT_OSC_RETURN_OK;
}

SDTOSCReturnCode SDTOSCModalTracker_setWinSize(SDTModalTracker *x,
                                               const SDTOSCArgumentList *args) {
  if (SDTOSCArgumentList_getNArgs(args) < 1 ||
      !SDTOSCArgumentList_isFloat(args, 0))
    return SDT_OSC_RETURN_ARGUMENT_ERROR;
  SDTModalTracker_setWinSize(x, (long)SDTOSCArgumentList_getFloat(args, 0));
  return SDT_OSC_RETURN_OK;
}

SDTOSCReturnCode SDTOSCModalTracker_setOverlap(SDTModalTracker *x,
                                               const SDTOSCArgumentList *args) {
  if (SDTOSCArgumentList_getNArgs(args) < 1 ||
      !SDTOSCArgumentList_isFloat(args, 0))
    return SDT_OSC_RETURN_ARGUMENT_ERROR;
  SDTModalTracker_setOverlap(x, (double)SDTOSCArgumentList_getFloat(args, 0));
  return SDT_OSC_RETURN_OK;
}

SDTOSCReturnCode SDTOSCModalTracker(void (*log)(const char *, ...),
                                    const SDTOSCMessage *x) {
  SDTOSCArgumentList *args = SDTOSCMessage_getArguments(x);
  const char *key = (SDTOSCArgumentList_getNArgs(args) &&
                     SDTOSCArgumentList_isString(args, 0))
                        ? SDTOSCArgumentList_getString(args, 0)
                        : 0;
  SDTModalTracker *obj = (key) ? SDT_getModalTracker(key) : 0;
  SDTOSCReturnCode return_code;
  if (obj)
    if (SDTOSCMessage_hasContainer(x)) {
      SDTOSCArgumentList *sub_args =
          SDTOSCArgumentList_copyFromTo(SDTOSCMessage_getArguments(x), 1, -1);
      char *method = SDTOSCMessage_getContainer(x);
      if (!strcmp("log", method))
        return_code = SDTOSCModalTracker_log(log, key, obj);
      else if (!strcmp("save", method))
        return_code = SDTOSCModalTracker_save(log, key, obj, sub_args);
      else if (!strcmp("load", method))
        return_code = SDTOSCModalTracker_load(log, key, obj, sub_args);
      else if (!strcmp("nModes", method))
        return_code = SDTOSCModalTracker_setNModes(obj, sub_args);
      else if (!strcmp("bufferSize", method))
        return_code = SDTOSCModalTracker_setBufferSize(obj, sub_args);
      else if (!strcmp("winSize", method))
        return_code = SDTOSCModalTracker_setWinSize(obj, sub_args);
      else if (!strcmp("overlap", method))
        return_code = SDTOSCModalTracker_setOverlap(obj, sub_args);
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

SDTOSCReturnCode SDTOSCMotor_log(void (*log)(const char *, ...),
                                 const char *key, SDTMotor *x) {
  json_value *obj = SDTMotor_toJSON(x);
  char *s = malloc(sizeof(char) * (strlen(key) + 32));
  sprintf(s, "sdtOSC: %s", key);
  SDTOSCReturnCode r = SDTOSCJSON_log(log, s, obj);
  free(s);
  json_builder_free(obj);
  return r;
}

SDTOSCReturnCode SDTOSCMotor_save(void (*log)(const char *, ...),
                                  const char *key, SDTMotor *x,
                                  const SDTOSCArgumentList *args) {
  char *name = malloc(sizeof(char) * (strlen(key) + 8));
  sprintf(name, "'%s'", key);
  json_value *obj = SDTMotor_toJSON(x);
  SDTOSCReturnCode return_code = SDTOSCJSON_save(log, name, obj, args);
  json_builder_free(obj);
  free(name);
  return return_code;
}

SDTOSCReturnCode SDTOSCMotor_load(void (*log)(const char *, ...),
                                  const char *key, SDTMotor *x,
                                  const SDTOSCArgumentList *args) {
  json_value *obj;
  char *name = malloc(sizeof(char) * (strlen(key) + 8));
  sprintf(name, "'%s'", key);
  SDTOSCReturnCode return_code = SDTOSCJSON_load(log, name, &obj, args);
  free(name);
  if (return_code == SDT_OSC_RETURN_OK) {
    SDTMotor *r = SDTMotor_fromJSON(obj);
    SDTMotor_copy(x, r);
    SDTMotor_free(r);
  }
  if (obj) json_builder_free(obj);
  return return_code;
}

SDTOSCReturnCode SDTOSCMotor_setMaxDelay(SDTMotor *x,
                                         const SDTOSCArgumentList *args) {
  if (SDTOSCArgumentList_getNArgs(args) < 1 ||
      !SDTOSCArgumentList_isFloat(args, 0))
    return SDT_OSC_RETURN_ARGUMENT_ERROR;
  SDTMotor_setMaxDelay(x, (long)SDTOSCArgumentList_getFloat(args, 0));
  return SDT_OSC_RETURN_OK;
}

SDTOSCReturnCode SDTOSCMotor_setCycle(SDTMotor *x,
                                      const SDTOSCArgumentList *args) {
  if (SDTOSCArgumentList_getNArgs(args) < 1 ||
      !SDTOSCArgumentList_isFloat(args, 0))
    return SDT_OSC_RETURN_ARGUMENT_ERROR;
  SDTMotor_setCycle(x, (double)SDTOSCArgumentList_getFloat(args, 0));
  return SDT_OSC_RETURN_OK;
}

SDTOSCReturnCode SDTOSCMotor_setNCylinders(SDTMotor *x,
                                           const SDTOSCArgumentList *args) {
  if (SDTOSCArgumentList_getNArgs(args) < 1 ||
      !SDTOSCArgumentList_isFloat(args, 0))
    return SDT_OSC_RETURN_ARGUMENT_ERROR;
  SDTMotor_setNCylinders(x, (int)SDTOSCArgumentList_getFloat(args, 0));
  return SDT_OSC_RETURN_OK;
}

SDTOSCReturnCode SDTOSCMotor_setCylinderSize(SDTMotor *x,
                                             const SDTOSCArgumentList *args) {
  if (SDTOSCArgumentList_getNArgs(args) < 1 ||
      !SDTOSCArgumentList_isFloat(args, 0))
    return SDT_OSC_RETURN_ARGUMENT_ERROR;
  SDTMotor_setCylinderSize(x, (double)SDTOSCArgumentList_getFloat(args, 0));
  return SDT_OSC_RETURN_OK;
}

SDTOSCReturnCode SDTOSCMotor_setCompressionRatio(
    SDTMotor *x, const SDTOSCArgumentList *args) {
  if (SDTOSCArgumentList_getNArgs(args) < 1 ||
      !SDTOSCArgumentList_isFloat(args, 0))
    return SDT_OSC_RETURN_ARGUMENT_ERROR;
  SDTMotor_setCompressionRatio(x, (double)SDTOSCArgumentList_getFloat(args, 0));
  return SDT_OSC_RETURN_OK;
}

SDTOSCReturnCode SDTOSCMotor_setSparkTime(SDTMotor *x,
                                          const SDTOSCArgumentList *args) {
  if (SDTOSCArgumentList_getNArgs(args) < 1 ||
      !SDTOSCArgumentList_isFloat(args, 0))
    return SDT_OSC_RETURN_ARGUMENT_ERROR;
  SDTMotor_setSparkTime(x, (double)SDTOSCArgumentList_getFloat(args, 0));
  return SDT_OSC_RETURN_OK;
}

SDTOSCReturnCode SDTOSCMotor_setAsymmetry(SDTMotor *x,
                                          const SDTOSCArgumentList *args) {
  if (SDTOSCArgumentList_getNArgs(args) < 1 ||
      !SDTOSCArgumentList_isFloat(args, 0))
    return SDT_OSC_RETURN_ARGUMENT_ERROR;
  SDTMotor_setAsymmetry(x, (double)SDTOSCArgumentList_getFloat(args, 0));
  return SDT_OSC_RETURN_OK;
}

SDTOSCReturnCode SDTOSCMotor_setBackfire(SDTMotor *x,
                                         const SDTOSCArgumentList *args) {
  if (SDTOSCArgumentList_getNArgs(args) < 1 ||
      !SDTOSCArgumentList_isFloat(args, 0))
    return SDT_OSC_RETURN_ARGUMENT_ERROR;
  SDTMotor_setBackfire(x, (double)SDTOSCArgumentList_getFloat(args, 0));
  return SDT_OSC_RETURN_OK;
}

SDTOSCReturnCode SDTOSCMotor_setIntakeSize(SDTMotor *x,
                                           const SDTOSCArgumentList *args) {
  if (SDTOSCArgumentList_getNArgs(args) < 1 ||
      !SDTOSCArgumentList_isFloat(args, 0))
    return SDT_OSC_RETURN_ARGUMENT_ERROR;
  SDTMotor_setIntakeSize(x, (double)SDTOSCArgumentList_getFloat(args, 0));
  return SDT_OSC_RETURN_OK;
}

SDTOSCReturnCode SDTOSCMotor_setExtractorSize(SDTMotor *x,
                                              const SDTOSCArgumentList *args) {
  if (SDTOSCArgumentList_getNArgs(args) < 1 ||
      !SDTOSCArgumentList_isFloat(args, 0))
    return SDT_OSC_RETURN_ARGUMENT_ERROR;
  SDTMotor_setExtractorSize(x, (double)SDTOSCArgumentList_getFloat(args, 0));
  return SDT_OSC_RETURN_OK;
}

SDTOSCReturnCode SDTOSCMotor_setExhaustSize(SDTMotor *x,
                                            const SDTOSCArgumentList *args) {
  if (SDTOSCArgumentList_getNArgs(args) < 1 ||
      !SDTOSCArgumentList_isFloat(args, 0))
    return SDT_OSC_RETURN_ARGUMENT_ERROR;
  SDTMotor_setExhaustSize(x, (double)SDTOSCArgumentList_getFloat(args, 0));
  return SDT_OSC_RETURN_OK;
}

SDTOSCReturnCode SDTOSCMotor_setExpansion(SDTMotor *x,
                                          const SDTOSCArgumentList *args) {
  if (SDTOSCArgumentList_getNArgs(args) < 1 ||
      !SDTOSCArgumentList_isFloat(args, 0))
    return SDT_OSC_RETURN_ARGUMENT_ERROR;
  SDTMotor_setExpansion(x, (double)SDTOSCArgumentList_getFloat(args, 0));
  return SDT_OSC_RETURN_OK;
}

SDTOSCReturnCode SDTOSCMotor_setMufflerSize(SDTMotor *x,
                                            const SDTOSCArgumentList *args) {
  if (SDTOSCArgumentList_getNArgs(args) < 1 ||
      !SDTOSCArgumentList_isFloat(args, 0))
    return SDT_OSC_RETURN_ARGUMENT_ERROR;
  SDTMotor_setMufflerSize(x, (double)SDTOSCArgumentList_getFloat(args, 0));
  return SDT_OSC_RETURN_OK;
}

SDTOSCReturnCode SDTOSCMotor_setMufflerFeedback(
    SDTMotor *x, const SDTOSCArgumentList *args) {
  if (SDTOSCArgumentList_getNArgs(args) < 1 ||
      !SDTOSCArgumentList_isFloat(args, 0))
    return SDT_OSC_RETURN_ARGUMENT_ERROR;
  SDTMotor_setMufflerFeedback(x, (double)SDTOSCArgumentList_getFloat(args, 0));
  return SDT_OSC_RETURN_OK;
}

SDTOSCReturnCode SDTOSCMotor_setOutletSize(SDTMotor *x,
                                           const SDTOSCArgumentList *args) {
  if (SDTOSCArgumentList_getNArgs(args) < 1 ||
      !SDTOSCArgumentList_isFloat(args, 0))
    return SDT_OSC_RETURN_ARGUMENT_ERROR;
  SDTMotor_setOutletSize(x, (double)SDTOSCArgumentList_getFloat(args, 0));
  return SDT_OSC_RETURN_OK;
}

SDTOSCReturnCode SDTOSCMotor(void (*log)(const char *, ...),
                             const SDTOSCMessage *x) {
  SDTOSCArgumentList *args = SDTOSCMessage_getArguments(x);
  const char *key = (SDTOSCArgumentList_getNArgs(args) &&
                     SDTOSCArgumentList_isString(args, 0))
                        ? SDTOSCArgumentList_getString(args, 0)
                        : 0;
  SDTMotor *obj = (key) ? SDT_getMotor(key) : 0;
  SDTOSCReturnCode return_code;
  if (obj)
    if (SDTOSCMessage_hasContainer(x)) {
      SDTOSCArgumentList *sub_args =
          SDTOSCArgumentList_copyFromTo(SDTOSCMessage_getArguments(x), 1, -1);
      char *method = SDTOSCMessage_getContainer(x);
      if (!strcmp("log", method))
        return_code = SDTOSCMotor_log(log, key, obj);
      else if (!strcmp("save", method))
        return_code = SDTOSCMotor_save(log, key, obj, sub_args);
      else if (!strcmp("load", method))
        return_code = SDTOSCMotor_load(log, key, obj, sub_args);
      else if (!strcmp("maxDelay", method))
        return_code = SDTOSCMotor_setMaxDelay(obj, sub_args);
      else if (!strcmp("cycle", method))
        return_code = SDTOSCMotor_setCycle(obj, sub_args);
      else if (!strcmp("nCylinders", method))
        return_code = SDTOSCMotor_setNCylinders(obj, sub_args);
      else if (!strcmp("cylinderSize", method))
        return_code = SDTOSCMotor_setCylinderSize(obj, sub_args);
      else if (!strcmp("compressionRatio", method))
        return_code = SDTOSCMotor_setCompressionRatio(obj, sub_args);
      else if (!strcmp("sparkTime", method))
        return_code = SDTOSCMotor_setSparkTime(obj, sub_args);
      else if (!strcmp("asymmetry", method))
        return_code = SDTOSCMotor_setAsymmetry(obj, sub_args);
      else if (!strcmp("backfire", method))
        return_code = SDTOSCMotor_setBackfire(obj, sub_args);
      else if (!strcmp("intakeSize", method))
        return_code = SDTOSCMotor_setIntakeSize(obj, sub_args);
      else if (!strcmp("extractorSize", method))
        return_code = SDTOSCMotor_setExtractorSize(obj, sub_args);
      else if (!strcmp("exhaustSize", method))
        return_code = SDTOSCMotor_setExhaustSize(obj, sub_args);
      else if (!strcmp("expansion", method))
        return_code = SDTOSCMotor_setExpansion(obj, sub_args);
      else if (!strcmp("mufflerSize", method))
        return_code = SDTOSCMotor_setMufflerSize(obj, sub_args);
      else if (!strcmp("mufflerFeedback", method))
        return_code = SDTOSCMotor_setMufflerFeedback(obj, sub_args);
      else if (!strcmp("outletSize", method))
        return_code = SDTOSCMotor_setOutletSize(obj, sub_args);
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

SDTOSCReturnCode SDTOSCMyoelastic_log(void (*log)(const char *, ...),
                                      const char *key, SDTMyoelastic *x) {
  json_value *obj = SDTMyoelastic_toJSON(x);
  char *s = malloc(sizeof(char) * (strlen(key) + 32));
  sprintf(s, "sdtOSC: %s", key);
  SDTOSCReturnCode r = SDTOSCJSON_log(log, s, obj);
  free(s);
  json_builder_free(obj);
  return r;
}

SDTOSCReturnCode SDTOSCMyoelastic_save(void (*log)(const char *, ...),
                                       const char *key, SDTMyoelastic *x,
                                       const SDTOSCArgumentList *args) {
  char *name = malloc(sizeof(char) * (strlen(key) + 8));
  sprintf(name, "'%s'", key);
  json_value *obj = SDTMyoelastic_toJSON(x);
  SDTOSCReturnCode return_code = SDTOSCJSON_save(log, name, obj, args);
  json_builder_free(obj);
  free(name);
  return return_code;
}

SDTOSCReturnCode SDTOSCMyoelastic_load(void (*log)(const char *, ...),
                                       const char *key, SDTMyoelastic *x,
                                       const SDTOSCArgumentList *args) {
  json_value *obj;
  char *name = malloc(sizeof(char) * (strlen(key) + 8));
  sprintf(name, "'%s'", key);
  SDTOSCReturnCode return_code = SDTOSCJSON_load(log, name, &obj, args);
  free(name);
  if (return_code == SDT_OSC_RETURN_OK) {
    SDTMyoelastic *r = SDTMyoelastic_fromJSON(obj);
    SDTMyoelastic_copy(x, r);
    SDTMyoelastic_free(r);
  }
  if (obj) json_builder_free(obj);
  return return_code;
}

SDTOSCReturnCode SDTOSCMyoelastic_setDcFrequency(
    SDTMyoelastic *x, const SDTOSCArgumentList *args) {
  if (SDTOSCArgumentList_getNArgs(args) < 1 ||
      !SDTOSCArgumentList_isFloat(args, 0))
    return SDT_OSC_RETURN_ARGUMENT_ERROR;
  SDTMyoelastic_setDcFrequency(x, (double)SDTOSCArgumentList_getFloat(args, 0));
  return SDT_OSC_RETURN_OK;
}

SDTOSCReturnCode SDTOSCMyoelastic_setLowFrequency(
    SDTMyoelastic *x, const SDTOSCArgumentList *args) {
  if (SDTOSCArgumentList_getNArgs(args) < 1 ||
      !SDTOSCArgumentList_isFloat(args, 0))
    return SDT_OSC_RETURN_ARGUMENT_ERROR;
  SDTMyoelastic_setLowFrequency(x,
                                (double)SDTOSCArgumentList_getFloat(args, 0));
  return SDT_OSC_RETURN_OK;
}

SDTOSCReturnCode SDTOSCMyoelastic_setHighFrequency(
    SDTMyoelastic *x, const SDTOSCArgumentList *args) {
  if (SDTOSCArgumentList_getNArgs(args) < 1 ||
      !SDTOSCArgumentList_isFloat(args, 0))
    return SDT_OSC_RETURN_ARGUMENT_ERROR;
  SDTMyoelastic_setHighFrequency(x,
                                 (double)SDTOSCArgumentList_getFloat(args, 0));
  return SDT_OSC_RETURN_OK;
}

SDTOSCReturnCode SDTOSCMyoelastic_setThreshold(SDTMyoelastic *x,
                                               const SDTOSCArgumentList *args) {
  if (SDTOSCArgumentList_getNArgs(args) < 1 ||
      !SDTOSCArgumentList_isFloat(args, 0))
    return SDT_OSC_RETURN_ARGUMENT_ERROR;
  SDTMyoelastic_setThreshold(x, (double)SDTOSCArgumentList_getFloat(args, 0));
  return SDT_OSC_RETURN_OK;
}

SDTOSCReturnCode SDTOSCMyoelastic(void (*log)(const char *, ...),
                                  const SDTOSCMessage *x) {
  SDTOSCArgumentList *args = SDTOSCMessage_getArguments(x);
  const char *key = (SDTOSCArgumentList_getNArgs(args) &&
                     SDTOSCArgumentList_isString(args, 0))
                        ? SDTOSCArgumentList_getString(args, 0)
                        : 0;
  SDTMyoelastic *obj = (key) ? SDT_getMyoelastic(key) : 0;
  SDTOSCReturnCode return_code;
  if (obj)
    if (SDTOSCMessage_hasContainer(x)) {
      SDTOSCArgumentList *sub_args =
          SDTOSCArgumentList_copyFromTo(SDTOSCMessage_getArguments(x), 1, -1);
      char *method = SDTOSCMessage_getContainer(x);
      if (!strcmp("log", method))
        return_code = SDTOSCMyoelastic_log(log, key, obj);
      else if (!strcmp("save", method))
        return_code = SDTOSCMyoelastic_save(log, key, obj, sub_args);
      else if (!strcmp("load", method))
        return_code = SDTOSCMyoelastic_load(log, key, obj, sub_args);
      else if (!strcmp("dcFrequency", method))
        return_code = SDTOSCMyoelastic_setDcFrequency(obj, sub_args);
      else if (!strcmp("lowFrequency", method))
        return_code = SDTOSCMyoelastic_setLowFrequency(obj, sub_args);
      else if (!strcmp("highFrequency", method))
        return_code = SDTOSCMyoelastic_setHighFrequency(obj, sub_args);
      else if (!strcmp("threshold", method))
        return_code = SDTOSCMyoelastic_setThreshold(obj, sub_args);
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

SDTOSCReturnCode SDTOSCPitch_log(void (*log)(const char *, ...),
                                 const char *key, SDTPitch *x) {
  json_value *obj = SDTPitch_toJSON(x);
  char *s = malloc(sizeof(char) * (strlen(key) + 32));
  sprintf(s, "sdtOSC: %s", key);
  SDTOSCReturnCode r = SDTOSCJSON_log(log, s, obj);
  free(s);
  json_builder_free(obj);
  return r;
}

SDTOSCReturnCode SDTOSCPitch_save(void (*log)(const char *, ...),
                                  const char *key, SDTPitch *x,
                                  const SDTOSCArgumentList *args) {
  char *name = malloc(sizeof(char) * (strlen(key) + 8));
  sprintf(name, "'%s'", key);
  json_value *obj = SDTPitch_toJSON(x);
  SDTOSCReturnCode return_code = SDTOSCJSON_save(log, name, obj, args);
  json_builder_free(obj);
  free(name);
  return return_code;
}

SDTOSCReturnCode SDTOSCPitch_load(void (*log)(const char *, ...),
                                  const char *key, SDTPitch *x,
                                  const SDTOSCArgumentList *args) {
  json_value *obj;
  char *name = malloc(sizeof(char) * (strlen(key) + 8));
  sprintf(name, "'%s'", key);
  SDTOSCReturnCode return_code = SDTOSCJSON_load(log, name, &obj, args);
  free(name);
  if (return_code == SDT_OSC_RETURN_OK) {
    SDTPitch *r = SDTPitch_fromJSON(obj);
    SDTPitch_copy(x, r);
    SDTPitch_free(r);
  }
  if (obj) json_builder_free(obj);
  return return_code;
}

SDTOSCReturnCode SDTOSCPitch_setSize(SDTPitch *x,
                                     const SDTOSCArgumentList *args) {
  if (SDTOSCArgumentList_getNArgs(args) < 1 ||
      !SDTOSCArgumentList_isFloat(args, 0))
    return SDT_OSC_RETURN_ARGUMENT_ERROR;
  SDTPitch_setSize(x, (unsigned int)SDTOSCArgumentList_getFloat(args, 0));
  return SDT_OSC_RETURN_OK;
}

SDTOSCReturnCode SDTOSCPitch_setOverlap(SDTPitch *x,
                                        const SDTOSCArgumentList *args) {
  if (SDTOSCArgumentList_getNArgs(args) < 1 ||
      !SDTOSCArgumentList_isFloat(args, 0))
    return SDT_OSC_RETURN_ARGUMENT_ERROR;
  SDTPitch_setOverlap(x, (double)SDTOSCArgumentList_getFloat(args, 0));
  return SDT_OSC_RETURN_OK;
}

SDTOSCReturnCode SDTOSCPitch_setTolerance(SDTPitch *x,
                                          const SDTOSCArgumentList *args) {
  if (SDTOSCArgumentList_getNArgs(args) < 1 ||
      !SDTOSCArgumentList_isFloat(args, 0))
    return SDT_OSC_RETURN_ARGUMENT_ERROR;
  SDTPitch_setTolerance(x, (double)SDTOSCArgumentList_getFloat(args, 0));
  return SDT_OSC_RETURN_OK;
}

SDTOSCReturnCode SDTOSCPitch(void (*log)(const char *, ...),
                             const SDTOSCMessage *x) {
  SDTOSCArgumentList *args = SDTOSCMessage_getArguments(x);
  const char *key = (SDTOSCArgumentList_getNArgs(args) &&
                     SDTOSCArgumentList_isString(args, 0))
                        ? SDTOSCArgumentList_getString(args, 0)
                        : 0;
  SDTPitch *obj = (key) ? SDT_getPitch(key) : 0;
  SDTOSCReturnCode return_code;
  if (obj)
    if (SDTOSCMessage_hasContainer(x)) {
      SDTOSCArgumentList *sub_args =
          SDTOSCArgumentList_copyFromTo(SDTOSCMessage_getArguments(x), 1, -1);
      char *method = SDTOSCMessage_getContainer(x);
      if (!strcmp("log", method))
        return_code = SDTOSCPitch_log(log, key, obj);
      else if (!strcmp("save", method))
        return_code = SDTOSCPitch_save(log, key, obj, sub_args);
      else if (!strcmp("load", method))
        return_code = SDTOSCPitch_load(log, key, obj, sub_args);
      else if (!strcmp("size", method))
        return_code = SDTOSCPitch_setSize(obj, sub_args);
      else if (!strcmp("overlap", method))
        return_code = SDTOSCPitch_setOverlap(obj, sub_args);
      else if (!strcmp("tolerance", method))
        return_code = SDTOSCPitch_setTolerance(obj, sub_args);
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

SDTOSCReturnCode SDTOSCPitchShift_log(void (*log)(const char *, ...),
                                      const char *key, SDTPitchShift *x) {
  json_value *obj = SDTPitchShift_toJSON(x);
  char *s = malloc(sizeof(char) * (strlen(key) + 32));
  sprintf(s, "sdtOSC: %s", key);
  SDTOSCReturnCode r = SDTOSCJSON_log(log, s, obj);
  free(s);
  json_builder_free(obj);
  return r;
}

SDTOSCReturnCode SDTOSCPitchShift_save(void (*log)(const char *, ...),
                                       const char *key, SDTPitchShift *x,
                                       const SDTOSCArgumentList *args) {
  char *name = malloc(sizeof(char) * (strlen(key) + 8));
  sprintf(name, "'%s'", key);
  json_value *obj = SDTPitchShift_toJSON(x);
  SDTOSCReturnCode return_code = SDTOSCJSON_save(log, name, obj, args);
  json_builder_free(obj);
  free(name);
  return return_code;
}

SDTOSCReturnCode SDTOSCPitchShift_load(void (*log)(const char *, ...),
                                       const char *key, SDTPitchShift *x,
                                       const SDTOSCArgumentList *args) {
  json_value *obj;
  char *name = malloc(sizeof(char) * (strlen(key) + 8));
  sprintf(name, "'%s'", key);
  SDTOSCReturnCode return_code = SDTOSCJSON_load(log, name, &obj, args);
  free(name);
  if (return_code == SDT_OSC_RETURN_OK) {
    SDTPitchShift *r = SDTPitchShift_fromJSON(obj);
    SDTPitchShift_copy(x, r);
    SDTPitchShift_free(r);
  }
  if (obj) json_builder_free(obj);
  return return_code;
}

SDTOSCReturnCode SDTOSCPitchShift_setSize(SDTPitchShift *x,
                                          const SDTOSCArgumentList *args) {
  if (SDTOSCArgumentList_getNArgs(args) < 1 ||
      !SDTOSCArgumentList_isFloat(args, 0))
    return SDT_OSC_RETURN_ARGUMENT_ERROR;
  SDTPitchShift_setSize(x, (int)SDTOSCArgumentList_getFloat(args, 0));
  return SDT_OSC_RETURN_OK;
}

SDTOSCReturnCode SDTOSCPitchShift_setOversample(
    SDTPitchShift *x, const SDTOSCArgumentList *args) {
  if (SDTOSCArgumentList_getNArgs(args) < 1 ||
      !SDTOSCArgumentList_isFloat(args, 0))
    return SDT_OSC_RETURN_ARGUMENT_ERROR;
  SDTPitchShift_setOversample(x, (int)SDTOSCArgumentList_getFloat(args, 0));
  return SDT_OSC_RETURN_OK;
}

SDTOSCReturnCode SDTOSCPitchShift_setRatio(SDTPitchShift *x,
                                           const SDTOSCArgumentList *args) {
  if (SDTOSCArgumentList_getNArgs(args) < 1 ||
      !SDTOSCArgumentList_isFloat(args, 0))
    return SDT_OSC_RETURN_ARGUMENT_ERROR;
  SDTPitchShift_setRatio(x, (double)SDTOSCArgumentList_getFloat(args, 0));
  return SDT_OSC_RETURN_OK;
}

SDTOSCReturnCode SDTOSCPitchShift_setOverlap(SDTPitchShift *x,
                                             const SDTOSCArgumentList *args) {
  if (SDTOSCArgumentList_getNArgs(args) < 1 ||
      !SDTOSCArgumentList_isFloat(args, 0))
    return SDT_OSC_RETURN_ARGUMENT_ERROR;
  SDTPitchShift_setOverlap(x, (double)SDTOSCArgumentList_getFloat(args, 0));
  return SDT_OSC_RETURN_OK;
}

SDTOSCReturnCode SDTOSCPitchShift(void (*log)(const char *, ...),
                                  const SDTOSCMessage *x) {
  SDTOSCArgumentList *args = SDTOSCMessage_getArguments(x);
  const char *key = (SDTOSCArgumentList_getNArgs(args) &&
                     SDTOSCArgumentList_isString(args, 0))
                        ? SDTOSCArgumentList_getString(args, 0)
                        : 0;
  SDTPitchShift *obj = (key) ? SDT_getPitchShift(key) : 0;
  SDTOSCReturnCode return_code;
  if (obj)
    if (SDTOSCMessage_hasContainer(x)) {
      SDTOSCArgumentList *sub_args =
          SDTOSCArgumentList_copyFromTo(SDTOSCMessage_getArguments(x), 1, -1);
      char *method = SDTOSCMessage_getContainer(x);
      if (!strcmp("log", method))
        return_code = SDTOSCPitchShift_log(log, key, obj);
      else if (!strcmp("save", method))
        return_code = SDTOSCPitchShift_save(log, key, obj, sub_args);
      else if (!strcmp("load", method))
        return_code = SDTOSCPitchShift_load(log, key, obj, sub_args);
      else if (!strcmp("size", method))
        return_code = SDTOSCPitchShift_setSize(obj, sub_args);
      else if (!strcmp("oversample", method))
        return_code = SDTOSCPitchShift_setOversample(obj, sub_args);
      else if (!strcmp("ratio", method))
        return_code = SDTOSCPitchShift_setRatio(obj, sub_args);
      else if (!strcmp("overlap", method))
        return_code = SDTOSCPitchShift_setOverlap(obj, sub_args);
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

SDTOSCReturnCode SDTOSCReverb_log(void (*log)(const char *, ...),
                                  const char *key, SDTReverb *x) {
  json_value *obj = SDTReverb_toJSON(x);
  char *s = malloc(sizeof(char) * (strlen(key) + 32));
  sprintf(s, "sdtOSC: %s", key);
  SDTOSCReturnCode r = SDTOSCJSON_log(log, s, obj);
  free(s);
  json_builder_free(obj);
  return r;
}

SDTOSCReturnCode SDTOSCReverb_save(void (*log)(const char *, ...),
                                   const char *key, SDTReverb *x,
                                   const SDTOSCArgumentList *args) {
  char *name = malloc(sizeof(char) * (strlen(key) + 8));
  sprintf(name, "'%s'", key);
  json_value *obj = SDTReverb_toJSON(x);
  SDTOSCReturnCode return_code = SDTOSCJSON_save(log, name, obj, args);
  json_builder_free(obj);
  free(name);
  return return_code;
}

SDTOSCReturnCode SDTOSCReverb_load(void (*log)(const char *, ...),
                                   const char *key, SDTReverb *x,
                                   const SDTOSCArgumentList *args) {
  json_value *obj;
  char *name = malloc(sizeof(char) * (strlen(key) + 8));
  sprintf(name, "'%s'", key);
  SDTOSCReturnCode return_code = SDTOSCJSON_load(log, name, &obj, args);
  free(name);
  if (return_code == SDT_OSC_RETURN_OK) {
    SDTReverb *r = SDTReverb_fromJSON(obj);
    SDTReverb_copy(x, r);
    SDTReverb_free(r);
  }
  if (obj) json_builder_free(obj);
  return return_code;
}

SDTOSCReturnCode SDTOSCReverb_setMaxDelay(SDTReverb *x,
                                          const SDTOSCArgumentList *args) {
  if (SDTOSCArgumentList_getNArgs(args) < 1 ||
      !SDTOSCArgumentList_isFloat(args, 0))
    return SDT_OSC_RETURN_ARGUMENT_ERROR;
  SDTReverb_setMaxDelay(x, (long)SDTOSCArgumentList_getFloat(args, 0));
  return SDT_OSC_RETURN_OK;
}

SDTOSCReturnCode SDTOSCReverb_setXSize(SDTReverb *x,
                                       const SDTOSCArgumentList *args) {
  if (SDTOSCArgumentList_getNArgs(args) < 1 ||
      !SDTOSCArgumentList_isFloat(args, 0))
    return SDT_OSC_RETURN_ARGUMENT_ERROR;
  SDTReverb_setXSize(x, (double)SDTOSCArgumentList_getFloat(args, 0));
  return SDT_OSC_RETURN_OK;
}

SDTOSCReturnCode SDTOSCReverb_setYSize(SDTReverb *x,
                                       const SDTOSCArgumentList *args) {
  if (SDTOSCArgumentList_getNArgs(args) < 1 ||
      !SDTOSCArgumentList_isFloat(args, 0))
    return SDT_OSC_RETURN_ARGUMENT_ERROR;
  SDTReverb_setYSize(x, (double)SDTOSCArgumentList_getFloat(args, 0));
  return SDT_OSC_RETURN_OK;
}

SDTOSCReturnCode SDTOSCReverb_setZSize(SDTReverb *x,
                                       const SDTOSCArgumentList *args) {
  if (SDTOSCArgumentList_getNArgs(args) < 1 ||
      !SDTOSCArgumentList_isFloat(args, 0))
    return SDT_OSC_RETURN_ARGUMENT_ERROR;
  SDTReverb_setZSize(x, (double)SDTOSCArgumentList_getFloat(args, 0));
  return SDT_OSC_RETURN_OK;
}

SDTOSCReturnCode SDTOSCReverb_setRandomness(SDTReverb *x,
                                            const SDTOSCArgumentList *args) {
  if (SDTOSCArgumentList_getNArgs(args) < 1 ||
      !SDTOSCArgumentList_isFloat(args, 0))
    return SDT_OSC_RETURN_ARGUMENT_ERROR;
  SDTReverb_setRandomness(x, (double)SDTOSCArgumentList_getFloat(args, 0));
  return SDT_OSC_RETURN_OK;
}

SDTOSCReturnCode SDTOSCReverb_setTime(SDTReverb *x,
                                      const SDTOSCArgumentList *args) {
  if (SDTOSCArgumentList_getNArgs(args) < 1 ||
      !SDTOSCArgumentList_isFloat(args, 0))
    return SDT_OSC_RETURN_ARGUMENT_ERROR;
  SDTReverb_setTime(x, (double)SDTOSCArgumentList_getFloat(args, 0));
  return SDT_OSC_RETURN_OK;
}

SDTOSCReturnCode SDTOSCReverb_setTime1k(SDTReverb *x,
                                        const SDTOSCArgumentList *args) {
  if (SDTOSCArgumentList_getNArgs(args) < 1 ||
      !SDTOSCArgumentList_isFloat(args, 0))
    return SDT_OSC_RETURN_ARGUMENT_ERROR;
  SDTReverb_setTime1k(x, (double)SDTOSCArgumentList_getFloat(args, 0));
  return SDT_OSC_RETURN_OK;
}

SDTOSCReturnCode SDTOSCReverb(void (*log)(const char *, ...),
                              const SDTOSCMessage *x) {
  SDTOSCArgumentList *args = SDTOSCMessage_getArguments(x);
  const char *key = (SDTOSCArgumentList_getNArgs(args) &&
                     SDTOSCArgumentList_isString(args, 0))
                        ? SDTOSCArgumentList_getString(args, 0)
                        : 0;
  SDTReverb *obj = (key) ? SDT_getReverb(key) : 0;
  SDTOSCReturnCode return_code;
  if (obj)
    if (SDTOSCMessage_hasContainer(x)) {
      SDTOSCArgumentList *sub_args =
          SDTOSCArgumentList_copyFromTo(SDTOSCMessage_getArguments(x), 1, -1);
      char *method = SDTOSCMessage_getContainer(x);
      if (!strcmp("log", method))
        return_code = SDTOSCReverb_log(log, key, obj);
      else if (!strcmp("save", method))
        return_code = SDTOSCReverb_save(log, key, obj, sub_args);
      else if (!strcmp("load", method))
        return_code = SDTOSCReverb_load(log, key, obj, sub_args);
      else if (!strcmp("maxDelay", method))
        return_code = SDTOSCReverb_setMaxDelay(obj, sub_args);
      else if (!strcmp("xSize", method))
        return_code = SDTOSCReverb_setXSize(obj, sub_args);
      else if (!strcmp("ySize", method))
        return_code = SDTOSCReverb_setYSize(obj, sub_args);
      else if (!strcmp("zSize", method))
        return_code = SDTOSCReverb_setZSize(obj, sub_args);
      else if (!strcmp("randomness", method))
        return_code = SDTOSCReverb_setRandomness(obj, sub_args);
      else if (!strcmp("time", method))
        return_code = SDTOSCReverb_setTime(obj, sub_args);
      else if (!strcmp("time1k", method))
        return_code = SDTOSCReverb_setTime1k(obj, sub_args);
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

SDTOSCReturnCode SDTOSCRolling_log(void (*log)(const char *, ...),
                                   const char *key, SDTRolling *x) {
  json_value *obj = SDTRolling_toJSON(x);
  char *s = malloc(sizeof(char) * (strlen(key) + 32));
  sprintf(s, "sdtOSC: %s", key);
  SDTOSCReturnCode r = SDTOSCJSON_log(log, s, obj);
  free(s);
  json_builder_free(obj);
  return r;
}

SDTOSCReturnCode SDTOSCRolling_save(void (*log)(const char *, ...),
                                    const char *key, SDTRolling *x,
                                    const SDTOSCArgumentList *args) {
  char *name = malloc(sizeof(char) * (strlen(key) + 8));
  sprintf(name, "'%s'", key);
  json_value *obj = SDTRolling_toJSON(x);
  SDTOSCReturnCode return_code = SDTOSCJSON_save(log, name, obj, args);
  json_builder_free(obj);
  free(name);
  return return_code;
}

SDTOSCReturnCode SDTOSCRolling_load(void (*log)(const char *, ...),
                                    const char *key, SDTRolling *x,
                                    const SDTOSCArgumentList *args) {
  json_value *obj;
  char *name = malloc(sizeof(char) * (strlen(key) + 8));
  sprintf(name, "'%s'", key);
  SDTOSCReturnCode return_code = SDTOSCJSON_load(log, name, &obj, args);
  free(name);
  if (return_code == SDT_OSC_RETURN_OK) {
    SDTRolling *r = SDTRolling_fromJSON(obj);
    SDTRolling_copy(x, r);
    SDTRolling_free(r);
  }
  if (obj) json_builder_free(obj);
  return return_code;
}

SDTOSCReturnCode SDTOSCRolling_setGrain(SDTRolling *x,
                                        const SDTOSCArgumentList *args) {
  if (SDTOSCArgumentList_getNArgs(args) < 1 ||
      !SDTOSCArgumentList_isFloat(args, 0))
    return SDT_OSC_RETURN_ARGUMENT_ERROR;
  SDTRolling_setGrain(x, (double)SDTOSCArgumentList_getFloat(args, 0));
  return SDT_OSC_RETURN_OK;
}

SDTOSCReturnCode SDTOSCRolling_setDepth(SDTRolling *x,
                                        const SDTOSCArgumentList *args) {
  if (SDTOSCArgumentList_getNArgs(args) < 1 ||
      !SDTOSCArgumentList_isFloat(args, 0))
    return SDT_OSC_RETURN_ARGUMENT_ERROR;
  SDTRolling_setDepth(x, (double)SDTOSCArgumentList_getFloat(args, 0));
  return SDT_OSC_RETURN_OK;
}

SDTOSCReturnCode SDTOSCRolling_setMass(SDTRolling *x,
                                       const SDTOSCArgumentList *args) {
  if (SDTOSCArgumentList_getNArgs(args) < 1 ||
      !SDTOSCArgumentList_isFloat(args, 0))
    return SDT_OSC_RETURN_ARGUMENT_ERROR;
  SDTRolling_setMass(x, (double)SDTOSCArgumentList_getFloat(args, 0));
  return SDT_OSC_RETURN_OK;
}

SDTOSCReturnCode SDTOSCRolling_setVelocity(SDTRolling *x,
                                           const SDTOSCArgumentList *args) {
  if (SDTOSCArgumentList_getNArgs(args) < 1 ||
      !SDTOSCArgumentList_isFloat(args, 0))
    return SDT_OSC_RETURN_ARGUMENT_ERROR;
  SDTRolling_setVelocity(x, (double)SDTOSCArgumentList_getFloat(args, 0));
  return SDT_OSC_RETURN_OK;
}

SDTOSCReturnCode SDTOSCRolling(void (*log)(const char *, ...),
                               const SDTOSCMessage *x) {
  SDTOSCArgumentList *args = SDTOSCMessage_getArguments(x);
  const char *key = (SDTOSCArgumentList_getNArgs(args) &&
                     SDTOSCArgumentList_isString(args, 0))
                        ? SDTOSCArgumentList_getString(args, 0)
                        : 0;
  SDTRolling *obj = (key) ? SDT_getRolling(key) : 0;
  SDTOSCReturnCode return_code;
  if (obj)
    if (SDTOSCMessage_hasContainer(x)) {
      SDTOSCArgumentList *sub_args =
          SDTOSCArgumentList_copyFromTo(SDTOSCMessage_getArguments(x), 1, -1);
      char *method = SDTOSCMessage_getContainer(x);
      if (!strcmp("log", method))
        return_code = SDTOSCRolling_log(log, key, obj);
      else if (!strcmp("save", method))
        return_code = SDTOSCRolling_save(log, key, obj, sub_args);
      else if (!strcmp("load", method))
        return_code = SDTOSCRolling_load(log, key, obj, sub_args);
      else if (!strcmp("grain", method))
        return_code = SDTOSCRolling_setGrain(obj, sub_args);
      else if (!strcmp("depth", method))
        return_code = SDTOSCRolling_setDepth(obj, sub_args);
      else if (!strcmp("mass", method))
        return_code = SDTOSCRolling_setMass(obj, sub_args);
      else if (!strcmp("velocity", method))
        return_code = SDTOSCRolling_setVelocity(obj, sub_args);
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

SDTOSCReturnCode SDTOSCScraping_log(void (*log)(const char *, ...),
                                    const char *key, SDTScraping *x) {
  json_value *obj = SDTScraping_toJSON(x);
  char *s = malloc(sizeof(char) * (strlen(key) + 32));
  sprintf(s, "sdtOSC: %s", key);
  SDTOSCReturnCode r = SDTOSCJSON_log(log, s, obj);
  free(s);
  json_builder_free(obj);
  return r;
}

SDTOSCReturnCode SDTOSCScraping_save(void (*log)(const char *, ...),
                                     const char *key, SDTScraping *x,
                                     const SDTOSCArgumentList *args) {
  char *name = malloc(sizeof(char) * (strlen(key) + 8));
  sprintf(name, "'%s'", key);
  json_value *obj = SDTScraping_toJSON(x);
  SDTOSCReturnCode return_code = SDTOSCJSON_save(log, name, obj, args);
  json_builder_free(obj);
  free(name);
  return return_code;
}

SDTOSCReturnCode SDTOSCScraping_load(void (*log)(const char *, ...),
                                     const char *key, SDTScraping *x,
                                     const SDTOSCArgumentList *args) {
  json_value *obj;
  char *name = malloc(sizeof(char) * (strlen(key) + 8));
  sprintf(name, "'%s'", key);
  SDTOSCReturnCode return_code = SDTOSCJSON_load(log, name, &obj, args);
  free(name);
  if (return_code == SDT_OSC_RETURN_OK) {
    SDTScraping *r = SDTScraping_fromJSON(obj);
    SDTScraping_copy(x, r);
    SDTScraping_free(r);
  }
  if (obj) json_builder_free(obj);
  return return_code;
}

SDTOSCReturnCode SDTOSCScraping_setGrain(SDTScraping *x,
                                         const SDTOSCArgumentList *args) {
  if (SDTOSCArgumentList_getNArgs(args) < 1 ||
      !SDTOSCArgumentList_isFloat(args, 0))
    return SDT_OSC_RETURN_ARGUMENT_ERROR;
  SDTScraping_setGrain(x, (double)SDTOSCArgumentList_getFloat(args, 0));
  return SDT_OSC_RETURN_OK;
}

SDTOSCReturnCode SDTOSCScraping_setForce(SDTScraping *x,
                                         const SDTOSCArgumentList *args) {
  if (SDTOSCArgumentList_getNArgs(args) < 1 ||
      !SDTOSCArgumentList_isFloat(args, 0))
    return SDT_OSC_RETURN_ARGUMENT_ERROR;
  SDTScraping_setForce(x, (double)SDTOSCArgumentList_getFloat(args, 0));
  return SDT_OSC_RETURN_OK;
}

SDTOSCReturnCode SDTOSCScraping_setVelocity(SDTScraping *x,
                                            const SDTOSCArgumentList *args) {
  if (SDTOSCArgumentList_getNArgs(args) < 1 ||
      !SDTOSCArgumentList_isFloat(args, 0))
    return SDT_OSC_RETURN_ARGUMENT_ERROR;
  SDTScraping_setVelocity(x, (double)SDTOSCArgumentList_getFloat(args, 0));
  return SDT_OSC_RETURN_OK;
}

SDTOSCReturnCode SDTOSCScraping(void (*log)(const char *, ...),
                                const SDTOSCMessage *x) {
  SDTOSCArgumentList *args = SDTOSCMessage_getArguments(x);
  const char *key = (SDTOSCArgumentList_getNArgs(args) &&
                     SDTOSCArgumentList_isString(args, 0))
                        ? SDTOSCArgumentList_getString(args, 0)
                        : 0;
  SDTScraping *obj = (key) ? SDT_getScraping(key) : 0;
  SDTOSCReturnCode return_code;
  if (obj)
    if (SDTOSCMessage_hasContainer(x)) {
      SDTOSCArgumentList *sub_args =
          SDTOSCArgumentList_copyFromTo(SDTOSCMessage_getArguments(x), 1, -1);
      char *method = SDTOSCMessage_getContainer(x);
      if (!strcmp("log", method))
        return_code = SDTOSCScraping_log(log, key, obj);
      else if (!strcmp("save", method))
        return_code = SDTOSCScraping_save(log, key, obj, sub_args);
      else if (!strcmp("load", method))
        return_code = SDTOSCScraping_load(log, key, obj, sub_args);
      else if (!strcmp("grain", method))
        return_code = SDTOSCScraping_setGrain(obj, sub_args);
      else if (!strcmp("force", method))
        return_code = SDTOSCScraping_setForce(obj, sub_args);
      else if (!strcmp("velocity", method))
        return_code = SDTOSCScraping_setVelocity(obj, sub_args);
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

SDTOSCReturnCode SDTOSCSpectralFeats_log(void (*log)(const char *, ...),
                                         const char *key, SDTSpectralFeats *x) {
  json_value *obj = SDTSpectralFeats_toJSON(x);
  char *s = malloc(sizeof(char) * (strlen(key) + 32));
  sprintf(s, "sdtOSC: %s", key);
  SDTOSCReturnCode r = SDTOSCJSON_log(log, s, obj);
  free(s);
  json_builder_free(obj);
  return r;
}

SDTOSCReturnCode SDTOSCSpectralFeats_save(void (*log)(const char *, ...),
                                          const char *key, SDTSpectralFeats *x,
                                          const SDTOSCArgumentList *args) {
  char *name = malloc(sizeof(char) * (strlen(key) + 8));
  sprintf(name, "'%s'", key);
  json_value *obj = SDTSpectralFeats_toJSON(x);
  SDTOSCReturnCode return_code = SDTOSCJSON_save(log, name, obj, args);
  json_builder_free(obj);
  free(name);
  return return_code;
}

SDTOSCReturnCode SDTOSCSpectralFeats_load(void (*log)(const char *, ...),
                                          const char *key, SDTSpectralFeats *x,
                                          const SDTOSCArgumentList *args) {
  json_value *obj;
  char *name = malloc(sizeof(char) * (strlen(key) + 8));
  sprintf(name, "'%s'", key);
  SDTOSCReturnCode return_code = SDTOSCJSON_load(log, name, &obj, args);
  free(name);
  if (return_code == SDT_OSC_RETURN_OK) {
    SDTSpectralFeats *r = SDTSpectralFeats_fromJSON(obj);
    SDTSpectralFeats_copy(x, r);
    SDTSpectralFeats_free(r);
  }
  if (obj) json_builder_free(obj);
  return return_code;
}

SDTOSCReturnCode SDTOSCSpectralFeats_setSize(SDTSpectralFeats *x,
                                             const SDTOSCArgumentList *args) {
  if (SDTOSCArgumentList_getNArgs(args) < 1 ||
      !SDTOSCArgumentList_isFloat(args, 0))
    return SDT_OSC_RETURN_ARGUMENT_ERROR;
  SDTSpectralFeats_setSize(x,
                           (unsigned int)SDTOSCArgumentList_getFloat(args, 0));
  return SDT_OSC_RETURN_OK;
}

SDTOSCReturnCode SDTOSCSpectralFeats_setOverlap(
    SDTSpectralFeats *x, const SDTOSCArgumentList *args) {
  if (SDTOSCArgumentList_getNArgs(args) < 1 ||
      !SDTOSCArgumentList_isFloat(args, 0))
    return SDT_OSC_RETURN_ARGUMENT_ERROR;
  SDTSpectralFeats_setOverlap(x, (double)SDTOSCArgumentList_getFloat(args, 0));
  return SDT_OSC_RETURN_OK;
}

SDTOSCReturnCode SDTOSCSpectralFeats_setMinFreq(
    SDTSpectralFeats *x, const SDTOSCArgumentList *args) {
  if (SDTOSCArgumentList_getNArgs(args) < 1 ||
      !SDTOSCArgumentList_isFloat(args, 0))
    return SDT_OSC_RETURN_ARGUMENT_ERROR;
  SDTSpectralFeats_setMinFreq(x, (double)SDTOSCArgumentList_getFloat(args, 0));
  return SDT_OSC_RETURN_OK;
}

SDTOSCReturnCode SDTOSCSpectralFeats_setMaxFreq(
    SDTSpectralFeats *x, const SDTOSCArgumentList *args) {
  if (SDTOSCArgumentList_getNArgs(args) < 1 ||
      !SDTOSCArgumentList_isFloat(args, 0))
    return SDT_OSC_RETURN_ARGUMENT_ERROR;
  SDTSpectralFeats_setMaxFreq(x, (double)SDTOSCArgumentList_getFloat(args, 0));
  return SDT_OSC_RETURN_OK;
}

SDTOSCReturnCode SDTOSCSpectralFeats(void (*log)(const char *, ...),
                                     const SDTOSCMessage *x) {
  SDTOSCArgumentList *args = SDTOSCMessage_getArguments(x);
  const char *key = (SDTOSCArgumentList_getNArgs(args) &&
                     SDTOSCArgumentList_isString(args, 0))
                        ? SDTOSCArgumentList_getString(args, 0)
                        : 0;
  SDTSpectralFeats *obj = (key) ? SDT_getSpectralFeats(key) : 0;
  SDTOSCReturnCode return_code;
  if (obj)
    if (SDTOSCMessage_hasContainer(x)) {
      SDTOSCArgumentList *sub_args =
          SDTOSCArgumentList_copyFromTo(SDTOSCMessage_getArguments(x), 1, -1);
      char *method = SDTOSCMessage_getContainer(x);
      if (!strcmp("log", method))
        return_code = SDTOSCSpectralFeats_log(log, key, obj);
      else if (!strcmp("save", method))
        return_code = SDTOSCSpectralFeats_save(log, key, obj, sub_args);
      else if (!strcmp("load", method))
        return_code = SDTOSCSpectralFeats_load(log, key, obj, sub_args);
      else if (!strcmp("size", method))
        return_code = SDTOSCSpectralFeats_setSize(obj, sub_args);
      else if (!strcmp("overlap", method))
        return_code = SDTOSCSpectralFeats_setOverlap(obj, sub_args);
      else if (!strcmp("minFreq", method))
        return_code = SDTOSCSpectralFeats_setMinFreq(obj, sub_args);
      else if (!strcmp("maxFreq", method))
        return_code = SDTOSCSpectralFeats_setMaxFreq(obj, sub_args);
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

SDTOSCReturnCode SDTOSCWindCavity_log(void (*log)(const char *, ...),
                                      const char *key, SDTWindCavity *x) {
  json_value *obj = SDTWindCavity_toJSON(x);
  char *s = malloc(sizeof(char) * (strlen(key) + 32));
  sprintf(s, "sdtOSC: %s", key);
  SDTOSCReturnCode r = SDTOSCJSON_log(log, s, obj);
  free(s);
  json_builder_free(obj);
  return r;
}

SDTOSCReturnCode SDTOSCWindCavity_save(void (*log)(const char *, ...),
                                       const char *key, SDTWindCavity *x,
                                       const SDTOSCArgumentList *args) {
  char *name = malloc(sizeof(char) * (strlen(key) + 8));
  sprintf(name, "'%s'", key);
  json_value *obj = SDTWindCavity_toJSON(x);
  SDTOSCReturnCode return_code = SDTOSCJSON_save(log, name, obj, args);
  json_builder_free(obj);
  free(name);
  return return_code;
}

SDTOSCReturnCode SDTOSCWindCavity_load(void (*log)(const char *, ...),
                                       const char *key, SDTWindCavity *x,
                                       const SDTOSCArgumentList *args) {
  json_value *obj;
  char *name = malloc(sizeof(char) * (strlen(key) + 8));
  sprintf(name, "'%s'", key);
  SDTOSCReturnCode return_code = SDTOSCJSON_load(log, name, &obj, args);
  free(name);
  if (return_code == SDT_OSC_RETURN_OK) {
    SDTWindCavity *r = SDTWindCavity_fromJSON(obj);
    SDTWindCavity_copy(x, r);
    SDTWindCavity_free(r);
  }
  if (obj) json_builder_free(obj);
  return return_code;
}

SDTOSCReturnCode SDTOSCWindCavity_setMaxDelay(SDTWindCavity *x,
                                              const SDTOSCArgumentList *args) {
  if (SDTOSCArgumentList_getNArgs(args) < 1 ||
      !SDTOSCArgumentList_isFloat(args, 0))
    return SDT_OSC_RETURN_ARGUMENT_ERROR;
  SDTWindCavity_setMaxDelay(x, (int)SDTOSCArgumentList_getFloat(args, 0));
  return SDT_OSC_RETURN_OK;
}

SDTOSCReturnCode SDTOSCWindCavity_setLength(SDTWindCavity *x,
                                            const SDTOSCArgumentList *args) {
  if (SDTOSCArgumentList_getNArgs(args) < 1 ||
      !SDTOSCArgumentList_isFloat(args, 0))
    return SDT_OSC_RETURN_ARGUMENT_ERROR;
  SDTWindCavity_setLength(x, (double)SDTOSCArgumentList_getFloat(args, 0));
  return SDT_OSC_RETURN_OK;
}

SDTOSCReturnCode SDTOSCWindCavity_setDiameter(SDTWindCavity *x,
                                              const SDTOSCArgumentList *args) {
  if (SDTOSCArgumentList_getNArgs(args) < 1 ||
      !SDTOSCArgumentList_isFloat(args, 0))
    return SDT_OSC_RETURN_ARGUMENT_ERROR;
  SDTWindCavity_setDiameter(x, (double)SDTOSCArgumentList_getFloat(args, 0));
  return SDT_OSC_RETURN_OK;
}

SDTOSCReturnCode SDTOSCWindCavity(void (*log)(const char *, ...),
                                  const SDTOSCMessage *x) {
  SDTOSCArgumentList *args = SDTOSCMessage_getArguments(x);
  const char *key = (SDTOSCArgumentList_getNArgs(args) &&
                     SDTOSCArgumentList_isString(args, 0))
                        ? SDTOSCArgumentList_getString(args, 0)
                        : 0;
  SDTWindCavity *obj = (key) ? SDT_getWindCavity(key) : 0;
  SDTOSCReturnCode return_code;
  if (obj)
    if (SDTOSCMessage_hasContainer(x)) {
      SDTOSCArgumentList *sub_args =
          SDTOSCArgumentList_copyFromTo(SDTOSCMessage_getArguments(x), 1, -1);
      char *method = SDTOSCMessage_getContainer(x);
      if (!strcmp("log", method))
        return_code = SDTOSCWindCavity_log(log, key, obj);
      else if (!strcmp("save", method))
        return_code = SDTOSCWindCavity_save(log, key, obj, sub_args);
      else if (!strcmp("load", method))
        return_code = SDTOSCWindCavity_load(log, key, obj, sub_args);
      else if (!strcmp("maxDelay", method))
        return_code = SDTOSCWindCavity_setMaxDelay(obj, sub_args);
      else if (!strcmp("length", method))
        return_code = SDTOSCWindCavity_setLength(obj, sub_args);
      else if (!strcmp("diameter", method))
        return_code = SDTOSCWindCavity_setDiameter(obj, sub_args);
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

SDTOSCReturnCode SDTOSCWindKarman_log(void (*log)(const char *, ...),
                                      const char *key, SDTWindKarman *x) {
  json_value *obj = SDTWindKarman_toJSON(x);
  char *s = malloc(sizeof(char) * (strlen(key) + 32));
  sprintf(s, "sdtOSC: %s", key);
  SDTOSCReturnCode r = SDTOSCJSON_log(log, s, obj);
  free(s);
  json_builder_free(obj);
  return r;
}

SDTOSCReturnCode SDTOSCWindKarman_save(void (*log)(const char *, ...),
                                       const char *key, SDTWindKarman *x,
                                       const SDTOSCArgumentList *args) {
  char *name = malloc(sizeof(char) * (strlen(key) + 8));
  sprintf(name, "'%s'", key);
  json_value *obj = SDTWindKarman_toJSON(x);
  SDTOSCReturnCode return_code = SDTOSCJSON_save(log, name, obj, args);
  json_builder_free(obj);
  free(name);
  return return_code;
}

SDTOSCReturnCode SDTOSCWindKarman_load(void (*log)(const char *, ...),
                                       const char *key, SDTWindKarman *x,
                                       const SDTOSCArgumentList *args) {
  json_value *obj;
  char *name = malloc(sizeof(char) * (strlen(key) + 8));
  sprintf(name, "'%s'", key);
  SDTOSCReturnCode return_code = SDTOSCJSON_load(log, name, &obj, args);
  free(name);
  if (return_code == SDT_OSC_RETURN_OK) {
    SDTWindKarman *r = SDTWindKarman_fromJSON(obj);
    SDTWindKarman_copy(x, r);
    SDTWindKarman_free(r);
  }
  if (obj) json_builder_free(obj);
  return return_code;
}

SDTOSCReturnCode SDTOSCWindKarman_setDiameter(SDTWindKarman *x,
                                              const SDTOSCArgumentList *args) {
  if (SDTOSCArgumentList_getNArgs(args) < 1 ||
      !SDTOSCArgumentList_isFloat(args, 0))
    return SDT_OSC_RETURN_ARGUMENT_ERROR;
  SDTWindKarman_setDiameter(x, (double)SDTOSCArgumentList_getFloat(args, 0));
  return SDT_OSC_RETURN_OK;
}

SDTOSCReturnCode SDTOSCWindKarman(void (*log)(const char *, ...),
                                  const SDTOSCMessage *x) {
  SDTOSCArgumentList *args = SDTOSCMessage_getArguments(x);
  const char *key = (SDTOSCArgumentList_getNArgs(args) &&
                     SDTOSCArgumentList_isString(args, 0))
                        ? SDTOSCArgumentList_getString(args, 0)
                        : 0;
  SDTWindKarman *obj = (key) ? SDT_getWindKarman(key) : 0;
  SDTOSCReturnCode return_code;
  if (obj)
    if (SDTOSCMessage_hasContainer(x)) {
      SDTOSCArgumentList *sub_args =
          SDTOSCArgumentList_copyFromTo(SDTOSCMessage_getArguments(x), 1, -1);
      char *method = SDTOSCMessage_getContainer(x);
      if (!strcmp("log", method))
        return_code = SDTOSCWindKarman_log(log, key, obj);
      else if (!strcmp("save", method))
        return_code = SDTOSCWindKarman_save(log, key, obj, sub_args);
      else if (!strcmp("load", method))
        return_code = SDTOSCWindKarman_load(log, key, obj, sub_args);
      else if (!strcmp("diameter", method))
        return_code = SDTOSCWindKarman_setDiameter(obj, sub_args);
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

SDTOSCReturnCode SDTOSCWindFlow_log(void (*log)(const char *, ...),
                                    const char *key, SDTWindFlow *x) {
  json_value *obj = SDTWindFlow_toJSON(x);
  char *s = malloc(sizeof(char) * (strlen(key) + 32));
  sprintf(s, "sdtOSC: %s", key);
  SDTOSCReturnCode r = SDTOSCJSON_log(log, s, obj);
  free(s);
  json_builder_free(obj);
  return r;
}

SDTOSCReturnCode SDTOSCWindFlow_save(void (*log)(const char *, ...),
                                     const char *key, SDTWindFlow *x,
                                     const SDTOSCArgumentList *args) {
  char *name = malloc(sizeof(char) * (strlen(key) + 8));
  sprintf(name, "'%s'", key);
  json_value *obj = SDTWindFlow_toJSON(x);
  SDTOSCReturnCode return_code = SDTOSCJSON_save(log, name, obj, args);
  json_builder_free(obj);
  free(name);
  return return_code;
}

SDTOSCReturnCode SDTOSCWindFlow_load(void (*log)(const char *, ...),
                                     const char *key, SDTWindFlow *x,
                                     const SDTOSCArgumentList *args) {
  json_value *obj;
  char *name = malloc(sizeof(char) * (strlen(key) + 8));
  sprintf(name, "'%s'", key);
  SDTOSCReturnCode return_code = SDTOSCJSON_load(log, name, &obj, args);
  free(name);
  if (return_code == SDT_OSC_RETURN_OK) {
    SDTWindFlow *r = SDTWindFlow_fromJSON(obj);
    SDTWindFlow_copy(x, r);
    SDTWindFlow_free(r);
  }
  if (obj) json_builder_free(obj);
  return return_code;
}

SDTOSCReturnCode SDTOSCWindFlow(void (*log)(const char *, ...),
                                const SDTOSCMessage *x) {
  SDTOSCArgumentList *args = SDTOSCMessage_getArguments(x);
  const char *key = (SDTOSCArgumentList_getNArgs(args) &&
                     SDTOSCArgumentList_isString(args, 0))
                        ? SDTOSCArgumentList_getString(args, 0)
                        : 0;
  SDTWindFlow *obj = (key) ? SDT_getWindFlow(key) : 0;
  SDTOSCReturnCode return_code;
  if (obj)
    if (SDTOSCMessage_hasContainer(x)) {
      SDTOSCArgumentList *sub_args =
          SDTOSCArgumentList_copyFromTo(SDTOSCMessage_getArguments(x), 1, -1);
      char *method = SDTOSCMessage_getContainer(x);
      if (!strcmp("log", method))
        return_code = SDTOSCWindFlow_log(log, key, obj);
      else if (!strcmp("save", method))
        return_code = SDTOSCWindFlow_save(log, key, obj, sub_args);
      else if (!strcmp("load", method))
        return_code = SDTOSCWindFlow_load(log, key, obj, sub_args);
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
