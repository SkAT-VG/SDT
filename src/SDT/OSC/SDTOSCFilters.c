#include "SDTOSCFilters.h"

#include <string.h>

#include "../SDTFilters.h"

/* --- Envelope -------------------------------------------------------- */
int SDTOSCEnvelope(const SDTOSCMessage* x) {
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
  if (!strcmp("log", k)) return SDTOSCEnvelope_log(x);
  if (!strcmp("save", k)) return SDTOSCEnvelope_save(x);
  if (!strcmp("load", k)) return SDTOSCEnvelope_load(x);
  if (!strcmp("loads", k)) return SDTOSCEnvelope_loads(x);
  if (!strcmp("attack", k)) return SDTOSCEnvelope_setAttack(x);
  if (!strcmp("release", k)) return SDTOSCEnvelope_setRelease(x);
  SDTOSC_MESSAGE_LOGA(ERROR,
                      "\n  %s\n  [NOT IMPLEMENTED] The specified method is not "
                      "implemented: %s\n  %s\n",
                      x, k, SDTOSC_rtfm_string());
  return 2;
}

_SDTOSC_LOG_FUNCTION(Envelope)
_SDTOSC_SAVE_FUNCTION(Envelope)
_SDTOSC_LOAD_FUNCTION(Envelope, )
_SDTOSC_LOADS_FUNCTION(Envelope, )

_SDTOSC_FLOAT_SETTER_FUNCTION(Envelope, attack, Attack, double, )
_SDTOSC_FLOAT_SETTER_FUNCTION(Envelope, release, Release, double, )
/* ------------------------------------------------------------------------- */
