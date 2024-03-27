#include "SDTOSC.h"

#include <string.h>

#include "../SDTProjects.h"
#include "SDTOSCAnalysis.h"
#include "SDTOSCControl.h"
#include "SDTOSCDCMotor.h"
#include "SDTOSCDemix.h"
#include "SDTOSCEffects.h"
#include "SDTOSCFilters.h"
#include "SDTOSCGases.h"
#include "SDTOSCInteractors.h"
#include "SDTOSCLiquids.h"
#include "SDTOSCMotor.h"
#include "SDTOSCProjects.h"
#include "SDTOSCResonators.h"

/** @brief Forward message to appropriate type
@param[in] TYPENAME SDT type
@param[in] TYPEKEY SDT JSON type key
@param[in] U Ignored */
#define _SDT_FORWARD_CASE(TYPENAME, TYPEKEY, U) \
  if (!strcmp(#TYPEKEY, k)) {                   \
    return SDTOSC##TYPENAME(x);                 \
  }

int SDTOSCRoot(const SDTOSCMessage* x) {
  if (!SDTOSCMessage_valid(x)) {
    SDT_LOG(ERROR, "Invalid OSC message\n");
    return -1;
  }
  SDTOSC_MESSAGE_LOGA(DEBUG, "\n  %s\n", x, "");
  const SDTOSCAddress* a = SDTOSCMessage_getAddress(x);
  if (!(a && SDTOSCAddress_getDepth(a))) return 1;
  const char* k = SDTOSCAddress_getNode(a, 0);
  // Special types
  if (!strcmp("project", k)) return SDTOSCProject(x);
  if (!strcmp("friction", k)) return SDTOSCFriction(x);
  if (!strcmp("impact", k)) return SDTOSCImpact(x);
  // Most types
  _SDT_CALL_FOR_ALL_TYPES(_SDT_FORWARD_CASE);
  // Synonyms
  if (!strcmp("myoelastic", k)) return SDTOSCMyoelastic(x);
  if (!strcmp("modal", k) || !strcmp("inertial", k)) return SDTOSCResonator(x);
  if (!strcmp("karman", k)) return SDTOSCWindKarman(x);
  if (!strcmp("zerocrossing", k)) return SDTOSCZeroCrossing(x);
#ifdef SDT_VERBOSE
  // In verbose builds, where memory tracking is active,
  // an OSC message to /_arenaWarnNonEmpty will print
  // all non-deallocated SDT dynamic memory allocations
  // on the warning-level logger.
  // Please, consider that it will print warnings also for
  // the memory occupied by the OSC message itself.
  if (!strcmp("_arenaWarnNonEmpty", k)) {
    SDT_LOG(WARN, "--- Start of memory warnings ----------\n");
    _SDT_arenaWarnNonEmpty();
    SDT_LOG(WARN, "--- End of memory warnings ------------\n");
    return 0;
  }
#endif
  SDTOSC_MESSAGE_LOGA(ERROR,
                      "\n  %s\n  [NOT IMPLEMENTED] The specified container is "
                      "not implemented: % s\n %s\n ",
                      x, k, SDTOSC_rtfm_string());
  return 2;
}
