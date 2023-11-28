#define SDT_MEMORYTRACK_INCLUDE
#include "SDTCommon.h"
#undef SDT_MEMORYTRACK_INCLUDE

#include <stdlib.h>
#include <string.h>

// Compile in debug mode only
#ifdef SDT_DEBUG

// --- Doubly-linked list -----------------------------------------------------
typedef struct SDTDLLNode {
  void* ptr;
  void* prev;
  void* next;
} SDTDLLNode;

static SDTDLLNode* SDTDLLNode_new(void* ptr) {
  SDTDLLNode* n = (SDTDLLNode*)malloc(sizeof(SDTDLLNode));
  n->ptr = ptr;
  n->next = (void*)0;
  n->prev = (void*)0;
  return n;
}

static void SDTDLLNode_free(SDTDLLNode* n, void (*free_func)(void*)) {
  if (free_func && n->ptr) free_func(n->ptr);
  free(n);
}

static void SDTDLLNode_setNext(SDTDLLNode* n, SDTDLLNode* next) {
  n->next = next;
}

static void SDTDLLNode_setPrev(SDTDLLNode* n, SDTDLLNode* prev) {
  n->prev = prev;
}

static SDTDLLNode* SDTDLLNode_getNext(const SDTDLLNode* n) {
  return (SDTDLLNode*)n->next;
}

static SDTDLLNode* SDTDLLNode_getPrev(const SDTDLLNode* n) {
  return (SDTDLLNode*)n->prev;
}

typedef struct SDTDoublyLinkedList {
  // Top is last pushed
  SDTDLLNode* top;
} SDTDoublyLinkedList;

static SDTDoublyLinkedList* SDTDoublyLinkedList_new() {
  SDTDoublyLinkedList* llist =
      (SDTDoublyLinkedList*)malloc(sizeof(SDTDoublyLinkedList));
  llist->top = (SDTDLLNode*)0;
  return llist;
}

static SDTDLLNode* SDTDoublyLinkedList_getTop(SDTDoublyLinkedList* llist) {
  return llist->top;
}

static void SDTDoublyLinkedList_push(SDTDoublyLinkedList* llist,
                                     SDTDLLNode* n) {
  if (llist->top) llist->top->next = n;
  n->prev = llist->top;
  llist->top = n;
}

static SDTDLLNode* SDTDoublyLinkedList_popPtr(SDTDoublyLinkedList* llist,
                                              const void* ptr) {
  SDTDLLNode* node;
  for (node = llist->top; node; node = SDTDLLNode_getPrev(node))
    if (node->ptr == ptr) {
      SDTDLLNode* prev = SDTDLLNode_getPrev(node);
      SDTDLLNode* next = SDTDLLNode_getNext(node);

      if (next)
        SDTDLLNode_setPrev(next, prev);
      else
        llist->top = prev;
      if (prev) SDTDLLNode_setNext(prev, next);
      SDTDLLNode_setPrev(node, (SDTDLLNode*)0);
      SDTDLLNode_setNext(node, (SDTDLLNode*)0);

      return node;
    }
  return (SDTDLLNode*)0;
}

static void SDTDoublyLinkedList_free(SDTDoublyLinkedList* llist,
                                     void (*free_func)(void*)) {
  while (llist->top)
    SDTDLLNode_free(SDTDoublyLinkedList_popPtr(llist, llist->top->ptr),
                    free_func);
  free(llist);
}

static size_t SDTDoublyLinkedList_getLength(const SDTDoublyLinkedList* llist) {
  size_t size = 0;
  if (llist)
    for (SDTDLLNode* node = llist->top; node;
         node = SDTDLLNode_getPrev(node), ++size)
      ;
  return size;
}
// ----------------------------------------------------------------------------

// --- Memory allocation info -------------------------------------------------
typedef struct SDTMallocInfo {
  void* ptr;
  size_t size;
  unsigned char size_valid;
  char* file;
  unsigned int line;
  char* func;
} SDTMallocInfo;

static SDTMallocInfo* SDTMallocInfo_new(void* ptr, size_t size,
                                        unsigned char size_valid,
                                        const char* file, unsigned int line,
                                        const char* func) {
  SDTMallocInfo* minfo = (SDTMallocInfo*)malloc(sizeof(SDTMallocInfo));
  minfo->ptr = ptr;
  minfo->size = size;
  minfo->size_valid = size_valid;
  minfo->file = (char*)malloc(strlen(file) + 1);
  strcpy(minfo->file, file);
  minfo->line = line;
  minfo->func = (char*)malloc(strlen(func) + 1);
  strcpy(minfo->func, func);
  return minfo;
}

static void SDTMallocInfo_free(SDTMallocInfo* minfo) {
  free(minfo->file);
  free(minfo->func);
  free(minfo);
}
// ----------------------------------------------------------------------------

static SDTDoublyLinkedList* heap_dll = (SDTDoublyLinkedList*)0;

size_t _SDT_currentArena() {
  size_t arena = 0;
  if (heap_dll)
    for (SDTDLLNode* node = SDTDoublyLinkedList_getTop(heap_dll); node;
         node = SDTDLLNode_getPrev(node))
      arena += ((SDTMallocInfo*)node->ptr)->size;
  return arena;
}

size_t _SDT_currentArenaLength() {
  return SDTDoublyLinkedList_getLength(heap_dll);
}

static void _SDT_resetArenaHelper_SDTMallocInfo_free(void* ptr) {
  SDTMallocInfo_free((SDTMallocInfo*)ptr);
}

void _SDT_resetArena() {
  if (heap_dll)
    SDTDoublyLinkedList_free(heap_dll,
                             &_SDT_resetArenaHelper_SDTMallocInfo_free);
  heap_dll = (SDTDoublyLinkedList*)0;
}

int _SDT_arenaWarnNonEmpty() {
  int r = 0;
  if (!heap_dll) return r;
  SDTMallocInfo* minfo;
  for (SDTDLLNode* node = SDTDoublyLinkedList_getTop(heap_dll); node;
       node = SDTDLLNode_getPrev(node)) {
    r = 1;
#ifdef SDT_WARN
    minfo = (SDTMallocInfo*)node->ptr;
    SDT_log(SDT_LOG_LEVEL_WARN, minfo->file, minfo->line, minfo->func,
            "Memory not freed! %p\n", minfo->ptr);
#endif
  }
  return r;
}

void* _SDT_mallocTrack(size_t size, const char* file, unsigned int line,
                       const char* func) {
  void* p = malloc(size);
  if (!heap_dll) heap_dll = SDTDoublyLinkedList_new();
  SDTDoublyLinkedList_push(heap_dll, SDTDLLNode_new(SDTMallocInfo_new(
                                         p, size, 1, file, line, func)));
  SDT_ONLY_IN_LEVEL(
      VERBOSE,
      SDT_log(SDT_LOG_LEVEL_VERBOSE, file, line, func,
              "Arena: %li B\t[%li objs]\tAllocated: %p -> %li B\n",
              _SDT_currentArena(), _SDT_currentArenaLength(), p, size);)
  return p;
}

void* _SDT_callocTrack(size_t count, size_t size, const char* file,
                       unsigned int line, const char* func) {
  void* p = calloc(count, size);
  size *= count;
  if (!heap_dll) heap_dll = SDTDoublyLinkedList_new();
  SDTDoublyLinkedList_push(heap_dll, SDTDLLNode_new(SDTMallocInfo_new(
                                         p, size, 1, file, line, func)));
  SDT_ONLY_IN_LEVEL(
      VERBOSE,
      SDT_log(SDT_LOG_LEVEL_VERBOSE, file, line, func,
              "Arena: %li B\t[%li objs]\tAllocated: %p -> %li B\n",
              _SDT_currentArena(), _SDT_currentArenaLength(), p, size);)
  return p;
}

void _SDT_freeTrack(void* p, const char* file, unsigned int line,
                    const char* func) {
  SDTDLLNode* n = (SDTDLLNode*)0;
  SDTMallocInfo* minfo = (SDTMallocInfo*)0;
  if (heap_dll)
    for (n = SDTDoublyLinkedList_getTop(heap_dll); n;
         n = SDTDLLNode_getPrev(n)) {
      minfo = (SDTMallocInfo*)n->ptr;
      if (minfo->ptr == p) {
        SDTDoublyLinkedList_popPtr(heap_dll, minfo);
        break;
      }
    }

  if (n) SDTDLLNode_free(n, 0);
  if (minfo) {
    SDT_ONLY_IN_LEVEL(VERBOSE,
                      SDT_log(SDT_LOG_LEVEL_VERBOSE, file, line, func,
                              "Freeing memory allocated in %s:%li %s()\n",
                              minfo->file, minfo->line, minfo->func);)
  }

  free(p);

  if (minfo) {
    if (!_SDT_currentArenaLength()) _SDT_resetArena();
    SDT_ONLY_IN_LEVEL(
        VERBOSE, SDT_log(SDT_LOG_LEVEL_VERBOSE, file, line, func,
                         "Arena: %li B\t[%li objs]\tFreed:     %p -> %li B\n",
                         _SDT_currentArena(), _SDT_currentArenaLength(), p,
                         minfo->size);)
    SDTMallocInfo_free(minfo);
  } else {
    SDT_ONLY_IN_LEVEL(
        VERBOSE,
        SDT_log(SDT_LOG_LEVEL_VERBOSE, file, line, func,
                "Arena: %li B\t[%li objs]\tFreed:     %p (untracked)\n",
                _SDT_currentArena(), _SDT_currentArenaLength());)
  }
}

#endif
