#include "SDTOSCDemix.h"

#include <string.h>

#include "../SDTDemix.h"


int SDTOSCDemix(const SDTOSCMessage *x) {
  SDTOSC_MESSAGE_LOGA(VERBOSE, "\n  %s\n", x, "");
  const SDTOSCAddress *a = SDTOSCMessage_getAddress(x);
  if (SDTOSCAddress_getDepth(a) < 2) {
    SDTOSC_MESSAGE_LOGA(ERROR,
                        "\n  %s\n  [MISSING METHOD] Please, specify an OSC "
                        "method from the container\n  %s\n",
                        x, SDTOSC_rtfm_string());
    return 1;
  }
  const char *k = SDTOSCAddress_getNode(a, 1);
  if (!strcmp("log", k)) return SDTOSCDemix_log(x);
  if (!strcmp("save", k)) return SDTOSCDemix_save(x);
  if (!strcmp("load", k)) return SDTOSCDemix_load(x);
  if (!strcmp("loads", k)) return SDTOSCDemix_loads(x);
  if (!strcmp("overlap", k)) return SDTOSCDemix_setOverlap(x);
  if (!strcmp("noiseThreshold", k)) return SDTOSCDemix_setNoiseThreshold(x);
  if (!strcmp("tonalThreshold", k)) return SDTOSCDemix_setTonalThreshold(x);
  SDTOSC_MESSAGE_LOGA(ERROR,
                      "\n  %s\n  [NOT IMPLEMENTED] The specified method is not"
                      " implemented: % s\n %s\n ",
                      x, k, SDTOSC_rtfm_string());
  return 2;
}

_SDTOSC_LOG_FUNCTION(Demix)
_SDTOSC_SAVE_FUNCTION(Demix)
_SDTOSC_LOAD_FUNCTION(Demix, )
_SDTOSC_LOADS_FUNCTION(Demix, )

_SDTOSC_FLOAT_SETTER_FUNCTION(Demix, overlap, Overlap, double, )
_SDTOSC_FLOAT_SETTER_FUNCTION(Demix, noiseThreshold, NoiseThreshold, double, )
_SDTOSC_FLOAT_SETTER_FUNCTION(Demix, tonalThreshold, TonalThreshold, double, )
