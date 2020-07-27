#include "SDTOSCProjects.h"
#include "SDTProjects.h"
#include <string.h>

SDTOSCReturnCode SDTOSCProject(void (* log)(const char *, ...), const SDTOSCMessage* x) {
  SDTOSCReturnCode return_code = SDT_OSC_RETURN_MISSING_METHOD;
  if (SDTOSCMessage_hasContainer(x)) {
    SDTOSCArgumentList *args = SDTOSCMessage_getArguments(x);
    char *method = SDTOSCMessage_getContainer(x);
    if (!strcmp("log", method))
      return_code = SDTOSCProject_log(log, args);
    else
      return_code = SDT_OSC_RETURN_NOT_IMPLEMENTED;
  }
    

  return return_code;
}

SDTOSCReturnCode SDTOSCProject_log(void (* log)(const char *, ...), const SDTOSCArgumentList* args) {
  unsigned int argc = SDTOSCArgumentList_getNArgs(args);
  const char **argv = malloc(sizeof(char *) * argc);
  for (unsigned int i = 0; i < argc ; ++i)
    argv[i] = (SDTOSCArgumentList_isString(args, i))? SDTOSCArgumentList_getString(args, i) : "";

  json_value *arr = SDTProject_toJSON(argc, argv);
  free(argv);
  SDTOSCReturnCode r = SDTOSCJSON_log(log, "sdtOSC: project", arr);
  json_builder_free(arr);
  return r;
}