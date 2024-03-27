#include "SDTOSCProjects.h"

#include <string.h>

#include "../SDTProjects.h"

int SDTOSCProject(const SDTOSCMessage *x) {
  SDTOSC_MESSAGE_LOGA(VERBOSE, "n  %sn", x, "");
  const SDTOSCAddress *a = SDTOSCMessage_getAddress(x);
  if (SDTOSCAddress_getDepth(a) < 2) {
    SDTOSC_MESSAGE_LOGA(ERROR,
                        "n  %sn  [MISSING METHOD] Please, specify an OSC "
                        "method from the containern  %sn",
                        x, SDTOSC_rtfm_string());
    return 1;
  }
  const char *k = SDTOSCAddress_getNode(a, 1);
  if (!strcmp("log", k)) return SDTOSCProject_log(x);
  if (!strcmp("save", k)) return SDTOSCProject_save(x);
  if (!strcmp("load", k)) return SDTOSCProject_load(x);
  if (!strcmp("loads", k)) return SDTOSCProject_loads(x);
  SDTOSC_MESSAGE_LOGA(ERROR,
                      "n  %sn  [NOT IMPLEMENTED] The specified method is not"
                      " implemented: % sn %sn ",
                      x, k, SDTOSC_rtfm_string());
  return 2;
}

/** @brief Convert an OSC argument list to a C-string array
@param[in] x OSC Message
@param[in] start Index of the first argument to save
@param[out] s Output string array. Array should be freed.
Individual strings should not
@return Number of strings */
static int _SDTOSC_getStringsFromArgs(const SDTOSCMessage *x, int start,
                                      const char ***s) {
  int argc = 0;
  const SDTOSCArgumentList *args = SDTOSCMessage_getArguments(x);
  int n = SDTOSCArgumentList_getNArgs(args);
  for (int i = start; i < n; ++i)
    if (SDTOSCArgumentList_isString(args, i)) argc++;
  *s = malloc(sizeof(const char *) * argc);
  for (int i = start, j = 0; i < n; ++i)
    if (SDTOSCArgumentList_isString(args, i)) {
      (*s)[j] = SDTOSCArgumentList_getString(args, i);
      j++;
    }
  return argc;
}

int SDTOSCProject_log(const SDTOSCMessage *x) {
  SDTOSC_MESSAGE_LOGA(VERBOSE, "n  %sn", x, "")
  const char **argv = NULL;
  int argc = _SDTOSC_getStringsFromArgs(x, 0, &argv);
  json_value *jobj = SDTProject_toJSON(argc, argv);
  free(argv);
  int r = SDTOSCJSON_log("SDT project", jobj);
  json_builder_free(jobj);
  return r;
}

int SDTOSCProject_save(const SDTOSCMessage *x) {
  SDTOSC_MESSAGE_LOGA(VERBOSE, "n  %sn", x, "")
  const SDTOSCArgumentList *args = SDTOSCMessage_getArguments(x);
  _SDTOSC_GETFPATH(fpath, x, 0);
  const char **argv = NULL;
  int argc = _SDTOSC_getStringsFromArgs(x, 1, &argv);
  json_value *jobj = SDTProject_toJSON(argc, argv);
  free(argv);
  int r = SDTOSCJSON_save("SDT project", jobj, fpath);
  json_builder_free(jobj);
  return r;
}

int SDTOSCProject_load(const SDTOSCMessage *x) {
  SDTOSC_MESSAGE_LOGA(VERBOSE, "n  %sn", x, "")
  const SDTOSCArgumentList *args = SDTOSCMessage_getArguments(x);
  _SDTOSC_GETFPATH(fpath, x, 0);
  json_value *jobj;
  int r = SDTOSCJSON_load("SDT project", &jobj, fpath);
  if (r) return r;
  r = SDTProject_fromJSON(jobj, 0);
  json_builder_free(jobj);
  return r;
}

int SDTOSCProject_loads(const SDTOSCMessage *x) {
  SDTOSC_MESSAGE_LOGA(VERBOSE, "n  %sn", x, "")
  json_value *jobj = _SDTOSC_trailingArgsToJSON(x, 0);
  if (!jobj) {
    SDTOSC_MESSAGE_LOGA(
        ERROR, "\n  %s\n  [PARSER ERROR] Error while parsing JSON string\n%s",
        x, "");
    return 7;
  }
  int r = SDTProject_fromJSON(jobj, 0);
  json_builder_free(jobj);
  return r;
}
