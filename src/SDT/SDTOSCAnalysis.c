#include "SDTOSCAnalysis.h"
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "SDTCommon.h"

_SDTOSC_LOG_FUNCTION(ZeroCrossing)
_SDTOSC_SAVE_FUNCTION(ZeroCrossing)
_SDTOSC_LOAD_FUNCTION(ZeroCrossing)
_SDTOSC_LOADS_FUNCTION(ZeroCrossing)

_SDTOSC_FLOAT_SETTER_FUNCTION(ZeroCrossing, size, Size, unsigned int)
_SDTOSC_FLOAT_SETTER_FUNCTION(ZeroCrossing, overlap, Overlap, double)

int SDTOSCZeroCrossing(const SDTOSCMessage* x) {
  SDTOSC_MESSAGE_LOGA(VERBOSE, "\n  %s\n", x, "");
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
  if (!strcmp("load", k)) return SDTOSCZeroCrossing_load(x);
  if (!strcmp("loads", k)) return SDTOSCZeroCrossing_loads(x);
  if (!strcmp("size", k)) return SDTOSCZeroCrossing_setSize(x);
  if (!strcmp("overlap", k)) return SDTOSCZeroCrossing_setOverlap(x);
  SDTOSC_MESSAGE_LOGA(ERROR,
                      "\n  %s\n  [NOT IMPLEMENTED] The specified method is not "
                      "implemented: %s\n  %s\n",
                      x, k, SDTOSC_rtfm_string());
  return 2;
}
