/*
SDTOSCReturnCode SDTOSCReverb_log(void (*log)(const char *, ...),
                                  const char *key, SDTReverb *x) {
  json_value *obj = SDTReverb_toJSON(x);
  char *s = malloc(sizeof(char) * (strlen(key) + 32));
  sprintf(s, "sdtOSC: %s", key);
  SDTOSCReturnCode r = SDTOSCJSON_log(s, obj);
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
  SDTOSCReturnCode return_code = SDTOSCJSON_save(name, obj, args);
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
  SDTOSCReturnCode return_code = SDTOSCJSON_load(name, &obj, args);
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
  SDTOSCReturnCode r = SDTOSCJSON_log(s, obj);
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
  SDTOSCReturnCode return_code = SDTOSCJSON_save(name, obj, args);
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
  SDTOSCReturnCode return_code = SDTOSCJSON_load(name, &obj, args);
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
  SDTOSCReturnCode r = SDTOSCJSON_log(s, obj);
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
  SDTOSCReturnCode return_code = SDTOSCJSON_save(name, obj, args);
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
  SDTOSCReturnCode return_code = SDTOSCJSON_load(name, &obj, args);
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
