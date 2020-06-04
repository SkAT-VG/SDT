/** @file SDTSolids.h
@defgroup solids SDTSolids.h: Registering/notifying resonators and interactors 
Bidirectional observer pattern, implementing a loose coupling between resonator and
interactor objects. Particularly useful in patcher languages, where object instantiation
is generally asynchronous.
@{ */

#ifndef SDT_SOLIDS_H
#define SDT_SOLIDS_H

#include "SDTResonators.h"
#include "SDTInteractors.h"

#define SDT_MAX_MODES 16
#define SDT_MAX_PICKUPS 16

#ifdef __cplusplus
extern "C" {
#endif

/** @brief Registers a resonator into the resonators list with a unique ID.
If an interactor with the same ID is present, the resonator is bound to the interactor.
@param[in] x Resonator instance to register
@param[in] key Unique ID assigned to the resonator instance */
extern int SDT_registerResonator(SDTResonator *x, char *key);

/** @brief Unregisters a resonator from the resonator list.
If a resonator with the given ID is present, it is unregistered from the list. If also an
interactor with the same ID is present, the object is released by the interactor as well.
@param[in] key Unique ID of the resonator instance to unregister */
extern int SDT_unregisterResonator(char *key);

/** @brief Registers an interactor into the interactors list with two unique IDs, one for each resonator.
If resonators with the same IDs are present, they are immediately bound to the interactor.
@param[in] x Resonator instance to register
@param[in] key0 Unique ID of the first resonator
@param[in] key1 Unique ID of the second resonator */
extern int SDT_registerInteractor(SDTInteractor *x, char *key0, char *key1);

/** @brief Unregisters an interactor from the interactors list.
If an interactor with the given IDs is present, it is unregistered from the list.
@param[in] key0 Unique ID of the first resonator
@param[in] key1 Unique ID of the second resonator */
extern int SDT_unregisterInteractor(char *key0, char *key1);

#ifdef __cplusplus
};
#endif

#endif

/** @} */