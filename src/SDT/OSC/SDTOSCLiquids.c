#include "SDTOSCLiquids.h"

#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#include "../SDTCommon.h"

/* --- Bubble -------------------------------------------------------- */
int SDTOSCBubble(const SDTOSCMessage* x) {
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
  if (!strcmp("log", k)) return SDTOSCBubble_log(x);
  if (!strcmp("save", k)) return SDTOSCBubble_save(x);
  if (!strcmp("load", k)) return SDTOSCBubble_load(x);
  if (!strcmp("loads", k)) return SDTOSCBubble_loads(x);
  if (!strcmp("radius", k)) return SDTOSCBubble_setRadius(x);
  if (!strcmp("depth", k)) return SDTOSCBubble_setDepth(x);
  if (!strcmp("riseFactor", k) || !strcmp("rise", k))
    return SDTOSCBubble_setRiseFactor(x);
  if (!strcmp("trigger", k)) return SDTOSCBubble_trigger(x);
  SDTOSC_MESSAGE_LOGA(ERROR,
                      "\n  %s\n  [NOT IMPLEMENTED] The specified method is not "
                      "implemented: %s\n  %s\n",
                      x, k, SDTOSC_rtfm_string());
  return 2;
}

_SDTOSC_LOG_FUNCTION(Bubble)
_SDTOSC_SAVE_FUNCTION(Bubble)
_SDTOSC_LOAD_FUNCTION(Bubble)
_SDTOSC_LOADS_FUNCTION(Bubble)

_SDTOSC_FLOAT_SETTER_FUNCTION(Bubble, radius, Radius, double)
_SDTOSC_FLOAT_SETTER_FUNCTION(Bubble, depth, Depth, double)
_SDTOSC_FLOAT_SETTER_FUNCTION(Bubble, riseFactor, RiseFactor, double)

int SDTOSCBubble_trigger(const SDTOSCMessage* x) {
  SDTOSC_MESSAGE_LOGA(VERBOSE, "\n  %s\n", x, "")
  _SDTOSC_FIND_IN_HASHMAP(Bubble, obj, name, x)
  SDTBubble_update(obj);
  // Do not normalize w.r.t. radius and depth
  SDTBubble_normAmp(obj);
  return 0;
}
/* ------------------------------------------------------------------------- */
