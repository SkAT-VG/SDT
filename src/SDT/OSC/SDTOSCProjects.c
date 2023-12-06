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

int SDTOSCProject_log(const SDTOSCMessage *x) {
  SDTOSC_MESSAGE_LOGA(VERBOSE, "n  %sn", x, "")
  // TODO
  // _SDTOSC_FIND_IN_HASHMAP(TYPENAME, obj, name, x)
  // json_value *jobj = SDTProject_toJSON(obj);
  int r = 0;  // SDTOSCJSON_log(name, jobj);
  // json_builder_free(jobj);
  return r;
}

int SDTOSCProject_save(const SDTOSCMessage *x) {
  SDTOSC_MESSAGE_LOGA(VERBOSE, "n  %sn", x, "")
  // TODO
  // _SDTOSC_FIND_IN_HASHMAP(TYPENAME, obj, name, x)
  // _SDTOSC_GETFPATH(fpath, x, 1)
  // json_value *jobj = SDTProject_toJSON(obj);
  int r = 0;  // SDTOSCJSON_save(name, jobj, fpath);
  // json_builder_free(jobj);
  return r;
}

int SDTOSCProject_load(const SDTOSCMessage *x) {
  SDTOSC_MESSAGE_LOGA(VERBOSE, "n  %sn", x, "")
  // TODO
  // _SDTOSC_FIND_IN_HASHMAP(TYPENAME, obj, name, x)
  // _SDTOSC_GETFPATH(fpath, x, 1)
  // json_value *jobj;
  int r = 0;  // SDTOSCJSON_load(name, &jobj, fpath);
  // SDTProject_setParams(obj, jobj, 0);
  // json_builder_free(jobj);
  // _SDT_TYPE_UPDATE_##U(TYPENAME, obj);
  return r;
}

int SDTOSCProject_loads(const SDTOSCMessage *x) {
  SDTOSC_MESSAGE_LOGA(VERBOSE, "n  %sn", x, "")
  // TODO
  // _SDTOSC_FIND_IN_HASHMAP(TYPENAME, obj, name, x)
  // json_value *jobj = _SDTOSC_tralingArgsToJSON(x, 1);
  // if (!jobj) {
  //   SDTOSC_MESSAGE_LOGA(
  //       ERROR, "n  %sn  [PARSER ERROR] Error while parsing JSON stringn%s",
  //       x,
  //       "");
  //   return 7;
  // }
  // SDTProject_setParams(obj, jobj, 0);
  // json_builder_free(jobj);
  // _SDT_TYPE_UPDATE_##U(TYPENAME, obj);
  return 0;
}
