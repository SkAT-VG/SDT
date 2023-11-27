#include "SDTOSCEffects.h"

#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#include "../SDTCommon.h"

/* --- PitchShift ---------------------------------------------------------- */
int SDTOSCPitchShift(const SDTOSCMessage* x) {
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
  if (!strcmp("log", k)) return SDTOSCPitchShift_log(x);
  if (!strcmp("save", k)) return SDTOSCPitchShift_save(x);
  if (!strcmp("load", k)) return SDTOSCPitchShift_load(x);
  if (!strcmp("loads", k)) return SDTOSCPitchShift_loads(x);
  if (!strcmp("size", k)) return SDTOSCPitchShift_setSize(x);
  if (!strcmp("oversample", k)) return SDTOSCPitchShift_setOversample(x);
  if (!strcmp("overlap", k)) return SDTOSCPitchShift_setOverlap(x);
  if (!strcmp("ratio", k)) return SDTOSCPitchShift_setRatio(x);
  SDTOSC_MESSAGE_LOGA(ERROR,
                      "\n  %s\n  [NOT IMPLEMENTED] The specified method is not "
                      "implemented: %s\n  %s\n",
                      x, k, SDTOSC_rtfm_string());
  return 2;
}

_SDTOSC_LOG_FUNCTION(PitchShift)
_SDTOSC_SAVE_FUNCTION(PitchShift)
_SDTOSC_LOAD_FUNCTION(PitchShift, )
_SDTOSC_LOADS_FUNCTION(PitchShift, )

_SDTOSC_FLOAT_SETTER_FUNCTION(PitchShift, size, Size, unsigned int, )
_SDTOSC_FLOAT_SETTER_FUNCTION(PitchShift, oversample, Oversample,
                              unsigned int, )
_SDTOSC_FLOAT_SETTER_FUNCTION(PitchShift, overlap, Overlap, double, )
_SDTOSC_FLOAT_SETTER_FUNCTION(PitchShift, ratio, Ratio, double, )
/* ------------------------------------------------------------------------- */
