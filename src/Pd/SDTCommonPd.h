#include "SDT/SDTStructs.h"
#include "m_pd.h"

#ifndef SDT_COMMONPD_H
#define SDT_COMMONPD_H

/** @brief Parse the Pd arguments for SDT Pd objects creation
@param[in] s Class symbol
@param[in] argc The number of Pd arguments passed
@param[in] argv The Pd arguments passed
@param[in] nargs The number of accepted arguments
@param[in] nargs The type of each of the nargs accepted arguments
@param[out] argi The index in argv for each of the nargs accepted arguments. If
no argument correspondence is found, -1 is returned for the argument
@return -1 if all arguments are used, the index of the first unused argument
otherwise */
extern long sdt_pd_arg_parse(t_symbol *s, long argc, const t_atom *argv,
                             long nargs, const t_atomtype *targs, long *argi);

/** @brief Parse the Pd arguments for SDT Pd objects creation
This macro works for initializer functions whose signature is
"classname_new(t_symbol *s, int argc, t_atom *argv)". This macro defines an
array of indices argi that stores the result of sdt_pd_arg_parse. This macro
makes the function return NULL if there are unused arguments (and also prints an
error message)
@param[in] N Number of arguments
@param[in] ... The type of each argument */
#define SDT_PD_ARG_PARSE(N, ...)                                             \
  long argi[N], uarg;                                                        \
  t_atomtype targs[] = {__VA_ARGS__};                                        \
  if ((uarg = sdt_pd_arg_parse(s, argc, argv, N, targs, argi)) >= 0) {       \
    pd_error(s, "sdt.%s: unused argument in position %ld", s->s_name, uarg); \
    return NULL;                                                             \
  }

/** @brief Get the Pd argument at the specified index. Arguments should have
been parsed with SDT_PD_ARG_PARSE
@param[in] I The index of the argument
@param[in] G Getter function to extract the argument from the atom
@param[in] D Default value if argument is not specified
@param[in] ... Append these arguments after the call to G (e.g. use ->field to
access a field of its return value) */
#define GET_ARG(I, G, D, ...) (argi[I] >= 0) ? G(argv + argi[I]) __VA_ARGS__ : D

/** @brief Get the Pd argument at the specified index as a window size (power of
two). Arguments should have been parsed with SDT_PD_ARG_PARSE
@param[in] T The type of the variable
@param[in] X The name of the variable
@param[in] I The index of the argument
@param[in] D Default value if argument is not specified */
#define GET_ARG_WINSIZE(T, X, I, D)                                    \
  T _tmp_##X = GET_ARG(I, atom_getfloat, D);                           \
  T X = SDT_nextPow2(_tmp_##X);                                        \
  if (_tmp_##X != X)                                                   \
    post("sdt.%s: Window size must be a power of 2, setting it to %d", \
         s->s_name, X);

/** @brief Register the SDT object in the hashmap if a key is specified
This macro works if the Pd object is called x and the key is x->key.
If the registration is unsuccessful, this macro makes the function return NULL
@param[in] T The SDT type (without the leading "SDT")
@param[in] F The name of the Pd object field where the SDT object is stored
@param[in] S The string verbose name of the SDT class
@param[in] I The argument index for the key */
#define SDT_PD_REGISTER(T, F, S, I)                                           \
  x->key = GET_ARG(I, atom_getsymbol, 0, ->s_name);                           \
  if (x->key)                                                                 \
    if (SDT_register##T(x->F, x->key)) {                                      \
      pd_error(                                                               \
          x,                                                                  \
          "sdt.%s: Error while registering the %s. Probably a duplicate id?", \
          s->s_name, S);                                                      \
      SDT##T##_free(x->F);                                                    \
      return NULL;                                                            \
    }

/** @brief Unregister the SDT object in the hashmap and free the SDT object
memory This macro works for destroyer functions whose signature is
"classname_free(t_classname *x)".
@param[in] T The SDT type (without the leading "SDT")
@param[in] F The name of the Pd object field where the SDT object is stored */
#define SDT_PD_FREE(T, F)                \
  if (x->key) SDT_unregister##T(x->key); \
  SDT##T##_free(x->F);

/** @brief Define the setter function for an attribute
@param[in] M The Pd type (without the leading `t_`)
@param[in] T The SDT type (without the leading `SDT`)
@param[in] F The name of the Pd object field where the SDT object is stored
@param[in] A The name of the attribute
@param[in] U Type `update` to trigger the structure update function */
#define SDT_PD_SETTER(M, T, F, A, U)     \
  void M##_set##A(t_##M *x, t_float f) { \
    SDT##T##_set##A(x->F, f);            \
    _SDT_TYPE_UPDATE_##U(T, x->F);       \
  }

/** @brief Define the setter function for an array attribute
@param[in] M The Pd type (without the leading `t_`)
@param[in] T The SDT type (without the leading `SDT`)
@param[in] F The name of the Pd object field where the SDT object is stored
@param[in] A The name of the attribute
@param[in] U Type `update` to trigger the structure update function */
#define SDT_PD_ARRAY_SETTER(M, T, F, A, U)                     \
  void M##_set##A(t_##M *x, void *attr, long ac, t_atom *av) { \
    for (int i = 0; i < ac; ++i) {                             \
      SDT##T##_set##A(x->F, i, atom_getfloat(av + i));         \
    }                                                          \
    _SDT_TYPE_UPDATE_##U(T, x->F);                             \
  }

#endif
