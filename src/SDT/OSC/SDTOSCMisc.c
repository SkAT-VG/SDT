/*
SDTOSCReturnCode SDTOSCWindCavity_log(void (*log)(const char *, ...),
                                      const char *key, SDTWindCavity *x) {
  json_value *obj = SDTWindCavity_toJSON(x);
  char *s = malloc(sizeof(char) * (strlen(key) + 32));
  sprintf(s, "sdtOSC: %s", key);
  SDTOSCReturnCode r = SDTOSCJSON_log(s, obj);
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
  SDTOSCReturnCode return_code = SDTOSCJSON_save(name, obj, args);
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
  SDTOSCReturnCode return_code = SDTOSCJSON_load(name, &obj, args);
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
  SDTOSCReturnCode r = SDTOSCJSON_log(s, obj);
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
  SDTOSCReturnCode return_code = SDTOSCJSON_save(name, obj, args);
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
  SDTOSCReturnCode return_code = SDTOSCJSON_load(name, &obj, args);
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
  SDTOSCReturnCode r = SDTOSCJSON_log(s, obj);
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
  SDTOSCReturnCode return_code = SDTOSCJSON_save(name, obj, args);
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
  SDTOSCReturnCode return_code = SDTOSCJSON_load(name, &obj, args);
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
*/
