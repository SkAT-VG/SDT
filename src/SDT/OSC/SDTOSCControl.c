#include "SDTOSCControl.h"

#include <string.h>

#include "../SDTControl.h"

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
_SDTOSC_LOAD_FUNCTION(Bouncing, )
_SDTOSC_LOADS_FUNCTION(Bouncing, )

_SDTOSC_FLOAT_SETTER_FUNCTION(Bouncing, restitution, Restitution, double, )
_SDTOSC_FLOAT_SETTER_FUNCTION(Bouncing, height, Height, double, )
_SDTOSC_FLOAT_SETTER_FUNCTION(Bouncing, irregularity, Irregularity, double, )
/* ------------------------------------------------------------------------- */

/* --- Breaking ------------------------------------------------------------ */
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
_SDTOSC_LOAD_FUNCTION(Breaking, )
_SDTOSC_LOADS_FUNCTION(Breaking, )

_SDTOSC_FLOAT_SETTER_FUNCTION(Breaking, storedEnergy, StoredEnergy, double, )
_SDTOSC_FLOAT_SETTER_FUNCTION(Breaking, crushingEnergy, CrushingEnergy,
                              double, )
_SDTOSC_FLOAT_SETTER_FUNCTION(Breaking, granularity, Granularity, double, )
_SDTOSC_FLOAT_SETTER_FUNCTION(Breaking, fragmentation, Fragmentation, double, )
/* ------------------------------------------------------------------------- */

/* --- Crumpling ----------------------------------------------------------- */
int SDTOSCCrumpling(const SDTOSCMessage* x) {
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
  if (!strcmp("log", k)) return SDTOSCCrumpling_log(x);
  if (!strcmp("save", k)) return SDTOSCCrumpling_save(x);
  if (!strcmp("load", k)) return SDTOSCCrumpling_load(x);
  if (!strcmp("loads", k)) return SDTOSCCrumpling_loads(x);
  if (!strcmp("crushingEnergy", k) || !strcmp("crushing", k) ||
      !strcmp("energy", k))
    return SDTOSCCrumpling_setCrushingEnergy(x);
  if (!strcmp("granularity", k)) return SDTOSCCrumpling_setGranularity(x);
  if (!strcmp("fragmentation", k)) return SDTOSCCrumpling_setFragmentation(x);
  SDTOSC_MESSAGE_LOGA(ERROR,
                      "\n  %s\n  [NOT IMPLEMENTED] The specified method is not "
                      "implemented: %s\n  %s\n",
                      x, k, SDTOSC_rtfm_string());
  return 2;
}

_SDTOSC_LOG_FUNCTION(Crumpling)
_SDTOSC_SAVE_FUNCTION(Crumpling)
_SDTOSC_LOAD_FUNCTION(Crumpling, )
_SDTOSC_LOADS_FUNCTION(Crumpling, )

_SDTOSC_FLOAT_SETTER_FUNCTION(Crumpling, crushingEnergy, CrushingEnergy,
                              double, )
_SDTOSC_FLOAT_SETTER_FUNCTION(Crumpling, granularity, Granularity, double, )
_SDTOSC_FLOAT_SETTER_FUNCTION(Crumpling, fragmentation, Fragmentation, double, )
/* ------------------------------------------------------------------------- */

/* ------------------------------------------------------------------------- */
int SDTOSCRolling(const SDTOSCMessage* x) {
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
  if (!strcmp("log", k)) return SDTOSCRolling_log(x);
  if (!strcmp("save", k)) return SDTOSCRolling_save(x);
  if (!strcmp("load", k)) return SDTOSCRolling_load(x);
  if (!strcmp("loads", k)) return SDTOSCRolling_loads(x);
  if (!strcmp("grain", k)) return SDTOSCRolling_setGrain(x);
  if (!strcmp("depth", k)) return SDTOSCRolling_setDepth(x);
  if (!strcmp("mass", k)) return SDTOSCRolling_setMass(x);
  if (!strcmp("velocity", k)) return SDTOSCRolling_setVelocity(x);
  SDTOSC_MESSAGE_LOGA(ERROR,
                      "\n  %s\n  [NOT IMPLEMENTED] The specified method is not"
                      " implemented: % s\n %s\n ",
                      x, k, SDTOSC_rtfm_string());
  return 2;
}

_SDTOSC_LOG_FUNCTION(Rolling)
_SDTOSC_SAVE_FUNCTION(Rolling)
_SDTOSC_LOAD_FUNCTION(Rolling, )
_SDTOSC_LOADS_FUNCTION(Rolling, )

_SDTOSC_FLOAT_SETTER_FUNCTION(Rolling, grain, Grain, double, )
_SDTOSC_FLOAT_SETTER_FUNCTION(Rolling, depth, Depth, double, )
_SDTOSC_FLOAT_SETTER_FUNCTION(Rolling, mass, Mass, double, )
_SDTOSC_FLOAT_SETTER_FUNCTION(Rolling, velocity, Velocity, double, )
/* ------------------------------------------------------------------------- */

/* --- Scraping ------------------------------------------------------------ */
int SDTOSCScraping(const SDTOSCMessage* x) {
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
  if (!strcmp("log", k)) return SDTOSCScraping_log(x);
  if (!strcmp("save", k)) return SDTOSCScraping_save(x);
  if (!strcmp("load", k)) return SDTOSCScraping_load(x);
  if (!strcmp("loads", k)) return SDTOSCScraping_loads(x);
  if (!strcmp("grain", k)) return SDTOSCScraping_setGrain(x);
  if (!strcmp("force", k)) return SDTOSCScraping_setForce(x);
  if (!strcmp("velocity", k)) return SDTOSCScraping_setVelocity(x);
  SDTOSC_MESSAGE_LOGA(ERROR,
                      "\n  %s\n  [NOT IMPLEMENTED] The specified method is not"
                      " implemented: % s\n %s\n ",
                      x, k, SDTOSC_rtfm_string());
  return 2;
}

_SDTOSC_LOG_FUNCTION(Scraping)
_SDTOSC_SAVE_FUNCTION(Scraping)
_SDTOSC_LOAD_FUNCTION(Scraping, )
_SDTOSC_LOADS_FUNCTION(Scraping, )

_SDTOSC_FLOAT_SETTER_FUNCTION(Scraping, grain, Grain, double, )
_SDTOSC_FLOAT_SETTER_FUNCTION(Scraping, force, Force, double, )
_SDTOSC_FLOAT_SETTER_FUNCTION(Scraping, velocity, Velocity, double, )
/* ------------------------------------------------------------------------- */
