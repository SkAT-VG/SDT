#include "SDTOSCControl.h"

#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#include "../SDTCommon.h"

/* --- Bouncing -------------------------------------------------------- */
int SDTOSCBouncing(const SDTOSCMessage* x) {
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
  if (!strcmp("log", k)) return SDTOSCBouncing_log(x);
  if (!strcmp("save", k)) return SDTOSCBouncing_save(x);
  if (!strcmp("load", k)) return SDTOSCBouncing_load(x);
  if (!strcmp("loads", k)) return SDTOSCBouncing_loads(x);
  if (!strcmp("restitution", k)) return SDTOSCBouncing_setRestitution(x);
  if (!strcmp("height", k)) return SDTOSCBouncing_setHeight(x);
  if (!strcmp("irregularity", k)) return SDTOSCBouncing_setIrregularity(x);
  SDTOSC_MESSAGE_LOGA(ERROR,
                      "\n  %s\n  [NOT IMPLEMENTED] The specified method is not "
                      "implemented: %s\n  %s\n",
                      x, k, SDTOSC_rtfm_string());
  return 2;
}

_SDTOSC_LOG_FUNCTION(Bouncing)
_SDTOSC_SAVE_FUNCTION(Bouncing)
_SDTOSC_LOAD_FUNCTION(Bouncing)
_SDTOSC_LOADS_FUNCTION(Bouncing)

_SDTOSC_FLOAT_SETTER_FUNCTION(Bouncing, restitution, Restitution, double)
_SDTOSC_FLOAT_SETTER_FUNCTION(Bouncing, height, Height, double)
_SDTOSC_FLOAT_SETTER_FUNCTION(Bouncing, irregularity, Irregularity, double)
/* ------------------------------------------------------------------------- */

/* --- Breaking -------------------------------------------------------- */
int SDTOSCBreaking(const SDTOSCMessage* x) {
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
  if (!strcmp("log", k)) return SDTOSCBreaking_log(x);
  if (!strcmp("save", k)) return SDTOSCBreaking_save(x);
  if (!strcmp("load", k)) return SDTOSCBreaking_load(x);
  if (!strcmp("loads", k)) return SDTOSCBreaking_loads(x);
  if (!strcmp("storedEnergy", k) || !strcmp("stored", k))
    return SDTOSCBreaking_setStoredEnergy(x);
  if (!strcmp("crushingEnergy", k) || !strcmp("crushing", k))
    return SDTOSCBreaking_setCrushingEnergy(x);
  if (!strcmp("granularity", k)) return SDTOSCBreaking_setGranularity(x);
  if (!strcmp("fragmentation", k)) return SDTOSCBreaking_setFragmentation(x);
  SDTOSC_MESSAGE_LOGA(ERROR,
                      "\n  %s\n  [NOT IMPLEMENTED] The specified method is not "
                      "implemented: %s\n  %s\n",
                      x, k, SDTOSC_rtfm_string());
  return 2;
}

_SDTOSC_LOG_FUNCTION(Breaking)
_SDTOSC_SAVE_FUNCTION(Breaking)
_SDTOSC_LOAD_FUNCTION(Breaking)
_SDTOSC_LOADS_FUNCTION(Breaking)

_SDTOSC_FLOAT_SETTER_FUNCTION(Breaking, storedEnergy, StoredEnergy, double)
_SDTOSC_FLOAT_SETTER_FUNCTION(Breaking, crushingEnergy, CrushingEnergy, double)
_SDTOSC_FLOAT_SETTER_FUNCTION(Breaking, granularity, Granularity, double)
_SDTOSC_FLOAT_SETTER_FUNCTION(Breaking, fragmentation, Fragmentation, double)
/* ------------------------------------------------------------------------- */
