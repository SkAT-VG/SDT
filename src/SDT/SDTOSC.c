#include "SDTOSC.h"
#include "SDTOSCMisc.h"
#include "SDTOSCResonators.h"
#include "SDTOSCInteractors.h"
#include "SDTOSCProjects.h"
#include <string.h>

#define SDT_CLASSES_SWITCH(TYPE, NAME) else if (!strcmp( #NAME , method)) \
return_code = CONCAT(SDTOSC, SDT_ ## TYPE)(log, sub);

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
    SDT_OSC_CLASSES(SDT_CLASSES_SWITCH)

    SDTOSCMessage_free(sub);
  }
  SDTOSCLog(log, return_code, x);
}