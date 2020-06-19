#include "m_pd.h"
#include "SDTOSC.h"
#include "SDTSolids.h"
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

struct SDTOSCAddress {
  unsigned int depth;
  char **nodes;
};

SDTOSCAddress *SDTOSCAddress_new(const char *s) {
  if (*s != '/')
    return 0;

  unsigned int depth = 0;
  for(int i = 0, j = 1 ; s[i] ; ++i)
    if (s[i + 1] == '/' || !s[i + 1]) {
      int len = i - j + 1;
      if (len > 0)
        depth++;
      j = i + 2;
    }
  
  if (!depth)
    return 0;

  SDTOSCAddress *x = (SDTOSCAddress *) malloc(sizeof(SDTOSCAddress));
  x->depth = depth;


  x->nodes = (char **) malloc(sizeof(char *) * x->depth);

  for(int i = 0, j = 1, d = 0 ; s[i] ; ++i)
    if (s[i + 1] == '/' || !s[i + 1]) {
      int len = i - j + 1;

      if (len > 0) {
        x->nodes[d] = (char *) malloc(sizeof(char) * (len + 1));
        for(unsigned int h = 0 ; h < len ; ++h)
          x->nodes[d][h] = s[j + h];
        x->nodes[d][len] = 0;
        d++;
      }

      j = i + 2;
    }

  return x;
}

void SDTOSCAddress_free(SDTOSCAddress *x) {
  if (x) {
    if (x->nodes) {
      for(int i = 0 ; i < x->depth ; ++i)
        if (x->nodes[i])
          free(x->nodes[i]);
      free(x->nodes);
    }
    free(x);
  }
}

char *SDTOSCAddress_str(const SDTOSCAddress *x) {
  unsigned int len = 0, j = 0;
  for(unsigned int i = 0 ; i < x->depth ; ++i)
    len += 1 + strlen(x->nodes[i]);

  char *s = (char *) malloc(sizeof(char) * (len + 1));
  for(unsigned int i = 0 ; i < x->depth ; ++i) {
    sprintf(s + j, "/%s", x->nodes[i]);
    j += 1 + strlen(x->nodes[i]);
  }

  return s;
}

unsigned int SDTOSCAddress_getDepth(const SDTOSCAddress *x) {
  return x->depth;
}

char *SDTOSCAddress_getNode(const SDTOSCAddress *x, unsigned int node_idx) {
  return x->nodes[node_idx];
}

SDTOSCAddress *SDTOSCAddress_openContainer(const SDTOSCAddress* x) {
  if (x->depth < 2)
    return 0;

  SDTOSCAddress *y = (SDTOSCAddress *) malloc(sizeof(SDTOSCAddress));
  y->depth = x->depth - 1;
  y->nodes = (char **) malloc(sizeof(char *) * y->depth);
  for(unsigned int i = 0 ; i < y->depth ; ++i) {
    y->nodes[i] = (char *) malloc(sizeof(char) * (strlen(x->nodes[i + 1]) + 1));
    strcpy(y->nodes[i], x->nodes[i + 1]);
  }

  return y;
}

//-------------------------------------------------------------------------------------//

struct SDTOSCArgument {
  enum {
    SDT_OSC_ARG_UNSUPPORTED,
    SDT_OSC_ARG_FLOAT,
    SDT_OSC_ARG_STRING,
  } tag;
  union {
    float f;
    const char *s;
  } value;
};

SDTOSCArgument *SDTOSCArgument_new() {
  SDTOSCArgument *x = (SDTOSCArgument *) malloc(sizeof(SDTOSCArgument));
  x->tag = SDT_OSC_ARG_UNSUPPORTED;
  return x;
}

SDTOSCArgument *SDTOSCArgument_newFloat(float f) {
  SDTOSCArgument *x = SDTOSCArgument_new();
  x->tag = SDT_OSC_ARG_FLOAT;
  x->value.f = f;
  return x;
}

SDTOSCArgument *SDTOSCArgument_newString(const char *s) {
  SDTOSCArgument *x = SDTOSCArgument_new();
  x->tag = SDT_OSC_ARG_STRING;
  x->value.s = s;
  return x;
}

int SDTOSCArgument_isUnsupported(const SDTOSCArgument *x) {
  return x->tag == SDT_OSC_ARG_UNSUPPORTED;
}

int SDTOSCArgument_isFloat(const SDTOSCArgument *x) {
  return x->tag == SDT_OSC_ARG_FLOAT;
}

int SDTOSCArgument_isString(const SDTOSCArgument *x) {
  return x->tag == SDT_OSC_ARG_STRING;
}

float SDTOSCArgument_getFloat(const SDTOSCArgument *x) {
  return x->value.f;
}

const char *SDTOSCArgument_getString(const SDTOSCArgument *x) {
  return x->value.s;
}

//-------------------------------------------------------------------------------------//

struct SDTOSCArgumentList {
  int argc;
  SDTOSCArgument **argv;
};

SDTOSCArgumentList *SDTOSCArgumentList_new(int argc) {
  SDTOSCArgumentList *x = (SDTOSCArgumentList *) malloc(sizeof(SDTOSCArgumentList));
  x->argc = argc;
  x->argv = (SDTOSCArgument **) malloc(sizeof(SDTOSCArgument *) * argc);
  for(unsigned int i = 0 ; i < argc ; ++i)
    x->argv[i] = 0;
  return x;
}

SDTOSCArgumentList *SDTOSCArgumentList_copy(const SDTOSCArgumentList *x) {
  SDTOSCArgumentList *y = (SDTOSCArgumentList *) malloc(sizeof(SDTOSCArgumentList));
  y->argc = x->argc;
  y->argv = (SDTOSCArgument **) malloc(sizeof(SDTOSCArgument *) * y->argc);
  for(unsigned int i = 0 ; i < y->argc ; ++i)
    y->argv[i] = (x->argv[i])? (SDTOSCArgument *) memcpy(malloc(sizeof(SDTOSCArgument)), (void *) x->argv[i], sizeof(SDTOSCArgument)) : 0;
  return y;
}

void SDTOSCArgumentList_free(SDTOSCArgumentList *x) {
  for(unsigned int i = 0 ; i < x->argc ; ++i)
    if (x->argv[i])
      free(x->argv[i]);
  free(x->argv);
  free(x);
}

void SDTOSCArgumentList_put(SDTOSCArgumentList *x, int i) {
  if (x->argv[i])
    free(x->argv[i]);
  x->argv[i] = SDTOSCArgument_new();
}

void SDTOSCArgumentList_putArgument(SDTOSCArgumentList *x, int i, SDTOSCArgument *a) {
  if (x->argv[i])
    free(x->argv[i]);
  x->argv[i] = a;
}

void SDTOSCArgumentList_putFloat(SDTOSCArgumentList *x, int i, float f) {
  if (x->argv[i])
    free(x->argv[i]);
  x->argv[i] = SDTOSCArgument_newFloat(f);
}

void SDTOSCArgumentList_putString(SDTOSCArgumentList *x, int i, const char *s) {
  if (x->argv[i])
    free(x->argv[i]);
  x->argv[i] = SDTOSCArgument_newString(s);
}

int SDTOSCArgumentList_isEmpty(const SDTOSCArgumentList *x, int i) {
  return !x->argv[i];
}

int SDTOSCArgumentList_isUnsupported(const SDTOSCArgumentList *x, int i) {
  return !SDTOSCArgumentList_isEmpty(x, i) && SDTOSCArgument_isUnsupported(x->argv[i]);
}

int SDTOSCArgumentList_isFloat(const SDTOSCArgumentList *x, int i) {
  return !SDTOSCArgumentList_isEmpty(x, i) && SDTOSCArgument_isFloat(x->argv[i]);
}

int SDTOSCArgumentList_isString(const SDTOSCArgumentList *x, int i) {
  return !SDTOSCArgumentList_isEmpty(x, i) && SDTOSCArgument_isString(x->argv[i]);
}

float SDTOSCArgumentList_getFloat(const SDTOSCArgumentList *x, int i) {
  return SDTOSCArgument_getFloat(x->argv[i]);
}

const char *SDTOSCArgumentList_getString(const SDTOSCArgumentList *x, int i) {
  return SDTOSCArgument_getString(x->argv[i]);
}

//-------------------------------------------------------------------------------------//

struct SDTOSCMessage {
  SDTOSCAddress *address;
  SDTOSCArgumentList *args;
};

SDTOSCMessage *SDTOSCMessage_new(SDTOSCAddress *address, SDTOSCArgumentList *args) {
  SDTOSCMessage *x = (SDTOSCMessage *) malloc(sizeof(SDTOSCMessage));
  x->address = address;
  x->args = args;
  return x;
}

void SDTOSCMessage_free(SDTOSCMessage *x) {
  SDTOSCAddress_free(x->address);
  SDTOSCArgumentList_free(x->args);
  free(x);
}

SDTOSCArgumentList *SDTOSCMessage_getArguments(const SDTOSCMessage *x) {
  return x->args;
}

char *SDTOSCMessage_getContainer(const SDTOSCMessage *x) {
  return SDTOSCAddress_getNode(x->address, 0);
}

SDTOSCMessage *SDTOSCMessage_openContainer(const SDTOSCMessage *x) {
  return SDTOSCMessage_new(SDTOSCAddress_openContainer(x->address), SDTOSCArgumentList_copy(x->args));
}

//-------------------------------------------------------------------------------------//

int SDTOSCRoot (const SDTOSCAddress* x) {
  if (!x)
    return 0;

  SDTOSCAddress* sub = SDTOSCAddress_openContainer(x);
  int return_code = 0;
  if (!strcmp("resonator", x->nodes[0])) {
    return_code = 1;
    SDTOSCResonator(sub);
  }

  SDTOSCAddress_free(sub);
  return return_code;
}

SDTResonator *SDTOSCResonator(const SDTOSCAddress* x) {
  SDTResonator *res = (x)? SDT_getResonator(x->nodes[0]) : 0;

  if (res)
    post("Found resonator '%s' at %d", x->nodes[0], res);
  else
    if (x)
      post("Resonator '%s' not found", x->nodes[0]);
    else
      post("Resonator not specified");

  return res;
}