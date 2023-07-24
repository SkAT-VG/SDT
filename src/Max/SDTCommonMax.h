#include "ext_obex_util.h"

#ifndef SDT_COMMONMAX_H
#define SDT_COMMONMAX_H

/** @brief Unregister the SDT object in the hashmap and free the SDT object memory
This macro works for destroyer functions whose signature is "classname_free(t_classname *x)".
@param[in] T The SDT type (without the leading "SDT")
@param[in] F The name of the Max object field where the SDT object is stored */
#define SDT_MAX_FREE(T, F) if (x->key) \
  SDT_unregister ## T(x->key->s_name); \
SDT ## T ## _free(x-> F);

/** @brief Define the setter function for the attribute "key".
It will register the SDT object in the hashmap if a key is specified
This macro works if the Max object has a field "x->key" of type "t_symbol *".
If the registration is unsuccessful, the key is not set
@param[in] M The Max type (without the leading "t_")
@param[in] T The SDT type (without the leading "SDT")
@param[in] F The name of the Max object field where the SDT object is stored
@param[in] O The name of the Max object (string)
@param[in] N The explicative name of the Max object (string)  */
#define SDT_MAX_KEY(M, T, F, O, N) void M ## _key(t_ ## M *x, void *attr, long ac, t_atom *av) { \
  if (x->key) \
    SDT_unregister ## T(x->key->s_name); \
  t_symbol *key = atom_getsym(av); \
  if (SDT_register ## T(x-> F, key->s_name)) \
    error("sdt.%s: Error registering the %s. Probably a duplicate id?", O, N); \
  else \
    x->key = key; \
}

/** @brief Register the attribute "key" in the Max class
The t_class pointer should be a variable "c"
@param[in] M The Max type (without the leading "t_")
@param[in] I The attribute order index for "key" (string) */
#define SDT_CLASS_KEY(M, I) CLASS_ATTR_SYM(c, "key", 0, t_ ## M, key); \
CLASS_ATTR_ACCESSORS(c, "key", NULL, (method) M ## _key); \
CLASS_ATTR_ORDER(c, "key", 0, I);

#endif
