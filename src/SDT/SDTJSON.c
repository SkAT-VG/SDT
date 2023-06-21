#include "SDTJSON.h"
#include <libgen.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/stat.h>
#include <unistd.h>

json_serialize_opts SDTJSON_opts() {
  json_serialize_opts opts;
  opts.mode = json_serialize_mode_multiline;
  opts.indent_size = 2;
  return opts;
}

json_value *SDTJSON_reads(const char *s, int n) {
  if (n < 0) n = strlen(s);
  json_settings settings = {};
  settings.value_extra =
      json_builder_extra;  // Makes it compatible with json-builder
  char err[json_error_max];
  json_value *v = json_parse_ex(&settings, (json_char *)s, n, err);
  return v;
}

json_value *SDTJSON_read(const char *fpath) {
  json_value *v = 0;
  int N = 0;
  FILE *fp;

  fp = fopen(fpath, "r");
  if (fp) {
    // Get size
    fseek(fp, 0, SEEK_END);
    N = ftell(fp);
    rewind(fp);

    char *s = (char *)malloc(sizeof(char) * (N + 1));
    s[N] = 0;
    N = fread(s, 1, N, fp);
    fclose(fp);

    // Delimit JSON string
    long int i_start = 0, i_stop = N;
    for (long int i = 0; i < N; ++i)
      if (s[i] == '{') {
        i_start = i;
        break;
      }
    for (long int i = N - 1; i > 0; --i)
      if (s[i] == '}') {
        i_stop = i + 1;
        break;
      }

    v = SDTJSON_reads(s + i_start, i_stop - i_start);
    free(s);
  }
  return v;
}

char *SDTJSON_dumps(const json_value *x) {
  char *s = malloc(sizeof(char) * json_measure_ex(x, SDTJSON_opts()));
  if (s) json_serialize_ex(s, x, SDTJSON_opts());
  return s;
}

int SDTJSON_dump(const json_value *x, const char *fpath) {
  int return_code = 0;
  char *s = SDTJSON_dumps(x);
  if (s) {
    FILE *f = fopen(fpath, "w");
    if (f) {
      fprintf(f, "%s", s);
      fclose(f);
    } else
      return_code = 1;
    free(s);
  } else
    return_code = 2;

  return return_code;
}

const json_value *SDTJSON_object_get_by_key(const json_value *x,
                                            const char *key) {
  if (!x || (x->type != json_object)) return 0;
  for (unsigned int i = 0; i < x->u.object.length; ++i)
    if (!strcmp(key, x->u.object.values[i].name))
      return x->u.object.values[i].value;
  return 0;
}

double SDTJSON_array_get_number(const json_value *x, unsigned int idx,
                                double dflt) {
  if (x && (x->type == json_array) && (idx < x->u.array.length)) {
    if (x->u.array.values[idx]->type == json_integer)
      return (double)x->u.array.values[idx]->u.integer;
    else if (x->u.array.values[idx]->type == json_double)
      return x->u.array.values[idx]->u.dbl;
  }
  return dflt;
}

json_value *SDTJSON_deepcopy(const json_value *value) {
  if (!value) return 0;
  json_value *sub;
  switch (value->type) {
    case json_null:
      return json_null_new();
    case json_boolean:
      return json_boolean_new(value->u.boolean);
    case json_string:
      return json_string_new(value->u.string.ptr);
    case json_double:
      return json_double_new(value->u.dbl);
    case json_integer:
      return json_integer_new(value->u.integer);
    case json_array:
      sub = json_array_new(0);
      for (unsigned int i = 0; i < value->u.array.length; ++i)
        json_array_push(sub, SDTJSON_deepcopy(value->u.array.values[i]));
      return sub;
    case json_object:
      sub = json_object_new(0);
      for (unsigned int i = 0; i < value->u.object.length; ++i)
        json_object_push(sub, value->u.object.values[i].name,
                         SDTJSON_deepcopy(value->u.object.values[i].value));
      return sub;
    default:
      return 0;
  }
}
