#include "SDTOSCAnalysis.h"
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "SDTCommon.h"

#define SDTOSCZEROCROSSING_GETINSTANCE(NAME, VAR, x)                          \
  const SDTZeroCrossing* VAR = 0;                                             \
  const char* NAME = "";                                                      \
  {                                                                           \
    const SDTOSCArgumentList* args = SDTOSCMessage_getArguments(x);           \
    if (!SDTOSCArgumentList_getNArgs(args)) {                                 \
      SDTOSC_MESSAGE_LOGA(                                                    \
          ERROR,                                                              \
          "\n  %s\n  [ARGUMENT ERROR] Missing argument: instance name\n "     \
          " %s\n",                                                            \
          x, SDTOSC_rtfm_string());                                           \
      return 1;                                                               \
    }                                                                         \
    if (SDTOSCArgumentList_isString(args, 0)) {                               \
      NAME = SDTOSCArgumentList_getString(args, 0);                           \
    } else {                                                                  \
      SDTOSC_MESSAGE_LOGA(                                                    \
          ERROR,                                                              \
          "\n  %s\n  [ARGUMENT ERROR] First argument should be a string\n "   \
          " %s\n",                                                            \
          x, SDTOSC_rtfm_string());                                           \
      return 2;                                                               \
    }                                                                         \
    VAR = SDT_getZeroCrossing(NAME);                                          \
    if (!VAR) {                                                               \
      SDTOSC_MESSAGE_LOGA(                                                    \
          ERROR,                                                              \
          "\n  %s\n  [OBJECT NOT FOUND] No zerox object registered as: %s\n " \
          " %s\n",                                                            \
          x, NAME, SDTOSC_rtfm_string());                                     \
      return 3;                                                               \
    }                                                                         \
  }

#define SDTOSCZEROCROSSING_GETFILE(VAR, x)                                   \
  const char* VAR = NULL;                                                    \
  {                                                                          \
    const SDTOSCArgumentList* args = SDTOSCMessage_getArguments(x);          \
    if (SDTOSCArgumentList_getNArgs(args) < 2) {                             \
      SDTOSC_MESSAGE_LOGA(                                                   \
          ERROR,                                                             \
          "\n  %s\n  [ARGUMENT ERROR] Missing argument: file path\n "        \
          " %s\n",                                                           \
          x, SDTOSC_rtfm_string());                                          \
      return 1;                                                              \
    }                                                                        \
    if (SDTOSCArgumentList_isString(args, 1)) {                              \
      VAR = SDTOSCArgumentList_getString(args, 1);                           \
    } else {                                                                 \
      SDTOSC_MESSAGE_LOGA(                                                   \
          ERROR,                                                             \
          "\n  %s\n  [ARGUMENT ERROR] Second argument should be a string\n " \
          " %s\n",                                                           \
          x, SDTOSC_rtfm_string());                                          \
      return 2;                                                              \
    }                                                                        \
  }

int SDTOSCZeroCrossing_log(const SDTOSCMessage* x) {
  SDTOSC_MESSAGE_LOGA(DEBUG, "\n  %s\n", x, "");
  SDTOSCZEROCROSSING_GETINSTANCE(k, z, x)
  json_value* obj = SDTZeroCrossing_toJSON(z);
  int r = SDTOSCJSON_log(k, obj);
  json_builder_free(obj);
  return r;
}

int SDTOSCZeroCrossing_save(const SDTOSCMessage* x) {
  SDTOSC_MESSAGE_LOGA(DEBUG, "\n  %s\n", x, "");
  SDTOSCZEROCROSSING_GETINSTANCE(k, z, x)
  SDTOSCZEROCROSSING_GETFILE(fpath, x)
  json_value* obj = SDTZeroCrossing_toJSON(z);
  int r = SDTOSCJSON_save(k, obj, fpath);
  json_builder_free(obj);
  return r;
}

// int SDTOSCZeroCrossing_load(const char *key, SDTZeroCrossing *x,
//                             const SDTOSCArgumentList *args) {
//   json_value *obj;
//   char *name = malloc(sizeof(char) * (strlen(key) + 8));
//   sprintf(name, "'%s'", key);
//   int r = SDTOSCJSON_load(name, &obj, args);
//   free(name);
//   if (r) return r;
//   SDTZeroCrossing_setParams(x, obj, 0);
//   if (obj) json_builder_free(obj);
//   return r;
// }

// int SDTOSCZeroCrossing_setSize(SDTZeroCrossing *x,
//                                const SDTOSCArgumentList *args) {
//   if (SDTOSCArgumentList_getNArgs(args) < 1 ||
//       !SDTOSCArgumentList_isFloat(args, 0))
//     return SDT_OSC_RETURN_ARGUMENT_ERROR;
//   SDTZeroCrossing_setSize(x,
//                           (unsigned int)SDTOSCArgumentList_getFloat(args,
//                           0));
//   return SDT_OSC_RETURN_OK;
// }

// int SDTOSCZeroCrossing_setOverlap(SDTZeroCrossing *x,
//                                   const SDTOSCArgumentList *args) {
//   if (SDTOSCArgumentList_getNArgs(args) < 1 ||
//       !SDTOSCArgumentList_isFloat(args, 0))
//     return SDT_OSC_RETURN_ARGUMENT_ERROR;
//   SDTZeroCrossing_setOverlap(x, (double)SDTOSCArgumentList_getFloat(args,
//   0)); return SDT_OSC_RETURN_OK;
// }

int SDTOSCZeroCrossing(const SDTOSCMessage* x) {
  SDTOSC_MESSAGE_LOGA(DEBUG, "\n  %s\n", x, "");
  const SDTOSCAddress* a = SDTOSCMessage_getAddress(x);
  if (SDTOSCAddress_getDepth(a) < 2) {
    SDTOSC_MESSAGE_LOGA(ERROR,
                        "\n  %s\n  [MISSING METHOD] Please, specify an OSC "
                        "method from the container\n  %s\n",
                        x, SDTOSC_rtfm_string());
    return 1;
  }
  const char* k = SDTOSCAddress_getNode(a, 1);
  if (!strcmp("log", k)) return SDTOSCZeroCrossing_log(x);
  if (!strcmp("save", k)) return SDTOSCZeroCrossing_save(x);
  SDTOSC_MESSAGE_LOGA(ERROR,
                      "\n  %s\n  [NOT IMPLEMENTED] The specified method is not "
                      "implemented: %s\n  %s\n",
                      x, k, SDTOSC_rtfm_string());
  return 2;
}
