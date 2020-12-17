#include "../src/SDT/SDTOSCMisc.h"
#include <stdio.h>

#define KEY_PARAM(SDT_TYPE) STRINGIFY(``key``: key for the SDT_TYPE instance (string))
#define FILE_PARAM(ACTION) STRINGIFY(``filepath``: file path for ACTION (string))

#define SDT_OSC_DOC_TYPE_SETTERS(SDT_TYPE, F, T, S, K, J, D) printf(\
"- %s\n   * %s\n   * ``value``: %s value (%s)\n\n  ::\n\n    /%s/%s <key> <value>\n\n", #K, KEY_PARAM(SDT_TYPE), #K, #J, #SDT_TYPE, #K \
);

#define SDT_OSC_DOC_TYPE_JSON_UTILS(SDT_TYPE) printf("\nutilities\n---------\n"); \
printf("- log\n   * %s\n\n  ::\n\n    /%s/log <key>\n\n", KEY_PARAM(SDT_TYPE), #SDT_TYPE); \
printf("- save\n   * %s\n   * %s\n\n  ::\n\n    /%s/save <key> <filepath>\n\n", KEY_PARAM(SDT_TYPE), FILE_PARAM(writing), #SDT_TYPE); \
printf("- load\n   * %s\n   * %s\n\n  ::\n\n    /%s/load <key> <filepath>\n\n", KEY_PARAM(SDT_TYPE), FILE_PARAM(reading), #SDT_TYPE);

#define SDT_OSC_CLASS_DESCRIPTION(SDT_TYPE, NAME) \
const char *CONCAT(s_, NAME) = #NAME; \
printf("%s\n", CONCAT(s_, NAME)); \
for (unsigned int i = 0; CONCAT(s_, NAME)[i]; ++i) printf("="); \
printf("\nattributes\n----------\n"); \
SDT_TYPE ## _ATTRIBUTES(NAME, SDT_OSC_DOC_TYPE_SETTERS) \
printf("\n"); \
SDT_OSC_DOC_TYPE_JSON_UTILS(NAME)

#define SDT_OSC_DOC_ALL(TYPE, NAME) \
SDT_OSC_CLASS_DESCRIPTION(SDT_ ## TYPE, NAME)


int main() {
  SDT_OSC_CLASSES(SDT_OSC_DOC_ALL)
}