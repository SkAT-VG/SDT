#ifndef SDT_SOLIDS_H
#define SDT_SOLIDS_H

#include "SDTResonators.h"
#include "SDTInteractors.h"

#define SDT_MAX_MODES 16
#define SDT_MAX_PICKUPS 16

extern int SDT_registerResonator(SDTResonator *x, char *key);
extern int SDT_unregisterResonator(char *key);
extern int SDT_registerInteractor(SDTInteractor *x, char *key0, char *key1);
extern int SDT_unregisterInteractor(char *key0, char *key1);

#endif
