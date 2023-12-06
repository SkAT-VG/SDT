#include "SDTProjects.h"

#include "SDTAnalysis.h"
#include "SDTCommon.h"
#include "SDTControl.h"
#include "SDTDCMotor.h"
#include "SDTDemix.h"
#include "SDTEffects.h"
#include "SDTFilters.h"
#include "SDTGases.h"
#include "SDTInteractors.h"
#include "SDTLiquids.h"
#include "SDTMotor.h"
#include "SDTResonators.h"

/** @brief Declare JSON object
@param[in] TYPENAME SDT type
@param[in] TYPEKEY SDT JSON type key */
#define _SDT_DECLARE_CASE(TYPENAME, TYPEKEY) json_value *dict_##TYPENAME = NULL

/** @brief Push new JSON object to collector object
@param[in] TYPENAME SDT type
@param[in] TYPEKEY SDT JSON type key */
#define _SDT_PUSH_CASE(TYPENAME, TYPEKEY)                                 \
  {                                                                       \
    const SDT##TYPENAME *sdt_obj = SDT_get##TYPENAME(argv[i]);            \
    if (sdt_obj) {                                                        \
      SDT_LOGA(DEBUG, "Found object of type " #TYPENAME ": %s", argv[i]); \
      if (!dict_##TYPENAME) {                                             \
        dict_##TYPENAME = json_object_new(0);                             \
      }                                                                   \
      json_object_push(dict_##TYPENAME, argv[i],                          \
                       SDT##TYPENAME##_toJSON(sdt_obj));                  \
    }                                                                     \
  }

/** @brief Push new JSON interactor object to collector object
@param[in] TYPENAME SDT type
@param[in] TYPEKEY SDT JSON type key */
#define _SDT_INTERACTOR_PUSH_CASE(TYPENAME, TYPEKEY) \
  if (SDTInteractor_is##TYPENAME(sdt_obj)) {         \
    if (!arr_##TYPENAME) {                           \
      arr_##TYPENAME = json_array_new(0);            \
    }                                                \
    json_array_push(arr_##TYPENAME, sdt_jobj);       \
  }

/** @brief Push non-empty collector objects to project JSON object
@param[in] TYPENAME SDT type
@param[in] TYPEKEY SDT JSON type key  */
#define _SDT_COLLECT_CASE(TYPENAME, TYPEKEY)          \
  if (dict_##TYPENAME) {                              \
    json_object_push(prj, #TYPEKEY, dict_##TYPENAME); \
  }

/** @brief Push non-empty collector arrays to interactors JSON object
@param[in] TYPENAME SDT type
@param[in] TYPEKEY SDT JSON type key  */
#define _SDT_INTERACTOR_COLLECT_CASE(TYPENAME, TYPEKEY)          \
  if (arr_##TYPENAME) {                                          \
    if (!dict_Interactor) {                                      \
      dict_Interactor = json_object_new(0);                      \
    }                                                            \
    json_object_push(dict_Interactor, #TYPEKEY, arr_##TYPENAME); \
  }

json_value *SDTProject_toJSON(int argc, const char **argv) {
  json_value *prj = json_object_new(0);
  _SDT_CALL_FOR_ALL_TYPES(_SDT_DECLARE_CASE);
  json_value *arr_Impact = NULL;
  json_value *arr_Friction = NULL;
  json_value *dict_Interactor = NULL;

  for (int i = 0; i < argc; ++i) {
    _SDT_CALL_FOR_ALL_TYPES(_SDT_PUSH_CASE);
    // Check pairs of keys for interactors
    for (int j = 0; j < argc; ++j) {
      if (i == j) continue;
      const SDTInteractor *sdt_obj = SDT_getInteractor(argv[i], argv[j]);
      if (sdt_obj) {
        json_value *sdt_jobj = SDTInteractor_toJSON(sdt_obj);
        // Add resonator keys
        json_object_push(sdt_jobj, "resonator0", json_string_new(argv[i]));
        json_object_push(sdt_jobj, "resonator1", json_string_new(argv[j]));
        // Push to correct array
        _SDT_INTERACTOR_PUSH_CASE(Impact, impact)
        else _SDT_INTERACTOR_PUSH_CASE(Friction, friction) else {
          json_builder_free(sdt_jobj);
        }
      }
    }
  }

  // Push collectors objects/arrays to project object
  // project
  //  |
  //  +- bouncing
  //  |   + <bouncing objects>
  //  +- ...
  //  |
  //  +- zerox
  //  |   + <zerox objects>
  //  +- interactor
  //      + impact
  //      |  + <impact objects>
  //      + friction
  //         + <friction objects>
  _SDT_CALL_FOR_ALL_TYPES(_SDT_COLLECT_CASE);
  _SDT_INTERACTOR_COLLECT_CASE(Impact, impact);
  _SDT_INTERACTOR_COLLECT_CASE(Friction, friction);
  _SDT_COLLECT_CASE(Interactor, interactor);
  return prj;
}

/*

static int SDTProject_loadBiquad(const json_object_entry *value,
                                 SDTOSCReturnCode *return_code,
                                 json_value *return_msg) {
  SDTBiquad *x;
  if (!SDTProject_assert(value->value->type == json_object, return_code,
                         return_msg, SDT_OSC_RETURN_JSON_NOT_COMPLIANT,
                         value->name, json_string_new("not a JSON object")) ||
      !SDTProject_assert((uintptr_t)(x = SDT_getBiquad(value->name)),
                         return_code, return_msg,
                         SDT_OSC_RETURN_OBJECT_NOT_FOUND, value->name,
                         json_string_new("not found")))
    return 0;
  SDTBiquad *tmp = SDTBiquad_fromJSON(value->value);
  SDTBiquad_copy(x, tmp);
  SDTBiquad_free(tmp);
  return 1;
}

static int SDTProject_loadBouncing(const json_object_entry *value,
                                   SDTOSCReturnCode *return_code,
                                   json_value *return_msg) {
  SDTBouncing *x;
  if (!SDTProject_assert(value->value->type == json_object, return_code,
                         return_msg, SDT_OSC_RETURN_JSON_NOT_COMPLIANT,
                         value->name, json_string_new("not a JSON object")) ||
      !SDTProject_assert((uintptr_t)(x = SDT_getBouncing(value->name)),
                         return_code, return_msg,
                         SDT_OSC_RETURN_OBJECT_NOT_FOUND, value->name,
                         json_string_new("not found")))
    return 0;
  SDTBouncing *tmp = SDTBouncing_fromJSON(value->value);
  SDTBouncing_copy(x, tmp);
  SDTBouncing_free(tmp);
  return 1;
}

static int SDTProject_loadBreaking(const json_object_entry *value,
                                   SDTOSCReturnCode *return_code,
                                   json_value *return_msg) {
  SDTBreaking *x;
  if (!SDTProject_assert(value->value->type == json_object, return_code,
                         return_msg, SDT_OSC_RETURN_JSON_NOT_COMPLIANT,
                         value->name, json_string_new("not a JSON object")) ||
      !SDTProject_assert((uintptr_t)(x = SDT_getBreaking(value->name)),
                         return_code, return_msg,
                         SDT_OSC_RETURN_OBJECT_NOT_FOUND, value->name,
                         json_string_new("not found")))
    return 0;
  SDTBreaking *tmp = SDTBreaking_fromJSON(value->value);
  SDTBreaking_copy(x, tmp);
  SDTBreaking_free(tmp);
  return 1;
}

static int SDTProject_loadBubble(const json_object_entry *value,
                                 SDTOSCReturnCode *return_code,
                                 json_value *return_msg) {
  SDTBubble *x;
  if (!SDTProject_assert(value->value->type == json_object, return_code,
                         return_msg, SDT_OSC_RETURN_JSON_NOT_COMPLIANT,
                         value->name, json_string_new("not a JSON object")) ||
      !SDTProject_assert((uintptr_t)(x = SDT_getBubble(value->name)),
                         return_code, return_msg,
                         SDT_OSC_RETURN_OBJECT_NOT_FOUND, value->name,
                         json_string_new("not found")))
    return 0;
  SDTBubble *tmp = SDTBubble_fromJSON(value->value);
  SDTBubble_copy(x, tmp);
  SDTBubble_free(tmp);
  return 1;
}

static int SDTProject_loadCrumpling(const json_object_entry *value,
                                    SDTOSCReturnCode *return_code,
                                    json_value *return_msg) {
  SDTCrumpling *x;
  if (!SDTProject_assert(value->value->type == json_object, return_code,
                         return_msg, SDT_OSC_RETURN_JSON_NOT_COMPLIANT,
                         value->name, json_string_new("not a JSON object")) ||
      !SDTProject_assert((uintptr_t)(x = SDT_getCrumpling(value->name)),
                         return_code, return_msg,
                         SDT_OSC_RETURN_OBJECT_NOT_FOUND, value->name,
                         json_string_new("not found")))
    return 0;
  SDTCrumpling *tmp = SDTCrumpling_fromJSON(value->value);
  SDTCrumpling_copy(x, tmp);
  SDTCrumpling_free(tmp);
  return 1;
}

static int SDTProject_loadDCMotor(const json_object_entry *value,
                                  SDTOSCReturnCode *return_code,
                                  json_value *return_msg) {
  SDTDCMotor *x;
  if (!SDTProject_assert(value->value->type == json_object, return_code,
                         return_msg, SDT_OSC_RETURN_JSON_NOT_COMPLIANT,
                         value->name, json_string_new("not a JSON object")) ||
      !SDTProject_assert((uintptr_t)(x = SDT_getDCMotor(value->name)),
                         return_code, return_msg,
                         SDT_OSC_RETURN_OBJECT_NOT_FOUND, value->name,
                         json_string_new("not found")))
    return 0;
  SDTDCMotor *tmp = SDTDCMotor_fromJSON(value->value);
  SDTDCMotor_copy(x, tmp);
  SDTDCMotor_free(tmp);
  return 1;
}

static int SDTProject_loadDemix(const json_object_entry *value,
                                SDTOSCReturnCode *return_code,
                                json_value *return_msg) {
  SDTDemix *x;
  if (!SDTProject_assert(value->value->type == json_object, return_code,
                         return_msg, SDT_OSC_RETURN_JSON_NOT_COMPLIANT,
                         value->name, json_string_new("not a JSON object")) ||
      !SDTProject_assert((uintptr_t)(x = SDT_getDemix(value->name)),
                         return_code, return_msg,
                         SDT_OSC_RETURN_OBJECT_NOT_FOUND, value->name,
                         json_string_new("not found")))
    return 0;
  SDTDemix *tmp = SDTDemix_fromJSON(value->value);
  SDTDemix_copy(x, tmp);
  SDTDemix_free(tmp);
  return 1;
}

static int SDTProject_loadEnvelope(const json_object_entry *value,
                                   SDTOSCReturnCode *return_code,
                                   json_value *return_msg) {
  SDTEnvelope *x;
  if (!SDTProject_assert(value->value->type == json_object, return_code,
                         return_msg, SDT_OSC_RETURN_JSON_NOT_COMPLIANT,
                         value->name, json_string_new("not a JSON object")) ||
      !SDTProject_assert((uintptr_t)(x = SDT_getEnvelope(value->name)),
                         return_code, return_msg,
                         SDT_OSC_RETURN_OBJECT_NOT_FOUND, value->name,
                         json_string_new("not found")))
    return 0;
  SDTEnvelope *tmp = SDTEnvelope_fromJSON(value->value);
  SDTEnvelope_copy(x, tmp);
  SDTEnvelope_free(tmp);
  return 1;
}

static int SDTProject_loadExplosion(const json_object_entry *value,
                                    SDTOSCReturnCode *return_code,
                                    json_value *return_msg) {
  SDTExplosion *x;
  if (!SDTProject_assert(value->value->type == json_object, return_code,
                         return_msg, SDT_OSC_RETURN_JSON_NOT_COMPLIANT,
                         value->name, json_string_new("not a JSON object")) ||
      !SDTProject_assert((uintptr_t)(x = SDT_getExplosion(value->name)),
                         return_code, return_msg,
                         SDT_OSC_RETURN_OBJECT_NOT_FOUND, value->name,
                         json_string_new("not found")))
    return 0;
  SDTExplosion *tmp = SDTExplosion_fromJSON(value->value);
  SDTExplosion_copy(x, tmp);
  SDTExplosion_free(tmp);
  return 1;
}

static int SDTProject_loadFluidFlow(const json_object_entry *value,
                                    SDTOSCReturnCode *return_code,
                                    json_value *return_msg) {
  SDTFluidFlow *x;
  if (!SDTProject_assert(value->value->type == json_object, return_code,
                         return_msg, SDT_OSC_RETURN_JSON_NOT_COMPLIANT,
                         value->name, json_string_new("not a JSON object")) ||
      !SDTProject_assert((uintptr_t)(x = SDT_getFluidFlow(value->name)),
                         return_code, return_msg,
                         SDT_OSC_RETURN_OBJECT_NOT_FOUND, value->name,
                         json_string_new("not found")))
    return 0;
  SDTFluidFlow *tmp = SDTFluidFlow_fromJSON(value->value);
  SDTFluidFlow_copy(x, tmp);
  SDTFluidFlow_free(tmp);
  return 1;
}

static int SDTProject_loadMotor(const json_object_entry *value,
                                SDTOSCReturnCode *return_code,
                                json_value *return_msg) {
  SDTMotor *x;
  if (!SDTProject_assert(value->value->type == json_object, return_code,
                         return_msg, SDT_OSC_RETURN_JSON_NOT_COMPLIANT,
                         value->name, json_string_new("not a JSON object")) ||
      !SDTProject_assert((uintptr_t)(x = SDT_getMotor(value->name)),
                         return_code, return_msg,
                         SDT_OSC_RETURN_OBJECT_NOT_FOUND, value->name,
                         json_string_new("not found")))
    return 0;
  SDTMotor *tmp = SDTMotor_fromJSON(value->value);
  SDTMotor_copy(x, tmp);
  SDTMotor_free(tmp);
  return 1;
}

static int SDTProject_loadMyoelastic(const json_object_entry *value,
                                     SDTOSCReturnCode *return_code,
                                     json_value *return_msg) {
  SDTMyoelastic *x;
  if (!SDTProject_assert(value->value->type == json_object, return_code,
                         return_msg, SDT_OSC_RETURN_JSON_NOT_COMPLIANT,
                         value->name, json_string_new("not a JSON object")) ||
      !SDTProject_assert((uintptr_t)(x = SDT_getMyoelastic(value->name)),
                         return_code, return_msg,
                         SDT_OSC_RETURN_OBJECT_NOT_FOUND, value->name,
                         json_string_new("not found")))
    return 0;
  SDTMyoelastic *tmp = SDTMyoelastic_fromJSON(value->value);
  SDTMyoelastic_copy(x, tmp);
  SDTMyoelastic_free(tmp);
  return 1;
}

static int SDTProject_loadPitch(const json_object_entry *value,
                                SDTOSCReturnCode *return_code,
                                json_value *return_msg) {
  SDTPitch *x;
  if (!SDTProject_assert(value->value->type == json_object, return_code,
                         return_msg, SDT_OSC_RETURN_JSON_NOT_COMPLIANT,
                         value->name, json_string_new("not a JSON object")) ||
      !SDTProject_assert((uintptr_t)(x = SDT_getPitch(value->name)),
                         return_code, return_msg,
                         SDT_OSC_RETURN_OBJECT_NOT_FOUND, value->name,
                         json_string_new("not found")))
    return 0;
  SDTPitch *tmp = SDTPitch_fromJSON(value->value);
  SDTPitch_copy(x, tmp);
  SDTPitch_free(tmp);
  return 1;
}

static int SDTProject_loadPitchShift(const json_object_entry *value,
                                     SDTOSCReturnCode *return_code,
                                     json_value *return_msg) {
  SDTPitchShift *x;
  if (!SDTProject_assert(value->value->type == json_object, return_code,
                         return_msg, SDT_OSC_RETURN_JSON_NOT_COMPLIANT,
                         value->name, json_string_new("not a JSON object")) ||
      !SDTProject_assert((uintptr_t)(x = SDT_getPitchShift(value->name)),
                         return_code, return_msg,
                         SDT_OSC_RETURN_OBJECT_NOT_FOUND, value->name,
                         json_string_new("not found")))
    return 0;
  SDTPitchShift *tmp = SDTPitchShift_fromJSON(value->value);
  SDTPitchShift_copy(x, tmp);
  SDTPitchShift_free(tmp);
  return 1;
}

static int SDTProject_loadReverb(const json_object_entry *value,
                                 SDTOSCReturnCode *return_code,
                                 json_value *return_msg) {
  SDTReverb *x;
  if (!SDTProject_assert(value->value->type == json_object, return_code,
                         return_msg, SDT_OSC_RETURN_JSON_NOT_COMPLIANT,
                         value->name, json_string_new("not a JSON object")) ||
      !SDTProject_assert((uintptr_t)(x = SDT_getReverb(value->name)),
                         return_code, return_msg,
                         SDT_OSC_RETURN_OBJECT_NOT_FOUND, value->name,
                         json_string_new("not found")))
    return 0;
  SDTReverb *tmp = SDTReverb_fromJSON(value->value);
  SDTReverb_copy(x, tmp);
  SDTReverb_free(tmp);
  return 1;
}

static int SDTProject_loadRolling(const json_object_entry *value,
                                  SDTOSCReturnCode *return_code,
                                  json_value *return_msg) {
  SDTRolling *x;
  if (!SDTProject_assert(value->value->type == json_object, return_code,
                         return_msg, SDT_OSC_RETURN_JSON_NOT_COMPLIANT,
                         value->name, json_string_new("not a JSON object")) ||
      !SDTProject_assert((uintptr_t)(x = SDT_getRolling(value->name)),
                         return_code, return_msg,
                         SDT_OSC_RETURN_OBJECT_NOT_FOUND, value->name,
                         json_string_new("not found")))
    return 0;
  SDTRolling *tmp = SDTRolling_fromJSON(value->value);
  SDTRolling_copy(x, tmp);
  SDTRolling_free(tmp);
  return 1;
}

static int SDTProject_loadScraping(const json_object_entry *value,
                                   SDTOSCReturnCode *return_code,
                                   json_value *return_msg) {
  SDTScraping *x;
  if (!SDTProject_assert(value->value->type == json_object, return_code,
                         return_msg, SDT_OSC_RETURN_JSON_NOT_COMPLIANT,
                         value->name, json_string_new("not a JSON object")) ||
      !SDTProject_assert((uintptr_t)(x = SDT_getScraping(value->name)),
                         return_code, return_msg,
                         SDT_OSC_RETURN_OBJECT_NOT_FOUND, value->name,
                         json_string_new("not found")))
    return 0;
  SDTScraping *tmp = SDTScraping_fromJSON(value->value);
  SDTScraping_copy(x, tmp);
  SDTScraping_free(tmp);
  return 1;
}

static int SDTProject_loadSpectralFeats(const json_object_entry *value,
                                        SDTOSCReturnCode *return_code,
                                        json_value *return_msg) {
  SDTSpectralFeats *x;
  if (!SDTProject_assert(value->value->type == json_object, return_code,
                         return_msg, SDT_OSC_RETURN_JSON_NOT_COMPLIANT,
                         value->name, json_string_new("not a JSON object")) ||
      !SDTProject_assert((uintptr_t)(x = SDT_getSpectralFeats(value->name)),
                         return_code, return_msg,
                         SDT_OSC_RETURN_OBJECT_NOT_FOUND, value->name,
                         json_string_new("not found")))
    return 0;
  SDTSpectralFeats *tmp = SDTSpectralFeats_fromJSON(value->value);
  SDTSpectralFeats_copy(x, tmp);
  SDTSpectralFeats_free(tmp);
  return 1;
}

static int SDTProject_loadWindCavity(const json_object_entry *value,
                                     SDTOSCReturnCode *return_code,
                                     json_value *return_msg) {
  SDTWindCavity *x;
  if (!SDTProject_assert(value->value->type == json_object, return_code,
                         return_msg, SDT_OSC_RETURN_JSON_NOT_COMPLIANT,
                         value->name, json_string_new("not a JSON object")) ||
      !SDTProject_assert((uintptr_t)(x = SDT_getWindCavity(value->name)),
                         return_code, return_msg,
                         SDT_OSC_RETURN_OBJECT_NOT_FOUND, value->name,
                         json_string_new("not found")))
    return 0;
  SDTWindCavity *tmp = SDTWindCavity_fromJSON(value->value);
  SDTWindCavity_copy(x, tmp);
  SDTWindCavity_free(tmp);
  return 1;
}

static int SDTProject_loadWindKarman(const json_object_entry *value,
                                     SDTOSCReturnCode *return_code,
                                     json_value *return_msg) {
  SDTWindKarman *x;
  if (!SDTProject_assert(value->value->type == json_object, return_code,
                         return_msg, SDT_OSC_RETURN_JSON_NOT_COMPLIANT,
                         value->name, json_string_new("not a JSON object")) ||
      !SDTProject_assert((uintptr_t)(x = SDT_getWindKarman(value->name)),
                         return_code, return_msg,
                         SDT_OSC_RETURN_OBJECT_NOT_FOUND, value->name,
                         json_string_new("not found")))
    return 0;
  SDTWindKarman *tmp = SDTWindKarman_fromJSON(value->value);
  SDTWindKarman_copy(x, tmp);
  SDTWindKarman_free(tmp);
  return 1;
}

static int SDTProject_loadWindFlow(const json_object_entry *value,
                                   SDTOSCReturnCode *return_code,
                                   json_value *return_msg) {
  SDTWindFlow *x;
  if (!SDTProject_assert(value->value->type == json_object, return_code,
                         return_msg, SDT_OSC_RETURN_JSON_NOT_COMPLIANT,
                         value->name, json_string_new("not a JSON object")) ||
      !SDTProject_assert((uintptr_t)(x = SDT_getWindFlow(value->name)),
                         return_code, return_msg,
                         SDT_OSC_RETURN_OBJECT_NOT_FOUND, value->name,
                         json_string_new("not found")))
    return 0;
  SDTWindFlow *tmp = SDTWindFlow_fromJSON(value->value);
  SDTWindFlow_copy(x, tmp);
  SDTWindFlow_free(tmp);
  return 1;
}

static int SDTProject_loadZeroCrossing(const json_object_entry *value,
                                       SDTOSCReturnCode *return_code,
                                       json_value *return_msg) {
  SDTZeroCrossing *x;
  if (!SDTProject_assert(value->value->type == json_object, return_code,
                         return_msg, SDT_OSC_RETURN_JSON_NOT_COMPLIANT,
                         value->name, json_string_new("not a JSON object")) ||
      !SDTProject_assert((uintptr_t)(x = SDT_getZeroCrossing(value->name)),
                         return_code, return_msg,
                         SDT_OSC_RETURN_OBJECT_NOT_FOUND, value->name,
                         json_string_new("not found")))
    return 0;
  SDTZeroCrossing_setParams(x, value->value, 0);
  return 1;
}

static int SDTProject_loadResonator(const json_object_entry *value,
                                    SDTOSCReturnCode *return_code,
                                    json_value *return_msg) {
  SDTResonator *x;
  if (!SDTProject_assert(value->value->type == json_object, return_code,
                         return_msg, SDT_OSC_RETURN_JSON_NOT_COMPLIANT,
                         value->name, json_string_new("not a JSON object")) ||
      !SDTProject_assert((uintptr_t)(x = SDT_getResonator(value->name)),
                         return_code, return_msg,
                         SDT_OSC_RETURN_OBJECT_NOT_FOUND, value->name,
                         json_string_new("not found")))
    return 0;

  SDTResonator *tmp = SDTResonator_fromJSON(value->value);
  SDTProject_assert(
      SDTResonator_getNPickups(x) == SDTResonator_getNPickups(tmp),
return_code, return_msg, SDT_OSC_RETURN_OK, value->name, json_string_new(
          "WARNING: number of pickup points changed, check that any interactor
" "that involves this resonator has the correct number of outlets"));
  SDTResonator_copy(x, tmp);
  SDTResonator_free(tmp);
  return 1;
}

static int SDTProject_loadInteractor(
    const char *class, int (*class_check)(const SDTInteractor *),
    SDTInteractor *(*from_json)(const json_value *),
    SDTInteractor *(*class_copy)(SDTInteractor *, const SDTInteractor *),
    void (*class_free)(SDTInteractor *), const json_value *value,
    SDTOSCReturnCode *return_code, json_value *return_msg) {
  // Check value is an object
  if (!SDTProject_assert(value->type == json_object, return_code, return_msg,
                         SDT_OSC_RETURN_JSON_NOT_COMPLIANT, class,
                         json_error("not compliant (not an object)", value)))
    return 0;

  // Check value has both keys
  const json_value *k = json_object_get_by_key(value, "key0");
  const char *key0 = (k && k->type == json_string) ? k->u.string.ptr : 0;
  k = json_object_get_by_key(value, "key1");
  const char *key1 = (k && k->type == json_string) ? k->u.string.ptr : 0;

  if (!SDTProject_assert(
          key0 && key1, return_code, return_msg,
          SDT_OSC_RETURN_JSON_NOT_COMPLIANT, class,
          json_error(
              "not compliant (missing 'key0' or 'key1' field or not strings)",
              value)))
    return 0;

  // Check interactor exists
  SDTInteractor *x = SDT_getInteractor(key0, key1);
  if (!SDTProject_assert((uintptr_t)x, return_code, return_msg,
                         SDT_OSC_RETURN_OBJECT_NOT_FOUND, class,
                         json_error("couldn't load (not found)", value)))
    return 0;

  // Check correct class
  if (!SDTProject_assert(
          (*class_check)(x), return_code, return_msg,
          SDT_OSC_RETURN_INCORRECT_INTERACTOR_TYPE, class,
          json_error("couldn't load (incorrect interactor class)", value)))
    return 0;

  SDTInteractor *tmp = (*from_json)(value);
  (*class_copy)(x, tmp);
  (*class_free)(tmp);

  return 1;
}

static int SDTProject_loadInteractors(
    const char *class, int (*class_check)(const SDTInteractor *),
    SDTInteractor *(*from_json)(const json_value *),
    SDTInteractor *(*class_copy)(SDTInteractor *, const SDTInteractor *),
    void (*class_free)(SDTInteractor *), const json_value *value,
    SDTOSCReturnCode *return_code, json_value *return_msg) {
  // Check value is an array
  if (!SDTProject_assert(value->type == json_array, return_code, return_msg,
                         SDT_OSC_RETURN_JSON_NOT_COMPLIANT, class,
                         json_string_new("not compliant (not an array)")))
    return 0;
  // Load all values in array
  for (unsigned int i = 0; i < value->u.array.length; ++i)
    if (!SDTProject_loadInteractor(class, class_check, from_json, class_copy,
                                   class_free, value->u.array.values[i],
                                   return_code, return_msg))
      return 0;
  return 1;
}

#define SDT_OSC_LOAD_MISC(TYPE, NAME)                               \
  const json_value *dict_##TYPE =                                   \
      json_object_get_by_key(prj, STRINGIFY(NAME##s));              \
  if (dict_##TYPE) {                                                \
    if (!SDTProject_assert(                                         \
            dict_##TYPE->type == json_object, return_code, msg,     \
            SDT_OSC_RETURN_JSON_NOT_COMPLIANT, STRINGIFY(NAME##s),  \
            json_string_new("not compliant (not a JSON object)")))  \
      return;                                                       \
    for (unsigned int i = 0; i < dict_##TYPE->u.object.length; ++i) \
      if (!CONCAT(SDTProject_load, SDT_##TYPE)(                     \
              dict_##TYPE->u.object.values + i, return_code, msg))  \
        return;                                                     \
  }

void SDTProject_fromJSON(const json_value *prj, SDTOSCReturnCode *return_code,
                         json_value *msg) {
  if (!SDTProject_assert(prj && prj->type == json_object, return_code, msg,
                         SDT_OSC_RETURN_JSON_NOT_COMPLIANT, "project",
                         json_string_new("not compliant (not a JSON
object)"))) return;

  // Load metadata
  const json_value *meta = json_object_get_by_key(prj, "metadata");
  if (meta) {
    if (SDTProject_assert(meta->type == json_object, return_code, msg,
                          SDT_OSC_RETURN_JSON_NOT_COMPLIANT, "metadata",
                          json_string_new("not compliant (not a JSON
object)"))) SDTProjectMetadata_set(json_deepcopy(meta)); else return;
  }

  // Load resonators
  const json_value *res = json_object_get_by_key(prj, "resonators");
  if (res) {
    if (!SDTProject_assert(
            res->type == json_object, return_code, msg,
            SDT_OSC_RETURN_JSON_NOT_COMPLIANT, "resonators",
            json_string_new("not compliant (not a JSON object)")))
      return;
    for (unsigned int i = 0; i < res->u.object.length; ++i)
      if (!SDTProject_loadResonator(res->u.object.values + i, return_code,
msg)) return;
  }

  // Load interactors
  const json_value *inter = json_object_get_by_key(prj, "interactors");
  if (inter) {
    if (!SDTProject_assert(
            inter->type == json_object, return_code, msg,
            SDT_OSC_RETURN_JSON_NOT_COMPLIANT, "interactors",
            json_string_new("not compliant (not a JSON object)")))
      return;
    // Load impacts
    const json_value *imp = json_object_get_by_key(inter, "impacts");
    if (imp)
      if (!SDTProject_loadInteractors("impacts", &SDTInteractor_isImpact,
                                      &SDTImpact_fromJSON, &SDTImpact_copy,
                                      &SDTImpact_free, imp, return_code, msg))
        return;
    // Load frictions
    const json_value *fri = json_object_get_by_key(inter, "frictions");
    if (fri)
      if (!SDTProject_loadInteractors("frictions", &SDTInteractor_isFriction,
                                      &SDTFriction_fromJSON,
&SDTFriction_copy, &SDTFriction_free, fri, return_code, msg)) return;
  }

  // Load misc
  const json_value *dict_BIQUAD = json_object_get_by_key(prj, "biquads");
  if (dict_BIQUAD) {
    if (!SDTProject_assert(
            dict_BIQUAD->type == json_object, return_code, msg,
            SDT_OSC_RETURN_JSON_NOT_COMPLIANT, "biquads",
            json_string_new("not compliant (not a JSON object)")))
      return;
    for (unsigned int i = 0; i < dict_BIQUAD->u.object.length; ++i)
      if (!SDTProject_loadBiquad(dict_BIQUAD->u.object.values + i,
return_code, msg)) return;
  }
  const json_value *dict_BOUNCING = json_object_get_by_key(prj, "bouncings");
  if (dict_BOUNCING) {
    if (!SDTProject_assert(
            dict_BOUNCING->type == json_object, return_code, msg,
            SDT_OSC_RETURN_JSON_NOT_COMPLIANT, "bouncings",
            json_string_new("not compliant (not a JSON object)")))
      return;
    for (unsigned int i = 0; i < dict_BOUNCING->u.object.length; ++i)
      if (!SDTProject_loadBouncing(dict_BOUNCING->u.object.values + i,
                                   return_code, msg))
        return;
  }
  const json_value *dict_BREAKING = json_object_get_by_key(prj, "breakings");
  if (dict_BREAKING) {
    if (!SDTProject_assert(
            dict_BREAKING->type == json_object, return_code, msg,
            SDT_OSC_RETURN_JSON_NOT_COMPLIANT, "breakings",
            json_string_new("not compliant (not a JSON object)")))
      return;
    for (unsigned int i = 0; i < dict_BREAKING->u.object.length; ++i)
      if (!SDTProject_loadBreaking(dict_BREAKING->u.object.values + i,
                                   return_code, msg))
        return;
  }
  const json_value *dict_BUBBLE = json_object_get_by_key(prj, "bubbles");
  if (dict_BUBBLE) {
    if (!SDTProject_assert(
            dict_BUBBLE->type == json_object, return_code, msg,
            SDT_OSC_RETURN_JSON_NOT_COMPLIANT, "bubbles",
            json_string_new("not compliant (not a JSON object)")))
      return;
    for (unsigned int i = 0; i < dict_BUBBLE->u.object.length; ++i)
      if (!SDTProject_loadBubble(dict_BUBBLE->u.object.values + i,
return_code, msg)) return;
  }
  const json_value *dict_CRUMPLING = json_object_get_by_key(prj,
"crumplings"); if (dict_CRUMPLING) { if (!SDTProject_assert(
            dict_CRUMPLING->type == json_object, return_code, msg,
            SDT_OSC_RETURN_JSON_NOT_COMPLIANT, "crumplings",
            json_string_new("not compliant (not a JSON object)")))
      return;
    for (unsigned int i = 0; i < dict_CRUMPLING->u.object.length; ++i)
      if (!SDTProject_loadCrumpling(dict_CRUMPLING->u.object.values + i,
                                    return_code, msg))
        return;
  }
  const json_value *dict_DCMOTOR = json_object_get_by_key(prj, "dcmotors");
  if (dict_DCMOTOR) {
    if (!SDTProject_assert(
            dict_DCMOTOR->type == json_object, return_code, msg,
            SDT_OSC_RETURN_JSON_NOT_COMPLIANT, "dcmotors",
            json_string_new("not compliant (not a JSON object)")))
      return;
    for (unsigned int i = 0; i < dict_DCMOTOR->u.object.length; ++i)
      if (!SDTProject_loadDCMotor(dict_DCMOTOR->u.object.values + i,
                                  return_code, msg))
        return;
  }
  const json_value *dict_DEMIX = json_object_get_by_key(prj, "demixs");
  if (dict_DEMIX) {
    if (!SDTProject_assert(
            dict_DEMIX->type == json_object, return_code, msg,
            SDT_OSC_RETURN_JSON_NOT_COMPLIANT, "demixs",
            json_string_new("not compliant (not a JSON object)")))
      return;
    for (unsigned int i = 0; i < dict_DEMIX->u.object.length; ++i)
      if (!SDTProject_loadDemix(dict_DEMIX->u.object.values + i, return_code,
                                msg))
        return;
  }
  const json_value *dict_ENVELOPE = json_object_get_by_key(prj, "envelopes");
  if (dict_ENVELOPE) {
    if (!SDTProject_assert(
            dict_ENVELOPE->type == json_object, return_code, msg,
            SDT_OSC_RETURN_JSON_NOT_COMPLIANT, "envelopes",
            json_string_new("not compliant (not a JSON object)")))
      return;
    for (unsigned int i = 0; i < dict_ENVELOPE->u.object.length; ++i)
      if (!SDTProject_loadEnvelope(dict_ENVELOPE->u.object.values + i,
                                   return_code, msg))
        return;
  }
  const json_value *dict_EXPLOSION = json_object_get_by_key(prj,
"explosions"); if (dict_EXPLOSION) { if (!SDTProject_assert(
            dict_EXPLOSION->type == json_object, return_code, msg,
            SDT_OSC_RETURN_JSON_NOT_COMPLIANT, "explosions",
            json_string_new("not compliant (not a JSON object)")))
      return;
    for (unsigned int i = 0; i < dict_EXPLOSION->u.object.length; ++i)
      if (!SDTProject_loadExplosion(dict_EXPLOSION->u.object.values + i,
                                    return_code, msg))
        return;
  }
  const json_value *dict_FLUIDFLOW = json_object_get_by_key(prj,
"fluidflows"); if (dict_FLUIDFLOW) { if (!SDTProject_assert(
            dict_FLUIDFLOW->type == json_object, return_code, msg,
            SDT_OSC_RETURN_JSON_NOT_COMPLIANT, "fluidflows",
            json_string_new("not compliant (not a JSON object)")))
      return;
    for (unsigned int i = 0; i < dict_FLUIDFLOW->u.object.length; ++i)
      if (!SDTProject_loadFluidFlow(dict_FLUIDFLOW->u.object.values + i,
                                    return_code, msg))
        return;
  }
  const json_value *dict_MOTOR = json_object_get_by_key(prj, "motors");
  if (dict_MOTOR) {
    if (!SDTProject_assert(
            dict_MOTOR->type == json_object, return_code, msg,
            SDT_OSC_RETURN_JSON_NOT_COMPLIANT, "motors",
            json_string_new("not compliant (not a JSON object)")))
      return;
    for (unsigned int i = 0; i < dict_MOTOR->u.object.length; ++i)
      if (!SDTProject_loadMotor(dict_MOTOR->u.object.values + i, return_code,
                                msg))
        return;
  }
  const json_value *dict_MYOELASTIC = json_object_get_by_key(prj, "myos");
  if (dict_MYOELASTIC) {
    if (!SDTProject_assert(
            dict_MYOELASTIC->type == json_object, return_code, msg,
            SDT_OSC_RETURN_JSON_NOT_COMPLIANT, "myos",
            json_string_new("not compliant (not a JSON object)")))
      return;
    for (unsigned int i = 0; i < dict_MYOELASTIC->u.object.length; ++i)
      if (!SDTProject_loadMyoelastic(dict_MYOELASTIC->u.object.values + i,
                                     return_code, msg))
        return;
  }
  const json_value *dict_PITCH = json_object_get_by_key(prj, "pitchs");
  if (dict_PITCH) {
    if (!SDTProject_assert(
            dict_PITCH->type == json_object, return_code, msg,
            SDT_OSC_RETURN_JSON_NOT_COMPLIANT, "pitchs",
            json_string_new("not compliant (not a JSON object)")))
      return;
    for (unsigned int i = 0; i < dict_PITCH->u.object.length; ++i)
      if (!SDTProject_loadPitch(dict_PITCH->u.object.values + i, return_code,
                                msg))
        return;
  }
  const json_value *dict_PITCHSHIFT =
      json_object_get_by_key(prj, "pitchshifts");
  if (dict_PITCHSHIFT) {
    if (!SDTProject_assert(
            dict_PITCHSHIFT->type == json_object, return_code, msg,
            SDT_OSC_RETURN_JSON_NOT_COMPLIANT, "pitchshifts",
            json_string_new("not compliant (not a JSON object)")))
      return;
    for (unsigned int i = 0; i < dict_PITCHSHIFT->u.object.length; ++i)
      if (!SDTProject_loadPitchShift(dict_PITCHSHIFT->u.object.values + i,
                                     return_code, msg))
        return;
  }
  const json_value *dict_REVERB = json_object_get_by_key(prj, "reverbs");
  if (dict_REVERB) {
    if (!SDTProject_assert(
            dict_REVERB->type == json_object, return_code, msg,
            SDT_OSC_RETURN_JSON_NOT_COMPLIANT, "reverbs",
            json_string_new("not compliant (not a JSON object)")))
      return;
    for (unsigned int i = 0; i < dict_REVERB->u.object.length; ++i)
      if (!SDTProject_loadReverb(dict_REVERB->u.object.values + i,
return_code, msg)) return;
  }
  const json_value *dict_ROLLING = json_object_get_by_key(prj, "rollings");
  if (dict_ROLLING) {
    if (!SDTProject_assert(
            dict_ROLLING->type == json_object, return_code, msg,
            SDT_OSC_RETURN_JSON_NOT_COMPLIANT, "rollings",
            json_string_new("not compliant (not a JSON object)")))
      return;
    for (unsigned int i = 0; i < dict_ROLLING->u.object.length; ++i)
      if (!SDTProject_loadRolling(dict_ROLLING->u.object.values + i,
                                  return_code, msg))
        return;
  }
  const json_value *dict_SCRAPING = json_object_get_by_key(prj, "scrapings");
  if (dict_SCRAPING) {
    if (!SDTProject_assert(
            dict_SCRAPING->type == json_object, return_code, msg,
            SDT_OSC_RETURN_JSON_NOT_COMPLIANT, "scrapings",
            json_string_new("not compliant (not a JSON object)")))
      return;
    for (unsigned int i = 0; i < dict_SCRAPING->u.object.length; ++i)
      if (!SDTProject_loadScraping(dict_SCRAPING->u.object.values + i,
                                   return_code, msg))
        return;
  }
  const json_value *dict_SPECTRALFEATS =
      json_object_get_by_key(prj, "spectralfeatss");
  if (dict_SPECTRALFEATS) {
    if (!SDTProject_assert(
            dict_SPECTRALFEATS->type == json_object, return_code, msg,
            SDT_OSC_RETURN_JSON_NOT_COMPLIANT, "spectralfeatss",
            json_string_new("not compliant (not a JSON object)")))
      return;
    for (unsigned int i = 0; i < dict_SPECTRALFEATS->u.object.length; ++i)
      if (!SDTProject_loadSpectralFeats(dict_SPECTRALFEATS->u.object.values +
i, return_code, msg)) return;
  }
  const json_value *dict_WINDCAVITY =
      json_object_get_by_key(prj, "windcavitys");
  if (dict_WINDCAVITY) {
    if (!SDTProject_assert(
            dict_WINDCAVITY->type == json_object, return_code, msg,
            SDT_OSC_RETURN_JSON_NOT_COMPLIANT, "windcavitys",
            json_string_new("not compliant (not a JSON object)")))
      return;
    for (unsigned int i = 0; i < dict_WINDCAVITY->u.object.length; ++i)
      if (!SDTProject_loadWindCavity(dict_WINDCAVITY->u.object.values + i,
                                     return_code, msg))
        return;
  }
  const json_value *dict_WINDKARMAN =
      json_object_get_by_key(prj, "windkarmans");
  if (dict_WINDKARMAN) {
    if (!SDTProject_assert(
            dict_WINDKARMAN->type == json_object, return_code, msg,
            SDT_OSC_RETURN_JSON_NOT_COMPLIANT, "windkarmans",
            json_string_new("not compliant (not a JSON object)")))
      return;
    for (unsigned int i = 0; i < dict_WINDKARMAN->u.object.length; ++i)
      if (!SDTProject_loadWindKarman(dict_WINDKARMAN->u.object.values + i,
                                     return_code, msg))
        return;
  }
  const json_value *dict_WINDFLOW = json_object_get_by_key(prj, "windflows");
  if (dict_WINDFLOW) {
    if (!SDTProject_assert(
            dict_WINDFLOW->type == json_object, return_code, msg,
            SDT_OSC_RETURN_JSON_NOT_COMPLIANT, "windflows",
            json_string_new("not compliant (not a JSON object)")))
      return;
    for (unsigned int i = 0; i < dict_WINDFLOW->u.object.length; ++i)
      if (!SDTProject_loadWindFlow(dict_WINDFLOW->u.object.values + i,
                                   return_code, msg))
        return;
  }
  const json_value *dict_ZEROCROSSING = json_object_get_by_key(prj, "zeroxs");
  if (dict_ZEROCROSSING) {
    if (!SDTProject_assert(
            dict_ZEROCROSSING->type == json_object, return_code, msg,
            SDT_OSC_RETURN_JSON_NOT_COMPLIANT, "zeroxs",
            json_string_new("not compliant (not a JSON object)")))
      return;
    for (unsigned int i = 0; i < dict_ZEROCROSSING->u.object.length; ++i)
      if (!SDTProject_loadZeroCrossing(dict_ZEROCROSSING->u.object.values + i,
                                       return_code, msg))
        return;
  }
}

//
----------------------------------------------------------------------------

json_value *metadata = 0;

json_value *SDTProjectMetadata_set(json_value *value) {
  if (metadata) json_builder_free(metadata);
  metadata = value;
  return metadata;
}

void SDTProjectMetadata_reset() { SDTProjectMetadata_set(0); }

const json_value *SDTProjectMetadata_get() {
  return (metadata) ? metadata : SDTProjectMetadata_set(json_object_new(0));
}

json_value *SDTProjectMetadata_pop() {
  return json_deepcopy(SDTProjectMetadata_get());
}

*/
