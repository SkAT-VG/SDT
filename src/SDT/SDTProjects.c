#include "SDTProjects.h"
#include "SDTSolids.h"


json_value *SDTProject_toJSON(int argc, const char **argv) {
  json_value *prj = json_array_new(0);

  // Fetch all resonators
  SDTResonator *r;
  for (unsigned int i = 0; i < argc ; ++i)
    if ((r = SDT_getResonator(argv[i]))) {
      json_value *obj = json_object_new(0);
      json_object_push(obj, "key", json_string_new(argv[i]));
      json_object_push(obj, "value", SDTResonator_toJSON(r));
      json_array_push(prj, obj);
    }

  return prj;
}