#include "SDTJSON.h"

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