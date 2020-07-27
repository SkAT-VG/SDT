#include "SDTProjects.h"
#include "SDTSolids.h"


json_value *SDTProject_toJSON(int argc, const char **argv) {
  json_value *prj = json_object_new(0);

  // Fetch all resonators and interactors
  json_value *res = json_array_new(0), *inter = json_object_new(0), *imp = json_array_new(0);
  SDTResonator *r;
  SDTInteractor *s;
  for (unsigned int i = 0; i < argc ; ++i)
    if ((r = SDT_getResonator(argv[i]))) {
      json_value *obj = json_object_new(0);
      json_object_push(obj, "key", json_string_new(argv[i]));
      json_object_push(obj, "value", SDTResonator_toJSON(r));
      json_array_push(res, obj);
      for (unsigned int j = 0; j < argc ; ++j)
        if ((j != i) && (s = SDT_getInteractor(argv[i], argv[j])))
          if (SDTInteractor_isImpact(s))
            json_array_push(imp, SDTImpact_toJSON(s, argv[i], argv[j]));
    }
  json_object_push(prj, "resonators", res);
  json_object_push(inter, "impacts", imp);
  json_object_push(prj, "interactors", inter);

  return prj;
}