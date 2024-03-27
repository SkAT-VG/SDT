#include "SDTOSCGases.h"

#include <string.h>

#include "../SDTGases.h"

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
_SDTOSC_LOAD_FUNCTION(Explosion, )
_SDTOSC_LOADS_FUNCTION(Explosion, )

_SDTOSC_FLOAT_SETTER_FUNCTION(Explosion, blastTime, BlastTime, double, )
_SDTOSC_FLOAT_SETTER_FUNCTION(Explosion, scatterTime, ScatterTime, double, )
_SDTOSC_FLOAT_SETTER_FUNCTION(Explosion, dispersion, Dispersion, double, )
_SDTOSC_FLOAT_SETTER_FUNCTION(Explosion, distance, Distance, double, )
_SDTOSC_FLOAT_SETTER_FUNCTION(Explosion, waveSpeed, WaveSpeed, double, )
_SDTOSC_FLOAT_SETTER_FUNCTION(Explosion, windSpeed, WindSpeed, double, )
/* ------------------------------------------------------------------------- */

/* --- WindCavity ---------------------------------------------------------- */
int SDTOSCWindCavity(const SDTOSCMessage* x) {
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
  if (!strcmp("log", k)) return SDTOSCWindCavity_log(x);
  if (!strcmp("save", k)) return SDTOSCWindCavity_save(x);
  if (!strcmp("load", k)) return SDTOSCWindCavity_load(x);
  if (!strcmp("loads", k)) return SDTOSCWindCavity_loads(x);
  if (!strcmp("length", k)) return SDTOSCWindCavity_setLength(x);
  if (!strcmp("diameter", k)) return SDTOSCWindCavity_setDiameter(x);
  if (!strcmp("windSpeed", k) || !strcmp("wind", k) || !strcmp("speed", k) ||
      !strcmp("windspeed", k))
    return SDTOSCWindCavity_setWindSpeed(x);
  SDTOSC_MESSAGE_LOGA(ERROR,
                      "\n  %s\n  [NOT IMPLEMENTED] The specified method is not"
                      " implemented: % s\n %s\n ",
                      x, k, SDTOSC_rtfm_string());
  return 2;
}

_SDTOSC_LOG_FUNCTION(WindCavity)
_SDTOSC_SAVE_FUNCTION(WindCavity)
_SDTOSC_LOAD_FUNCTION(WindCavity, )
_SDTOSC_LOADS_FUNCTION(WindCavity, )

_SDTOSC_FLOAT_SETTER_FUNCTION(WindCavity, length, Length, double, )
_SDTOSC_FLOAT_SETTER_FUNCTION(WindCavity, diameter, Diameter, double, )
_SDTOSC_FLOAT_SETTER_FUNCTION(WindCavity, windSpeed, WindSpeed, double, )
/* ------------------------------------------------------------------------- */

/* --- WindFlow ------------------------------------------------------------ */
int SDTOSCWindFlow(const SDTOSCMessage* x) {
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
  if (!strcmp("log", k)) return SDTOSCWindFlow_log(x);
  if (!strcmp("save", k)) return SDTOSCWindFlow_save(x);
  if (!strcmp("load", k)) return SDTOSCWindFlow_load(x);
  if (!strcmp("loads", k)) return SDTOSCWindFlow_loads(x);
  if (!strcmp("windSpeed", k) || !strcmp("wind", k) || !strcmp("speed", k) ||
      !strcmp("windspeed", k))
    return SDTOSCWindFlow_setWindSpeed(x);
  SDTOSC_MESSAGE_LOGA(ERROR,
                      "\n  %s\n  [NOT IMPLEMENTED] The specified method is not"
                      " implemented: % s\n %s\n ",
                      x, k, SDTOSC_rtfm_string());
  return 2;
}

_SDTOSC_LOG_FUNCTION(WindFlow)
_SDTOSC_SAVE_FUNCTION(WindFlow)
_SDTOSC_LOAD_FUNCTION(WindFlow, )
_SDTOSC_LOADS_FUNCTION(WindFlow, )

_SDTOSC_FLOAT_SETTER_FUNCTION(WindFlow, windSpeed, WindSpeed, double, )
/* ------------------------------------------------------------------------- */

/* --- WindKarman ---------------------------------------------------------- */
int SDTOSCWindKarman(const SDTOSCMessage* x) {
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
  if (!strcmp("log", k)) return SDTOSCWindKarman_log(x);
  if (!strcmp("save", k)) return SDTOSCWindKarman_save(x);
  if (!strcmp("load", k)) return SDTOSCWindKarman_load(x);
  if (!strcmp("loads", k)) return SDTOSCWindKarman_loads(x);
  if (!strcmp("diameter", k)) return SDTOSCWindKarman_setDiameter(x);
  if (!strcmp("windSpeed", k) || !strcmp("wind", k) || !strcmp("speed", k) ||
      !strcmp("windspeed", k))
    return SDTOSCWindKarman_setWindSpeed(x);
  SDTOSC_MESSAGE_LOGA(ERROR,
                      "\n  %s\n  [NOT IMPLEMENTED] The specified method is not"
                      " implemented: % s\n %s\n ",
                      x, k, SDTOSC_rtfm_string());
  return 2;
}

_SDTOSC_LOG_FUNCTION(WindKarman)
_SDTOSC_SAVE_FUNCTION(WindKarman)
_SDTOSC_LOAD_FUNCTION(WindKarman, )
_SDTOSC_LOADS_FUNCTION(WindKarman, )

_SDTOSC_FLOAT_SETTER_FUNCTION(WindKarman, diameter, Diameter, double, )
_SDTOSC_FLOAT_SETTER_FUNCTION(WindKarman, windSpeed, WindSpeed, double, )
/* ------------------------------------------------------------------------- */
