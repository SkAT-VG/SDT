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

SDTOSCArgumentList *pd_args_to_sdt(int argc, t_atom *argv) {
  SDTOSCArgumentList *a = SDTOSCArgumentList_new(argc);
  for(unsigned int i = 0; i < argc ; ++i)
    SDTOSCArgumentList_putArgument(a, i, pd_arg_to_sdt(argv + i));
  return a;
}

void sdt_osc_root(t_sdt_osc *x, t_symbol *s, int argc, t_atom *argv) {
  startpost("SDT OSC @[%s]: ", s->s_name);
  postatom(argc, argv);
  endpost();
  SDTOSCArgumentList *a = pd_args_to_sdt(argc, argv);
  for(unsigned int i = 0; i < argc ; ++i)
    if (SDTOSCArgumentList_isFloat(a, i))
      post("%d) FLOAT:  %.2f", i + 1, SDTOSCArgumentList_getFloat(a, i));
    else if (SDTOSCArgumentList_isString(a, i))
      post("%d) STRING: %s", i + 1, SDTOSCArgumentList_getString(a, i));
    else if (SDTOSCArgumentList_isUnsupported(a, i))
      post("%d) UNSUPPORTED", i + 1);
  //sdt_osc_arg_post(argc, argv);
  //free(pd_args_to_sdt(argc, argv));
  // sdt_osc_arg_post(argc, argv);
  //SDTOSCAddress *a = SDTOSCAddress_new(s->s_name);
  //if (!SDTOSCRoot(a) && a) {
  //  startpost("SDT OSC @[%s]: ", s->s_name);
  //  postatom(argc, argv);
  //  endpost();
  //}
  //SDTOSCAddress_free(a);
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
