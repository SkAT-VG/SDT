#include "SDTProjects.h"
#include <stdlib.h>
#include <string.h>

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