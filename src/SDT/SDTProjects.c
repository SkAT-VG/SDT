#include "SDTOSCMisc.h"
#include "SDTProjects.h"
#include "SDTDCMotor.h"
#include "SDTSolids.h"
#include <stdlib.h>
#include <string.h>
#include <stdint.h>

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

static json_value *json_error(const char *err, const json_value *value) {
  json_value *error = json_object_new(1 + ((value)? 1 : 0));
  json_object_push(error, "error", json_string_new(err));
  if (value)
    json_object_push(error, "value", json_deepcopy(value));
  return error;
}

#define SDT_OSC_DICT_DECLARE(TYPE, NAME) json_value *dict_ ## TYPE = json_object_new(0);

#define SDT_OSC_SAVER_SWITCH(TYPE, NAME) if ((v = CONCAT(SDT_get, SDT_ ## TYPE)(argv[i]))) \
json_object_push(dict_ ## TYPE, argv[i], CONCAT(SDT_TYPE_FULL(SDT_ ## TYPE), _toJSON)(v));

#define SDT_OSC_DICT_PUSH(TYPE, NAME) push_else_free(prj, STRINGIFY(NAME ## s), dict_ ## TYPE, dict_ ## TYPE->u.object.length);

json_value *SDTProject_toJSON(int argc, const char **argv) {
  json_value *prj = json_object_new(0);
  SDT_OSC_CLASSES(SDT_OSC_DICT_DECLARE)

  // Fetch all objects
  json_value *res = json_object_new(0), *inter = json_object_new(0), *imp = json_array_new(0), *fri = json_array_new(0);
  SDTResonator *r;
  SDTInteractor *s;
  void *v;
  for (unsigned int i = 0; i < argc ; ++i) {
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
    SDT_OSC_CLASSES(SDT_OSC_SAVER_SWITCH)
  }

  push_else_free(prj, "metadata", SDTProjectMetadata_pop(), SDTProjectMetadata_get()->u.object.length);
  push_else_free(prj, "resonators", res, res->u.object.length);
  push_else_free(inter, "impacts", imp, imp->u.array.length);
  push_else_free(inter, "frictions", fri, fri->u.array.length);
  push_else_free(prj, "interactors", inter, inter->u.object.length);
  SDT_OSC_CLASSES(SDT_OSC_DICT_PUSH)

  return prj;
}

static int SDTProject_assert(int value, SDTOSCReturnCode *return_code, json_value *return_msg, SDTOSCReturnCode fail_code, const char *fail_head, json_value *fail_body) {
  if (return_code && *return_code != SDT_OSC_RETURN_OK) {
    if (fail_body)
      json_builder_free(fail_body);
    return 0;
  }
  if (value) {
    if (fail_body)
      json_builder_free(fail_body);
    return 1;
  }
  if (return_code)
    *return_code = fail_code;
  if (fail_body) {
    if (fail_head && return_msg && return_msg->type == json_object)
      json_object_push(return_msg, fail_head, fail_body);
    else
      json_builder_free(fail_body);
  }
  return 0;
}

#define SDT_OSC_LOADER(TYPE, NAME) static int CONCAT(SDTProject_load, SDT_ ## TYPE)(const json_object_entry *value, SDTOSCReturnCode *return_code, json_value *return_msg) { \
  SDT_TYPE_FULL(SDT_ ## TYPE) *x; \
  if (!SDTProject_assert(value->value->type == json_object, return_code, \
      return_msg, SDT_OSC_RETURN_JSON_NOT_COMPLIANT, value->name, \
      json_string_new("not a JSON object")) \
   || !SDTProject_assert((uintptr_t) (x = CONCAT(SDT_get, SDT_ ## TYPE)(value->name)), return_code, \
      return_msg, SDT_OSC_RETURN_OBJECT_NOT_FOUND, value->name, \
      json_string_new("not found"))) \
    return 0; \
  SDT_TYPE_FULL(SDT_ ## TYPE) *tmp = CONCAT(SDT_TYPE_FULL(SDT_ ## TYPE), _fromJSON)(value->value); \
  CONCAT(SDT_TYPE_FULL(SDT_ ## TYPE), _copy)(x, tmp); \
  CONCAT(SDT_TYPE_FULL(SDT_ ## TYPE), _free)(tmp); \
  return 1; \
}

SDT_OSC_CLASSES(SDT_OSC_LOADER)

static int SDTProject_loadResonator(const json_object_entry *value, SDTOSCReturnCode *return_code, json_value *return_msg) {
  SDTResonator *x;
  if (!SDTProject_assert(value->value->type == json_object, return_code, return_msg, SDT_OSC_RETURN_JSON_NOT_COMPLIANT, value->name, json_string_new("not a JSON object"))
      || !SDTProject_assert((uintptr_t) (x = SDT_getResonator(value->name)), return_code, return_msg, SDT_OSC_RETURN_OBJECT_NOT_FOUND, value->name, json_string_new("not found")))
    return 0;

  SDTResonator *tmp = SDTResonator_fromJSON(value->value);
  SDTProject_assert(SDTResonator_getNPickups(x) == SDTResonator_getNPickups(tmp), return_code, return_msg, SDT_OSC_RETURN_OK,
                    value->name, json_string_new("WARNING: number of pickup points changed, check that any interactor that involves this resonator has the correct number of outlets"));
  SDTResonator_copy(x, tmp);
  SDTResonator_free(tmp);
  return 1;
}

static int SDTProject_loadInteractor(
        const char *class, int (* class_check)(const SDTInteractor *), SDTInteractor *(* from_json)(const json_value *),
        SDTInteractor *(* class_copy)(SDTInteractor *, const SDTInteractor *), void (* class_free)(SDTInteractor *),
        const json_value *value, SDTOSCReturnCode *return_code, json_value *return_msg
) {
  // Check value is an object
  if (!SDTProject_assert(value->type == json_object, return_code, return_msg, SDT_OSC_RETURN_JSON_NOT_COMPLIANT,
                         class, json_error("not compliant (not an object)", value)))
    return 0;

  // Check value has both keys
  const json_value *k = json_object_get_by_key(value, "key0");
  const char *key0 = (k && k->type == json_string)? k->u.string.ptr : 0;
  k = json_object_get_by_key(value, "key1");
  const char *key1 = (k && k->type == json_string)? k->u.string.ptr : 0;

  if (!SDTProject_assert(key0 && key1, return_code, return_msg, SDT_OSC_RETURN_JSON_NOT_COMPLIANT,
                         class, json_error("not compliant (missing 'key0' or 'key1' field or not strings)", value)))
    return 0;

  // Check interactor exists
  SDTInteractor *x = SDT_getInteractor(key0, key1);
  if (!SDTProject_assert((uintptr_t) x, return_code, return_msg, SDT_OSC_RETURN_OBJECT_NOT_FOUND,
                         class, json_error("couldn't load (not found)", value)))
    return 0;

  // Check correct class
  if (!SDTProject_assert((*class_check)(x), return_code, return_msg, SDT_OSC_RETURN_INCORRECT_INTERACTOR_TYPE,
                         class, json_error("couldn't load (incorrect interactor class)", value)))
    return 0;

  SDTInteractor *tmp = (*from_json)(value);
  (*class_copy)(x, tmp);
  (*class_free)(tmp);

  return 1;
}

static int SDTProject_loadInteractors(
        const char *class, int (* class_check)(const SDTInteractor *), SDTInteractor *(* from_json)(const json_value *),
        SDTInteractor *(* class_copy)(SDTInteractor *, const SDTInteractor *), void (* class_free)(SDTInteractor *),
        const json_value *value, SDTOSCReturnCode *return_code, json_value *return_msg
) {
  // Check value is an array
  if (!SDTProject_assert(value->type == json_array, return_code, return_msg, SDT_OSC_RETURN_JSON_NOT_COMPLIANT,
                         class, json_string_new("not compliant (not an array)")))
    return 0;
  // Load all values in array
  for (unsigned int i = 0; i < value->u.array.length ; ++i)
    if(!SDTProject_loadInteractor(class, class_check, from_json, class_copy, class_free, value->u.array.values[i], return_code, return_msg))
      return 0;
  return 1;
}

#define SDT_OSC_LOAD_MISC(TYPE, NAME) const json_value * dict_ ## TYPE = json_object_get_by_key(prj, STRINGIFY(NAME ## s)); \
  if (dict_ ## TYPE) { \
    if (!SDTProject_assert(dict_ ## TYPE ->type == json_object, return_code, msg, SDT_OSC_RETURN_JSON_NOT_COMPLIANT, \
        STRINGIFY(NAME ## s), json_string_new("not compliant (not a JSON object)"))) \
      return; \
    for (unsigned int i = 0; i < dict_ ## TYPE ->u.object.length; ++i) \
      if (!CONCAT(SDTProject_load, SDT_ ## TYPE)(dict_ ## TYPE ->u.object.values + i, return_code, msg)) \
        return; \
}

void SDTProject_fromJSON(const json_value *prj, SDTOSCReturnCode *return_code, json_value *msg) {
  if (!SDTProject_assert(prj && prj->type == json_object, return_code, msg, SDT_OSC_RETURN_JSON_NOT_COMPLIANT,
                         "project", json_string_new("not compliant (not a JSON object)")))
    return;

  // Load metadata
  const json_value *meta = json_object_get_by_key(prj, "metadata");
  if (meta) {
    if (SDTProject_assert(meta->type == json_object, return_code, msg, SDT_OSC_RETURN_JSON_NOT_COMPLIANT,
                          "metadata", json_string_new("not compliant (not a JSON object)")))
      SDTProjectMetadata_set(json_deepcopy(meta));
    else
      return;
  }

  // Load resonators
  const json_value *res = json_object_get_by_key(prj, "resonators");
  if (res) {
    if (!SDTProject_assert(res->type == json_object, return_code, msg, SDT_OSC_RETURN_JSON_NOT_COMPLIANT,
                           "resonators", json_string_new("not compliant (not a JSON object)")))
      return;
    for (unsigned int i = 0; i < res->u.object.length; ++i)
      if (!SDTProject_loadResonator(res->u.object.values + i, return_code, msg))
        return;
  }

  // Load interactors
  const json_value *inter = json_object_get_by_key(prj, "interactors");
  if (inter) {
    if (!SDTProject_assert(inter->type == json_object, return_code, msg, SDT_OSC_RETURN_JSON_NOT_COMPLIANT,
                           "interactors", json_string_new("not compliant (not a JSON object)")))
      return;
    // Load impacts
    const json_value *imp = json_object_get_by_key(inter, "impacts");
    if (imp)
      if (!SDTProject_loadInteractors("impacts", &SDTInteractor_isImpact, &SDTImpact_fromJSON, &SDTImpact_copy, &SDTImpact_free, imp, return_code, msg))
        return;
    // Load frictions
    const json_value *fri = json_object_get_by_key(inter, "frictions");
    if (fri)
      if (!SDTProject_loadInteractors("frictions", &SDTInteractor_isFriction, &SDTFriction_fromJSON, &SDTFriction_copy, &SDTFriction_free, fri, return_code, msg))
        return;
  }

  // Load misc
  SDT_OSC_CLASSES(SDT_OSC_LOAD_MISC)
}

// ----------------------------------------------------------------------------

json_value *metadata = 0;

json_value *SDTProjectMetadata_set(json_value *value) {
  if (metadata)
    json_builder_free(metadata);
  metadata = value;
  return metadata;
}

void SDTProjectMetadata_reset() {
  SDTProjectMetadata_set(0);
}

const json_value *SDTProjectMetadata_get() {
  return (metadata)? metadata : SDTProjectMetadata_set(json_object_new(0));
}

json_value *SDTProjectMetadata_pop() {
  return json_deepcopy(SDTProjectMetadata_get());
}