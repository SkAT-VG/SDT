#include "SDTAnalysis.h"
#include "SDTCommonMacros.h"
#include "SDTControl.h"
#include "SDTDCMotor.h"
#include "SDTDemix.h"
#include "SDTEffects.h"
#include "SDTFilters.h"
#include "SDTGases.h"
#include "SDTJSON.h"
#include "SDTLiquids.h"
#include "SDTModalTracker.h"
#include "SDTMotor.h"
#include "SDTOSCCommon.h"

#ifndef SDT_OSC_MISC_H
#define SDT_OSC_MISC_H

#ifdef __cplusplus
extern "C" {
#endif

/** @file SDTOSCMisc.h
@defgroup OSCMisc SDTOSCMisc.h: Miscellanea OSC Methods
OSC containers and methods for SDT objects that don't require special treatment
and, therefore, are implemented via macros. For a list of SDT classes whose OSC
methods are implemented this way, see the `SDT_OSC_CLASSES` macro. Every class
is associated to a container. The first argument for all methods is the object
ID. Every container has the following methods
 - log: log information about the object. Arguments: key (string)
 - save: save information about the object. Arguments: key (string), file path
(string)
 - load: load information about the object. Arguments: key (string), file path
(string)
 .
Additionally, every container has one setter method for setting each attribute
of the class. The first argument is the object ID and the second is the
attribute value. For a list of attributes of each class, see the macro
`SDT_<CLASS>_ATTRIBUTES` in the class's header file.

Also, every object belonging to these classes can be logged, saved, and loaded
as part of projects using the `/project` methods.
@{
*/

/** @defgroup osc_macros Macros
Macros for generating OSC methods
@{ */

/** @brief Define the OSC logging method declaration
@param[in] SDT_TYPE The SDT type macro */
#define SDT_OSC_LOG_H(SDT_TYPE)                                   \
  extern SDTOSCReturnCode CONCAT(CONCAT(SDTOSC, SDT_TYPE), _log)( \
      void (*log)(const char *, ...), const char *key,            \
      SDT_TYPE_FULL(SDT_TYPE) * x);

/** @brief Define the OSC logging method
@param[in] SDT_TYPE The SDT type macro */
#define SDT_OSC_LOG(SDT_TYPE)                                      \
  SDTOSCReturnCode CONCAT(CONCAT(SDTOSC, SDT_TYPE), _log)(         \
      void (*log)(const char *, ...), const char *key,             \
      SDT_TYPE_FULL(SDT_TYPE) * x) {                               \
    json_value *obj = CONCAT(SDT_TYPE_FULL(SDT_TYPE), _toJSON)(x); \
    char *s = malloc(sizeof(char) * (strlen(key) + 32));           \
    sprintf(s, "sdtOSC: %s", key);                                 \
    SDTOSCReturnCode r = SDTOSCJSON_log(log, s, obj);              \
    free(s);                                                       \
    json_builder_free(obj);                                        \
    return r;                                                      \
  }

/** @brief Define the OSC save method declaration
@param[in] SDT_TYPE The SDT type macro */
#define SDT_OSC_SAVE_H(SDT_TYPE)                                   \
  extern SDTOSCReturnCode CONCAT(CONCAT(SDTOSC, SDT_TYPE), _save)( \
      void (*log)(const char *, ...), const char *key,             \
      SDT_TYPE_FULL(SDT_TYPE) * x, const SDTOSCArgumentList *args);

/** @brief Define the OSC save method
@param[in] SDT_TYPE The SDT type macro */
#define SDT_OSC_SAVE(SDT_TYPE)                                            \
  SDTOSCReturnCode CONCAT(CONCAT(SDTOSC, SDT_TYPE), _save)(               \
      void (*log)(const char *, ...), const char *key,                    \
      SDT_TYPE_FULL(SDT_TYPE) * x, const SDTOSCArgumentList *args) {      \
    char *name = malloc(sizeof(char) * (strlen(key) + 8));                \
    sprintf(name, "'%s'", key);                                           \
    json_value *obj = CONCAT(SDT_TYPE_FULL(SDT_TYPE), _toJSON)(x);        \
    SDTOSCReturnCode return_code = SDTOSCJSON_save(log, name, obj, args); \
    json_builder_free(obj);                                               \
    free(name);                                                           \
    return return_code;                                                   \
  }

/** @brief Define the OSC load method declaration
@param[in] SDT_TYPE The SDT type macro */
#define SDT_OSC_LOAD_H(SDT_TYPE)                                   \
  extern SDTOSCReturnCode CONCAT(CONCAT(SDTOSC, SDT_TYPE), _load)( \
      void (*log)(const char *, ...), const char *key,             \
      SDT_TYPE_FULL(SDT_TYPE) * x, const SDTOSCArgumentList *args);

/** @brief Define the OSC load method
@param[in] SDT_TYPE The SDT type macro */
#define SDT_OSC_LOAD(SDT_TYPE)                                             \
  SDTOSCReturnCode CONCAT(CONCAT(SDTOSC, SDT_TYPE), _load)(                \
      void (*log)(const char *, ...), const char *key,                     \
      SDT_TYPE_FULL(SDT_TYPE) * x, const SDTOSCArgumentList *args) {       \
    json_value *obj;                                                       \
    char *name = malloc(sizeof(char) * (strlen(key) + 8));                 \
    sprintf(name, "'%s'", key);                                            \
    SDTOSCReturnCode return_code = SDTOSCJSON_load(log, name, &obj, args); \
    free(name);                                                            \
    if (return_code == SDT_OSC_RETURN_OK) {                                \
      SDT_TYPE_FULL(SDT_TYPE) *r =                                         \
          CONCAT(SDT_TYPE_FULL(SDT_TYPE), _fromJSON)(obj);                 \
      CONCAT(SDT_TYPE_FULL(SDT_TYPE), _copy)(x, r);                        \
      CONCAT(SDT_TYPE_FULL(SDT_TYPE), _free)(r);                           \
    }                                                                      \
    if (obj) json_builder_free(obj);                                       \
    return return_code;                                                    \
  }

#define OSC_TYPE_integer Float
#define OSC_TYPE_double Float
#define OSC_TYPE(T) OSC_TYPE_##T

#define SDT_OSC_TYPE_SETTER_H(SDT_TYPE, F, T, S, K, J, D)                    \
  extern SDTOSCReturnCode CONCAT(CONCAT(SDTOSC, SDT_TYPE), CONCAT(_set, S))( \
      SDT_TYPE_FULL(SDT_TYPE) * x, const SDTOSCArgumentList *args);

#define SDT_OSC_TYPE_SETTER(SDT_TYPE, F, T, S, K, J, D)               \
  SDTOSCReturnCode CONCAT(CONCAT(SDTOSC, SDT_TYPE), CONCAT(_set, S))( \
      SDT_TYPE_FULL(SDT_TYPE) * x, const SDTOSCArgumentList *args) {  \
    if (SDTOSCArgumentList_getNArgs(args) < 1 ||                      \
        !CONCAT(SDTOSCArgumentList_is, OSC_TYPE(J))(args, 0))         \
      return SDT_OSC_RETURN_ARGUMENT_ERROR;                           \
    CONCAT(SDT_TYPE_FULL(SDT_TYPE), CONCAT(_set, S))                  \
    (x, (T)CONCAT(SDTOSCArgumentList_get, OSC_TYPE(J))(args, 0));     \
    return SDT_OSC_RETURN_OK;                                         \
  }

/** @brief Define the OSC setter methods
@param[in] SDT_TYPE The SDT type macro */
#define SDT_OSC_TYPE_MAKE_SETTERS(SDT_TYPE) \
  SDT_TYPE##_ATTRIBUTES(SDT_TYPE, SDT_OSC_TYPE_SETTER)

/** @brief Define the OSC setter methods declarations
@param[in] SDT_TYPE The SDT type macro */
#define SDT_OSC_TYPE_MAKE_SETTERS_H(SDT_TYPE) \
  SDT_TYPE##_ATTRIBUTES(SDT_TYPE, SDT_OSC_TYPE_SETTER_H)

/** @} */

extern SDTOSCReturnCode SDTOSCBiquad_log(void (*log)(const char *, ...),
                                         const char *key, SDTBiquad *x);

extern SDTOSCReturnCode SDTOSCBiquad_save(void (*log)(const char *, ...),
                                          const char *key, SDTBiquad *x,
                                          const SDTOSCArgumentList *args);

extern SDTOSCReturnCode SDTOSCBiquad_load(void (*log)(const char *, ...),
                                          const char *key, SDTBiquad *x,
                                          const SDTOSCArgumentList *args);

extern SDTOSCReturnCode SDTOSCBiquad(void (*log)(const char *, ...),
                                     const SDTOSCMessage *x);

extern SDTOSCReturnCode SDTOSCBouncing_log(void (*log)(const char *, ...),
                                           const char *key, SDTBouncing *x);

extern SDTOSCReturnCode SDTOSCBouncing_save(void (*log)(const char *, ...),
                                            const char *key, SDTBouncing *x,
                                            const SDTOSCArgumentList *args);

extern SDTOSCReturnCode SDTOSCBouncing_load(void (*log)(const char *, ...),
                                            const char *key, SDTBouncing *x,
                                            const SDTOSCArgumentList *args);

extern SDTOSCReturnCode SDTOSCBouncing_setRestitution(
    SDTBouncing *x, const SDTOSCArgumentList *args);

extern SDTOSCReturnCode SDTOSCBouncing_setHeight(
    SDTBouncing *x, const SDTOSCArgumentList *args);

extern SDTOSCReturnCode SDTOSCBouncing_setIrregularity(
    SDTBouncing *x, const SDTOSCArgumentList *args);

extern SDTOSCReturnCode SDTOSCBouncing(void (*log)(const char *, ...),
                                       const SDTOSCMessage *x);

extern SDTOSCReturnCode SDTOSCBreaking_log(void (*log)(const char *, ...),
                                           const char *key, SDTBreaking *x);

extern SDTOSCReturnCode SDTOSCBreaking_save(void (*log)(const char *, ...),
                                            const char *key, SDTBreaking *x,
                                            const SDTOSCArgumentList *args);

extern SDTOSCReturnCode SDTOSCBreaking_load(void (*log)(const char *, ...),
                                            const char *key, SDTBreaking *x,
                                            const SDTOSCArgumentList *args);

extern SDTOSCReturnCode SDTOSCBreaking_setStoredEnergy(
    SDTBreaking *x, const SDTOSCArgumentList *args);

extern SDTOSCReturnCode SDTOSCBreaking_setCrushingEnergy(
    SDTBreaking *x, const SDTOSCArgumentList *args);

extern SDTOSCReturnCode SDTOSCBreaking_setGranularity(
    SDTBreaking *x, const SDTOSCArgumentList *args);

extern SDTOSCReturnCode SDTOSCBreaking_setFragmentation(
    SDTBreaking *x, const SDTOSCArgumentList *args);

extern SDTOSCReturnCode SDTOSCBreaking(void (*log)(const char *, ...),
                                       const SDTOSCMessage *x);

extern SDTOSCReturnCode SDTOSCBubble_log(void (*log)(const char *, ...),
                                         const char *key, SDTBubble *x);

extern SDTOSCReturnCode SDTOSCBubble_save(void (*log)(const char *, ...),
                                          const char *key, SDTBubble *x,
                                          const SDTOSCArgumentList *args);

extern SDTOSCReturnCode SDTOSCBubble_load(void (*log)(const char *, ...),
                                          const char *key, SDTBubble *x,
                                          const SDTOSCArgumentList *args);

extern SDTOSCReturnCode SDTOSCBubble_setRadius(SDTBubble *x,
                                               const SDTOSCArgumentList *args);

extern SDTOSCReturnCode SDTOSCBubble_setRiseFactor(
    SDTBubble *x, const SDTOSCArgumentList *args);

extern SDTOSCReturnCode SDTOSCBubble_setDepth(SDTBubble *x,
                                              const SDTOSCArgumentList *args);

extern SDTOSCReturnCode SDTOSCBubble(void (*log)(const char *, ...),
                                     const SDTOSCMessage *x);

extern SDTOSCReturnCode SDTOSCCrumpling_log(void (*log)(const char *, ...),
                                            const char *key, SDTCrumpling *x);

extern SDTOSCReturnCode SDTOSCCrumpling_save(void (*log)(const char *, ...),
                                             const char *key, SDTCrumpling *x,
                                             const SDTOSCArgumentList *args);

extern SDTOSCReturnCode SDTOSCCrumpling_load(void (*log)(const char *, ...),
                                             const char *key, SDTCrumpling *x,
                                             const SDTOSCArgumentList *args);

extern SDTOSCReturnCode SDTOSCCrumpling_setCrushingEnergy(
    SDTCrumpling *x, const SDTOSCArgumentList *args);

extern SDTOSCReturnCode SDTOSCCrumpling_setGranularity(
    SDTCrumpling *x, const SDTOSCArgumentList *args);

extern SDTOSCReturnCode SDTOSCCrumpling_setFragmentation(
    SDTCrumpling *x, const SDTOSCArgumentList *args);

extern SDTOSCReturnCode SDTOSCCrumpling(void (*log)(const char *, ...),
                                        const SDTOSCMessage *x);

extern SDTOSCReturnCode SDTOSCDCMotor_log(void (*log)(const char *, ...),
                                          const char *key, SDTDCMotor *x);

extern SDTOSCReturnCode SDTOSCDCMotor_save(void (*log)(const char *, ...),
                                           const char *key, SDTDCMotor *x,
                                           const SDTOSCArgumentList *args);

extern SDTOSCReturnCode SDTOSCDCMotor_load(void (*log)(const char *, ...),
                                           const char *key, SDTDCMotor *x,
                                           const SDTOSCArgumentList *args);

extern SDTOSCReturnCode SDTOSCDCMotor_setMaxSize(
    SDTDCMotor *x, const SDTOSCArgumentList *args);

extern SDTOSCReturnCode SDTOSCDCMotor_setCoils(SDTDCMotor *x,
                                               const SDTOSCArgumentList *args);

extern SDTOSCReturnCode SDTOSCDCMotor_setSize(SDTDCMotor *x,
                                              const SDTOSCArgumentList *args);

extern SDTOSCReturnCode SDTOSCDCMotor_setReson(SDTDCMotor *x,
                                               const SDTOSCArgumentList *args);

extern SDTOSCReturnCode SDTOSCDCMotor_setGearRatio(
    SDTDCMotor *x, const SDTOSCArgumentList *args);

extern SDTOSCReturnCode SDTOSCDCMotor_setHarshness(
    SDTDCMotor *x, const SDTOSCArgumentList *args);

extern SDTOSCReturnCode SDTOSCDCMotor_setRotorGain(
    SDTDCMotor *x, const SDTOSCArgumentList *args);

extern SDTOSCReturnCode SDTOSCDCMotor_setGearGain(
    SDTDCMotor *x, const SDTOSCArgumentList *args);

extern SDTOSCReturnCode SDTOSCDCMotor_setBrushGain(
    SDTDCMotor *x, const SDTOSCArgumentList *args);

extern SDTOSCReturnCode SDTOSCDCMotor_setAirGain(
    SDTDCMotor *x, const SDTOSCArgumentList *args);

extern SDTOSCReturnCode SDTOSCDCMotor(void (*log)(const char *, ...),
                                      const SDTOSCMessage *x);

extern SDTOSCReturnCode SDTOSCDemix_log(void (*log)(const char *, ...),
                                        const char *key, SDTDemix *x);

extern SDTOSCReturnCode SDTOSCDemix_save(void (*log)(const char *, ...),
                                         const char *key, SDTDemix *x,
                                         const SDTOSCArgumentList *args);

extern SDTOSCReturnCode SDTOSCDemix_load(void (*log)(const char *, ...),
                                         const char *key, SDTDemix *x,
                                         const SDTOSCArgumentList *args);

extern SDTOSCReturnCode SDTOSCDemix_setSize(SDTDemix *x,
                                            const SDTOSCArgumentList *args);

extern SDTOSCReturnCode SDTOSCDemix_setRadius(SDTDemix *x,
                                              const SDTOSCArgumentList *args);

extern SDTOSCReturnCode SDTOSCDemix_setOverlap(SDTDemix *x,
                                               const SDTOSCArgumentList *args);

extern SDTOSCReturnCode SDTOSCDemix_setNoiseThreshold(
    SDTDemix *x, const SDTOSCArgumentList *args);

extern SDTOSCReturnCode SDTOSCDemix_setTonalThreshold(
    SDTDemix *x, const SDTOSCArgumentList *args);

extern SDTOSCReturnCode SDTOSCDemix(void (*log)(const char *, ...),
                                    const SDTOSCMessage *x);

extern SDTOSCReturnCode SDTOSCEnvelope_log(void (*log)(const char *, ...),
                                           const char *key, SDTEnvelope *x);

extern SDTOSCReturnCode SDTOSCEnvelope_save(void (*log)(const char *, ...),
                                            const char *key, SDTEnvelope *x,
                                            const SDTOSCArgumentList *args);

extern SDTOSCReturnCode SDTOSCEnvelope_load(void (*log)(const char *, ...),
                                            const char *key, SDTEnvelope *x,
                                            const SDTOSCArgumentList *args);

extern SDTOSCReturnCode SDTOSCEnvelope_setAttack(
    SDTEnvelope *x, const SDTOSCArgumentList *args);

extern SDTOSCReturnCode SDTOSCEnvelope_setRelease(
    SDTEnvelope *x, const SDTOSCArgumentList *args);

extern SDTOSCReturnCode SDTOSCEnvelope(void (*log)(const char *, ...),
                                       const SDTOSCMessage *x);

extern SDTOSCReturnCode SDTOSCExplosion_log(void (*log)(const char *, ...),
                                            const char *key, SDTExplosion *x);

extern SDTOSCReturnCode SDTOSCExplosion_save(void (*log)(const char *, ...),
                                             const char *key, SDTExplosion *x,
                                             const SDTOSCArgumentList *args);

extern SDTOSCReturnCode SDTOSCExplosion_load(void (*log)(const char *, ...),
                                             const char *key, SDTExplosion *x,
                                             const SDTOSCArgumentList *args);

extern SDTOSCReturnCode SDTOSCExplosion_setMaxScatter(
    SDTExplosion *x, const SDTOSCArgumentList *args);

extern SDTOSCReturnCode SDTOSCExplosion_setMaxDelay(
    SDTExplosion *x, const SDTOSCArgumentList *args);

extern SDTOSCReturnCode SDTOSCExplosion_setBlastTime(
    SDTExplosion *x, const SDTOSCArgumentList *args);

extern SDTOSCReturnCode SDTOSCExplosion_setScatterTime(
    SDTExplosion *x, const SDTOSCArgumentList *args);

extern SDTOSCReturnCode SDTOSCExplosion_setDispersion(
    SDTExplosion *x, const SDTOSCArgumentList *args);

extern SDTOSCReturnCode SDTOSCExplosion_setDistance(
    SDTExplosion *x, const SDTOSCArgumentList *args);

extern SDTOSCReturnCode SDTOSCExplosion_setWaveSpeed(
    SDTExplosion *x, const SDTOSCArgumentList *args);

extern SDTOSCReturnCode SDTOSCExplosion_setWindSpeed(
    SDTExplosion *x, const SDTOSCArgumentList *args);

extern SDTOSCReturnCode SDTOSCExplosion(void (*log)(const char *, ...),
                                        const SDTOSCMessage *x);

extern SDTOSCReturnCode SDTOSCFluidFlow_log(void (*log)(const char *, ...),
                                            const char *key, SDTFluidFlow *x);

extern SDTOSCReturnCode SDTOSCFluidFlow_save(void (*log)(const char *, ...),
                                             const char *key, SDTFluidFlow *x,
                                             const SDTOSCArgumentList *args);

extern SDTOSCReturnCode SDTOSCFluidFlow_load(void (*log)(const char *, ...),
                                             const char *key, SDTFluidFlow *x,
                                             const SDTOSCArgumentList *args);

extern SDTOSCReturnCode SDTOSCFluidFlow_setNBubbles(
    SDTFluidFlow *x, const SDTOSCArgumentList *args);

extern SDTOSCReturnCode SDTOSCFluidFlow_setAvgRate(
    SDTFluidFlow *x, const SDTOSCArgumentList *args);

extern SDTOSCReturnCode SDTOSCFluidFlow_setMinRadius(
    SDTFluidFlow *x, const SDTOSCArgumentList *args);

extern SDTOSCReturnCode SDTOSCFluidFlow_setMaxRadius(
    SDTFluidFlow *x, const SDTOSCArgumentList *args);

extern SDTOSCReturnCode SDTOSCFluidFlow_setExpRadius(
    SDTFluidFlow *x, const SDTOSCArgumentList *args);

extern SDTOSCReturnCode SDTOSCFluidFlow_setMinDepth(
    SDTFluidFlow *x, const SDTOSCArgumentList *args);

extern SDTOSCReturnCode SDTOSCFluidFlow_setMaxDepth(
    SDTFluidFlow *x, const SDTOSCArgumentList *args);

extern SDTOSCReturnCode SDTOSCFluidFlow_setExpDepth(
    SDTFluidFlow *x, const SDTOSCArgumentList *args);

extern SDTOSCReturnCode SDTOSCFluidFlow_setRiseFactor(
    SDTFluidFlow *x, const SDTOSCArgumentList *args);

extern SDTOSCReturnCode SDTOSCFluidFlow_setRiseCutoff(
    SDTFluidFlow *x, const SDTOSCArgumentList *args);

extern SDTOSCReturnCode SDTOSCFluidFlow(void (*log)(const char *, ...),
                                        const SDTOSCMessage *x);

extern SDTOSCReturnCode SDTOSCModalTracker_log(void (*log)(const char *, ...),
                                               const char *key,
                                               SDTModalTracker *x);

extern SDTOSCReturnCode SDTOSCModalTracker_save(void (*log)(const char *, ...),
                                                const char *key,
                                                SDTModalTracker *x,
                                                const SDTOSCArgumentList *args);

extern SDTOSCReturnCode SDTOSCModalTracker_load(void (*log)(const char *, ...),
                                                const char *key,
                                                SDTModalTracker *x,
                                                const SDTOSCArgumentList *args);

extern SDTOSCReturnCode SDTOSCModalTracker_setNModes(
    SDTModalTracker *x, const SDTOSCArgumentList *args);

extern SDTOSCReturnCode SDTOSCModalTracker_setBufferSize(
    SDTModalTracker *x, const SDTOSCArgumentList *args);

extern SDTOSCReturnCode SDTOSCModalTracker_setWinSize(
    SDTModalTracker *x, const SDTOSCArgumentList *args);

extern SDTOSCReturnCode SDTOSCModalTracker_setOverlap(
    SDTModalTracker *x, const SDTOSCArgumentList *args);

extern SDTOSCReturnCode SDTOSCModalTracker(void (*log)(const char *, ...),
                                           const SDTOSCMessage *x);

extern SDTOSCReturnCode SDTOSCMotor_log(void (*log)(const char *, ...),
                                        const char *key, SDTMotor *x);

extern SDTOSCReturnCode SDTOSCMotor_save(void (*log)(const char *, ...),
                                         const char *key, SDTMotor *x,
                                         const SDTOSCArgumentList *args);

extern SDTOSCReturnCode SDTOSCMotor_load(void (*log)(const char *, ...),
                                         const char *key, SDTMotor *x,
                                         const SDTOSCArgumentList *args);

extern SDTOSCReturnCode SDTOSCMotor_setMaxDelay(SDTMotor *x,
                                                const SDTOSCArgumentList *args);

extern SDTOSCReturnCode SDTOSCMotor_setCycle(SDTMotor *x,
                                             const SDTOSCArgumentList *args);

extern SDTOSCReturnCode SDTOSCMotor_setNCylinders(
    SDTMotor *x, const SDTOSCArgumentList *args);

extern SDTOSCReturnCode SDTOSCMotor_setCylinderSize(
    SDTMotor *x, const SDTOSCArgumentList *args);

extern SDTOSCReturnCode SDTOSCMotor_setCompressionRatio(
    SDTMotor *x, const SDTOSCArgumentList *args);

extern SDTOSCReturnCode SDTOSCMotor_setSparkTime(
    SDTMotor *x, const SDTOSCArgumentList *args);

extern SDTOSCReturnCode SDTOSCMotor_setAsymmetry(
    SDTMotor *x, const SDTOSCArgumentList *args);

extern SDTOSCReturnCode SDTOSCMotor_setBackfire(SDTMotor *x,
                                                const SDTOSCArgumentList *args);

extern SDTOSCReturnCode SDTOSCMotor_setIntakeSize(
    SDTMotor *x, const SDTOSCArgumentList *args);

extern SDTOSCReturnCode SDTOSCMotor_setExtractorSize(
    SDTMotor *x, const SDTOSCArgumentList *args);

extern SDTOSCReturnCode SDTOSCMotor_setExhaustSize(
    SDTMotor *x, const SDTOSCArgumentList *args);

extern SDTOSCReturnCode SDTOSCMotor_setExpansion(
    SDTMotor *x, const SDTOSCArgumentList *args);

extern SDTOSCReturnCode SDTOSCMotor_setMufflerSize(
    SDTMotor *x, const SDTOSCArgumentList *args);

extern SDTOSCReturnCode SDTOSCMotor_setMufflerFeedback(
    SDTMotor *x, const SDTOSCArgumentList *args);

extern SDTOSCReturnCode SDTOSCMotor_setOutletSize(
    SDTMotor *x, const SDTOSCArgumentList *args);

extern SDTOSCReturnCode SDTOSCMotor(void (*log)(const char *, ...),
                                    const SDTOSCMessage *x);

extern SDTOSCReturnCode SDTOSCMyoelastic_log(void (*log)(const char *, ...),
                                             const char *key, SDTMyoelastic *x);

extern SDTOSCReturnCode SDTOSCMyoelastic_save(void (*log)(const char *, ...),
                                              const char *key, SDTMyoelastic *x,
                                              const SDTOSCArgumentList *args);

extern SDTOSCReturnCode SDTOSCMyoelastic_load(void (*log)(const char *, ...),
                                              const char *key, SDTMyoelastic *x,
                                              const SDTOSCArgumentList *args);

extern SDTOSCReturnCode SDTOSCMyoelastic_setDcFrequency(
    SDTMyoelastic *x, const SDTOSCArgumentList *args);

extern SDTOSCReturnCode SDTOSCMyoelastic_setLowFrequency(
    SDTMyoelastic *x, const SDTOSCArgumentList *args);

extern SDTOSCReturnCode SDTOSCMyoelastic_setHighFrequency(
    SDTMyoelastic *x, const SDTOSCArgumentList *args);

extern SDTOSCReturnCode SDTOSCMyoelastic_setThreshold(
    SDTMyoelastic *x, const SDTOSCArgumentList *args);

extern SDTOSCReturnCode SDTOSCMyoelastic(void (*log)(const char *, ...),
                                         const SDTOSCMessage *x);

extern SDTOSCReturnCode SDTOSCPitch_log(void (*log)(const char *, ...),
                                        const char *key, SDTPitch *x);

extern SDTOSCReturnCode SDTOSCPitch_save(void (*log)(const char *, ...),
                                         const char *key, SDTPitch *x,
                                         const SDTOSCArgumentList *args);

extern SDTOSCReturnCode SDTOSCPitch_load(void (*log)(const char *, ...),
                                         const char *key, SDTPitch *x,
                                         const SDTOSCArgumentList *args);

extern SDTOSCReturnCode SDTOSCPitch_setSize(SDTPitch *x,
                                            const SDTOSCArgumentList *args);

extern SDTOSCReturnCode SDTOSCPitch_setOverlap(SDTPitch *x,
                                               const SDTOSCArgumentList *args);

extern SDTOSCReturnCode SDTOSCPitch_setTolerance(
    SDTPitch *x, const SDTOSCArgumentList *args);

extern SDTOSCReturnCode SDTOSCPitch(void (*log)(const char *, ...),
                                    const SDTOSCMessage *x);

extern SDTOSCReturnCode SDTOSCPitchShift_log(void (*log)(const char *, ...),
                                             const char *key, SDTPitchShift *x);

extern SDTOSCReturnCode SDTOSCPitchShift_save(void (*log)(const char *, ...),
                                              const char *key, SDTPitchShift *x,
                                              const SDTOSCArgumentList *args);

extern SDTOSCReturnCode SDTOSCPitchShift_load(void (*log)(const char *, ...),
                                              const char *key, SDTPitchShift *x,
                                              const SDTOSCArgumentList *args);

extern SDTOSCReturnCode SDTOSCPitchShift_setSize(
    SDTPitchShift *x, const SDTOSCArgumentList *args);

extern SDTOSCReturnCode SDTOSCPitchShift_setOversample(
    SDTPitchShift *x, const SDTOSCArgumentList *args);

extern SDTOSCReturnCode SDTOSCPitchShift_setRatio(
    SDTPitchShift *x, const SDTOSCArgumentList *args);

extern SDTOSCReturnCode SDTOSCPitchShift_setOverlap(
    SDTPitchShift *x, const SDTOSCArgumentList *args);

extern SDTOSCReturnCode SDTOSCPitchShift(void (*log)(const char *, ...),
                                         const SDTOSCMessage *x);

extern SDTOSCReturnCode SDTOSCReverb_log(void (*log)(const char *, ...),
                                         const char *key, SDTReverb *x);

extern SDTOSCReturnCode SDTOSCReverb_save(void (*log)(const char *, ...),
                                          const char *key, SDTReverb *x,
                                          const SDTOSCArgumentList *args);

extern SDTOSCReturnCode SDTOSCReverb_load(void (*log)(const char *, ...),
                                          const char *key, SDTReverb *x,
                                          const SDTOSCArgumentList *args);

extern SDTOSCReturnCode SDTOSCReverb_setMaxDelay(
    SDTReverb *x, const SDTOSCArgumentList *args);

extern SDTOSCReturnCode SDTOSCReverb_setXSize(SDTReverb *x,
                                              const SDTOSCArgumentList *args);

extern SDTOSCReturnCode SDTOSCReverb_setYSize(SDTReverb *x,
                                              const SDTOSCArgumentList *args);

extern SDTOSCReturnCode SDTOSCReverb_setZSize(SDTReverb *x,
                                              const SDTOSCArgumentList *args);

extern SDTOSCReturnCode SDTOSCReverb_setRandomness(
    SDTReverb *x, const SDTOSCArgumentList *args);

extern SDTOSCReturnCode SDTOSCReverb_setTime(SDTReverb *x,
                                             const SDTOSCArgumentList *args);

extern SDTOSCReturnCode SDTOSCReverb_setTime1k(SDTReverb *x,
                                               const SDTOSCArgumentList *args);

extern SDTOSCReturnCode SDTOSCReverb(void (*log)(const char *, ...),
                                     const SDTOSCMessage *x);

extern SDTOSCReturnCode SDTOSCRolling_log(void (*log)(const char *, ...),
                                          const char *key, SDTRolling *x);

extern SDTOSCReturnCode SDTOSCRolling_save(void (*log)(const char *, ...),
                                           const char *key, SDTRolling *x,
                                           const SDTOSCArgumentList *args);

extern SDTOSCReturnCode SDTOSCRolling_load(void (*log)(const char *, ...),
                                           const char *key, SDTRolling *x,
                                           const SDTOSCArgumentList *args);

extern SDTOSCReturnCode SDTOSCRolling_setGrain(SDTRolling *x,
                                               const SDTOSCArgumentList *args);

extern SDTOSCReturnCode SDTOSCRolling_setDepth(SDTRolling *x,
                                               const SDTOSCArgumentList *args);

extern SDTOSCReturnCode SDTOSCRolling_setMass(SDTRolling *x,
                                              const SDTOSCArgumentList *args);

extern SDTOSCReturnCode SDTOSCRolling_setVelocity(
    SDTRolling *x, const SDTOSCArgumentList *args);

extern SDTOSCReturnCode SDTOSCRolling(void (*log)(const char *, ...),
                                      const SDTOSCMessage *x);

extern SDTOSCReturnCode SDTOSCScraping_log(void (*log)(const char *, ...),
                                           const char *key, SDTScraping *x);

extern SDTOSCReturnCode SDTOSCScraping_save(void (*log)(const char *, ...),
                                            const char *key, SDTScraping *x,
                                            const SDTOSCArgumentList *args);

extern SDTOSCReturnCode SDTOSCScraping_load(void (*log)(const char *, ...),
                                            const char *key, SDTScraping *x,
                                            const SDTOSCArgumentList *args);

extern SDTOSCReturnCode SDTOSCScraping_setGrain(SDTScraping *x,
                                                const SDTOSCArgumentList *args);

extern SDTOSCReturnCode SDTOSCScraping_setForce(SDTScraping *x,
                                                const SDTOSCArgumentList *args);

extern SDTOSCReturnCode SDTOSCScraping_setVelocity(
    SDTScraping *x, const SDTOSCArgumentList *args);

extern SDTOSCReturnCode SDTOSCScraping(void (*log)(const char *, ...),
                                       const SDTOSCMessage *x);

extern SDTOSCReturnCode SDTOSCSpectralFeats_log(void (*log)(const char *, ...),
                                                const char *key,
                                                SDTSpectralFeats *x);

extern SDTOSCReturnCode SDTOSCSpectralFeats_save(
    void (*log)(const char *, ...), const char *key, SDTSpectralFeats *x,
    const SDTOSCArgumentList *args);

extern SDTOSCReturnCode SDTOSCSpectralFeats_load(
    void (*log)(const char *, ...), const char *key, SDTSpectralFeats *x,
    const SDTOSCArgumentList *args);

extern SDTOSCReturnCode SDTOSCSpectralFeats_setSize(
    SDTSpectralFeats *x, const SDTOSCArgumentList *args);

extern SDTOSCReturnCode SDTOSCSpectralFeats_setOverlap(
    SDTSpectralFeats *x, const SDTOSCArgumentList *args);

extern SDTOSCReturnCode SDTOSCSpectralFeats_setMinFreq(
    SDTSpectralFeats *x, const SDTOSCArgumentList *args);

extern SDTOSCReturnCode SDTOSCSpectralFeats_setMaxFreq(
    SDTSpectralFeats *x, const SDTOSCArgumentList *args);

extern SDTOSCReturnCode SDTOSCSpectralFeats(void (*log)(const char *, ...),
                                            const SDTOSCMessage *x);

extern SDTOSCReturnCode SDTOSCWindCavity_log(void (*log)(const char *, ...),
                                             const char *key, SDTWindCavity *x);

extern SDTOSCReturnCode SDTOSCWindCavity_save(void (*log)(const char *, ...),
                                              const char *key, SDTWindCavity *x,
                                              const SDTOSCArgumentList *args);

extern SDTOSCReturnCode SDTOSCWindCavity_load(void (*log)(const char *, ...),
                                              const char *key, SDTWindCavity *x,
                                              const SDTOSCArgumentList *args);

extern SDTOSCReturnCode SDTOSCWindCavity_setMaxDelay(
    SDTWindCavity *x, const SDTOSCArgumentList *args);

extern SDTOSCReturnCode SDTOSCWindCavity_setLength(
    SDTWindCavity *x, const SDTOSCArgumentList *args);

extern SDTOSCReturnCode SDTOSCWindCavity_setDiameter(
    SDTWindCavity *x, const SDTOSCArgumentList *args);

extern SDTOSCReturnCode SDTOSCWindCavity(void (*log)(const char *, ...),
                                         const SDTOSCMessage *x);

extern SDTOSCReturnCode SDTOSCWindKarman_log(void (*log)(const char *, ...),
                                             const char *key, SDTWindKarman *x);

extern SDTOSCReturnCode SDTOSCWindKarman_save(void (*log)(const char *, ...),
                                              const char *key, SDTWindKarman *x,
                                              const SDTOSCArgumentList *args);

extern SDTOSCReturnCode SDTOSCWindKarman_load(void (*log)(const char *, ...),
                                              const char *key, SDTWindKarman *x,
                                              const SDTOSCArgumentList *args);

extern SDTOSCReturnCode SDTOSCWindKarman_setDiameter(
    SDTWindKarman *x, const SDTOSCArgumentList *args);

extern SDTOSCReturnCode SDTOSCWindKarman(void (*log)(const char *, ...),
                                         const SDTOSCMessage *x);

extern SDTOSCReturnCode SDTOSCWindFlow_log(void (*log)(const char *, ...),
                                           const char *key, SDTWindFlow *x);

extern SDTOSCReturnCode SDTOSCWindFlow_save(void (*log)(const char *, ...),
                                            const char *key, SDTWindFlow *x,
                                            const SDTOSCArgumentList *args);

extern SDTOSCReturnCode SDTOSCWindFlow_load(void (*log)(const char *, ...),
                                            const char *key, SDTWindFlow *x,
                                            const SDTOSCArgumentList *args);

extern SDTOSCReturnCode SDTOSCWindFlow(void (*log)(const char *, ...),
                                       const SDTOSCMessage *x);

extern SDTOSCReturnCode SDTOSCZeroCrossing_log(void (*log)(const char *, ...),
                                               const char *key,
                                               SDTZeroCrossing *x);

extern SDTOSCReturnCode SDTOSCZeroCrossing_save(void (*log)(const char *, ...),
                                                const char *key,
                                                SDTZeroCrossing *x,
                                                const SDTOSCArgumentList *args);

extern SDTOSCReturnCode SDTOSCZeroCrossing_load(void (*log)(const char *, ...),
                                                const char *key,
                                                SDTZeroCrossing *x,
                                                const SDTOSCArgumentList *args);

extern SDTOSCReturnCode SDTOSCZeroCrossing_setSize(
    SDTZeroCrossing *x, const SDTOSCArgumentList *args);

extern SDTOSCReturnCode SDTOSCZeroCrossing_setOverlap(
    SDTZeroCrossing *x, const SDTOSCArgumentList *args);

extern SDTOSCReturnCode SDTOSCZeroCrossing(void (*log)(const char *, ...),
                                           const SDTOSCMessage *x);

#ifdef __cplusplus
};
#endif

#endif

/** @} */
