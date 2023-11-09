#include "SDTOSCGases.h"

#include <string.h>

#include "../SDTCommon.h"

/* --- Explosion -------------------------------------------------------- */
int SDTOSCExplosion(const SDTOSCMessage* x) {
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
  if (!strcmp("log", k)) return SDTOSCExplosion_log(x);
  if (!strcmp("save", k)) return SDTOSCExplosion_save(x);
  if (!strcmp("load", k)) return SDTOSCExplosion_load(x);
  if (!strcmp("loads", k)) return SDTOSCExplosion_loads(x);
  if (!strcmp("blastTime", k) || !strcmp("blast", k))
    return SDTOSCExplosion_setBlastTime(x);
  if (!strcmp("scatterTime", k) || !strcmp("scatter", k))
    return SDTOSCExplosion_setScatterTime(x);
  if (!strcmp("dispersion", k)) return SDTOSCExplosion_setDispersion(x);
  if (!strcmp("distance", k)) return SDTOSCExplosion_setDistance(x);
  if (!strcmp("waveSpeed", k) || !strcmp("wave", k))
    return SDTOSCExplosion_setWaveSpeed(x);
  if (!strcmp("windSpeed", k) || !strcmp("wind", k))
    return SDTOSCExplosion_setWindSpeed(x);
  SDTOSC_MESSAGE_LOGA(ERROR,
                      "\n  %s\n  [NOT IMPLEMENTED] The specified method is not "
                      "implemented: %s\n  %s\n",
                      x, k, SDTOSC_rtfm_string());
  return 2;
}

_SDTOSC_LOG_FUNCTION(Explosion)
_SDTOSC_SAVE_FUNCTION(Explosion)
_SDTOSC_LOAD_FUNCTION(Explosion)
_SDTOSC_LOADS_FUNCTION(Explosion)

_SDTOSC_FLOAT_SETTER_FUNCTION(Explosion, blastTime, BlastTime, double)
_SDTOSC_FLOAT_SETTER_FUNCTION(Explosion, scatterTime, ScatterTime, double)
_SDTOSC_FLOAT_SETTER_FUNCTION(Explosion, dispersion, Dispersion, double)
_SDTOSC_FLOAT_SETTER_FUNCTION(Explosion, distance, Distance, double)
_SDTOSC_FLOAT_SETTER_FUNCTION(Explosion, waveSpeed, WaveSpeed, double)
_SDTOSC_FLOAT_SETTER_FUNCTION(Explosion, windSpeed, WindSpeed, double)
/* ------------------------------------------------------------------------- */
