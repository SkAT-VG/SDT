#include "SDTOSCProjects.h"
#include "SDTSolids.h"
#include <string.h>
#include <stdio.h>
#include <stdint.h>


json_value *SDTOSCProject_toJSON(int argc, const char **argv) {
  json_value *prj = json_object_new(0);

  // Fetch all resonators and interactors
  json_value *res = json_object_new(0), *inter = json_object_new(0), *imp = json_array_new(0);
  SDTResonator *r;
  SDTInteractor *s;
  for (unsigned int i = 0; i < argc ; ++i)
    if ((r = SDT_getResonator(argv[i]))) {
      json_object_push(res, argv[i], SDTResonator_toJSON(r));
      for (unsigned int j = 0; j < argc ; ++j)
        if ((j != i) && (s = SDT_getInteractor(argv[i], argv[j])))
          if (SDTInteractor_isImpact(s))
            json_array_push(imp, SDTImpact_toJSON(s, argv[i], argv[j]));
    }
  json_object_push(prj, "resonators", res);
  json_object_push(inter, "impacts", imp);
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
  unsigned int argc = SDTOSCArgumentList_getNArgs(args);
  if (argc < 1)
    return SDT_OSC_RETURN_ARGUMENT_ERROR;

  const char **argv = malloc(sizeof(char *) * (argc - 1));
  for (unsigned int i = 1; i < argc ; ++i)
    argv[i] = SDTOSCArgumentList_getString(args, i);

  json_value *prj = SDTOSCProject_toJSON(argc, argv);
  free(argv);
  SDTOSCReturnCode r = SDTOSCJSON_save(log, "project", prj, args);
  json_builder_free(prj);
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

SDTOSCReturnCode SDTOSCProject_loadImpact(void (* log)(const char *, ...), const json_value *impacts, unsigned int idx) {
  /*
  Load impact from JSON array impacts
  On fail, log message and set return code appropriately
  */
  json_value *v = impacts->u.array.values[idx];

  if (v->type != json_object) {
    if (log) (*log)("         - impact #%d not compliant (not an object)", idx + 1);
    return SDT_OSC_RETURN_JSON_NOT_COMPLIANT;
  }

  const json_value *k = json_object_get_by_key(v, "key0");
  const char *key0 = (k && k->type == json_string)? k->u.string.ptr : 0;
  k = json_object_get_by_key(v, "key1");
  const char *key1 = (k && k->type == json_string)? k->u.string.ptr : 0;

  if (!(key0 && key1)) {
    if (log) (*log)("         - impact #%d not compliant (incomplete keys '%s' and '%s')", idx + 1, key0, key1);
    return SDT_OSC_RETURN_JSON_NOT_COMPLIANT;
  }

  SDTInteractor *x = SDT_getInteractor(key0, key1);

  if (!x) {
    if (log) (*log)("         - couldn't load impact between '%s' and '%s' (not found)", key0, key1);
    return SDT_OSC_RETURN_OBJECT_NOT_FOUND;
  }

  SDTInteractor *tmp = SDTImpact_fromJSON(v);

  SDTImpact_setStiffness(x, SDTImpact_getStiffness(tmp));
  SDTImpact_setDissipation(x, SDTImpact_getDissipation(tmp));
  SDTImpact_setShape(x, SDTImpact_getShape(tmp));
  SDTInteractor_setFirstPoint(x, SDTInteractor_getFirstPoint(tmp));
  SDTInteractor_setSecondPoint(x, SDTInteractor_getSecondPoint(tmp));

  SDTImpact_free(tmp);
  if (log) (*log)("         - impact between '%s' and '%s'", key0, key1);

  return SDT_OSC_RETURN_OK;
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
    if (inter) {
      if (SDTProject_checkHelper(inter->type == json_object, log, "         - interactors not compliant (not an object)", SDT_OSC_RETURN_JSON_NOT_COMPLIANT, &return_code)) {
        // Load impacts
        const json_value *imp = json_object_get_by_key(inter, "impacts");
        if (imp)
          if (SDTProject_checkHelper(imp->type == json_array, log, "         - impacts not compliant (not an array)", SDT_OSC_RETURN_JSON_NOT_COMPLIANT, &return_code))
            for (unsigned int i = 0; return_code == SDT_OSC_RETURN_OK && i < imp->u.array.length; ++i)
              return_code = SDTOSCProject_loadImpact(log, imp, i);
      }
    }
  }

  if (prj)
    json_value_free(prj);
  return return_code;
}
