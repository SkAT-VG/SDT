#include "SDTOSCCommon.h"

#include <math.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#include "../SDTCommon.h"
#include "../SDTJSON.h"

const char *SDTOSC_rtfm_string() {
  return "For further details, please, visit the documentation at "
         "https://skat-vg.github.io/SDT/OSC";
}

#define _SDT_JSON_BUFLEN 512
static char _SDT_JSON_logBuffer[_SDT_JSON_BUFLEN];

#define _SDTOSC_NPRINT_CHECKRETVAL(R, PRINTF)                           \
  {                                                                     \
    if ((R) < 0) {                                                      \
      SDT_LOGA(DEBUG, #PRINTF "() returned a negative value: %d\n", R); \
      return R;                                                         \
    }                                                                   \
  }

#define _SDTOSC_NPRINT_CURSOR(S, TOT, N) ((S) + (((TOT) < (N)) ? (TOT) : (N)-1))
#define _SDTOSC_NPRINT_CURMEM(TOT, N) (((TOT) < (N)) ? (N) - (TOT) : 1)
#define _SDTOSC_PUT_NULL_TERMINATING(S, TOT, N) \
  *((char *)_SDTOSC_NPRINT_CURSOR(S, TOT, N)) = 0

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
  int tot = 0, c;
  if (x)
    for (unsigned int i = 0; i < x->depth && tot < n; ++i) {
      c = snprintf(_SDTOSC_NPRINT_CURSOR(s, tot, n),
                   _SDTOSC_NPRINT_CURMEM(tot, n), "/%s", x->nodes[i]);
      _SDTOSC_NPRINT_CHECKRETVAL(c, sprintf);
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
  return x && x->tag == SDT_OSC_ARG_FLOAT;
}

int SDTOSCArgument_isString(const SDTOSCArgument *x) {
  return x && x->tag == SDT_OSC_ARG_STRING;
}

float SDTOSCArgument_getFloat(const SDTOSCArgument *x) { return x->value.f; }

const char *SDTOSCArgument_getString(const SDTOSCArgument *x) {
  return x->value.s;
}

int SDTOSCArgument_snprintf(char *s, size_t n, const char *float_fmt,
                            const SDTOSCArgument *a) {
  if (SDTOSCArgument_isString(a))
    return snprintf(s, n, "%s", SDTOSCArgument_getString(a));
  double arg;
  if (SDTOSCArgument_isFloat(a)) {
    arg = (double)SDTOSCArgument_getFloat(a);
    return snprintf(s, n, (fmod(arg, 1)) ? float_fmt : " %.0f", arg);
  }
  return snprintf(s, n, "?");
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

int SDTOSCArgumentList_snprintf(char *s, size_t n, const char *float_fmt,
                                const SDTOSCArgumentList *x, int start,
                                int end) {
  if (end < 0) end = x->argc;
  if (end <= start) return snprintf(s, n, "%s", "");
  int tot = 0, c;
  for (int i = start; i < end; ++i) {
    if (i != start) {
      c = snprintf(_SDTOSC_NPRINT_CURSOR(s, tot, n),
                   _SDTOSC_NPRINT_CURMEM(tot, n), " ");
      _SDTOSC_NPRINT_CHECKRETVAL(c, snprintf);
      tot += c;
    }
    c = SDTOSCArgument_snprintf(_SDTOSC_NPRINT_CURSOR(s, tot, n),
                                _SDTOSC_NPRINT_CURMEM(tot, n), float_fmt,
                                x->argv[i]);
    _SDTOSC_NPRINT_CHECKRETVAL(c, SDTOSCArgument_snprintf);
    tot += c;
  }
  return tot;
}

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
  if (x->address) SDTOSCAddress_free(x->address);
  if (x->args) SDTOSCArgumentList_free(x->args);
  free(x);
}

int SDTOSCMessage_valid(const SDTOSCMessage *x) {
  return x && x->address && x->args;
}

const SDTOSCArgumentList *SDTOSCMessage_getArguments(const SDTOSCMessage *x) {
  return x->args;
}

const SDTOSCAddress *SDTOSCMessage_getAddress(const SDTOSCMessage *x) {
  return x->address;
}

int SDTOSCMessage_snprintf(char *s, size_t n, const char *float_fmt,
                           const SDTOSCMessage *m) {
  int tot, c;
  tot = SDTOSCAddress_snprintf(s, n, SDTOSCMessage_getAddress(m));
  _SDTOSC_NPRINT_CHECKRETVAL(tot, SDTOSCAddress_snprintf);
  c = snprintf(_SDTOSC_NPRINT_CURSOR(s, tot, n), _SDTOSC_NPRINT_CURMEM(tot, n),
               " ");
  _SDTOSC_NPRINT_CHECKRETVAL(c, sprintf);
  tot += c;
  c = SDTOSCArgumentList_snprintf(_SDTOSC_NPRINT_CURSOR(s, tot, n),
                                  _SDTOSC_NPRINT_CURMEM(tot, n), float_fmt,
                                  SDTOSCMessage_getArguments(m), 0, -1);
  _SDTOSC_NPRINT_CHECKRETVAL(c, SDTOSCArgumentList_snprintf);
  tot += c;
  return tot;
}

const char *SDTOSCMessage_staticPrint(const SDTOSCMessage *m) {
  int tot =
      SDTOSCMessage_snprintf(_SDT_JSON_logBuffer, _SDT_JSON_BUFLEN, "%f", m);
  if (tot < 0) return 0;
  if (tot >= _SDT_JSON_BUFLEN) {
    tot = _SDT_JSON_BUFLEN;
    _SDT_JSON_logBuffer[tot - 1] = 0;
    for (unsigned int d = 0; d < 3; ++d) _SDT_JSON_logBuffer[tot - 2 - d] = '.';
  }
  return _SDT_JSON_logBuffer;
}

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

int SDTOSCJSON_save(const char *name, const json_value *obj,
                    const char *fpath) {
  if (!SDTJSON_dump(obj, fpath)) {
    SDT_LOGA(INFO, "Saved %s to '%s'\n", name, fpath);
  } else {
    SDT_LOGA(ERROR, "Error while saving %s to '%s'\n", name, fpath);
    return 6;
  }
  return 0;
}

int SDTOSCJSON_load(const char *name, json_value **obj, const char *fpath) {
  *obj = NULL;

  if (!(*obj = SDTJSON_read(fpath))) {
    SDT_LOGA(ERROR, "Error while loading %s from '%s'\n", name, fpath);
    return 6;
  }
  SDT_LOGA(INFO, "Loaded %s from '%s'\n", name, fpath);
  return 0;
}

json_value *_SDTOSC_trailingArgsToJSON(const SDTOSCMessage *x, int start) {
  const SDTOSCArgumentList *args = SDTOSCMessage_getArguments(x);
  size_t c;
  _SDT_ITERATIVE_MEMORY_DOUBLING(
      4, 24, js, js_size,
      ((c = SDTOSCArgumentList_snprintf(js, js_size, "%f", args, start, -1)) >=
       0) &&
          (c < js_size),
      {
        SDT_LOGA(DEBUG, "Trailing args: %p->%s\n", js, js);
        json_value *jobj = SDTJSON_reads(js, -1);
        free(js);
        return jobj;
      },
      SDT_LOGA(
          ERROR,
          "Could not parse OSC arguments as JSON: string would be greater than "
          "%ld characters\n",
          js_size);)
  return NULL;
}
