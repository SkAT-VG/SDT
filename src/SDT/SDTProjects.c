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
#include "SDTStructs.h"

/** @brief Declare JSON object
@param[in] TYPENAME SDT type
@param[in] TYPEKEY SDT JSON type key
@param[in] U Ignored */
#define _SDT_DECLARE_CASE(TYPENAME, TYPEKEY, U) \
  json_value *dict_##TYPENAME = NULL

/** @brief Push new JSON object to collector object
@param[in] TYPENAME SDT type
@param[in] TYPEKEY SDT JSON type key
@param[in] U Ignored */
#define _SDT_PUSH_CASE(TYPENAME, TYPEKEY, U)                               \
  {                                                                        \
    const SDT##TYPENAME *sdt_obj = SDT_get##TYPENAME(argv[i]);             \
    if (sdt_obj) {                                                         \
      any[i] = 1;                                                          \
      SDT_LOGA(DEBUG,                                                      \
               "While dumping project, found " #TYPEKEY " object: '%s'\n", \
               argv[i]);                                                   \
      if (!dict_##TYPENAME) {                                              \
        dict_##TYPENAME = json_object_new(0);                              \
      }                                                                    \
      json_object_push(dict_##TYPENAME, argv[i],                           \
                       SDT##TYPENAME##_toJSON(sdt_obj));                   \
    }                                                                      \
  }

/** @brief Push new JSON interactor object to collector object
@param[in] TYPENAME SDT type
@param[in] TYPEKEY SDT JSON type key
@param[in] U Ignored */
#define _SDT_INTERACTOR_PUSH_CASE(TYPENAME, TYPEKEY, U) \
  if (SDTInteractor_is##TYPENAME(sdt_obj)) {            \
    any[i] = any[j] = 1;                                \
    SDT_LOGA(DEBUG,                                     \
             "While loading project, found " #TYPEKEY   \
             " interactor involving '%s' and '%s'\n",   \
             argv[i], argv[j]);                         \
    if (!arr_##TYPENAME) {                              \
      arr_##TYPENAME = json_array_new(0);               \
    }                                                   \
    json_array_push(arr_##TYPENAME, sdt_jobj);          \
  }

/** @brief Push non-empty collector objects to project JSON object
@param[in] TYPENAME SDT type
@param[in] TYPEKEY SDT JSON type key
@param[in] U Ignored  */
#define _SDT_COLLECT_CASE(TYPENAME, TYPEKEY, U)       \
  if (dict_##TYPENAME) {                              \
    json_object_push(prj, #TYPEKEY, dict_##TYPENAME); \
  }

/** @brief Push non-empty collector arrays to interactors JSON object
@param[in] TYPENAME SDT type
@param[in] TYPEKEY SDT JSON type key
@param[in] U Ignored  */
#define _SDT_INTERACTOR_COLLECT_CASE(TYPENAME, TYPEKEY, U)       \
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

  unsigned char *any = (unsigned char *)calloc(argc, sizeof(unsigned char));
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
        _SDT_INTERACTOR_PUSH_CASE(Impact, impact, )
        else _SDT_INTERACTOR_PUSH_CASE(Friction, friction, ) else {
          json_builder_free(sdt_jobj);
        }
      }
    }
  }
  for (int i = 0; i < argc; ++i) {
    if (!any[i]) {
      SDT_LOGA(
          WARN,
          "While dumping project, couldn't find any object for key: '%s'\n",
          argv[i]);
    }
  }
  free(any);

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
  _SDT_INTERACTOR_COLLECT_CASE(Impact, impact, );
  _SDT_INTERACTOR_COLLECT_CASE(Friction, friction, );
  _SDT_COLLECT_CASE(Interactor, interactor, );
  return prj;
}

/** @brief Pull non-empty collector objects from project JSON object
@param[in] TYPENAME SDT type
@param[in] TYPEKEY SDT JSON type key
@param[in] U Type `update` to trigger the structure update function  */
#define _SDT_PULL_CASE(TYPENAME, TYPEKEY, U)                                   \
  {                                                                            \
    const json_value *d = SDTJSON_object_get_by_key(prj, #TYPEKEY);            \
    if (d && d->type == json_object) {                                         \
      for (unsigned int i = 0; i < d->u.object.length; ++i) {                  \
        SDT##TYPENAME *sdt_obj =                                               \
            SDT_get##TYPENAME(d->u.object.values[i].name);                     \
        if (sdt_obj) {                                                         \
          SDT_LOGA(DEBUG,                                                      \
                   "While loading project, found " #TYPEKEY " object: '%s'\n", \
                   d->u.object.values[i].name);                                \
          SDT##TYPENAME##_setParams(sdt_obj, d->u.object.values[i].value,      \
                                    unsafe);                                   \
          _SDT_TYPE_UPDATE_##U(TYPENAME, sdt_obj);                             \
        } else {                                                               \
          SDT_LOGA(WARN,                                                       \
                   "While loading project, couldn't find " #TYPEKEY            \
                   " object: '%s'\n",                                          \
                   d->u.object.values[i].name);                                \
        }                                                                      \
      }                                                                        \
    }                                                                          \
  }

/** @brief Pull non-empty collector objects from project JSON object for
interactors
@param[in] TYPENAME SDT type
@param[in] TYPEKEY SDT JSON type key
@param[in] U Type `update` to trigger the structure update function */
#define _SDT_INTERACTOR_PULL_CASE(TYPENAME, TYPEKEY, U)                        \
  {                                                                            \
    const json_value *d = SDTJSON_object_get_by_key(prj, "interactor");        \
    if (d && d->type == json_object) {                                         \
      const json_value *a = SDTJSON_object_get_by_key(d, #TYPEKEY);            \
      if (a && a->type == json_array) {                                        \
        for (unsigned int i = 0; i < a->u.array.length; ++i) {                 \
          if (a->u.array.values[i]->type == json_object) {                     \
            const json_value *k0, *k1;                                         \
            k0 =                                                               \
                SDTJSON_object_get_by_key(a->u.array.values[i], "resonator0"); \
            if (k0 && k0->type == json_string) {                               \
              k1 = SDTJSON_object_get_by_key(a->u.array.values[i],             \
                                             "resonator1");                    \
              if (k1 && k1->type == json_string) {                             \
                SDTInteractor *sdt_obj =                                       \
                    SDT_getInteractor(k0->u.string.ptr, k1->u.string.ptr);     \
                if (sdt_obj && SDTInteractor_is##TYPENAME(sdt_obj)) {          \
                  SDT_LOGA(DEBUG,                                              \
                           "While loading project, found " #TYPEKEY            \
                           " object involving '%s' and '%s'\n",                \
                           k0->u.string.ptr, k1->u.string.ptr);                \
                  SDTInteractor_setParams(sdt_obj, a->u.array.values[i],       \
                                          unsafe);                             \
                  _SDT_TYPE_UPDATE_##U(Interactor, sdt_obj);                   \
                } else {                                                       \
                  SDT_LOGA(WARN,                                               \
                           "While loading project, couldn't find " #TYPEKEY    \
                           " object involving '%s' and '%s'\n",                \
                           k0->u.string.ptr, k1->u.string.ptr);                \
                }                                                              \
              } else {                                                         \
                SDT_LOG(WARN, "Found " #TYPEKEY                                \
                              " in project where \"resonator1\" is missing "   \
                              "or not a string\n");                            \
                r = 3;                                                         \
              }                                                                \
            } else {                                                           \
              SDT_LOG(WARN, "Found " #TYPEKEY                                  \
                            " in project where \"resonator0\" is missing or "  \
                            "not a string\n");                                 \
              r = 2;                                                           \
            }                                                                  \
          }                                                                    \
        }                                                                      \
      }                                                                        \
    }                                                                          \
  }

int SDTProject_fromJSON(const json_value *prj, unsigned char unsafe) {
  if (!prj || prj->type != json_object) return 1;
  int r = 0;
  _SDT_CALL_FOR_ALL_TYPES(_SDT_PULL_CASE);
  _SDT_INTERACTOR_PULL_CASE(Impact, impact, );
  _SDT_INTERACTOR_PULL_CASE(Friction, friction, );
  return r;
}
