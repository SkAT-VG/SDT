#include "ext.h"

void SDT_fileusage(t_object *x, void *w) {
  fileusage_addpackage(w, "SDT", NULL);
}
