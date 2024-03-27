#include "SDTCommonPd.h"
#include <stdlib.h>

long sdt_pd_arg_parse(t_symbol *s, long argc, const t_atom *argv, long nargs,
                      const t_atomtype *targs, long *argi) {
  char *selected = calloc(argc, sizeof(char));
  for (long i = 0; i < nargs; ++i) {
    argi[i] = -1;
    for (long j = 0; j < argc; ++j)
      if (!selected[j] && argv[j].a_type == targs[i]) {
        argi[i] = j;
        selected[j] = 1;
        break;
      }
  }
  long i = -1;
  for (long j = 0; j < argc; ++j)
    if (!selected[j]) {
      i = j;
      break;
    }
  free(selected);
  return i;
}