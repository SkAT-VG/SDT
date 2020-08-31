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
extern int SDTHashmap_put(SDTHashmap *x, char *key, void *value);

/** @brief Deletes a key/value pair from the hashmap.
@param[in] key Key to look for in the hashmap
@return 0 if deletion is succesful, 1 otherwise (e.g. key not found) */
extern int SDTHashmap_del(SDTHashmap *x, char *key);

/** @brief Deletes all the entries in the hashmap. */
extern void SDTHashmap_clear(SDTHashmap *x);

/** @brief Define a global SDTHashmap
@param[in] X Name of the global variable */
#define DEFINE_HASHMAP_GLOBAL(X) SDTHashmap *X = NULL;

/** @brief Define a SDTHashmap "register" function
@param[in] T Name of the SDT type (without the leading "SDT")
@param[in] X Name of the SDTHashmap global variable
@param[in] S Size of the SDTHashmap */
#define DEFINE_HASHMAP_REGISTER(T, X, S) int SDT_register ## T(struct SDT ## T *x, char *key) { \
  if (! X) X = SDTHashmap_new(S); \
  if (SDTHashmap_put(X, key, x)) return 1; \
  return 0; \
}

/** @brief Define a SDTHashmap "get" function
@param[in] T Name of the SDT type (without the leading "SDT")
@param[in] X Name of the SDTHashmap global variable */
#define DEFINE_HASHMAP_GET(T, X) SDT ## T *SDT_get ## T(const char *key) { \
  return (X)? SDTHashmap_get(X, key) : 0; \
}

/** @brief Define a SDTHashmap "unregister" function
@param[in] T Name of the SDT type (without the leading "SDT")
@param[in] X Name of the SDTHashmap global variable */
#define DEFINE_HASHMAP_UNREGISTER(T, X) int SDT_unregister ## T(char *key) { \
  if (! X) return 1; \
  if (SDTHashmap_del(X, key)) return 1; \
  return 0; \
}

/** @brief Define a SDTHashmap and its correlated functions (register, get, unregister)
@param[in] T Name of the SDT type (without the leading "SDT")
@param[in] X Name of the SDTHashmap global variable
@param[in] S Size of the SDTHashmap */
#define DEFINE_HASHMAP(T, X, S) DEFINE_HASHMAP_GLOBAL(X) \
DEFINE_HASHMAP_REGISTER(T, X, S) \
DEFINE_HASHMAP_GET(T, X) \
DEFINE_HASHMAP_UNREGISTER(T, X)

#ifdef __cplusplus
};
#endif

#endif

/** @} */
