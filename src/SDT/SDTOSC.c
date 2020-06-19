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
    sprintf(y->nodes[i], "%s", x->nodes[i + 1]);
  }

  return y;
}

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