#include "SDTOSC.h"
#include "SDTJSON.h"
#include "SDTSolids.h"
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <math.h>

void SDTOSCRoot(void (* log)(const char *, ...), const SDTOSCMessage* x) {
  SDTOSCReturnCode return_code = SDT_OSC_RETURN_NOT_IMPLEMENTED;
  if (!SDTOSCMessage_hasContainer(x))
    return_code = SDT_OSC_RETURN_MISSING_CONTAINER;
  else {
    char *method = SDTOSCMessage_getContainer(x);

    SDTOSCMessage* sub = SDTOSCMessage_openContainer(x);
    if (!strcmp("resonator", method) || !strcmp("inertial", method))
      return_code = SDTOSCResonator(log, sub);
    else if (!strcmp("interactor", method))
      return_code = SDTOSCInteractor(log, sub);

    SDTOSCMessage_free(sub);
  }
  SDTOSCLog(log, return_code, x);
}

//-------------------------------------------------------------------------------------//

SDTOSCReturnCode SDTOSCResonator(void (* log)(const char *, ...), const SDTOSCMessage* x) {
  SDTOSCArgumentList *args = SDTOSCMessage_getArguments(x);
  const char *res_key = (SDTOSCArgumentList_getNArgs(args) && SDTOSCArgumentList_isString(args, 0))? SDTOSCArgumentList_getString(args, 0) : 0;
  SDTResonator *res = (res_key)? SDT_getResonator(res_key) : 0;
  SDTOSCReturnCode return_code;

  if (res)
    if (SDTOSCMessage_hasContainer(x)) {
      SDTOSCArgumentList *sub_args = SDTOSCArgumentList_copyFromTo(SDTOSCMessage_getArguments(x), 1, -1);
      char *method = SDTOSCMessage_getContainer(x);
      if (!strcmp("log", method))
        return_code = SDTOSCResonator_log(log, res_key, res);
      else if (!strcmp("frequency", method))
        return_code = SDTOSCResonator_setFrequency(res, sub_args);
      else if (!strcmp("decay", method))
        return_code = SDTOSCResonator_setDecay(res, sub_args);
      else if (!strcmp("weight", method))
        return_code = SDTOSCResonator_setWeight(res, sub_args);
      else if (!strcmp("gain", method))
        return_code = SDTOSCResonator_setGain(res, sub_args);
      else if (!strcmp("fragmentsize", method))
        return_code = SDTOSCResonator_setFragmentSize(res, sub_args);
      else if (!strcmp("activemodes", method))
        return_code = SDTOSCResonator_setActiveModes(res, sub_args);
      else if (!strcmp("strike", method))
        return_code = SDTOSCResonator_strike(res, sub_args);
      else if (!strcmp("freqs", method))
        return_code = SDTOSCResonator_setFreqs(res, sub_args);
      else if (!strcmp("decays", method))
        return_code = SDTOSCResonator_setDecays(res, sub_args);
      else if (!strcmp("weights", method))
        return_code = SDTOSCResonator_setWeights(res, sub_args);
      else if (!strcmp("pickup", method))
        return_code = SDTOSCResonator_setGains(res, sub_args);
      else if (!strcmp("renew", method))
        return_code = SDTOSCResonator_renew(res, sub_args);
      else if (!strcmp("save", method))
        return_code = SDTOSCResonator_save(log, res_key, res, sub_args);
      else if (!strcmp("load", method))
        return_code = SDTOSCResonator_load(log, res_key, res, sub_args);
      else
        return_code = SDT_OSC_RETURN_NOT_IMPLEMENTED;
      SDTOSCArgumentList_free(sub_args);
    } else
      return_code = SDT_OSC_RETURN_MISSING_METHOD;
  else if (res_key)
    return_code = SDT_OSC_RETURN_OBJECT_NOT_FOUND;
  else
    return_code = SDT_OSC_RETURN_ARGUMENT_ERROR;

  return return_code;
}

SDTOSCReturnCode SDTOSCResonator_log(void (* log)(const char *, ...), const char *key, SDTResonator *x) {
  json_value *obj = SDTResonator_toJSON(x);
  char *s = malloc(sizeof(char) * (strlen(key) + 32));
  sprintf(s, "sdtOSC: %s", key);
  SDTOSCReturnCode r = SDTOSCJSON_log(log, s, obj);
  free(s);
  json_builder_free(obj);
  return r;
}

SDTOSCReturnCode SDTOSCResonator_renew(SDTResonator *x, const SDTOSCArgumentList *args) {
  if (SDTOSCArgumentList_getNArgs(args) < 2)
    return SDT_OSC_RETURN_ARGUMENT_ERROR;
  for(unsigned int i = 0 ; i < 2 ; ++i)
    if (!SDTOSCArgumentList_isFloat(args, i))
      return SDT_OSC_RETURN_ARGUMENT_ERROR;

  SDTResonator_renew(x, (unsigned int) SDTOSCArgumentList_getFloat(args, 0), (unsigned int) SDTOSCArgumentList_getFloat(args, 1));

  return SDT_OSC_RETURN_OK;
}

SDTOSCReturnCode SDTOSCResonator_save(void (* log)(const char *, ...), const char *key, SDTResonator *x, const SDTOSCArgumentList *args) {
  char *name = malloc(sizeof(char) * (strlen(key) + 8));
  sprintf(name, "'%s'", key);
  json_value *obj = SDTResonator_toJSON(x);
  SDTOSCReturnCode return_code = SDTOSCJSON_save(log, name, obj, args);

  json_builder_free(obj);
  free(name);
  return return_code;
}

SDTOSCReturnCode SDTOSCResonator_load(void (* log)(const char *, ...), const char *key, SDTResonator *x, const SDTOSCArgumentList *args) {
  json_value *obj;
  char *name = malloc(sizeof(char) * (strlen(key) + 8));
  sprintf(name, "'%s'", key);
  SDTOSCReturnCode return_code = SDTOSCJSON_load(log, name, &obj, args);
  free(name);
  if (return_code == SDT_OSC_RETURN_OK) {
    SDTResonator *r = SDTResonator_fromJSON(obj);
    SDTResonator_copy(x, r);
    SDTResonator_free(r);
  }
  if (obj)
    json_value_free(obj);
  return return_code;
}

SDTOSCReturnCode SDTOSCResonator_setFloat(void (* setter)(SDTResonator *, unsigned int, double), void (* setter_idx)(SDTResonator *, unsigned int, unsigned int, double), SDTResonator *x, const SDTOSCArgumentList *args) {
  for(unsigned int i = 0 ; i < SDTOSCArgumentList_getNArgs(args) ; ++i)
    if (!SDTOSCArgumentList_isFloat(args, i))
      return SDT_OSC_RETURN_ARGUMENT_ERROR;

  // If setter_idx function is specified, use that and consider the first argument as the index
  unsigned int idx_flag = (setter_idx)? 1 : 0;
  if (idx_flag && SDTOSCArgumentList_getNArgs(args) < (2 + idx_flag))
    return SDT_OSC_RETURN_ARGUMENT_ERROR;
  unsigned int idx = (idx_flag)? SDTOSCArgumentList_getFloat(args, 0) : 0;

  if (idx_flag)
    (*setter_idx)(x, idx, (unsigned int) SDTOSCArgumentList_getFloat(args, 1), SDTOSCArgumentList_getFloat(args, 2));
  else
    (*setter)(x, (unsigned int) SDTOSCArgumentList_getFloat(args, 0), SDTOSCArgumentList_getFloat(args, 1));
  return SDT_OSC_RETURN_OK;
}

SDTOSCReturnCode SDTOSCResonator_setFrequency(SDTResonator *x, const SDTOSCArgumentList *args) {
  return SDTOSCResonator_setFloat(&SDTResonator_setFrequency, 0, x, args);
}

SDTOSCReturnCode SDTOSCResonator_setDecay(SDTResonator *x, const SDTOSCArgumentList *args) {
  return SDTOSCResonator_setFloat(&SDTResonator_setDecay, 0, x, args);
}

SDTOSCReturnCode SDTOSCResonator_setWeight(SDTResonator *x, const SDTOSCArgumentList *args) {
  return SDTOSCResonator_setFloat(&SDTResonator_setWeight, 0, x, args);
}

SDTOSCReturnCode SDTOSCResonator_setGain(SDTResonator *x, const SDTOSCArgumentList *args) {
  return SDTOSCResonator_setFloat(0, &SDTResonator_setGain, x, args);
}

SDTOSCReturnCode SDTOSCResonator_setFragmentSize(SDTResonator *x, const SDTOSCArgumentList *args) {
  if (SDTOSCArgumentList_getNArgs(args) < 1 || !SDTOSCArgumentList_isFloat(args, 0))
    return SDT_OSC_RETURN_ARGUMENT_ERROR;

  SDTResonator_setFragmentSize(x, (double) SDTOSCArgumentList_getFloat(args, 0));
  return SDT_OSC_RETURN_OK;
}

SDTOSCReturnCode SDTOSCResonator_setActiveModes(SDTResonator *x, const SDTOSCArgumentList *args) {
  if (SDTOSCArgumentList_getNArgs(args) < 1 || !SDTOSCArgumentList_isFloat(args, 0))
    return SDT_OSC_RETURN_ARGUMENT_ERROR;

  SDTResonator_setActiveModes(x, (unsigned int) SDTOSCArgumentList_getFloat(args, 0));
  return SDT_OSC_RETURN_OK;
}

SDTOSCReturnCode SDTOSCResonator_setList(void (* setter)(SDTResonator *, unsigned int, double), void (* setter_idx)(SDTResonator *, unsigned int, unsigned int, double), SDTResonator *x, const SDTOSCArgumentList *args) {
  for(unsigned int i = 0 ; i < SDTOSCArgumentList_getNArgs(args) ; ++i)
    if (!SDTOSCArgumentList_isFloat(args, i))
      return SDT_OSC_RETURN_ARGUMENT_ERROR;

  // If setter_idx function is specified, use that and consider the first argument as the index
  unsigned int idx_flag = (setter_idx)? 1 : 0;
  if (idx_flag && SDTOSCArgumentList_getNArgs(args) < 1)
    return SDT_OSC_RETURN_ARGUMENT_ERROR;
  unsigned int idx = (idx_flag)? SDTOSCArgumentList_getFloat(args, 0) : 0;

  for(unsigned int i = idx_flag ; i < SDTOSCArgumentList_getNArgs(args) ; ++i)
    if (idx_flag)
      (*setter_idx)(x, idx, i - 1, SDTOSCArgumentList_getFloat(args, i));
    else
      (*setter)(x, i, SDTOSCArgumentList_getFloat(args, i));
  return SDT_OSC_RETURN_OK;
}

SDTOSCReturnCode SDTOSCResonator_setFreqs(SDTResonator *x, const SDTOSCArgumentList *args) {
  return SDTOSCResonator_setList(&SDTResonator_setFrequency, 0, x, args);
}

SDTOSCReturnCode SDTOSCResonator_setDecays(SDTResonator *x, const SDTOSCArgumentList *args) {
  return SDTOSCResonator_setList(&SDTResonator_setDecay, 0, x, args);
}

SDTOSCReturnCode SDTOSCResonator_setWeights(SDTResonator *x, const SDTOSCArgumentList *args) {
  return SDTOSCResonator_setList(&SDTResonator_setWeight, 0, x, args);
}

SDTOSCReturnCode SDTOSCResonator_setGains(SDTResonator *x, const SDTOSCArgumentList *args) {
  return SDTOSCResonator_setList(0, &SDTResonator_setGain, x, args);
}

SDTOSCReturnCode SDTOSCResonator_strike(SDTResonator *x, const SDTOSCArgumentList *args) {
  if (SDTOSCArgumentList_getNArgs(args) < 2 || !SDTOSCArgumentList_isFloat(args, 0) || !SDTOSCArgumentList_isFloat(args, 1))
    return SDT_OSC_RETURN_ARGUMENT_ERROR;

  double p = (double) SDTOSCArgumentList_getFloat(args, 0);
  double v = (double) SDTOSCArgumentList_getFloat(args, 1);
  int n = SDTResonator_getNPickups(x);
  for(unsigned int i = 0 ; i < n ; ++i) {
    SDTResonator_setPosition(x, i, p);
    SDTResonator_setVelocity(x, i, v);
  }
  return SDT_OSC_RETURN_OK;
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

SDTOSCReturnCode SDTOSCImpact(void (* log)(const char *, ...), const char *key0, const char *key1, SDTInteractor *x, const SDTOSCMessage* m) {
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
