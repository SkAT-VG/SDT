#include "SDTOSC.h"
#include <string.h>
#include "SDTOSCAnalysis.h"
#include "SDTOSCInteractors.h"
#include "SDTOSCMisc.h"
#include "SDTOSCProjects.h"
#include "SDTOSCResonators.h"

void SDTOSCRoot(void (*log)(const char*, ...), const SDTOSCMessage* x) {
  SDTOSCReturnCode return_code = SDT_OSC_RETURN_NOT_IMPLEMENTED;
  if (!SDTOSCMessage_hasContainer(x))
    return_code = SDT_OSC_RETURN_MISSING_CONTAINER;
  else {
    char* method = SDTOSCMessage_getContainer(x);

    SDTOSCMessage* sub = SDTOSCMessage_openContainer(x);
    if (!strcmp("resonator", method) || !strcmp("inertial", method))
      return_code = SDTOSCResonator(log, sub);
    else if (!strcmp("interactor", method))
      return_code = SDTOSCInteractor(log, sub);
    else if (!strcmp("project", method))
      return_code = SDTOSCProject(log, sub);
    else if (!strcmp("biquad", method))
      return_code = SDTOSCBiquad(log, sub);
    else if (!strcmp("bouncing", method))
      return_code = SDTOSCBouncing(log, sub);
    else if (!strcmp("breaking", method))
      return_code = SDTOSCBreaking(log, sub);
    else if (!strcmp("bubble", method))
      return_code = SDTOSCBubble(log, sub);
    else if (!strcmp("crumpling", method))
      return_code = SDTOSCCrumpling(log, sub);
    else if (!strcmp("dcmotor", method))
      return_code = SDTOSCDCMotor(log, sub);
    else if (!strcmp("demix", method))
      return_code = SDTOSCDemix(log, sub);
    else if (!strcmp("envelope", method))
      return_code = SDTOSCEnvelope(log, sub);
    else if (!strcmp("explosion", method))
      return_code = SDTOSCExplosion(log, sub);
    else if (!strcmp("fluidflow", method))
      return_code = SDTOSCFluidFlow(log, sub);
    else if (!strcmp("modaltracker", method))
      return_code = SDTOSCModalTracker(log, sub);
    else if (!strcmp("motor", method))
      return_code = SDTOSCMotor(log, sub);
    else if (!strcmp("myo", method))
      return_code = SDTOSCMyoelastic(log, sub);
    else if (!strcmp("pitch", method))
      return_code = SDTOSCPitch(log, sub);
    else if (!strcmp("pitchshift", method))
      return_code = SDTOSCPitchShift(log, sub);
    else if (!strcmp("reverb", method))
      return_code = SDTOSCReverb(log, sub);
    else if (!strcmp("rolling", method))
      return_code = SDTOSCRolling(log, sub);
    else if (!strcmp("scraping", method))
      return_code = SDTOSCScraping(log, sub);
    else if (!strcmp("spectralfeats", method))
      return_code = SDTOSCSpectralFeats(log, sub);
    else if (!strcmp("windcavity", method))
      return_code = SDTOSCWindCavity(log, sub);
    else if (!strcmp("windkarman", method))
      return_code = SDTOSCWindKarman(log, sub);
    else if (!strcmp("windflow", method))
      return_code = SDTOSCWindFlow(log, sub);
    else if (!strcmp("zerox", method))
      return_code = SDTOSCZeroCrossing(log, sub);

    SDTOSCMessage_free(sub);
  }
  SDTOSCLog(log, return_code, x);
}
