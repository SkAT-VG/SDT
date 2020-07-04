#include "SDTOSC.h"
#include "SDTSolids.h"
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <math.h>

//-------------------------------------------------------------------------------------//
// Private utils

char *_indent = "  ";

char *strjoin_free(char *x, int free_x, char* y, int free_y) {
  char *z = malloc(sizeof(char) * (strlen(x) + strlen(y) + 1));
  sprintf(z, "%s%s", x, y);
  if (free_x)
    free(x);
  if (free_y)
    free(y);
  return z;
}

char *indent_free(char *x, int free_x, int newline) {
  char *ind = strjoin_free((newline)? "\n" : "", 0, _indent, 0);
  return strjoin_free(ind, 1, x, free_x);
}

int n_digits(float x) {
  return (int) fmax(ceil(log10(fabs(x) + 1)), 1);
}

char *int_stralloc(float x, int headroom, int times) {
  return (char *) malloc(sizeof(char) * times * (headroom + n_digits(x)));
}

//-------------------------------------------------------------------------------------//

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

SDTOSCArgumentList *SDTOSCArgumentList_copyFromTo(const SDTOSCArgumentList *x, unsigned int from, int to) {
  if (to < 0)
    to = x->argc;

  SDTOSCArgumentList *y = (SDTOSCArgumentList *) malloc(sizeof(SDTOSCArgumentList));
  y->argc = to - from;
  y->argv = (SDTOSCArgument **) malloc(sizeof(SDTOSCArgument *) * y->argc);
  for(unsigned int i = 0 ; i < y->argc ; ++i)
    y->argv[i] = (x->argv[from + i])? (SDTOSCArgument *) memcpy(malloc(sizeof(SDTOSCArgument)), (void *) x->argv[from + i], sizeof(SDTOSCArgument)) : 0;
  return y;
}

SDTOSCArgumentList *SDTOSCArgumentList_copy(const SDTOSCArgumentList *x) {
  return SDTOSCArgumentList_copyFromTo(x, 0, -1);
}

void SDTOSCArgumentList_free(SDTOSCArgumentList *x) {
  for(unsigned int i = 0 ; i < x->argc ; ++i)
    if (x->argv[i])
      free(x->argv[i]);
  free(x->argv);
  free(x);
}

void SDTOSCArgumentList_set(SDTOSCArgumentList *x, int i) {
  if (x->argv[i])
    free(x->argv[i]);
  x->argv[i] = SDTOSCArgument_new();
}

void SDTOSCArgumentList_setArgument(SDTOSCArgumentList *x, int i, SDTOSCArgument *a) {
  if (x->argv[i])
    free(x->argv[i]);
  x->argv[i] = a;
}

void SDTOSCArgumentList_setFloat(SDTOSCArgumentList *x, int i, float f) {
  if (x->argv[i])
    free(x->argv[i]);
  x->argv[i] = SDTOSCArgument_newFloat(f);
}

void SDTOSCArgumentList_setString(SDTOSCArgumentList *x, int i, const char *s) {
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

int SDTOSCMessage_hasContainer(const SDTOSCMessage *x) {
  return !!x->address;
}

char *SDTOSCMessage_getContainer(const SDTOSCMessage *x) {
  return SDTOSCAddress_getNode(x->address, 0);
}

SDTOSCMessage *SDTOSCMessage_openContainer(const SDTOSCMessage *x) {
  return SDTOSCMessage_new(SDTOSCAddress_openContainer(x->address), SDTOSCArgumentList_copy(x->args));
}

//-------------------------------------------------------------------------------------//

enum SDTOSCReturnCode {
  SDT_OSC_RETURN_OK,
  SDT_OSC_RETURN_MISSING_CONTAINER,
  SDT_OSC_RETURN_MISSING_METHOD,
  SDT_OSC_RETURN_NOT_IMPLEMENTED,
  SDT_OSC_RETURN_ARGUMENT_ERROR,
  SDT_OSC_RETURN_OBJECT_NOT_FOUND,
};

void SDTOSCRoot(void (* log)(const char *, ...), const SDTOSCMessage* x) {
  SDTOSCReturnCode return_code = SDT_OSC_RETURN_NOT_IMPLEMENTED;
  if (!SDTOSCMessage_hasContainer(x))
    return_code = SDT_OSC_RETURN_MISSING_CONTAINER;
  else {
    char *method = SDTOSCMessage_getContainer(x);

    SDTOSCMessage* sub = SDTOSCMessage_openContainer(x);
    if (!strcmp("resonator", method) || !strcmp("inertial", method))
      return_code = SDTOSCResonator(log, sub);

    SDTOSCMessage_free(sub);
  }
  SDTOSCLog(log, return_code, x);
}

//-------------------------------------------------------------------------------------//

SDTOSCReturnCode SDTOSCResonator(void (* log)(const char *, ...), const SDTOSCMessage* x) {
  SDTOSCArgumentList *args = SDTOSCMessage_getArguments(x);
  const char *res_key = (args->argc && SDTOSCArgumentList_isString(args, 0))? SDTOSCArgumentList_getString(args, 0) : 0;
  SDTResonator *res = (res_key)? SDT_getResonator(res_key) : 0;
  SDTOSCReturnCode return_code;

  if (res)
    if (SDTOSCMessage_hasContainer(x)) {
      SDTOSCArgumentList *sub_args = SDTOSCArgumentList_copyFromTo(SDTOSCMessage_getArguments(x), 1, -1);
      char *method = SDTOSCMessage_getContainer(x);
      if (!strcmp("log", method))
        return_code = SDTOSCResonator_log(log, res_key, res);
      else if (!strcmp("frequency", method))
        return_code = SDTOSCResonator_setFrequency(res, sub_args);
      else if (!strcmp("decay", method))
        return_code = SDTOSCResonator_setDecay(res, sub_args);
      else if (!strcmp("weight", method))
        return_code = SDTOSCResonator_setWeight(res, sub_args);
      else if (!strcmp("gain", method))
        return_code = SDTOSCResonator_setGain(res, sub_args);
      else if (!strcmp("fragmentsize", method))
        return_code = SDTOSCResonator_setFragmentSize(res, sub_args);
      else if (!strcmp("activemodes", method))
        return_code = SDTOSCResonator_setActiveModes(res, sub_args);
      else if (!strcmp("strike", method))
        return_code = SDTOSCResonator_strike(res, sub_args);
      else if (!strcmp("freqs", method))
        return_code = SDTOSCResonator_setFreqs(res, sub_args);
      else if (!strcmp("decays", method))
        return_code = SDTOSCResonator_setDecays(res, sub_args);
      else if (!strcmp("weights", method))
        return_code = SDTOSCResonator_setWeights(res, sub_args);
      else if (!strcmp("pickup", method))
        return_code = SDTOSCResonator_setGains(res, sub_args);
      else
        return_code = SDT_OSC_RETURN_NOT_IMPLEMENTED;
      SDTOSCArgumentList_free(sub_args);
    } else
      return_code = SDT_OSC_RETURN_MISSING_METHOD;
  else if (res_key)
    return_code = SDT_OSC_RETURN_OBJECT_NOT_FOUND;
  else
    return_code = SDT_OSC_RETURN_ARGUMENT_ERROR;

  return return_code;
}

SDTOSCReturnCode SDTOSCResonator_log(void (* log)(const char *, ...), const char *key, SDTResonator *x) {
  char *s = (char *) malloc(sizeof(char) * (strlen(key) + 1)), *a;
  s = strjoin_free(strjoin_free("sdtOSC: resonator '", 0, strcpy(s, key), 1), 1, "'", 0);

  // Log number of modes
  a = int_stralloc(SDTResonator_getNModes(x), 8, 2);
  sprintf(a, "%d/%d", SDTResonator_getActiveModes(x), SDTResonator_getNModes(x));
  s = strjoin_free(strjoin_free(s, 1, indent_free("active modes: ", 0, 1), 1), 1, a, 1);

  // Log number of pickup points
  a = int_stralloc(SDTResonator_getNPickups(x), 8, 1);
  sprintf(a, "%d", SDTResonator_getNPickups(x));
  s = strjoin_free(strjoin_free(s, 1, indent_free("pickup points: ", 0, 1), 1), 1, a, 1);

  // Log modal parameters
  if (SDTResonator_getActiveModes(x))
    s = strjoin_free(s, 1, indent_free(" --- active modes --- ", 0, 1), 1);
  for (unsigned int m = 0; m < SDTResonator_getNModes(x) ; ++m) {
    if (m == SDTResonator_getActiveModes(x))
      s = strjoin_free(s, 1, indent_free(" --- inactive modes --- ", 0, 1), 1);
    int nd = n_digits(SDTResonator_getNModes(x));
    int md = n_digits(m);
    a = int_stralloc(SDTResonator_getNModes(x), 8, 1);
    sprintf(a + nd - md, "%d) ", m);
    s = strjoin_free(s, 1, indent_free(a, 1, 1), 1);

    // Frequecy
    a = int_stralloc(SDTResonator_getFrequency(x, m), 16, 1);
    sprintf(a, "freq=%.2f", SDTResonator_getFrequency(x, m));
    s = strjoin_free(s, 1, a, 1);

    // Decay
    a = int_stralloc(SDTResonator_getDecay(x, m), 16 + nd, 1);
    for (unsigned int j = 0 ; j < nd + 2 ; ++j) a[j] = ' ';
    sprintf(a + nd + 2, "decay=%.2f", SDTResonator_getDecay(x, m));
    s = strjoin_free(s, 1, indent_free(a, 1, 1), 1);
  }

  (*log)(s);
  free(s);
  return SDT_OSC_RETURN_OK;
}

SDTOSCReturnCode SDTOSCResonator_setFloat(void (* setter)(SDTResonator *, unsigned int, double), void (* setter_idx)(SDTResonator *, unsigned int, unsigned int, double), SDTResonator *x, const SDTOSCArgumentList *args) {
  for(unsigned int i = 0 ; i < args->argc ; ++i)
    if (!SDTOSCArgumentList_isFloat(args, i))
      return SDT_OSC_RETURN_ARGUMENT_ERROR;

  // If setter_idx function is specified, use that and consider the first argument as the index
  unsigned int idx_flag = (setter_idx)? 1 : 0;
  if (idx_flag && args->argc < (2 + idx_flag))
    return SDT_OSC_RETURN_ARGUMENT_ERROR;
  unsigned int idx = (idx_flag)? SDTOSCArgumentList_getFloat(args, 0) : 0;

  if (idx_flag)
    (*setter_idx)(x, idx, (unsigned int) SDTOSCArgumentList_getFloat(args, 1), SDTOSCArgumentList_getFloat(args, 2));
  else
    (*setter)(x, (unsigned int) SDTOSCArgumentList_getFloat(args, 0), SDTOSCArgumentList_getFloat(args, 1));
  return SDT_OSC_RETURN_OK;
}

SDTOSCReturnCode SDTOSCResonator_setFrequency(SDTResonator *x, const SDTOSCArgumentList *args) {
  return SDTOSCResonator_setFloat(&SDTResonator_setFrequency, 0, x, args);
}

SDTOSCReturnCode SDTOSCResonator_setDecay(SDTResonator *x, const SDTOSCArgumentList *args) {
  return SDTOSCResonator_setFloat(&SDTResonator_setDecay, 0, x, args);
}

SDTOSCReturnCode SDTOSCResonator_setWeight(SDTResonator *x, const SDTOSCArgumentList *args) {
  return SDTOSCResonator_setFloat(&SDTResonator_setWeight, 0, x, args);
}

SDTOSCReturnCode SDTOSCResonator_setGain(SDTResonator *x, const SDTOSCArgumentList *args) {
  return SDTOSCResonator_setFloat(0, &SDTResonator_setGain, x, args);
}

SDTOSCReturnCode SDTOSCResonator_setFragmentSize(SDTResonator *x, const SDTOSCArgumentList *args) {
  if (args->argc < 1 || !SDTOSCArgumentList_isFloat(args, 0))
    return SDT_OSC_RETURN_ARGUMENT_ERROR;

  SDTResonator_setFragmentSize(x, (double) SDTOSCArgumentList_getFloat(args, 0));
  return SDT_OSC_RETURN_OK;
}

SDTOSCReturnCode SDTOSCResonator_setActiveModes(SDTResonator *x, const SDTOSCArgumentList *args) {
  if (args->argc < 1 || !SDTOSCArgumentList_isFloat(args, 0))
    return SDT_OSC_RETURN_ARGUMENT_ERROR;

  SDTResonator_setActiveModes(x, (unsigned int) SDTOSCArgumentList_getFloat(args, 0));
  return SDT_OSC_RETURN_OK;
}

SDTOSCReturnCode SDTOSCResonator_setList(void (* setter)(SDTResonator *, unsigned int, double), void (* setter_idx)(SDTResonator *, unsigned int, unsigned int, double), SDTResonator *x, const SDTOSCArgumentList *args) {
  for(unsigned int i = 0 ; i < args->argc ; ++i)
    if (!SDTOSCArgumentList_isFloat(args, i))
      return SDT_OSC_RETURN_ARGUMENT_ERROR;

  // If setter_idx function is specified, use that and consider the first argument as the index
  unsigned int idx_flag = (setter_idx)? 1 : 0;
  if (idx_flag && args->argc < 1)
    return SDT_OSC_RETURN_ARGUMENT_ERROR;
  unsigned int idx = (idx_flag)? SDTOSCArgumentList_getFloat(args, 0) : 0;

  for(unsigned int i = idx_flag ; i < args->argc ; ++i)
    if (idx_flag)
      (*setter_idx)(x, idx, i - 1, SDTOSCArgumentList_getFloat(args, i));
    else
      (*setter)(x, i, SDTOSCArgumentList_getFloat(args, i));
  return SDT_OSC_RETURN_OK;
}

SDTOSCReturnCode SDTOSCResonator_setFreqs(SDTResonator *x, const SDTOSCArgumentList *args) {
  return SDTOSCResonator_setList(&SDTResonator_setFrequency, 0, x, args);
}

SDTOSCReturnCode SDTOSCResonator_setDecays(SDTResonator *x, const SDTOSCArgumentList *args) {
  return SDTOSCResonator_setList(&SDTResonator_setDecay, 0, x, args);
}

SDTOSCReturnCode SDTOSCResonator_setWeights(SDTResonator *x, const SDTOSCArgumentList *args) {
  return SDTOSCResonator_setList(&SDTResonator_setWeight, 0, x, args);
}

SDTOSCReturnCode SDTOSCResonator_setGains(SDTResonator *x, const SDTOSCArgumentList *args) {
  return SDTOSCResonator_setList(0, &SDTResonator_setGain, x, args);
}

SDTOSCReturnCode SDTOSCResonator_strike(SDTResonator *x, const SDTOSCArgumentList *args) {
  if (args->argc < 2 || !SDTOSCArgumentList_isFloat(args, 0) || !SDTOSCArgumentList_isFloat(args, 1))
    return SDT_OSC_RETURN_ARGUMENT_ERROR;

  double p = (double) SDTOSCArgumentList_getFloat(args, 0);
  double v = (double) SDTOSCArgumentList_getFloat(args, 1);
  int n = SDTResonator_getNPickups(x);
  for(unsigned int i = 0 ; i < n ; ++i) {
    SDTResonator_setPosition(x, i, p);
    SDTResonator_setVelocity(x, i, v);
  }
  return SDT_OSC_RETURN_OK;
}

//-------------------------------------------------------------------------------------//

char *_docs_url = "https://chromaticisobar.github.io/SDT";

void SDTOSCLog(void (* log)(const char *, ...), SDTOSCReturnCode r, const SDTOSCMessage *m) {
  if (log && r) {
    // Error code
    char *msg = "[ERROR]";
    if (r == SDT_OSC_RETURN_MISSING_CONTAINER)
      msg = "[MISSING_CONTAINER]: please, specify an OSC container";
    else if (r == SDT_OSC_RETURN_MISSING_METHOD)
      msg = "[MISSING_METHOD]: please, specify an OSC method from the container";
    else if (r == SDT_OSC_RETURN_NOT_IMPLEMENTED)
      msg = "[NOT_IMPLEMENTED]: the specified container/method is not implemented";
    else if (r == SDT_OSC_RETURN_ARGUMENT_ERROR)
      msg = "[ARGUMENT_ERROR]: incorrect type and/or number of arguments for the specified method";
    else if (r == SDT_OSC_RETURN_OBJECT_NOT_FOUND)
      msg = "[OBJECT_NOT_FOUND]: the specified SDT object was not found";

    msg = strjoin_free("sdtOSC ", 0, msg, 0);

    // Message
    if (m) {
      msg = strjoin_free(msg, 1, indent_free("Message:", 0, 1), 1);

      char *adr = (m->address)? SDTOSCAddress_str(m->address) : 0;
      if (adr)
        msg = strjoin_free(msg, 1, strjoin_free(strjoin_free(" @[", 0, adr, 1), 1, "]", 0), 1);

      // Arguments
      SDTOSCArgumentList *args = SDTOSCMessage_getArguments(m);
      for(unsigned int i = 0 ; i < args->argc ; ++i)
        if (SDTOSCArgumentList_isString(args, i)) {
          const char* src = SDTOSCArgumentList_getString(args, i);
          char *arg = (char *) malloc(sizeof(char) * (strlen(src) + 4));
          sprintf(arg, " '%s'", src);
          msg = strjoin_free(msg, 1, arg, 1);
        } else if (SDTOSCArgumentList_isFloat(args, i)) {
          float arg = SDTOSCArgumentList_getFloat(args, i);
          char *s = (char *) malloc(sizeof(char) * (16 + n_digits(arg)));
          sprintf(s, (fmod(arg, 1))? " %.2f" : " %.0f", arg);
          msg = strjoin_free(msg, 1, s, 1);
        } else
          msg = strjoin_free(msg, 1, " [UNSUPPORTED]", 0);
    }

  msg = strjoin_free(
    msg, 1,
    indent_free(strjoin_free("For further details, please, visit the documentation at ", 0, _docs_url, 0), 1, 1), 1
  );
  (*log)(msg);
  free(msg);
  }
}