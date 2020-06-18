#include "m_pd.h"

static t_class *sdt_osc_class;

typedef struct _sdt_osc {
  t_object  obj;
} t_sdt_osc;

void sdt_osc_bang(t_sdt_osc *x) {
  post("Hello SDT OSC!!!");
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

  class_addbang(sdt_osc_class, sdt_osc_bang);
}
