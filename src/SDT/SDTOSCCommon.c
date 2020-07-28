#include "SDTOSCCommon.h"
#include "SDTJSON.h"
#include <string.h>
#include <stdio.h>
#include <math.h>

//-------------------------------------------------------------------------------------//
// Private utils

char *_indent = "  ";
const unsigned int log_cap = 1 << 10;
char *_docs_url = "https://chromaticisobar.github.io/SDT";

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

int SDTOSCArgumentList_getNArgs(const SDTOSCArgumentList *x) {
  return (x)? x->argc : 0;
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

SDTOSCAddress *SDTOSCMessage_getAddress(const SDTOSCMessage *x) {
  return x->address;
}

int SDTOSCMessage_hasContainer(const SDTOSCMessage *x) {
  return !!x->address;
}

char *SDTOSCMessage_getContainer(const SDTOSCMessage *x) {
  return SDTOSCAddress_getNode(x->address, 0);
}

SDTOSCAddress *SDTOSCMessage_openContainerAddress(const SDTOSCMessage *x) {
  return SDTOSCAddress_openContainer(x->address);
}

SDTOSCMessage *SDTOSCMessage_openContainer(const SDTOSCMessage *x) {
  return SDTOSCMessage_new(SDTOSCMessage_openContainerAddress(x), SDTOSCArgumentList_copy(x->args));
}

//-------------------------------------------------------------------------------------//

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
    else if (r == SDT_OSC_RETURN_NO_WRITE_PERMISSION)
      msg = "[NO_WRITE_PERMISSION]: the specified filepath is not writable";
    else if (r == SDT_OSC_RETURN_ERROR_LOADING_JSON)
      msg = "[ERROR_LOADING_JSON]: the specified filepath either is not readable or does not contain a valid JSON value";
    else if (r == SDT_OSC_RETURN_WARNING_INTERACTOR_KEY)
      msg = "[WARNING_INTERACTOR_KEY]: at least one resonator key in the loaded JSON file does not match the previous resonator. The resonator is updated to point to the newly specified instance. However, the interactor is still registered under the previous key pair. Please, check that this is intended. To avoid this warning, change the resonator key either in your JSON file or in your program to match each other.";
    else if (r == SDT_OSC_RETURN_JSON_NOT_COMPLIANT)
      msg = "[JSON_NOT_COMPLIANT]: your JSON file is not compliant to SDT's standard";
    else if (r == SDT_OSC_RETURN_INCORRECT_INTERACTOR_TYPE)
      msg = "[INCORRECT_INTERACTOR_TYPE]: the specified interactor does not match the expected type for the method";

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

//-------------------------------------------------------------------------------------//

SDTOSCReturnCode SDTOSCJSON_log(void (* log)(const char *, ...), const char* preamble, json_value *obj) {
  if (!log)
    return SDT_OSC_RETURN_OK;
  char *s = malloc(json_measure_ex(obj, sdt_json_opts()));
  json_serialize_ex(s, obj, sdt_json_opts());

  unsigned int s_len = strlen(s), n_print = 0;
  for (unsigned i = 0 ; i < s_len ; i += n_print) {
    n_print = (i + log_cap > s_len)? s_len - i : log_cap;
    char *t = (char *) malloc(sizeof(char) * (n_print + 3));
    memcpy(t, s + i, n_print);

    // Break print at last newline, if there is any, otherwise put line continuation symbol '\' (unless end of string)
    int j;
    for (j = n_print - 1; j >=0 ; --j)
      if (s[i + j] == '\n')
        break;
    if (j >= 0) {
      n_print = j + 1;
      t[j] = 0;
    } else if (i + n_print < s_len) {
      t[n_print] = '\\';
      t[n_print + 1] = 0;
    } else {
      t[n_print] = 0;
    }

    if (i)
      (*log)("%s", t);
    else
      (*log)("%s\n%s", preamble, t);
    free(t);
  }
  free(s);
  return SDT_OSC_RETURN_OK;
}

SDTOSCReturnCode SDTOSCJSON_save(void (* log)(const char *, ...), const char *name, json_value *obj, const SDTOSCArgumentList *args) {
  if (args->argc < 1 || !SDTOSCArgumentList_isString(args, 0))
    return SDT_OSC_RETURN_ARGUMENT_ERROR;
  const char *fpath = SDTOSCArgumentList_getString(args, 0);

  SDTOSCReturnCode return_code = SDT_OSC_RETURN_OK;

  if (!json_dump(obj, fpath)) {
    if (log)
      (*log)("sdtOSC: saved %s to '%s'", name, fpath);
  } else
    return_code = SDT_OSC_RETURN_NO_WRITE_PERMISSION;

  return return_code;
}

SDTOSCReturnCode SDTOSCJSON_load(void (* log)(const char *, ...), const char *name, json_value **obj, const SDTOSCArgumentList *args) {
  *obj = 0;
  if (args->argc < 1 || !SDTOSCArgumentList_isString(args, 0))
    return SDT_OSC_RETURN_ARGUMENT_ERROR;
  const char *fpath = SDTOSCArgumentList_getString(args, 0);

  if (!(*obj = json_read(fpath)))
    return SDT_OSC_RETURN_ERROR_LOADING_JSON;

  if (log)
    (*log)("sdtOSC: loaded %s from '%s'", name, fpath);

  return SDT_OSC_RETURN_OK;
}