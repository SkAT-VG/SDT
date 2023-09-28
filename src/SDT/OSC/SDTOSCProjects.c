#include "SDTOSCProjects.h"

#include <math.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#include "../SDTJSON.h"
#include "../SDTProjects.h"
#include "../SDTSolids.h"

/*
SDTOSCReturnCode SDTOSCProject(void (*log)(const char *, ...),
                               const SDTOSCMessage *x) {
  SDTOSCArgumentList *args = SDTOSCMessage_getArguments(x);
  for (unsigned int i = 0; i < SDTOSCArgumentList_getNArgs(args); ++i)
    if (!SDTOSCArgumentList_isString(args, i))
      return SDT_OSC_RETURN_ARGUMENT_ERROR;

  SDTOSCReturnCode return_code = SDT_OSC_RETURN_MISSING_METHOD;
  if (SDTOSCMessage_hasContainer(x)) {
    char *method = SDTOSCMessage_getContainer(x);
    SDTOSCMessage *sub = SDTOSCMessage_openContainer(x);

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

SDTOSCReturnCode SDTOSCProject_log(void (*log)(const char *, ...),
                                   const SDTOSCArgumentList *args) {
  unsigned int argc = SDTOSCArgumentList_getNArgs(args);
  const char **argv = malloc(sizeof(char *) * argc);
  for (unsigned int i = 0; i < argc; ++i)
    argv[i] = SDTOSCArgumentList_getString(args, i);

  json_value *prj = SDTProject_toJSON(argc, argv);
  free(argv);
  SDTOSCReturnCode r = SDTOSCJSON_log("sdtOSC: project", prj);
  json_builder_free(prj);
  return r;
}

SDTOSCReturnCode SDTOSCProject_save(void (*log)(const char *, ...),
                                    const SDTOSCArgumentList *args) {
  int argc = SDTOSCArgumentList_getNArgs(args) - 1;
  if (argc < 1) return SDT_OSC_RETURN_ARGUMENT_ERROR;

  SDTOSCReturnCode r = SDT_OSC_RETURN_ERROR_WRITING_JSON;
  const char **argv = malloc(sizeof(char *) * argc);
  if (argv) {
    for (unsigned int i = 0; i < argc; ++i)
      argv[i] = SDTOSCArgumentList_getString(args, i + 1);

    json_value *prj = SDTProject_toJSON(argc, argv);
    free(argv);

    if (prj) {
      r = SDTOSCJSON_save("project", prj, args);
      json_builder_free(prj);
    }
  }
  return r;
}

SDTOSCReturnCode SDTOSCProject_load(void (*log)(const char *, ...),
                                    const SDTOSCArgumentList *args) {
  json_value *prj;
  json_value *msg = json_object_new(0);
  SDTOSCReturnCode return_code = SDTOSCJSON_load("project", &prj, args);
  SDTProject_fromJSON(prj, &return_code, msg);
  if (prj) json_builder_free(prj);
  if (msg) {
    if (msg->type == json_object && msg->u.object.length)
      SDTOSCJSON_log("sdtOSC: errors loading project", msg);
    json_builder_free(msg);
  }
  return return_code;
}

//-------------------------------------------------------------------------------------//

SDTOSCReturnCode SDTOSCProjectMetadata(void (*log)(const char *, ...),
                                       const SDTOSCMessage *x) {
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

SDTOSCReturnCode SDTOSCProjectMetadata_log(void (*log)(const char *, ...)) {
  json_value *metadata = SDTProjectMetadata_pop();
  SDTOSCReturnCode return_code = SDTOSCJSON_log("sdtOSC: metadata", metadata);
  json_builder_free(metadata);
  return return_code;
}

SDTOSCReturnCode SDTOSCProjectMetadata_save(void (*log)(const char *, ...),
                                            const SDTOSCArgumentList *args) {
  if (!args || !SDTOSCArgumentList_getNArgs(args))
    return SDT_OSC_RETURN_ARGUMENT_ERROR;
  json_value *metadata = SDTProjectMetadata_pop();
  SDTOSCReturnCode return_code = SDTOSCJSON_save("metadata", metadata, args);
  json_builder_free(metadata);
  return return_code;
}

SDTOSCReturnCode SDTOSCProjectMetadata_load(void (*log)(const char *, ...),
                                            const SDTOSCArgumentList *args) {
  json_value *tmp;
  SDTOSCReturnCode return_code = SDTOSCJSON_load("metadata", &tmp, args);
  SDTProjectMetadata_set(tmp);
  return return_code;
}

SDTOSCReturnCode SDTOSCProjectMetadata_set(void (*log)(const char *, ...),
                                           const SDTOSCArgumentList *args) {
  if (!args || SDTOSCArgumentList_getNArgs(args) < 2)
    return SDT_OSC_RETURN_ARGUMENT_ERROR;
  json_value *meta = SDTProjectMetadata_pop();
  json_object_push(meta, SDTOSCArgumentList_getString(args, 0),
                   json_string_new(SDTOSCArgumentList_getString(args, 1)));
  SDTProjectMetadata_set(meta);
  return SDT_OSC_RETURN_OK;
}

SDTOSCReturnCode SDTOSCProjectMetadata_reset(void (*log)(const char *, ...)) {
  SDTProjectMetadata_reset();
  return SDT_OSC_RETURN_OK;
}
*/
