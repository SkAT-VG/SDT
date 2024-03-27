// Include in debug mode only
#ifdef SDT_DEBUG

#include <stdio.h>
#include <stdlib.h>

#include "SDTCommon.h"

/** @file SDTMemoryTrack.h
@defgroup MemoryTrack SDTMemoryTrack.h: Memory tracking utilities
Functions and structures to track memory leaks
@{
*/

#ifndef SDT_MEMORYTRACK_H
#define SDT_MEMORYTRACK_H

#ifdef __cplusplus
extern "C" {
#endif

/** @brief Warn if SDT's memory is not empty
@return Zero if empty, non-zero otherwise */
extern int _SDT_arenaWarnNonEmpty();

/** @brief Reset SDT's memory trace */
extern void _SDT_resetArena();

/** @brief Get SDT's current memory trace size */
extern size_t _SDT_currentArena();

/** @brief Get SDT's current number of objects in the memory trace */
extern size_t _SDT_currentArenaLength();

/** @brief SDT's tracking malloc
@param[in] size Memory size to allocate
@param[in] file File where call to malloc happens
@param[in] line Line where call to malloc happens
@param[in] func Function where call to malloc happens
@return Pointer to the allocated memory */
extern void* _SDT_mallocTrack(size_t size, const char* file, unsigned int line,
                              const char* func);

/** @brief SDT's tracking calloc
@param[in] count Number of elements to allocate
@param[in] size Size of each element
@param[in] file File where call to malloc happens
@param[in] line Line where call to malloc happens
@param[in] func Function where call to malloc happens
@return Pointer to the allocated memory */
extern void* _SDT_callocTrack(size_t count, size_t size, const char* file,
                              unsigned int line, const char* func);

/** @brief SDT's tracking free
@param[in] p Pointer to the allocated memory to free
@param[in] file File where call to free happens
@param[in] line Line where call to free happens
@param[in] func Function where call to free happens */
extern void _SDT_freeTrack(void* p, const char* file, unsigned int line,
                           const char* func);

#define malloc(X) _SDT_mallocTrack(X, __FILE__, __LINE__, __func__)
#define calloc(C, S) _SDT_callocTrack(C, S, __FILE__, __LINE__, __func__)
#define free(X) _SDT_freeTrack(X, __FILE__, __LINE__, __func__)

#ifdef __cplusplus
};
#endif

#endif

/** @} */
#endif
