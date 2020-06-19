#include "m_pd.h"
#include "SDT/SDTOSC.h"
#include <stdlib.h>

static t_class *sdt_osc_class;

typedef struct _sdt_osc {
  t_object  obj;
} t_sdt_osc;

SDTOSCArgument *pd_arg_to_sdt(t_atom *x) {
  if (x->a_type == A_FLOAT)
    return SDTOSCArgument_newFloat(x->a_w.w_float);

  if (x->a_type == A_SYMBOL)
    return SDTOSCArgument_newString(x->a_w.w_symbol->s_name);

  return SDTOSCArgument_new();
}

SDTOSCMessage *pd_args_to_sdt(t_symbol *s, int argc, t_atom *argv) {
  SDTOSCArgumentList *a = SDTOSCArgumentList_new(argc);
  for(unsigned int i = 0; i < argc ; ++i)
    SDTOSCArgumentList_putArgument(a, i, pd_arg_to_sdt(argv + i));
  return SDTOSCMessage_new(SDTOSCAddress_new(s->s_name), a);
}

void sdt_osc_root(t_sdt_osc *x, t_symbol *s, int argc, t_atom *argv) {
  startpost("SDT OSC @[%s]: ", s->s_name);
  postatom(argc, argv);
  endpost();
  SDTOSCMessage *m = pd_args_to_sdt(s, argc, argv);
  //sdt_osc_arg_post(argc, argv);
  //free(pd_args_to_sdt(argc, argv));
  // sdt_osc_arg_post(argc, argv);
  //SDTOSCAddress *a = SDTOSCAddress_new(s->s_name);
  //if (!SDTOSCRoot(a) && a) {
  //  startpost("SDT OSC @[%s]: ", s->s_name);
  //  postatom(argc, argv);
  //  endpost();
  //}
  SDTOSCMessage_free(m);
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

  class_addanything(sdt_osc_class, sdt_osc_root);
}
