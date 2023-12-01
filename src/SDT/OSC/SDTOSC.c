#include "SDTOSC.h"

#include <string.h>

#include "SDTOSCAnalysis.h"
#include "SDTOSCControl.h"
#include "SDTOSCDCMotor.h"
#include "SDTOSCDemix.h"
#include "SDTOSCEffects.h"
#include "SDTOSCFilters.h"
#include "SDTOSCGases.h"
#include "SDTOSCInteractors.h"
#include "SDTOSCLiquids.h"
#include "SDTOSCMisc.h"
#include "SDTOSCMotor.h"
#include "SDTOSCProjects.h"
#include "SDTOSCResonators.h"

int SDTOSCRoot(const SDTOSCMessage* x) {
  if (!SDTOSCMessage_valid(x)) {
    SDT_LOG(ERROR, "Invalid OSC message\n");
    return -1;
  }
  SDTOSC_MESSAGE_LOGA(DEBUG, "\n  %s\n", x, "");
  const SDTOSCAddress* a = SDTOSCMessage_getAddress(x);
  if (!(a && SDTOSCAddress_getDepth(a))) return 1;
  const char* k = SDTOSCAddress_getNode(a, 0);
  if (!strcmp("bouncing", k)) return SDTOSCBouncing(x);
  if (!strcmp("breaking", k)) return SDTOSCBreaking(x);
  if (!strcmp("bubble", k)) return SDTOSCBubble(x);
  if (!strcmp("crumpling", k)) return SDTOSCCrumpling(x);
  if (!strcmp("dcmotor", k)) return SDTOSCDCMotor(x);
  if (!strcmp("demix", k)) return SDTOSCDemix(x);
  if (!strcmp("envelope", k)) return SDTOSCEnvelope(x);
  if (!strcmp("explosion", k)) return SDTOSCExplosion(x);
  if (!strcmp("motor", k)) return SDTOSCMotor(x);
  if (!strcmp("myo", k) || !strcmp("myoelastic", k)) return SDTOSCMyoelastic(x);
  if (!strcmp("pitch", k)) return SDTOSCPitch(x);
  if (!strcmp("pitchshift", k)) return SDTOSCPitchShift(x);
  if (!strcmp("resonator", k) || !strcmp("modal", k) || !strcmp("inertial", k))
    return SDTOSCResonator(x);
  if (!strcmp("reverb", k)) return SDTOSCReverb(x);
  if (!strcmp("rolling", k)) return SDTOSCReverb(x);
  if (!strcmp("scraping", k)) return SDTOSCScraping(x);
  if (!strcmp("spectralfeats", k)) return SDTOSCSpectralFeats(x);
  if (!strcmp("windflow", k)) return SDTOSCWindFlow(x);
  if (!strcmp("windkarman", k) || !strcmp("karman", k))
    return SDTOSCWindKarman(x);
  if (!strcmp("zerox", k) || !strcmp("zerocrossing", k))
    return SDTOSCZeroCrossing(x);
#ifdef SDT_VERBOSE
  // In verbose builds, where memory tracking is active,
  // an OSC message to /_arenaWarnNonEmpty will print
  // all non-deallocated SDT dynamic memory allocations
  // on the warning-level logger.
  // Please, consider that it will print warnings also for
  // the memory occupied by the OSC message itself.
  if (!strcmp("_arenaWarnNonEmpty", k)) {
    SDT_LOG(WARN, "--- Start of memory warnings ----------");
    _SDT_arenaWarnNonEmpty();
    SDT_LOG(WARN, "--- End of memory warnings ------------");
    return 0;
  }
#endif
  SDTOSC_MESSAGE_LOGA(ERROR,
                      "\n  %s\n  [NOT IMPLEMENTED] The specified container is "
                      "not implemented: % s\n %s\n ",
                      x, k, SDTOSC_rtfm_string());
  return 2;
  // else if (!strcmp("interactor", method))
  //   return_code = SDTOSCInteractor(log, sub);
  // else if (!strcmp("project", method))
  //   return_code = SDTOSCProject(log, sub);
  // else if (!strcmp("windcavity", method))
  //   return_code = SDTOSCWindCavity(log, sub);
}
