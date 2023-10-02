#include "SDTSolids.h"
#include <stdlib.h>
#include "SDTStructs.h"

#define HASHMAP_SIZE 59

SDT_DEFINE_HASHMAP_GLOBAL(resonators)
SDT_DEFINE_HASHMAP_GLOBAL(interactors0)
SDT_DEFINE_HASHMAP_GLOBAL(interactors1)

void SDT_updateInteractors(char *key) {
  SDTResonator *resonator;
  SDTInteractor *interactor;

  if (interactors0) {
    resonator = SDTHashmap_get(resonators, key);
    interactor = SDTHashmap_get(interactors0, key);
    if (interactor) SDTInteractor_setFirstResonator(interactor, resonator);
  }
  if (interactors1) {
    resonator = SDTHashmap_get(resonators, key);
    interactor = SDTHashmap_get(interactors1, key);
    if (interactor) SDTInteractor_setSecondResonator(interactor, resonator);
  }
}

int SDT_registerResonator(SDTResonator *x, char *key) {
  if (!resonators) resonators = SDTHashmap_new(HASHMAP_SIZE);
  if (SDTHashmap_put(resonators, key, x)) return 1;
  SDT_updateInteractors(key);
  return 0;
}

SDT_HASHMAP_GET(Resonator, resonators)

int SDT_unregisterResonator(char *key) {
  if (!resonators) return 1;
  if (SDTHashmap_del(resonators, key)) return 1;
  SDT_updateInteractors(key);
  return 0;
}

int SDT_registerInteractor(SDTInteractor *x, char *key0, char *key1) {
  SDTResonator *resonator0, *resonator1;

  if (!interactors0) interactors0 = SDTHashmap_new(HASHMAP_SIZE);
  if (!interactors1) interactors1 = SDTHashmap_new(HASHMAP_SIZE);
  if (SDTHashmap_get(interactors0, key0) || SDTHashmap_get(interactors1, key1))
    return 1;
  if (resonators) {
    resonator0 = SDTHashmap_get(resonators, key0);
    resonator1 = SDTHashmap_get(resonators, key1);
  } else {
    resonator0 = NULL;
    resonator1 = NULL;
  }
  SDTInteractor_setFirstResonator(x, resonator0);
  SDTInteractor_setSecondResonator(x, resonator1);
  SDTHashmap_put(interactors0, key0, x);
  SDTHashmap_put(interactors1, key1, x);
  return 0;
}

SDTInteractor *SDT_getInteractor(const char *key0, const char *key1) {
  if (!interactors0 || !interactors1) return 0;
  SDTInteractor *x0, *x1;
  x0 = SDTHashmap_get(interactors0, key0);
  x1 = SDTHashmap_get(interactors1, key1);
  if (!x0 || !x1) return 0;
  if (x0 == x1) return x0;
  return 0;
}

int SDT_unregisterInteractor(char *key0, char *key1) {
  if (!interactors0 || !interactors1) return 1;
  if (!SDTHashmap_get(interactors0, key0) ||
      !SDTHashmap_get(interactors1, key1))
    return 1;
  SDTHashmap_del(interactors0, key0);
  SDTHashmap_del(interactors1, key1);
  return 0;
}
