#include "SDTAnalysis.h"
#include "SDTOSCCommon.h"

/** @file SDTOSCAnalysis.h
\addtogroup OSC
@{ */

#ifndef SDT_OSC_ANALYSIS_H
#define SDT_OSC_ANALYSIS_H

#ifdef __cplusplus
extern "C" {
#endif

/** @defgroup osczerox SDTOSCZeroCrossing
OSC for SDTZeroCrossing objects @{ */

extern SDTOSCReturnCode SDTOSCZeroCrossing_log(void (*log)(const char *, ...),
                                               const char *key,
                                               SDTZeroCrossing *x);

extern SDTOSCReturnCode SDTOSCZeroCrossing_save(void (*log)(const char *, ...),
                                                const char *key,
                                                SDTZeroCrossing *x,
                                                const SDTOSCArgumentList *args);

extern SDTOSCReturnCode SDTOSCZeroCrossing_load(void (*log)(const char *, ...),
                                                const char *key,
                                                SDTZeroCrossing *x,
                                                const SDTOSCArgumentList *args);

extern SDTOSCReturnCode SDTOSCZeroCrossing_setSize(
    SDTZeroCrossing *x, const SDTOSCArgumentList *args);

extern SDTOSCReturnCode SDTOSCZeroCrossing_setOverlap(
    SDTZeroCrossing *x, const SDTOSCArgumentList *args);

extern SDTOSCReturnCode SDTOSCZeroCrossing(void (*log)(const char *, ...),
                                           const SDTOSCMessage *x);

/** @} */

#ifdef __cplusplus
};
#endif

#endif

/** @} */
