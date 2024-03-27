#include "SDTOSCResonators.h"

#include <string.h>

#include "../SDTResonators.h"

int SDTOSCResonator(const SDTOSCMessage *x) {
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
  if (!strcmp("log", k)) return SDTOSCResonator_log(x);
  if (!strcmp("save", k)) return SDTOSCResonator_save(x);
  if (!strcmp("load", k)) return SDTOSCResonator_load(x);
  if (!strcmp("loads", k)) return SDTOSCResonator_loads(x);
  if (!strcmp("frequency", k) || !strcmp("freq", k))
    return SDTOSCResonator_setFrequency(x);
  if (!strcmp("decay", k)) return SDTOSCResonator_setDecay(x);
  if (!strcmp("weight", k)) return SDTOSCResonator_setWeight(x);
  if (!strcmp("gain", k) || !strcmp("pickup", k))
    return SDTOSCResonator_setGain(x);
  if (!strcmp("fragmentSize", k) || !strcmp("fragment", k))
    return SDTOSCResonator_setFragmentSize(x);
  if (!strcmp("activeModes", k) || !strcmp("modes", k) || !strcmp("active", k))
    return SDTOSCResonator_setActiveModes(x);
  SDTOSC_MESSAGE_LOGA(ERROR,
                      "\n  %s\n  [NOT IMPLEMENTED] The specified method is not "
                      "implemented: %s\n  %s\n",
                      x, k, SDTOSC_rtfm_string());
  return 2;
}

_SDTOSC_LOG_FUNCTION(Resonator)
_SDTOSC_SAVE_FUNCTION(Resonator)
_SDTOSC_LOAD_FUNCTION(Resonator, )
_SDTOSC_LOADS_FUNCTION(Resonator, )

#define _SDT_OSC_RESONATOR_SET_ARRAY_ELEM(ATTRNAME)           \
  int SDTOSCResonator_set##ATTRNAME(const SDTOSCMessage *x) { \
    SDTOSC_MESSAGE_LOGA(VERBOSE, "\n  %s\n", x, "");          \
    _SDTOSC_FIND_IN_HASHMAP(Resonator, obj, name, x);         \
    _SDTOSC_GETARG(f, 2, float, Float, float, x);             \
    _SDTOSC_GETARG(mode, 1, int, Float, float, x);            \
    SDTResonator_set##ATTRNAME(obj, mode, f);                 \
    return 0;                                                 \
  }

_SDT_OSC_RESONATOR_SET_ARRAY_ELEM(Frequency)
_SDT_OSC_RESONATOR_SET_ARRAY_ELEM(Decay)
_SDT_OSC_RESONATOR_SET_ARRAY_ELEM(Weight)

int SDTOSCResonator_setGain(const SDTOSCMessage *x) {
  SDTOSC_MESSAGE_LOGA(VERBOSE, "\n  %s\n", x, "");
  _SDTOSC_FIND_IN_HASHMAP(Resonator, obj, name, x);
  _SDTOSC_GETARG(f, 3, float, Float, float, x);
  _SDTOSC_GETARG(mode, 2, int, Float, float, x);
  _SDTOSC_GETARG(pickup, 1, int, Float, float, x);
  SDTResonator_setGain(obj, pickup, mode, f);
  return 0;
}

_SDTOSC_FLOAT_SETTER_FUNCTION(Resonator, fragmentSize, FragmentSize, double, )
_SDTOSC_FLOAT_SETTER_FUNCTION(Resonator, activeModes, ActiveModes,
                              unsigned int, )
