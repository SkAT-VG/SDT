#include "SDTOSCAnalysis.h"

#include <string.h>

#include "../SDTAnalysis.h"

/* --- ZeroCrossing -------------------------------------------------------- */
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

_SDTOSC_LOG_FUNCTION(ZeroCrossing)
_SDTOSC_SAVE_FUNCTION(ZeroCrossing)
_SDTOSC_LOAD_FUNCTION(ZeroCrossing, )
_SDTOSC_LOADS_FUNCTION(ZeroCrossing, )

_SDTOSC_FLOAT_SETTER_FUNCTION(ZeroCrossing, size, Size, unsigned int, )
_SDTOSC_FLOAT_SETTER_FUNCTION(ZeroCrossing, overlap, Overlap, double, )
/* ------------------------------------------------------------------------- */

/* --- Myoelastic ---------------------------------------------------------- */
int SDTOSCMyoelastic(const SDTOSCMessage* x) {
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
  if (!strcmp("log", k)) return SDTOSCMyoelastic_log(x);
  if (!strcmp("save", k)) return SDTOSCMyoelastic_save(x);
  if (!strcmp("load", k)) return SDTOSCMyoelastic_load(x);
  if (!strcmp("loads", k)) return SDTOSCMyoelastic_loads(x);
  if (!strcmp("dcFrequency", k) || !strcmp("dc", k))
    return SDTOSCMyoelastic_setDcFrequency(x);
  if (!strcmp("lowFrequency", k) || !strcmp("low", k))
    return SDTOSCMyoelastic_setLowFrequency(x);
  if (!strcmp("highFrequency", k) || !strcmp("high", k))
    return SDTOSCMyoelastic_setHighFrequency(x);
  if (!strcmp("threshold", k)) return SDTOSCMyoelastic_setThreshold(x);
  SDTOSC_MESSAGE_LOGA(ERROR,
                      "\n  %s\n  [NOT IMPLEMENTED] The specified method is not "
                      "implemented: %s\n  %s\n",
                      x, k, SDTOSC_rtfm_string());
  return 2;
}

_SDTOSC_LOG_FUNCTION(Myoelastic)
_SDTOSC_SAVE_FUNCTION(Myoelastic)
_SDTOSC_LOAD_FUNCTION(Myoelastic, update)
_SDTOSC_LOADS_FUNCTION(Myoelastic, update)

_SDTOSC_FLOAT_SETTER_FUNCTION(Myoelastic, dcFrequency, DcFrequency, double,
                              update)
_SDTOSC_FLOAT_SETTER_FUNCTION(Myoelastic, lowFrequency, LowFrequency, double,
                              update)
_SDTOSC_FLOAT_SETTER_FUNCTION(Myoelastic, highFrequency, HighFrequency, double,
                              update)
_SDTOSC_FLOAT_SETTER_FUNCTION(Myoelastic, threshold, Threshold, double, )
/* ------------------------------------------------------------------------- */

/* --- SpectralFeats ------------------------------------------------------- */
int SDTOSCSpectralFeats(const SDTOSCMessage* x) {
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
  if (!strcmp("log", k)) return SDTOSCSpectralFeats_log(x);
  if (!strcmp("save", k)) return SDTOSCSpectralFeats_save(x);
  if (!strcmp("load", k)) return SDTOSCSpectralFeats_load(x);
  if (!strcmp("loads", k)) return SDTOSCSpectralFeats_loads(x);
  if (!strcmp("size", k)) return SDTOSCSpectralFeats_setSize(x);
  if (!strcmp("minFrequency", k) || !strcmp("min", k))
    return SDTOSCSpectralFeats_setMinFreq(x);
  if (!strcmp("maxFrequency", k) || !strcmp("max", k))
    return SDTOSCSpectralFeats_setMaxFreq(x);
  if (!strcmp("overlap", k)) return SDTOSCSpectralFeats_setOverlap(x);
  SDTOSC_MESSAGE_LOGA(ERROR,
                      "\n  %s\n  [NOT IMPLEMENTED] The specified method is not "
                      "implemented: %s\n  %s\n",
                      x, k, SDTOSC_rtfm_string());
  return 2;
}

_SDTOSC_LOG_FUNCTION(SpectralFeats)
_SDTOSC_SAVE_FUNCTION(SpectralFeats)
_SDTOSC_LOAD_FUNCTION(SpectralFeats, )
_SDTOSC_LOADS_FUNCTION(SpectralFeats, )

_SDTOSC_FLOAT_SETTER_FUNCTION(SpectralFeats, size, Size, unsigned int, )
_SDTOSC_FLOAT_SETTER_FUNCTION(SpectralFeats, overlap, Overlap, double, )
_SDTOSC_FLOAT_SETTER_FUNCTION(SpectralFeats, minFreq, MinFreq, double, )
_SDTOSC_FLOAT_SETTER_FUNCTION(SpectralFeats, maxFreq, MaxFreq, double, )
/* ------------------------------------------------------------------------- */

/* --- Pitch --------------------------------------------------------------- */
int SDTOSCPitch(const SDTOSCMessage* x) {
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
  if (!strcmp("log", k)) return SDTOSCPitch_log(x);
  if (!strcmp("save", k)) return SDTOSCPitch_save(x);
  if (!strcmp("load", k)) return SDTOSCPitch_load(x);
  if (!strcmp("loads", k)) return SDTOSCPitch_loads(x);
  if (!strcmp("size", k)) return SDTOSCPitch_setSize(x);
  if (!strcmp("overlap", k)) return SDTOSCPitch_setOverlap(x);
  if (!strcmp("tolerance", k)) return SDTOSCPitch_setTolerance(x);
  SDTOSC_MESSAGE_LOGA(ERROR,
                      "\n  %s\n  [NOT IMPLEMENTED] The specified method is not "
                      "implemented: %s\n  %s\n",
                      x, k, SDTOSC_rtfm_string());
  return 2;
}

_SDTOSC_LOG_FUNCTION(Pitch)
_SDTOSC_SAVE_FUNCTION(Pitch)
_SDTOSC_LOAD_FUNCTION(Pitch, )
_SDTOSC_LOADS_FUNCTION(Pitch, )

_SDTOSC_FLOAT_SETTER_FUNCTION(Pitch, size, Size, unsigned int, )
_SDTOSC_FLOAT_SETTER_FUNCTION(Pitch, overlap, Overlap, double, )
_SDTOSC_FLOAT_SETTER_FUNCTION(Pitch, tolerance, Tolerance, double, )
/* ------------------------------------------------------------------------- */