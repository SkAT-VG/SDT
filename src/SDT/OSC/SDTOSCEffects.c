#include "SDTOSCEffects.h"

#include <string.h>

#include "../SDTEffects.h"

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

/* --- Reverb -------------------------------------------------------------- */
int SDTOSCReverb(const SDTOSCMessage* x) {
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
  if (!strcmp("log", k)) return SDTOSCReverb_log(x);
  if (!strcmp("save", k)) return SDTOSCReverb_save(x);
  if (!strcmp("load", k)) return SDTOSCReverb_load(x);
  if (!strcmp("loads", k)) return SDTOSCReverb_loads(x);
  if (!strcmp("xSize", k) || !strcmp("xsize", k) || !strcmp("x", k))
    return SDTOSCReverb_setXSize(x);
  if (!strcmp("ySize", k) || !strcmp("ysize", k) || !strcmp("y", k))
    return SDTOSCReverb_setYSize(x);
  if (!strcmp("zSize", k) || !strcmp("zsize", k) || !strcmp("z", k))
    return SDTOSCReverb_setZSize(x);
  if (!strcmp("randomness", k) || !strcmp("random", k) || !strcmp("rand", k))
    return SDTOSCReverb_setRandomness(x);
  if (!strcmp("time", k) || !strcmp("t", k)) return SDTOSCReverb_setTime(x);
  if (!strcmp("time1k", k) || !strcmp("t1k", k))
    return SDTOSCReverb_setTime1k(x);
  SDTOSC_MESSAGE_LOGA(ERROR,
                      "\n  %s\n  [NOT IMPLEMENTED] The specified method is not "
                      "implemented: %s\n  %s\n",
                      x, k, SDTOSC_rtfm_string());
  return 2;
}

_SDTOSC_LOG_FUNCTION(Reverb)
_SDTOSC_SAVE_FUNCTION(Reverb)
_SDTOSC_LOAD_FUNCTION(Reverb, update)
_SDTOSC_LOADS_FUNCTION(Reverb, update)

_SDTOSC_FLOAT_SETTER_FUNCTION(Reverb, xSize, XSize, double, update)
_SDTOSC_FLOAT_SETTER_FUNCTION(Reverb, ySize, YSize, double, update)
_SDTOSC_FLOAT_SETTER_FUNCTION(Reverb, zSize, ZSize, double, update)
_SDTOSC_FLOAT_SETTER_FUNCTION(Reverb, randomness, Randomness, double, update)
_SDTOSC_FLOAT_SETTER_FUNCTION(Reverb, time, Time, double, update)
_SDTOSC_FLOAT_SETTER_FUNCTION(Reverb, time1k, Time1k, double, update)
/* ------------------------------------------------------------------------- */
