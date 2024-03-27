#include "SDT_fileusage.h"
#include "SDT/SDTCommonMacros.h"

#ifndef SDT_MAX_PACKNAME
#error SDT Max Package name is undefined. \
       Please, Specify the name as a gcc argument: \
       -DSDT_MAX_PACKNAME=<package-name>
#endif

void SDT_fileusage(t_object *x, void *w) {
  fileusage_addpackage(w, STRINGIFY(SDT_MAX_PACKNAME), NULL);
}
