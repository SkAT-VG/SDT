#include <stdlib.h>

#include "SDT/OSC/SDTOSC.h"
#include "SDTCommonMax.h"
#include "SDT_fileusage.h"
#include "ext.h"
#include "ext_obex.h"
#include "z_dsp.h"

static t_class *sdt_osc_class = NULL;

typedef struct _sdt_osc {
  t_pxobject obj;
} t_sdt_osc;

SDTOSCArgument *max_arg_to_sdt(t_atom *x) {
  if (x->a_type == A_FLOAT) return SDTOSCArgument_newFloat(atom_getfloat(x));

  if (x->a_type == A_LONG)
    return SDTOSCArgument_newFloat((float)atom_getlong(x));

  if (x->a_type == A_SYM)
    return SDTOSCArgument_newString(atom_getsym(x)->s_name);

  return SDTOSCArgument_new();
}

SDTOSCMessage *max_args_to_sdt(t_symbol *s, long argc, t_atom *argv) {
  SDTOSCArgumentList *a = SDTOSCArgumentList_new(argc);
  for (unsigned int i = 0; i < argc; ++i)
    SDTOSCArgumentList_setArgument(a, i, max_arg_to_sdt(argv + i));
  return SDTOSCMessage_new(SDTOSCAddress_new(s->s_name), a);
}

void sdt_osc_root(t_sdt_osc *x, t_symbol *s, long argc, t_atom *argv) {
  SDTOSCMessage *m = max_args_to_sdt(s, argc, argv);
  SDTOSCRoot(m);
  SDTOSCMessage_free(m);
}

void *sdt_osc_new(void) {
  SDT_setupMaxLoggers();
  t_sdt_osc *x = (t_sdt_osc *)object_alloc(sdt_osc_class);

  return (void *)x;
}

void sdt_osc_free(t_sdt_osc *x) { ; }

void C74_EXPORT ext_main(void *r) {
  t_class *c = class_new("sdt.OSC", (method)sdt_osc_new, (method)sdt_osc_free,
                         (long)sizeof(t_sdt_osc), 0L, 0);

  class_addmethod(c, (method)sdt_osc_root, "anything", A_GIMME, 0);
  class_register(CLASS_BOX, c);

  sdt_osc_class = c;
}
