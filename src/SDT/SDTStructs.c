#include <math.h>
#include <stdlib.h>
#include <string.h>
#include "SDTCommon.h"
#include "SDTStructs.h"

typedef struct SDTHashItem {
  char *key;
  void *value;
  struct SDTHashItem *next;
} SDTHashItem;

struct SDTHashmap {
  SDTHashItem **bins, *item, *prev;
  int size;
};

int SDTHashmap_hash(SDTHashmap *x, char *key) {
  unsigned long h;
  int i;
  
  h = 0;
  for (i = 0; i < strlen(key); i++) {
    h = h * 31 + key[i];
  }
  return h % x->size;
}

int SDTHashmap_lookup(SDTHashmap *x, char *key) {
  int hash;
  
  hash = SDTHashmap_hash(x, key);
  x->prev = NULL;
  x->item = x->bins[hash];
  while (x->item) {
    if (strcmp(x->item->key, key) == 0) break;
    x->prev = x->item;
    x->item = x->item->next;
  }
  return hash;
}

SDTHashmap *SDTHashmap_new(int size) {
  SDTHashmap *x;
  int i;
  
  x = (SDTHashmap *)malloc(sizeof(SDTHashmap));
  x->bins = (SDTHashItem **)malloc(size * sizeof(SDTHashItem *));
  for (i = 0; i < size; i++) {
    x->bins[i] = NULL;
  }
  x->size = size;
  return x;
}

void SDTHashmap_free(SDTHashmap *x) {
  SDTHashmap_clear(x);
  free(x->bins);
  free(x);
}

void *SDTHashmap_get(SDTHashmap *x, char *key) {
  SDTHashmap_lookup(x, key);
  return x->item ? x->item->value : NULL;
}

int SDTHashmap_put(SDTHashmap *x, char *key, void *value) {
  int hash;
  
  hash = SDTHashmap_lookup(x, key);
  if (x->item) return 1;
  x->item = (SDTHashItem *)malloc(sizeof(SDTHashItem));
  x->item->key = (char *)malloc(strlen(key) + 1);
  strcpy(x->item->key, key);
  x->item->value = value;
  x->item->next = x->bins[hash];
  x->bins[hash] = x->item;
  return 0;
}

int SDTHashmap_del(SDTHashmap *x, char *key) {
  int hash;
  
  hash = SDTHashmap_lookup(x, key);
  if (!x->item) return 1;
  if (x->prev) x->prev->next = x->item->next;
  else x->bins[hash] = x->item->next;
  free(x->item->key);
  free(x->item);
  return 0;
}

void SDTHashmap_clear(SDTHashmap *x) {
  SDTHashItem *item, *next;
  int i;
  
  for (i = 0; i < x->size; i++) {
    item = x->bins[i];
    while (item) {
      next = item->next;
      free(item->key);
      free(item);
      item = next;
    }
    x->bins[i] = NULL;
  }
}