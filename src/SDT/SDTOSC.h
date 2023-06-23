#include "SDTOSCCommon.h"

/**
@defgroup OSC SDTOSC: Open Sound Control
Interface to use OSC with SDT.
@{

@file SDTOSC.h
@defgroup OSCROOT SDTOSC.h: Open Sound Control root
@{
*/

#ifndef SDT_OSC_H
#define SDT_OSC_H

#ifdef __cplusplus
extern "C" {
#endif

/** @brief `/`

OSC root for SDT methods
@param [in] x OSC message
@return Zero on success, non-zero otherwise */
extern int SDTOSCRoot(const SDTOSCMessage* x);

#ifdef __cplusplus
};
#endif

#endif

/** @}@} */
