#include "SDTProjects.h"
#include "SDTSolids.h"
#include <stdlib.h>
#include <string.h>

json_value *push_else_free(json_value *dest, const char *key, json_value *src, int length) {
  if (!src)
    return src;
  if (!length) {
    json_builder_free(src);
    return 0;
  }
  if (dest && key)
    json_object_push(dest, key, src);
  return src;
}

json_value *SDTProject_toJSON(int argc, const char **argv) {
  json_value *prj = json_object_new(0);

  // Fetch all resonators and interactors
  json_value *res = json_object_new(0), *inter = json_object_new(0), *imp = json_array_new(0), *fri = json_array_new(0);
  SDTResonator *r;
  SDTInteractor *s;
  for (unsigned int i = 0; i < argc ; ++i)
    if ((r = SDT_getResonator(argv[i]))) {
      json_object_push(res, argv[i], SDTResonator_toJSON(r));
      for (unsigned int j = 0; j < argc ; ++j)
        if ((s = SDT_getInteractor(argv[i], argv[j]))) {
          if (SDTInteractor_isImpact(s))
            json_array_push(imp, SDTImpact_toJSON(s, argv[i], argv[j]));
          else if (SDTInteractor_isFriction(s))
            json_array_push(fri, SDTFriction_toJSON(s, argv[i], argv[j]));
        }
    }

  push_else_free(prj, "metadata", SDTProjectMetadata_pop(), SDTProjectMetadata_get()->u.object.length);
  push_else_free(prj, "resonators", res, res->u.object.length);
  push_else_free(inter, "impacts", imp, imp->u.array.length);
  push_else_free(inter, "frictions", fri, fri->u.array.length);
  push_else_free(prj, "interactors", inter, inter->u.object.length);

  return prj;
}

// ----------------------------------------------------------------------------
// Metadata internals

json_value *_metadata = 0;
char *_metadata_dump = 0;

static char *update_metadata_dump() {
  // Update the value of the string dump of the metadata
  if (_metadata_dump)
    free(_metadata_dump);
  if (_metadata) {
    _metadata_dump = malloc(json_measure_ex(_metadata, sdt_json_opts()));
    json_serialize_ex(_metadata_dump, _metadata, sdt_json_opts());
  }
  return _metadata_dump;
}

static json_value *load_metadata_dump() {
  // Restore the metadata from the string dump
  return (_metadata_dump)? json_reads(_metadata_dump, -1) : 0;
}

static json_value *get_metadata() {
  if (!_metadata && !SDTProjectMetadata_set(load_metadata_dump()))
    SDTProjectMetadata_set(json_object_new(0));
  return _metadata;
}

// ----------------------------------------------------------------------------

json_value *SDTProjectMetadata_set(json_value *value) {
  if (_metadata)
    json_builder_free(_metadata);
  _metadata = value;
  update_metadata_dump();
  return _metadata;
}

void SDTProjectMetadata_reset() {
  if (_metadata)
    json_builder_free(_metadata);
  if (_metadata_dump)
    free(_metadata_dump);
}

const json_value *SDTProjectMetadata_get() {
  return get_metadata();
}

json_value *SDTProjectMetadata_pop() {
  json_value *tmp = get_metadata();
  _metadata = 0;
  return tmp;
}