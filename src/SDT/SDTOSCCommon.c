#include "SDTOSCCommon.h"
#include <math.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "SDTCommon.h"
#include "SDTJSON.h"

const char *SDTOSC_rtfm_string() {
  return "For further details, please, visit the documentation at "
         "https://skat-vg.github.io/SDT";
}

#define _SDT_JSON_BUFLEN 512
static char _SDT_JSON_logBuffer[_SDT_JSON_BUFLEN];

//-------------------------------------------------------------------------------------//

struct SDTOSCAddress {
  unsigned int depth;
  char **nodes;
};

SDTOSCAddress *SDTOSCAddress_new(const char *s) {
  if (*s != '/') return 0;

  unsigned int depth = 0;
  for (int i = 0, j = 1; s[i]; ++i)
    if (s[i + 1] == '/' || !s[i + 1]) {
      int len = i - j + 1;
      if (len > 0) depth++;
      j = i + 2;
    }

  if (!depth) return 0;

  SDTOSCAddress *x = (SDTOSCAddress *)malloc(sizeof(SDTOSCAddress));
  x->depth = depth;

  x->nodes = (char **)malloc(sizeof(char *) * x->depth);

  for (int i = 0, j = 1, d = 0; s[i]; ++i)
    if (s[i + 1] == '/' || !s[i + 1]) {
      int len = i - j + 1;

      if (len > 0) {
        x->nodes[d] = (char *)malloc(sizeof(char) * (len + 1));
        memcpy(x->nodes[d], s + j, sizeof(char) * len);
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
      for (int i = 0; i < x->depth; ++i)
        if (x->nodes[i]) free(x->nodes[i]);
      free(x->nodes);
    }
    free(x);
  }
}

int SDTOSCAddress_snprintf(char *s, size_t n, const SDTOSCAddress *x) {
  int tot = 0, c = 0;
  for (unsigned int i = 0; i < x->depth && tot < n; ++i) {
    c = snprintf(s + tot, n - tot, "/%s", x->nodes[i]);
    if (c < 0) return c;
    tot += c;
  }
  return tot;
}

unsigned int SDTOSCAddress_getDepth(const SDTOSCAddress *x) { return x->depth; }

const char *SDTOSCAddress_getNode(const SDTOSCAddress *x,
                                  unsigned int node_idx) {
  return (node_idx < x->depth) ? x->nodes[node_idx] : 0;
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
    char *s;
  } value;
};

SDTOSCArgument *SDTOSCArgument_new() {
  SDTOSCArgument *x = (SDTOSCArgument *)malloc(sizeof(SDTOSCArgument));
  x->tag = SDT_OSC_ARG_UNSUPPORTED;
  return x;
}

void SDTOSCArgument_free(SDTOSCArgument *x) {
  if (SDTOSCArgument_isString(x) && x->value.s) free(x->value.s);
  free(x);
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
  size_t len = strlen(s);
  x->value.s = (char *)malloc(sizeof(char) * (len + 1));
  strcpy(x->value.s, s);
  return x;
}

int SDTOSCArgument_isFloat(const SDTOSCArgument *x) {
  return x->tag == SDT_OSC_ARG_FLOAT;
}

int SDTOSCArgument_isString(const SDTOSCArgument *x) {
  return x->tag == SDT_OSC_ARG_STRING;
}

float SDTOSCArgument_getFloat(const SDTOSCArgument *x) { return x->value.f; }

const char *SDTOSCArgument_getString(const SDTOSCArgument *x) {
  return x->value.s;
}

//-------------------------------------------------------------------------------------//

struct SDTOSCArgumentList {
  int argc;
  SDTOSCArgument **argv;
};

SDTOSCArgumentList *SDTOSCArgumentList_new(int argc) {
  SDTOSCArgumentList *x =
      (SDTOSCArgumentList *)malloc(sizeof(SDTOSCArgumentList));
  x->argc = argc;
  x->argv = (SDTOSCArgument **)malloc(sizeof(SDTOSCArgument *) * argc);
  memset((void *)x->argv, 0, sizeof(SDTOSCArgument *) * argc);
  return x;
}

void SDTOSCArgumentList_free(SDTOSCArgumentList *x) {
  for (unsigned int i = 0; i < x->argc; ++i)
    if (x->argv[i]) SDTOSCArgument_free(x->argv[i]);
  free(x->argv);
  free(x);
}

SDTOSCArgument *SDTOSCArgumentList_setArgument(SDTOSCArgumentList *x, int i,
                                               SDTOSCArgument *a) {
  SDTOSCArgument *r = 0;
  if (i >= 0 && i < x->argc) {
    r = x->argv[i];
    x->argv[i] = a;
  }
  return r;
}

int SDTOSCArgumentList_isEmpty(const SDTOSCArgumentList *x, int i) {
  return i < 0 || i >= x->argc || !x->argv[i];
}

int SDTOSCArgumentList_isFloat(const SDTOSCArgumentList *x, int i) {
  return !SDTOSCArgumentList_isEmpty(x, i) &&
         SDTOSCArgument_isFloat(x->argv[i]);
}

int SDTOSCArgumentList_isString(const SDTOSCArgumentList *x, int i) {
  return !SDTOSCArgumentList_isEmpty(x, i) &&
         SDTOSCArgument_isString(x->argv[i]);
}

float SDTOSCArgumentList_getFloat(const SDTOSCArgumentList *x, int i) {
  return SDTOSCArgument_getFloat(x->argv[i]);
}

const char *SDTOSCArgumentList_getString(const SDTOSCArgumentList *x, int i) {
  return SDTOSCArgument_getString(x->argv[i]);
}

int SDTOSCArgumentList_getNArgs(const SDTOSCArgumentList *x) { return x->argc; }

//-------------------------------------------------------------------------------------//

struct SDTOSCMessage {
  SDTOSCAddress *address;
  SDTOSCArgumentList *args;
};

SDTOSCMessage *SDTOSCMessage_new(SDTOSCAddress *address,
                                 SDTOSCArgumentList *args) {
  SDTOSCMessage *x = (SDTOSCMessage *)malloc(sizeof(SDTOSCMessage));
  x->address = address;
  x->args = args;
  return x;
}

void SDTOSCMessage_free(SDTOSCMessage *x) {
  SDTOSCAddress_free(x->address);
  SDTOSCArgumentList_free(x->args);
  free(x);
}

const SDTOSCArgumentList *SDTOSCMessage_getArguments(const SDTOSCMessage *x) {
  return x->args;
}

const SDTOSCAddress *SDTOSCMessage_getAddress(const SDTOSCMessage *x) {
  return x->address;
}

int SDTOSCMessage_snprintf(char *s, size_t n, const SDTOSCMessage *m) {
  // Address
  int tot = SDTOSCAddress_snprintf(s, n, SDTOSCMessage_getAddress(m));
  if (tot < 0) return tot;
  float arg;
  int c;
  // Arguments
  const SDTOSCArgumentList *args = SDTOSCMessage_getArguments(m);
  for (unsigned int i = 0; i < args->argc && tot < n; ++i) {
    if (SDTOSCArgumentList_isString(args, i)) {
      c = snprintf(s + tot, n - tot, " %s",
                   SDTOSCArgumentList_getString(args, i));
    } else if (SDTOSCArgumentList_isFloat(args, i)) {
      arg = SDTOSCArgumentList_getFloat(args, i);
      c = snprintf(s + tot, n - tot, (fmod(arg, 1)) ? " %.2f" : " %.0f", arg);
    } else {
      c = snprintf(s + tot, n - tot, " ?");
    }
    if (c < 0) return c;
    tot += c;
  }
  return tot;
}

const char *SDTOSCMessage_staticPrint(const SDTOSCMessage *m) {
  int tot = SDTOSCMessage_snprintf(_SDT_JSON_logBuffer, _SDT_JSON_BUFLEN, m);
  if (tot < 0) return 0;
  if (tot >= _SDT_JSON_BUFLEN) {
    tot = _SDT_JSON_BUFLEN;
    _SDT_JSON_logBuffer[tot - 1] = 0;
    for (unsigned int d = 0; d < 3; ++d) _SDT_JSON_logBuffer[tot - 2 - d] = '.';
  }
  return _SDT_JSON_logBuffer;
}

//-------------------------------------------------------------------------------------//

// void SDTOSCLog(void (*log)(const char *, ...), SDTOSCReturnCode r,
//                const SDTOSCMessage *m) {
//   if (log && r) {
//     // Error code
//     char *msg = "[ERROR]";
//     if (r == SDT_OSC_RETURN_MISSING_CONTAINER)
//       msg = "[MISSING_CONTAINER]: please, specify an OSC container";
//     else if (r == SDT_OSC_RETURN_MISSING_METHOD)
//       msg =
//           "[MISSING_METHOD]: please, specify an OSC method from the
//           container";
//     else if (r == SDT_OSC_RETURN_NOT_IMPLEMENTED)
//       msg =
//           "[NOT_IMPLEMENTED]: the specified container/method is not "
//           "implemented";
//     else if (r == SDT_OSC_RETURN_ARGUMENT_ERROR)
//       msg =
//           "[ARGUMENT_ERROR]: incorrect type and/or number of arguments for
//           the " "specified method";
//     else if (r == SDT_OSC_RETURN_OBJECT_NOT_FOUND)
//       msg = "[OBJECT_NOT_FOUND]: the specified SDT object was not found";
//     else if (r == SDT_OSC_RETURN_NO_WRITE_PERMISSION)
//       msg = "[NO_WRITE_PERMISSION]: the specified filepath is not writable";
//     else if (r == SDT_OSC_RETURN_ERROR_LOADING_JSON)
//       msg =
//           "[ERROR_LOADING_JSON]: the specified filepath either is not
//           readable " "or does not contain a valid JSON value";
//     else if (r == SDT_OSC_RETURN_WARNING_INTERACTOR_KEY)
//       msg =
//           "[WARNING_INTERACTOR_KEY]: at least one resonator key in the loaded
//           " "JSON file does not match the previous resonator. The resonator
//           is " "updated to point to the newly specified instance. However,
//           the " "interactor is still registered under the previous key pair.
//           Please, " "check that this is intended. To avoid this warning,
//           change the " "resonator key either in your JSON file or in your
//           program to match " "each other.";
//     else if (r == SDT_OSC_RETURN_JSON_NOT_COMPLIANT)
//       msg =
//           "[JSON_NOT_COMPLIANT]: your JSON file is not compliant to SDT's "
//           "standard";
//     else if (r == SDT_OSC_RETURN_INCORRECT_INTERACTOR_TYPE)
//       msg =
//           "[INCORRECT_INTERACTOR_TYPE]: the specified interactor does not "
//           "match the expected type for the method";
//     else if (r == SDT_OSC_RETURN_ERROR_WRITING_JSON)
//       msg = "[ERROR_WRITING_JSON]: an error occurred while converting to
//       JSON";

//     msg = strjoin_free("sdtOSC ", 0, msg, 0);

//     // Message
//     if (m) {
//       msg = strjoin_free(msg, 1, indent_free("Message:", 0, 1), 1);

//       char *adr = (m->address) ? SDTOSCAddress_str(m->address) : 0;
//       if (adr)
//         msg = strjoin_free(
//             msg, 1, strjoin_free(strjoin_free(" @[", 0, adr, 1), 1, "]", 0),
//             1);

//       // Arguments
//       SDTOSCArgumentList *args = SDTOSCMessage_getArguments(m);
//       for (unsigned int i = 0; i < args->argc; ++i)
//         if (SDTOSCArgumentList_isString(args, i)) {
//           const char *src = SDTOSCArgumentList_getString(args, i);
//           char *arg = (char *)malloc(sizeof(char) * (strlen(src) + 4));
//           sprintf(arg, " '%s'", src);
//           msg = strjoin_free(msg, 1, arg, 1);
//         } else if (SDTOSCArgumentList_isFloat(args, i)) {
//           float arg = SDTOSCArgumentList_getFloat(args, i);
//           char *s = (char *)malloc(sizeof(char) * (16 + n_digits(arg)));
//           sprintf(s, (fmod(arg, 1)) ? " %.2f" : " %.0f", arg);
//           msg = strjoin_free(msg, 1, s, 1);
//         } else
//           msg = strjoin_free(msg, 1, " [UNSUPPORTED]", 0);
//     }

//     msg = strjoin_free(
//         msg, 1,
//         indent_free(
//             strjoin_free(
//                 "For further details, please, visit the documentation at ",
//                 0, _docs_url, 0),
//             1, 1),
//         1);
//     (*log)(msg);
//     free(msg);
//   }
// }

//-------------------------------------------------------------------------------------//

int SDTOSCJSON_log(const char *preamble, json_value *obj) {
  int newline = 0;
  int (*log)(const char *, ...) = SDT_getLogger(SDT_LOG_LEVEL_INFO, &newline);
  char *s = SDTJSON_dumps(obj);
  if (!s) {
    SDT_LOG(ERROR, "Error while dumping json_value to string\n");
    return 1;
  }

  unsigned int s_len = strlen(s), n_print = 0;
  log("%s\n", preamble);
  for (unsigned int n_printed = 0; n_printed < s_len; n_printed += n_print) {
    // If the first character is a newline, ignore it
    if (newline && s[n_printed] == '\n') {
      n_print = 1;
      continue;
    }

    if (n_printed + _SDT_JSON_BUFLEN > s_len)
      n_print = s_len - n_printed;
    else if (newline) {
      // Break print at last newline, if there is one
      for (n_print = _SDT_JSON_BUFLEN;
           n_print > 0 && s[n_printed + n_print - 1] != '\n'; --n_print)
        ;
      if (!n_print) n_print = _SDT_JSON_BUFLEN;
    } else
      n_print = s_len;

    memcpy(_SDT_JSON_logBuffer, s + n_printed, n_print);
    _SDT_JSON_logBuffer[n_print] = 0;

    log("%s", _SDT_JSON_logBuffer);
  }
  if (!newline && _SDT_JSON_logBuffer[n_print - 1] != '\n') log("\n");
  free(s);
  return 0;
}

#define _SDTOSCJSON_fileArgsValidation()                     \
  if (!name) {                                               \
    SDT_LOG(ERROR, "name is a null pointer");                \
    return 1;                                                \
  }                                                          \
  if (!args) {                                               \
    SDT_LOG(ERROR, "args is a null pointer");                \
    return 2;                                                \
  }                                                          \
  if (args->argc < 1) {                                      \
    SDT_LOG(ERROR, "args is empty");                         \
    return 3;                                                \
  }                                                          \
  if (!SDTOSCArgumentList_isString(args, 0)) {               \
    SDT_LOG(ERROR, "args[0] is not a string");               \
    return 4;                                                \
  }                                                          \
  const char *fpath = SDTOSCArgumentList_getString(args, 0); \
  if (!fpath) {                                              \
    SDT_LOG(ERROR, "args[0] (as string) is a null pointer"); \
    return 5;                                                \
  }

int SDTOSCJSON_save(const char *name, const json_value *obj,
                    const SDTOSCArgumentList *args) {
  _SDTOSCJSON_fileArgsValidation();
  if (!SDTJSON_dump(obj, fpath)) {
    SDT_LOGA(INFO, "Saved %s to '%s'\n", name, fpath);
  } else {
    SDT_LOGA(ERROR, "Error while saving %s to '%s'\n", name, fpath);
    return 6;
  }
  return 0;
}

int SDTOSCJSON_load(const char *name, json_value **obj,
                    const SDTOSCArgumentList *args) {
  *obj = 0;
  _SDTOSCJSON_fileArgsValidation();

  if (!(*obj = SDTJSON_read(fpath))) {
    SDT_LOGA(ERROR, "Error while loading %s from '%s'\n", name, fpath);
    return 6;
  }
  SDT_LOGA(INFO, "Loaded %s from '%s'\n", name, fpath);
  return 0;
}
