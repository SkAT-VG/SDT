/** @file SDTStructs.h
@defgroup structs SDTStructs.h: Common data structures
@{ */

#ifndef SDT_STRUCTS_H
#define SDT_STRUCTS_H

#ifdef __cplusplus
extern "C" {
#endif

/** @brief Opaque data structure for a hashmap object */
typedef struct SDTHashmap SDTHashmap;

/** @brief Object constructor.
@param[in] size Number of bins in the hashmap
@return Pointer to the new instance */
extern SDTHashmap *SDTHashmap_new(int size);

/** @brief Object destructor.
@param[in] x pointer to the instance to destroy */
extern void SDTHashmap_free(SDTHashmap *x);

/** @brief Looks for an entry with the given key in the hashmap.
@param[in] key Key to look for in the hashmap
@return Value associated to the key if found, NULL otherwise */
extern void *SDTHashmap_get(SDTHashmap *x, const char *key);

/** @brief Inserts a key/value pair in the hashmap.
@param[in] key Key to associate to the value
@param[in] value Value to insert in the hashmap
@return 0 if insertion is succesful, 1 otherwise (e.g. key already present) */
extern int SDTHashmap_put(SDTHashmap *x, const char *key, void *value);

/** @brief Deletes a key/value pair from the hashmap.
@param[in] key Key to look for in the hashmap
@return 0 if deletion is succesful, 1 otherwise (e.g. key not found) */
extern int SDTHashmap_del(SDTHashmap *x, const char *key);

/** @brief Deletes all the entries in the hashmap. */
extern void SDTHashmap_clear(SDTHashmap *x);

/** @brief Returns 1 if the hashmap is empty, otherwise 0. */
extern int SDTHashmap_empty(const SDTHashmap *x);

/** --- Macros ------------------------------------------------------------- */
#define _SDT_HASHMAP_FUNCTIONS(TYPENAME)                                       \
  static SDTHashmap *hashmap_##TYPENAME = NULL;                                \
  int SDT_register##TYPENAME(struct SDT##TYPENAME *x, const char *key) {       \
    if (!hashmap_##TYPENAME) hashmap_##TYPENAME = SDTHashmap_new(59);          \
    if (SDTHashmap_put(hashmap_##TYPENAME, key, x)) {                          \
      SDT_LOGA(WARN, "Not registering. Key already present: %s\n", key);       \
      return 1;                                                                \
    }                                                                          \
    return 0;                                                                  \
  }                                                                            \
  SDT##TYPENAME *SDT_get##TYPENAME(const char *key) {                          \
    return (hashmap_##TYPENAME) ? SDTHashmap_get(hashmap_##TYPENAME, key) : 0; \
  }                                                                            \
  int SDT_unregister##TYPENAME(const char *key) {                              \
    if (!hashmap_##TYPENAME) return 1;                                         \
    if (SDTHashmap_del(hashmap_##TYPENAME, key)) return 1;                     \
    if (SDTHashmap_empty(hashmap_##TYPENAME)) {                                \
      SDTHashmap_free(hashmap_##TYPENAME);                                     \
      hashmap_##TYPENAME = NULL;                                               \
    }                                                                          \
    return 0;                                                                  \
  }
/** ------------------------------------------------------------------------ */

#ifdef __cplusplus
};
#endif

#endif

/** @} */
