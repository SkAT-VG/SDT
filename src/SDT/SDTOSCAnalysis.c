#include "SDTOSCAnalysis.h"
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "SDTCommon.h"

// int SDTOSCZeroCrossing_log(const char *key, SDTZeroCrossing *x) {
//   json_value *obj = SDTZeroCrossing_toJSON(x);
//   char *s = malloc(sizeof(char) * (strlen(key) + 32));
//   sprintf(s, "sdtOSC: %s", key);
//   int r = SDTOSCJSON_log(s, obj);
//   free(s);
//   json_builder_free(obj);
//   return r;
// }

// int SDTOSCZeroCrossing_save(const char *key, SDTZeroCrossing *x,
//                             const SDTOSCArgumentList *args) {
//   char *name = malloc(sizeof(char) * (strlen(key) + 8));
//   sprintf(name, "'%s'", key);
//   json_value *obj = SDTZeroCrossing_toJSON(x);
//   int r = SDTOSCJSON_save(name, obj, args);
//   json_builder_free(obj);
//   free(name);
//   return r;
// }

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
  // SDTOSCArgumentList *args = SDTOSCMessage_getArguments(x);
  // const char *key = (SDTOSCArgumentList_getNArgs(args) &&
  //                    SDTOSCArgumentList_isString(args, 0))
  //                       ? SDTOSCArgumentList_getString(args, 0)
  //                       : 0;
  // SDTZeroCrossing *obj = (key) ? SDT_getZeroCrossing(key) : 0;
  // int return_code;
  // if (obj)
  //   if (SDTOSCMessage_hasContainer(x)) {
  //     SDTOSCArgumentList *sub_args =
  //         SDTOSCArgumentList_copyFromTo(SDTOSCMessage_getArguments(x), 1,
  //         -1);
  //     char *method = SDTOSCMessage_getContainer(x);
  //     if (!strcmp("log", method))
  //       return_code = SDTOSCZeroCrossing_log(key, obj);
  //     else if (!strcmp("save", method))
  //       return_code = SDTOSCZeroCrossing_save(key, obj, sub_args);
  //     else if (!strcmp("load", method))
  //       return_code = SDTOSCZeroCrossing_load(key, obj, sub_args);
  //     else if (!strcmp("size", method))
  //       return_code = SDTOSCZeroCrossing_setSize(obj, sub_args);
  //     else if (!strcmp("overlap", method))
  //       return_code = SDTOSCZeroCrossing_setOverlap(obj, sub_args);
  //     else
  //       return_code = SDT_OSC_RETURN_NOT_IMPLEMENTED;
  //     SDTOSCArgumentList_free(sub_args);
  //   } else
  //     return_code = SDT_OSC_RETURN_MISSING_METHOD;
  // else if (key)
  //   return_code = SDT_OSC_RETURN_OBJECT_NOT_FOUND;
  // else
  //   return_code = SDT_OSC_RETURN_ARGUMENT_ERROR;
  // return return_code;
  SDTOSC_MESSAGE_LOGA(ERROR,
                      "\n  %s\n  [NOT IMPLEMENTED] The specified method is not "
                      "implemented: %s\n  %s\n",
                      x, k, SDTOSC_rtfm_string());
  return 2;
}
