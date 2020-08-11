#include "SDTOSCProjects.h"
#include "SDTProjects.h"
#include "SDTJSON.h"
#include "SDTSolids.h"
#include <string.h>
#include <stdlib.h>
#include <stdio.h>
#include <stdint.h>
#include <math.h>

SDTOSCReturnCode SDTOSCProject(void (* log)(const char *, ...), const SDTOSCMessage* x) {
  SDTOSCArgumentList *args = SDTOSCMessage_getArguments(x);
  for (unsigned int i = 0 ; i < SDTOSCArgumentList_getNArgs(args) ; ++i)
    if (!SDTOSCArgumentList_isString(args, i))
      return SDT_OSC_RETURN_ARGUMENT_ERROR;

  SDTOSCReturnCode return_code = SDT_OSC_RETURN_MISSING_METHOD;
  if (SDTOSCMessage_hasContainer(x)) {
    char *method = SDTOSCMessage_getContainer(x);
    SDTOSCMessage* sub = SDTOSCMessage_openContainer(x);

    if (!strcmp("log", method))
      return_code = SDTOSCProject_log(log, args);
    else if (!strcmp("save", method))
      return_code = SDTOSCProject_save(log, args);
    else if (!strcmp("load", method))
      return_code = SDTOSCProject_load(log, args);
    else if (!strcmp("metadata", method))
      return_code = SDTOSCProjectMetadata(log, sub);
    else
      return_code = SDT_OSC_RETURN_NOT_IMPLEMENTED;

    SDTOSCMessage_free(sub);
  }

  return return_code;
}

SDTOSCReturnCode SDTOSCProject_log(void (* log)(const char *, ...), const SDTOSCArgumentList* args) {
  unsigned int argc = SDTOSCArgumentList_getNArgs(args);
  const char **argv = malloc(sizeof(char *) * argc);
  for (unsigned int i = 0; i < argc ; ++i)
    argv[i] = SDTOSCArgumentList_getString(args, i);

  json_value *prj = SDTProject_toJSON(argc, argv);
  free(argv);
  SDTOSCReturnCode r = SDTOSCJSON_log(log, "sdtOSC: project", prj);
  json_builder_free(prj);
  return r;
}

SDTOSCReturnCode SDTOSCProject_save(void (* log)(const char *, ...), const SDTOSCArgumentList* args) {
  int argc = SDTOSCArgumentList_getNArgs(args) - 1;
  if (argc < 1)
    return SDT_OSC_RETURN_ARGUMENT_ERROR;

  SDTOSCReturnCode r = SDT_OSC_RETURN_ERROR_WRITING_JSON;
  const char **argv = malloc(sizeof(char *) * argc);
  if (argv) {
    for (unsigned int i = 0; i < argc ; ++i)
      argv[i] = SDTOSCArgumentList_getString(args, i + 1);

    json_value *prj = SDTProject_toJSON(argc, argv);
    free(argv);

    if (prj) {
      r = SDTOSCJSON_save(log, "project", prj, args);
      json_builder_free(prj);
    }
  }
  return r;
}

static int SDTOSCProject_checkHelper(int check, void (* log)(const char *, ...), const char *fail_msg, SDTOSCReturnCode fail_code, SDTOSCReturnCode *code) {
  /*
  Pass through the check value
  If the check is false, then log the fail message and set the code to the fail code
  */
  if (!check) {
    if (log)
      (*log)(fail_msg);
    *code = fail_code;
  }
  return check;
}

static SDTOSCReturnCode SDTOSCProject_loadResonator(void (* log)(const char *, ...), const json_value *resonators, unsigned int idx) {
  /*
  Load resonator from JSON object resonators
  On fail, log message and set return code appropriately
  */
  const char *name = resonators->u.object.values[idx].name;
  const json_value *value = resonators->u.object.values[idx].value;

  if (value->type != json_object) {
    if (log) (*log)("         - '%s' not compliant (not a JSON object)", name);
    return SDT_OSC_RETURN_JSON_NOT_COMPLIANT;
  }

  SDTResonator *x = SDT_getResonator(name);

  if (!x) {
    if (log) (*log)("         - couldn't load '%s' (not found)", name);
    return SDT_OSC_RETURN_OBJECT_NOT_FOUND;
  }

  SDTResonator *tmp = SDTResonator_fromJSON(value);

  if (log) {
    if (SDTResonator_getNPickups(x) == SDTResonator_getNPickups(tmp))
      (*log)("         - %s", name);
    else
      (*log)("         - %s (number of pickup points changed from %d to %d, check that any interactor that involves this resonator has the correct number of outlets)", name, SDTResonator_getNPickups(x), SDTResonator_getNPickups(tmp));
  }

  SDTResonator_copy(x, tmp);
  SDTResonator_free(tmp);

  return SDT_OSC_RETURN_OK;
}

static SDTOSCReturnCode SDTOSCProject_loadInteractorT(
  void (* log)(const char *, ...),
  const json_value *interactors,
  unsigned int idx,
  const char *type_name,
  int (* type_check)(const SDTInteractor *),
  SDTInteractor *(* inter_from_json)(const json_value *),
  SDTInteractor *(* inter_copy)(SDTInteractor *, const SDTInteractor *),
  void (* inter_free)(SDTInteractor *)
) {
  /*
  Load interactor of a type from JSON array interactors
  On fail, log message and set return code appropriately
  */
  json_value *v = interactors->u.array.values[idx];

  if (v->type != json_object) {
    if (log) (*log)("         - %s #%d not compliant (not an object)", type_name, idx + 1);
    return SDT_OSC_RETURN_JSON_NOT_COMPLIANT;
  }

  const json_value *k = json_object_get_by_key(v, "key0");
  const char *key0 = (k && k->type == json_string)? k->u.string.ptr : 0;
  k = json_object_get_by_key(v, "key1");
  const char *key1 = (k && k->type == json_string)? k->u.string.ptr : 0;

  if (!(key0 && key1)) {
    if (log) (*log)("         - %s #%d not compliant (incomplete keys '%s' and '%s')", type_name, idx + 1, key0, key1);
    return SDT_OSC_RETURN_JSON_NOT_COMPLIANT;
  }

  SDTInteractor *x = SDT_getInteractor(key0, key1);

  if (!x) {
    if (log) (*log)("         - couldn't load %s between '%s' and '%s' (not found)", type_name, key0, key1);
    return SDT_OSC_RETURN_OBJECT_NOT_FOUND;
  }

  if (!(*type_check)(x)) {
    if (log) (*log)("         - couldn't load %s between '%s' and '%s' (not a %s)", type_name, key0, key1, type_name);
    return SDT_OSC_RETURN_INCORRECT_INTERACTOR_TYPE;
  }

  SDTInteractor *tmp = (*inter_from_json)(v);
  (*inter_copy)(x, tmp);
  (*inter_free)(tmp);
  
  if (log) (*log)("         - %s between '%s' and '%s'", type_name, key0, key1);

  return SDT_OSC_RETURN_OK;
}

static SDTOSCReturnCode SDTOSCProject_loadInteractorsT(
  SDTOSCReturnCode return_code,
  void (* log)(const char *, ...),
  const json_value *interactors,
  const char *json_key,
  const char *type_name,
  int (* type_check)(const SDTInteractor *),
  SDTInteractor *(* inter_from_json)(const json_value *),
  SDTInteractor *(* inter_copy)(SDTInteractor *, const SDTInteractor *),
  void (* inter_free)(SDTInteractor *)
) {
  /*
  If the return code is OK
  Load interactors of a type from JSON project "interactors" object
  On fail, log message and set return code appropriately
  */
  if (return_code == SDT_OSC_RETURN_OK) {
    const json_value *arr = json_object_get_by_key(interactors, json_key);
    if (arr) {
      if (arr->type == json_array)
        for (unsigned int i = 0; return_code == SDT_OSC_RETURN_OK && i < arr->u.array.length; ++i)
          return_code = SDTOSCProject_loadInteractorT(log, arr, i, type_name, type_check, inter_from_json, inter_copy, inter_free);
      else {
        if (log) (*log)("         - %s not compliant (not an array)", json_key);
        return_code = SDT_OSC_RETURN_JSON_NOT_COMPLIANT;
      }
    }
  }
  return return_code;
}

static SDTOSCReturnCode SDTOSCProject_loadImpacts(
  SDTOSCReturnCode return_code,
  void (* log)(const char *, ...),
  const json_value *interactors
) {
  return SDTOSCProject_loadInteractorsT(return_code, log, interactors,
    "impacts",
    "impact",
    &SDTInteractor_isImpact,
    &SDTImpact_fromJSON,
    &SDTImpact_copy,
    &SDTImpact_free
  );
}

static SDTOSCReturnCode SDTOSCProject_loadFrictions(
  SDTOSCReturnCode return_code,
  void (* log)(const char *, ...),
  const json_value *interactors
) {
  return SDTOSCProject_loadInteractorsT(return_code, log, interactors,
    "frictions",
    "friction",
    &SDTInteractor_isFriction,
    &SDTFriction_fromJSON,
    &SDTFriction_copy,
    &SDTFriction_free
  );
}

SDTOSCReturnCode SDTOSCProject_load(void (* log)(const char *, ...), const SDTOSCArgumentList* args) {
  json_value *prj;
  SDTOSCReturnCode return_code = SDTOSCJSON_load(log, "project", &prj, args);

  // Load metadata
  if (return_code == SDT_OSC_RETURN_OK)
    if (SDTOSCProject_checkHelper(prj->type == json_object, log, "         - project not compliant (not a JSON object)", SDT_OSC_RETURN_JSON_NOT_COMPLIANT, &return_code))
      SDTProjectMetadata_set(json_deepcopy(json_object_get_by_key(prj, "metadata")));

  // Load resonators
  if (return_code == SDT_OSC_RETURN_OK) {
    const json_value *res = json_object_get_by_key(prj, "resonators");
    if (res)
      if (SDTOSCProject_checkHelper(res->type == json_object, log, "         - resonators not compliant (not a JSON object)", SDT_OSC_RETURN_JSON_NOT_COMPLIANT, &return_code))
        for (unsigned int i = 0; return_code == SDT_OSC_RETURN_OK && i < res->u.object.length; ++i)
          return_code = SDTOSCProject_loadResonator(log, res, i);
  }

  // Load interactors
  if (return_code == SDT_OSC_RETURN_OK) {
    const json_value *inter = json_object_get_by_key(prj, "interactors");
    if (inter)
      if (SDTOSCProject_checkHelper(inter->type == json_object, log, "         - interactors not compliant (not an object)", SDT_OSC_RETURN_JSON_NOT_COMPLIANT, &return_code)) {
        return_code = SDTOSCProject_loadImpacts(return_code, log, inter);
        return_code = SDTOSCProject_loadFrictions(return_code, log, inter);
      }
  }

  if (prj)
    json_builder_free(prj);
  return return_code;
}

//-------------------------------------------------------------------------------------//

SDTOSCReturnCode SDTOSCProjectMetadata(void (* log)(const char *, ...), const SDTOSCMessage* x) {
  SDTOSCArgumentList *args = SDTOSCMessage_getArguments(x);
  SDTOSCReturnCode return_code = SDT_OSC_RETURN_MISSING_METHOD;
  if (SDTOSCMessage_hasContainer(x)) {
    char *method = SDTOSCMessage_getContainer(x);

    if (!strcmp("log", method))
      return_code = SDTOSCProjectMetadata_log(log);
    else if (!strcmp("save", method))
      return_code = SDTOSCProjectMetadata_save(log, args);
    else if (!strcmp("load", method))
      return_code = SDTOSCProjectMetadata_load(log, args);
    else if (!strcmp("set", method))
      return_code = SDTOSCProjectMetadata_set(log, args);
    else if (!strcmp("reset", method))
      return_code = SDTOSCProjectMetadata_reset(log);
    else
      return_code = SDT_OSC_RETURN_NOT_IMPLEMENTED;
  }

  return return_code;
}

SDTOSCReturnCode SDTOSCProjectMetadata_log(void (* log)(const char *, ...)) {
  json_value *metadata = SDTProjectMetadata_pop();
  SDTOSCReturnCode return_code = SDTOSCJSON_log(log, "sdtOSC: metadata", metadata);
  json_builder_free(metadata);
  return return_code;
}

SDTOSCReturnCode SDTOSCProjectMetadata_save(void (* log)(const char *, ...), const SDTOSCArgumentList* args) {
  if (!args || !SDTOSCArgumentList_getNArgs(args))
    return SDT_OSC_RETURN_ARGUMENT_ERROR;
  json_value *metadata = SDTProjectMetadata_pop();
  SDTOSCReturnCode return_code = SDTOSCJSON_save(log, "metadata", metadata, args);
  json_builder_free(metadata);
  return return_code;
}

SDTOSCReturnCode SDTOSCProjectMetadata_load(void (* log)(const char *, ...), const SDTOSCArgumentList* args) {
  json_value *tmp;
  SDTOSCReturnCode return_code = SDTOSCJSON_load(log, "metadata", &tmp, args);
  SDTProjectMetadata_set(tmp);
  return return_code;
}

SDTOSCReturnCode SDTOSCProjectMetadata_set(void (* log)(const char *, ...), const SDTOSCArgumentList* args) {
  if (!args || SDTOSCArgumentList_getNArgs(args) < 2)
    return SDT_OSC_RETURN_ARGUMENT_ERROR;
  json_value *meta = SDTProjectMetadata_pop();
  json_object_push(meta, SDTOSCArgumentList_getString(args, 0), json_string_new(SDTOSCArgumentList_getString(args, 1)));
  SDTProjectMetadata_set(meta);
  return SDT_OSC_RETURN_OK;
}

SDTOSCReturnCode SDTOSCProjectMetadata_reset(void (* log)(const char *, ...)) {
  SDTProjectMetadata_reset();
  return SDT_OSC_RETURN_OK;
}