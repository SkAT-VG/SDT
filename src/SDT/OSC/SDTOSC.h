#include "SDTOSCCommon.h"

/** @defgroup oscmethods OSC Methods
Implementation of OSC methods for SDT
@ingroup osc
@{ */

/** @} */

/** @defgroup osc Open Sound Control
Open Sound Control implementation for SDT
@{ */

/** @} */

/** @file SDTOSC.h
@defgroup osc_h SDTOSC.h: Open Sound Control
Open Sound Control root for SDT
@{ */

#ifndef SDT_OSC_H
#define SDT_OSC_H

#ifdef __cplusplus
extern "C" {
#endif

/** @defgroup oscroot SDTOSC
OSC root for SDT
@ingroup oscmethods
@{ */

/** @brief `/`

OSC root for SDT methods
@param [in] x OSC message
@return Zero on success, non-zero otherwise */
extern int SDTOSCRoot(const SDTOSCMessage* x);

/** @} */

#ifdef __cplusplus
};
#endif

#endif

/** @} */
