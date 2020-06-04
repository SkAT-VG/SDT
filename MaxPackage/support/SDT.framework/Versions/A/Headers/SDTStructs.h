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
extern void *SDTHashmap_get(SDTHashmap *x, char *key);

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

#ifdef __cplusplus
};
#endif

#endif

/** @} */
