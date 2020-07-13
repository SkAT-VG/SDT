#include "SDTJSON.h"
#include <unistd.h>
#include <stdio.h>
#include <string.h>
#include <libgen.h>
#include <sys/stat.h>

json_value *json_SDTResonator_new(SDTResonator *x) {
  json_value *obj = json_object_new(0);
  json_value *f = json_array_new(0);
  json_value *d = json_array_new(0);
  json_value *w = json_array_new(0);
  json_value *g = json_array_new(0);

  for (int n = 0; n < SDTResonator_getNModes(x) ; ++n) {
    json_array_push(f, json_double_new(SDTResonator_getFrequency(x, n)));
    json_array_push(d, json_double_new(SDTResonator_getDecay(x, n)));
    json_array_push(w, json_double_new(SDTResonator_getWeight(x, n)));
  }

  for (int p = 0 ; p < SDTResonator_getNPickups(x); ++p) {
    json_value *gp = json_array_new(0);
    for (int n = 0 ; n < SDTResonator_getNModes(x); ++n)
      json_array_push(gp, json_double_new(SDTResonator_getGain(x, p, n)));
    json_array_push(g, gp);
  }

  json_object_push(obj, "nModes", json_integer_new(SDTResonator_getNModes(x)));
  json_object_push(obj, "nPickups", json_integer_new(SDTResonator_getNPickups(x)));
  json_object_push(obj, "activeModes", json_integer_new(SDTResonator_getActiveModes(x)));
  json_object_push(obj, "freqs", f);
  json_object_push(obj, "decays", d);
  json_object_push(obj, "weights", w);
  json_object_push(obj, "gains", g);

  return obj;
}

int can_write_file(const char *fpath) {
  char *s = malloc(sizeof(char) * (strlen(fpath) + 1));
  strcpy(s, fpath);
  struct stat buf;

  return strlen(s) && (                                  // file name must be non-empty and either
    ((stat(s, &buf) == -1) && !access(dirname(s), W_OK)) // - the file does not exist and it is in a writable directory
    ||
    (S_ISREG(buf.st_mode) && !access(s, W_OK))           // - the file is a regular file and it is writable
  );
}

int can_read_file(const char *fpath) {
  return !access(fpath, R_OK);
}

int json_dump(json_value *x, const char *fpath) {
  char *s = malloc(json_measure(x));
  json_serialize(s, x);

  if (!can_write_file(fpath))
    return 1;

  FILE *f = fopen(fpath, "w");
  fprintf(f, "%s", s);
  fclose(f);

  free(s);
  return 0;
}