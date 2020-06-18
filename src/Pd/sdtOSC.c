#include "m_pd.h"
#include <stdlib.h>

static t_class *sdt_osc_class;

typedef struct _sdt_osc {
  t_object  obj;
} t_sdt_osc;

void sdt_osc_echo(t_sdt_osc *x, t_symbol *s, int argc, t_atom *argv) {
  startpost("SDT/OSC [%s]: ", s->s_name);
  postatom(argc, argv);
  endpost();
}

void *sdt_osc_new(void) {
  t_sdt_osc *x = (t_sdt_osc *)pd_new(sdt_osc_class);

  return (void *)x;
}

void sdt_osc_free(t_sdt_osc *x) {
  ;
}

void sdt_osc_setup(void) {
  sdt_osc_class = class_new(gensym("sdtOSC"),
    (t_newmethod) sdt_osc_new,
    (t_method) sdt_osc_free,
    sizeof(t_sdt_osc),
    CLASS_DEFAULT,
    0
  );

  class_addanything(sdt_osc_class, sdt_osc_echo);
}
