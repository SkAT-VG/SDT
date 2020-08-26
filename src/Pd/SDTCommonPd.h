#include "m_pd.h"
#include "SDT/SDTCommon.h"

#ifndef SDT_COMMONPD_H
#define SDT_COMMONPD_H

/** @brief Parse the Pd arguments for SDT Pd objects creation
@param[in] s Class symbol
@param[in] argc The number of Pd arguments passed
@param[in] argv The Pd arguments passed
@param[in] nargs The number of accepted arguments
@param[in] nargs The type of each of the nargs accepted arguments
@param[out] argi The index in argv for each of the nargs accepted arguments. If no argument correspondence is found, -1 is returned for the argument
@return -1 if all arguments are used, the index of the first unused argument otherwise */
extern long sdt_pd_arg_parse(t_symbol *s, long argc, const t_atom *argv, long nargs, const t_atomtype *targs, long *argi);

#endif
