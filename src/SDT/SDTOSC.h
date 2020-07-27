#include "SDTOSCCommon.h"

/** @file SDTOSC.h
@defgroup OSC SDTOSC.h: Open Sound Control
Interface to use OSC with SDT.
@{
*/

#ifndef SDT_OSC_H
#define SDT_OSC_H

#ifdef __cplusplus
extern "C" {
#endif

/** @brief OSC root for SDT methods
\par OSC Address
/
@param [in] log Log function pointer
@param [in] x OSC message*/
extern void SDTOSCRoot(void (* log)(const char *, ...), const SDTOSCMessage* x);

/** @} */

#ifdef __cplusplus
};
#endif

#endif

/** @} */