#include "SDTOSCProjects.h"
#include "SDTSolids.h"
#include <string.h>
#include <stdio.h>
#include <stdint.h>


json_value *SDTOSCProject_toJSON(int argc, const char **argv) {
  json_value *prj = json_object_new(0);

  // Fetch all resonators and interactors
  json_value *res = json_object_new(0), *inter = json_object_new(0), *imp = json_array_new(0), *fri = json_array_new(0);
  SDTResonator *r;
  SDTInteractor *s;
  for (unsigned int i = 0; i < argc ; ++i)
    if ((r = SDT_getResonator(argv[i]))) {
      json_object_push(res, argv[i], SDTResonator_toJSON(r));
      for (unsigned int j = 0; j < argc ; ++j)
        if ((s = SDT_getInteractor(argv[i], argv[j]))) {
          if (SDTInteractor_isImpact(s))
            json_array_push(imp, SDTImpact_toJSON(s, argv[i], argv[j]));
          else if (SDTInteractor_isFriction(s))
            json_array_push(fri, SDTFriction_toJSON(s, argv[i], argv[j]));
        }
    }
  json_object_push(prj, "resonators", res);
  json_object_push(inter, "impacts", imp);
  json_object_push(inter, "frictions", fri);
  json_object_push(prj, "interactors", inter);

  return prj;
}

SDTOSCReturnCode SDTOSCProject(void (* log)(const char *, ...), const SDTOSCMessage* x) {
  SDTOSCArgumentList *args = SDTOSCMessage_getArguments(x);
  for (unsigned int i = 0 ; i < SDTOSCArgumentList_getNArgs(args) ; ++i)
    if (!SDTOSCArgumentList_isString(args, i))
      return SDT_OSC_RETURN_ARGUMENT_ERROR;

  SDTOSCReturnCode return_code = SDT_OSC_RETURN_MISSING_METHOD;
  if (SDTOSCMessage_hasContainer(x)) {
    char *method = SDTOSCMessage_getContainer(x);

    if (!strcmp("log", method))
      return_code = SDTOSCProject_log(log, args);
    else if (!strcmp("save", method))
      return_code = SDTOSCProject_save(log, args);
    else if (!strcmp("load", method))
      return_code = SDTOSCProject_load(log, args);
    else
      return_code = SDT_OSC_RETURN_NOT_IMPLEMENTED;
  }

  return return_code;
}

SDTOSCReturnCode SDTOSCProject_log(void (* log)(const char *, ...), const SDTOSCArgumentList* args) {
  unsigned int argc = SDTOSCArgumentList_getNArgs(args);
  const char **argv = malloc(sizeof(char *) * argc);
  for (unsigned int i = 0; i < argc ; ++i)
    argv[i] = SDTOSCArgumentList_getString(args, i);

  json_value *prj = SDTOSCProject_toJSON(argc, argv);
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

    json_value *prj = SDTOSCProject_toJSON(argc, argv);
    free(argv);

    if (prj) {
      r = SDTOSCJSON_save(log, "project", prj, args);
      json_builder_free(prj);
    }
  }
  return r;
}

int SDTProject_checkHelper(int check, void (* log)(const char *, ...), const char *fail_msg, SDTOSCReturnCode fail_code, SDTOSCReturnCode *code) {
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

SDTOSCReturnCode SDTOSCProject_loadResonator(void (* log)(const char *, ...), const json_value *resonators, unsigned int idx) {
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
  SDTResonator_copy(x, tmp);
  SDTResonator_free(tmp);
  
  if (log) (*log)("         - %s", name);

  return SDT_OSC_RETURN_OK;
}

SDTOSCReturnCode SDTOSCProject_loadInteractorT(
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

SDTOSCReturnCode SDTOSCProject_loadInteractorsT(
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

SDTOSCReturnCode SDTOSCProject_loadImpacts(
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

SDTOSCReturnCode SDTOSCProject_loadFrictions(
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

  // Load resonators
  if (return_code == SDT_OSC_RETURN_OK)
    if (SDTProject_checkHelper(prj->type == json_object, log, "         - project not compliant (not a JSON object)", SDT_OSC_RETURN_JSON_NOT_COMPLIANT, &return_code)) {
      const json_value *res = json_object_get_by_key(prj, "resonators");
      if (res)
        if (SDTProject_checkHelper(res->type == json_object, log, "         - resonators not compliant (not a JSON object)", SDT_OSC_RETURN_JSON_NOT_COMPLIANT, &return_code))
          for (unsigned int i = 0; return_code == SDT_OSC_RETURN_OK && i < res->u.object.length; ++i)
            return_code = SDTOSCProject_loadResonator(log, res, i);
    }

  // Load interactors
  if (return_code == SDT_OSC_RETURN_OK) {
    const json_value *inter = json_object_get_by_key(prj, "interactors");
    if (inter)
      if (SDTProject_checkHelper(inter->type == json_object, log, "         - interactors not compliant (not an object)", SDT_OSC_RETURN_JSON_NOT_COMPLIANT, &return_code)) {
        return_code = SDTOSCProject_loadImpacts(return_code, log, inter);
        return_code = SDTOSCProject_loadFrictions(return_code, log, inter);
      }
  }

  if (prj)
    json_value_free(prj);
  return return_code;
}
