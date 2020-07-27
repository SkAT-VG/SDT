#include "SDTOSCProjects.h"
#include "SDTSolids.h"
#include <string.h>


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

SDTOSCReturnCode SDTOSCProject_load(void (* log)(const char *, ...), const SDTOSCArgumentList* args) {
  json_value *prj;
  SDTOSCReturnCode return_code = SDTOSCJSON_load(log, "project", &prj, args);

  if (return_code == SDT_OSC_RETURN_OK && prj->type == json_object) {
    // Load resonators
    const json_value *res = json_object_get_by_key(prj, "resonators");
    if (res && (res->type == json_object))
      for (unsigned int i = 0; i < res->u.object.length; ++i) {
        SDTResonator *x;
        const char *x_key = res->u.object.values[i].name;
        if ((x = SDT_getResonator(x_key))) {
          SDTResonator *tmp = SDTResonator_fromJSON(res->u.object.values[i].value);
          SDTResonator_copy(x, tmp);
          SDTResonator_free(tmp);
          if (log)
            (*log)("         - %s", x_key);
        } else {
          if (log)
            (*log)("         - couldn't load '%s' (not found)", x_key);
          return_code = SDT_OSC_RETURN_OBJECT_NOT_FOUND;
          break;
        }
      }

  }

  if (prj)
    json_value_free(prj);
  return return_code;
}