#include "SDTOSC.h"
#include "SDTOSCResonators.h"
#include "SDTOSCInteractors.h"
#include "SDTOSCProjects.h"
#include <string.h>

void SDTOSCRoot(void (* log)(const char *, ...), const SDTOSCMessage* x) {
  SDTOSCReturnCode return_code = SDT_OSC_RETURN_NOT_IMPLEMENTED;
  if (!SDTOSCMessage_hasContainer(x))
    return_code = SDT_OSC_RETURN_MISSING_CONTAINER;
  else {
    char *method = SDTOSCMessage_getContainer(x);

    SDTOSCMessage* sub = SDTOSCMessage_openContainer(x);
    if (!strcmp("resonator", method) || !strcmp("inertial", method))
      return_code = SDTOSCResonator(log, sub);
    else if (!strcmp("interactor", method))
      return_code = SDTOSCInteractor(log, sub);
    else if (!strcmp("project", method))
      return_code = SDTOSCProject(log, sub);

    SDTOSCMessage_free(sub);
  }
  SDTOSCLog(log, return_code, x);
}