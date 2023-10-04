/*
SDTOSCReturnCode SDTOSCDemix_log(void (*log)(const char *, ...),
                                 const char *key, SDTDemix *x) {
  json_value *obj = SDTDemix_toJSON(x);
  char *s = malloc(sizeof(char) * (strlen(key) + 32));
  sprintf(s, "sdtOSC: %s", key);
  SDTOSCReturnCode r = SDTOSCJSON_log(s, obj);
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
  SDTOSCReturnCode return_code = SDTOSCJSON_save(name, obj, args);
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
  SDTOSCReturnCode return_code = SDTOSCJSON_load(name, &obj, args);
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
  SDTOSCReturnCode r = SDTOSCJSON_log(s, obj);
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
  SDTOSCReturnCode return_code = SDTOSCJSON_save(name, obj, args);
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
  SDTOSCReturnCode return_code = SDTOSCJSON_load(name, &obj, args);
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
  SDTOSCReturnCode r = SDTOSCJSON_log(s, obj);
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
  SDTOSCReturnCode return_code = SDTOSCJSON_save(name, obj, args);
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
  SDTOSCReturnCode return_code = SDTOSCJSON_load(name, &obj, args);
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
  SDTOSCReturnCode r = SDTOSCJSON_log(s, obj);
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
  SDTOSCReturnCode return_code = SDTOSCJSON_save(name, obj, args);
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
  SDTOSCReturnCode return_code = SDTOSCJSON_load(name, &obj, args);
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

SDTOSCReturnCode SDTOSCMotor_log(void (*log)(const char *, ...),
                                 const char *key, SDTMotor *x) {
  json_value *obj = SDTMotor_toJSON(x);
  char *s = malloc(sizeof(char) * (strlen(key) + 32));
  sprintf(s, "sdtOSC: %s", key);
  SDTOSCReturnCode r = SDTOSCJSON_log(s, obj);
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
  SDTOSCReturnCode return_code = SDTOSCJSON_save(name, obj, args);
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
  SDTOSCReturnCode return_code = SDTOSCJSON_load(name, &obj, args);
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

SDTOSCReturnCode SDTOSCPitchShift_log(void (*log)(const char *, ...),
                                      const char *key, SDTPitchShift *x) {
  json_value *obj = SDTPitchShift_toJSON(x);
  char *s = malloc(sizeof(char) * (strlen(key) + 32));
  sprintf(s, "sdtOSC: %s", key);
  SDTOSCReturnCode r = SDTOSCJSON_log(s, obj);
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
  SDTOSCReturnCode return_code = SDTOSCJSON_save(name, obj, args);
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
  SDTOSCReturnCode return_code = SDTOSCJSON_load(name, &obj, args);
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
