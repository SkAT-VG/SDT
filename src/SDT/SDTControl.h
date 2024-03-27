#include "SDTCommonMacros.h"
#include "SDTJSON.h"

/** @file SDTControl.h
@defgroup control SDTControl.h: Compound solid interactions
Objects designed to provide a temporal control layer over basic mechanical
interactions, to simulate complex textures, evolving patterns and compound sound
events.
@{ */

#ifndef SDT_CONTROL_H
#define SDT_CONTROL_H

#ifdef __cplusplus
extern "C" {
#endif

/** @defgroup bouncing Bouncing
Control layer for the impact model, generating (irregular) bouncing sonic
textures. The output should be used to control the impact velocity between two
resonators.
@{ */

/** @brief Opaque data structure for the bouncing process. */
typedef struct SDTBouncing SDTBouncing;

/** @brief Object constructor.
@return Pointer to the new instance */
extern SDTBouncing *SDTBouncing_new();

/** @brief Object destructor.
@param[in] x Pointer to the instance to destroy */
extern void SDTBouncing_free(SDTBouncing *x);

/** @brief Deep-copies a bouncing process.
@param[in] dest Pointer to the instance to modify
@param[in] src Pointer to the instance to copy
@param[in] unsafe If false, do not perform any memory-related changes
@return Pointer to destination instance */
extern SDTBouncing *SDTBouncing_copy(SDTBouncing *dest, const SDTBouncing *src,
                                     unsigned char unsafe);

/** @brief Registers a bouncing process into the bouncing processes list with a
unique ID.
@param[in] x Bouncing instance to register
@param[in] key Unique ID assigned to the bouncing process instance
@return Zero on success, otherwise one */
extern int SDT_registerBouncing(SDTBouncing *x, const char *key);

/** @brief Queries the bouncing processes list by its unique ID.
If a bouncing process with the ID is present, a pointer to the bouncing process
is returned. Otherwise, a NULL pointer is returned.
@param[in] key Unique ID assigned to the bouncing process instance
@return Bouncing instance pointer */
extern SDTBouncing *SDT_getBouncing(const char *key);

/** @brief Unregisters a bouncing process from the bouncing processes list. If a
bouncing process with the given ID is present, it is unregistered from the list.
@param[in] key Unique ID of the bouncing process instance to unregister
@return Zero on success, otherwise one */
extern int SDT_unregisterBouncing(const char *key);

/** @brief Gets the coefficient of restitution.
@return Coefficient of restitution of the bouncing process */
extern double SDTBouncing_getRestitution(const SDTBouncing *x);

/** @brief Gets the initial height of the falling object.
@return Object height, in m. */
extern double SDTBouncing_getHeight(const SDTBouncing *x);

/** @brief Gets the irregularity of the shape of the object.
@return Object shape irregularity (deviation from a spherical shape) [0,1] */
extern double SDTBouncing_getIrregularity(const SDTBouncing *x);

/** @brief Represent a bouncing process as a JSON object.
@param[in] x Pointer to the instance
@return JSON object */
extern json_value *SDTBouncing_toJSON(const SDTBouncing *x);

/** @brief Initialize a bouncing process from a JSON object.
@param[in] x Pointer to the instance
@return JSON object */
extern SDTBouncing *SDTBouncing_fromJSON(const json_value *x);

/** @brief Set parameters of a bouncing process from a JSON object.
@param[in] x Pointer to the instance
@param[in] j JSON object
@param[in] unsafe If false, do not perform any memory-related changes
@return Pointer to destination instance */
extern SDTBouncing *SDTBouncing_setParams(SDTBouncing *x, const json_value *j,
                                          unsigned char unsafe);

/** @brief Sets the coefficient of restitution.
@param[in] f Coefficient of restitution of the bouncing process */
extern void SDTBouncing_setRestitution(SDTBouncing *x, double f);

/** @brief Sets the initial height of the falling object.
@param[in] f Object height, in m. */
extern void SDTBouncing_setHeight(SDTBouncing *x, double f);

/** @brief Sets the irregularity of the shape of the object.
@param[in] f Object shape irregularity (deviation from a spherical shape) [0,1]
*/
extern void SDTBouncing_setIrregularity(SDTBouncing *x, double f);

/** @brief Resets the bouncing process, restoring its initial energy */
extern void SDTBouncing_reset(SDTBouncing *x);

/** @brief Single iteration of the whole buncing process.
Call this routine in a loop to simulate the bouncing process.
The loop should end when SDTBouncing_hasFinished() returns true.
@return Impact velocity of the bounce */
extern double SDTBouncing_dsp(SDTBouncing *x);

/** @brief Checks if the bouncing process is finished, i.e. if the remaining
energy is 0.
@return 1 (true) if the remaining energy is <= 0, 0 (false) otherwise. */
extern int SDTBouncing_hasFinished(SDTBouncing *x);

/** @} */

/** @defgroup breaking Breaking
Control layer for the impact model, generating breaking sonic textures.
Two main outputs are exposed: energy and size. The former should be used to
control the impact velocity, the latter should be used to control the size of
the resonators.
@{ */

/** @brief Opaque data structure for the breaking object. */
typedef struct SDTBreaking SDTBreaking;

/** @brief Object constructor.
@return Pointer to the new instance */
extern SDTBreaking *SDTBreaking_new();

/** @brief Object destructor.
@param[in] x Pointer to the instance to destroy */
extern void SDTBreaking_free(SDTBreaking *x);

/** @brief Deep-copies a breaking process.
@param[in] dest Pointer to the instance to modify
@param[in] src Pointer to the instance to copy
@param[in] unsafe If false, do not perform any memory-related changes
@return Pointer to destination instance */
extern SDTBreaking *SDTBreaking_copy(SDTBreaking *dest, const SDTBreaking *src,
                                     unsigned char unsafe);

/** @brief Registers a breaking process into the breaking processes list with a
unique ID.
@param[in] x Breaking instance to register
@param[in] key Unique ID assigned to the breaking process instance
@return Zero on success, otherwise one */
extern int SDT_registerBreaking(SDTBreaking *x, const char *key);

/** @brief Queries the breaking processes list by its unique ID.
If a breaking process with the ID is present, a pointer to the breaking process
is returned. Otherwise, a NULL pointer is returned.
@param[in] key Unique ID assigned to the breaking process instance
@return Breaking instance pointer */
extern SDTBreaking *SDT_getBreaking(const char *key);

/** @brief Unregisters a breaking process from the breaking processes list. If a
breaking process with the given ID is present, it is unregistered from the list.
@param[in] key Unique ID of the breaking process instance to unregister
@return Zero on success, otherwise one */
extern int SDT_unregisterBreaking(const char *key);

/** @brief Gets the total stored energy.
@return Total stored energy of the breaking process */
extern double SDTBreaking_getStoredEnergy(const SDTBreaking *x);

/** @brief Gets the crushing energy.
@return Average energy of the micro impacts */
extern double SDTBreaking_getCrushingEnergy(const SDTBreaking *x);

/** @brief Gets the event density.
@return Event density of the breaking process */
extern double SDTBreaking_getGranularity(const SDTBreaking *x);

/** @brief Gets the amount of progressive fragmentation.
@return Amount of progressive fragmentation of the object during the breaking
process */
extern double SDTBreaking_getFragmentation(const SDTBreaking *x);

/** @brief Represent a breaking process as a JSON object.
@param[in] x Pointer to the instance
@return JSON object */
extern json_value *SDTBreaking_toJSON(const SDTBreaking *x);

/** @brief Initialize a breaking process from a JSON object.
@param[in] x Pointer to the instance
@return JSON object */
extern SDTBreaking *SDTBreaking_fromJSON(const json_value *x);

/** @brief Set parameters of a breaking process from a JSON object.
@param[in] x Pointer to the instance
@param[in] j JSON object
@param[in] unsafe If false, do not perform any memory-related changes
@return Pointer to destination instance */
extern SDTBreaking *SDTBreaking_setParams(SDTBreaking *x, const json_value *j,
                                          unsigned char unsafe);

/** @brief Sets the total energy stored in the object.
@param[in] f Total stored energy consumed by the micro impacts, in N */
extern void SDTBreaking_setStoredEnergy(SDTBreaking *x, double f);

/** @brief Sets the crushing energy.
@param[in] f Average energy of the micro impacts, compared to the global energy
of the process, in N */
extern void SDTBreaking_setCrushingEnergy(SDTBreaking *x, double f);

/** @brief Sets the event density of the breaking process.
@param[in] f Event density [0, 1] */
extern void SDTBreaking_setGranularity(SDTBreaking *x, double f);

/** @brief Sets the amount of progressive fragmentation of the object during the
process.
@param[in] f Object fragmentation [0, 1] */
extern void SDTBreaking_setFragmentation(SDTBreaking *x, double f);

/** @brief Resets the breaking process, restoring its initial energy
and triggering the first micro impact.
@param[out] outs Pointer to the output array: impact energy and fragment size */
extern void SDTBreaking_reset(SDTBreaking *x);

/** @brief Single iteration of the whole breaking process.
Call this routine in a loop to simulate a breaking process.
The loop should end when SDTBreaking_hasFinished() returns true.
@param[out] outs Pointer to the output array: impact energy and fragment size */
extern void SDTBreaking_dsp(SDTBreaking *x, double *outs);

/** @brief Checks if the breaking process is finished, i.e. if the remaining
energy is 0.
@return 1 (true) if the remaining energy is <= 0, 0 (false) otherwise. */
extern int SDTBreaking_hasFinished(SDTBreaking *x);

/** @} */

/** @defgroup crumpling Crumpling
Control layer for the impact model, generating crumpling sonic textures.
Two main outputs are exposed: energy and size. The former should be used to
control the impact velocity, the latter should be used to control the size of
the resonators.
@{ */

/** @brief Opaque data structure for the crumpling object. */
typedef struct SDTCrumpling SDTCrumpling;

/** @brief Object constructor.
@return Pointer to the new instance */
extern SDTCrumpling *SDTCrumpling_new();

/** @brief Object destructor.
@param[in] x Pointer to the instance to destroy */
extern void SDTCrumpling_free(SDTCrumpling *x);

/** @brief Deep-copies a crumpling process.
@param[in] dest Pointer to the instance to modify
@param[in] src Pointer to the instance to copy
@param[in] unsafe If false, do not perform any memory-related changes
@return Pointer to destination instance */
extern SDTCrumpling *SDTCrumpling_copy(SDTCrumpling *dest,
                                       const SDTCrumpling *src,
                                       unsigned char unsafe);

/** @brief Registers a crumpling process into the crumpling processes list with
a unique ID.
@param[in] x Crumpling process instance to register
@param[in] key Unique ID assigned to the crumpling process instance
@return Zero on success, otherwise one */
extern int SDT_registerCrumpling(SDTCrumpling *x, const char *key);

/** @brief Queries the crumpling processes list by its unique ID.
If a crumpling process with the ID is present, a pointer to the crumpling
process is returned. Otherwise, a NULL pointer is returned.
@param[in] key Unique ID assigned to the crumpling process instance
@return Crumpling process instance pointer */
extern SDTCrumpling *SDT_getCrumpling(const char *key);

/** @brief Unregisters a crumpling process from the crumpling processes list. If
a crumpling process with the given ID is present, it is unregistered from the
list.
@param[in] key Unique ID of the crumpling process instance to
unregister
@return Zero on success, otherwise one */
extern int SDT_unregisterCrumpling(const char *key);

/** @brief Represent a crumpling process as a JSON object.
@param[in] x Pointer to the instance
@return JSON object */
extern json_value *SDTCrumpling_toJSON(const SDTCrumpling *x);

/** @brief Initialize a crumpling process from a JSON object.
@param[in] x JSON object
@return Pointer to the instance */
extern SDTCrumpling *SDTCrumpling_fromJSON(const json_value *x);

/** @brief Set parameters of a crumpling process from a JSON object.
@param[in] x Pointer to the instance
@param[in] j JSON object
@param[in] unsafe If false, do not perform any memory-related changes
@return Pointer to destination instance */
extern SDTCrumpling *SDTCrumpling_setParams(SDTCrumpling *x,
                                            const json_value *j,
                                            unsigned char unsafe);

/** @brief Gets the crushing energy.
@param[in] x Pointer to the instance
@return Average energy of the micro impacts */
extern double SDTCrumpling_getCrushingEnergy(const SDTCrumpling *x);

/** @brief Gets the event density of the crumpling process.
@param[in] x Pointer to the instance
@return Event density */
extern double SDTCrumpling_getGranularity(const SDTCrumpling *x);

/** @brief Gets the amount of fragmentation of the object during the process.
@param[in] x Pointer to the instance
@return Object fragmentation */
extern double SDTCrumpling_getFragmentation(const SDTCrumpling *x);

/** @brief Sets the crushing energy.
@param[in] f Average energy of the micro impacts, compared to the global energy
of the process [0, 1] */
extern void SDTCrumpling_setCrushingEnergy(SDTCrumpling *x, double f);

/** @brief Sets the event density of the crumpling process.
@param[in] f Event density [0, 1] */
extern void SDTCrumpling_setGranularity(SDTCrumpling *x, double f);

/** @brief Sets the amount of fragmentation of the object during the process.
@param[in] f Object fragmentation [0, 1] */
extern void SDTCrumpling_setFragmentation(SDTCrumpling *x, double f);

/** @brief Single iteration of a crumpling process.
Call this routine in a loop to simulate a crumpling process.
Unlike in the breaking algorithm, iterations do not cause energy loss and the
process can continue indefinitely until explicitly interrupted.
@param[out] outs Pointer to the output array: impact energy and fragment size */
extern void SDTCrumpling_dsp(SDTCrumpling *x, double *outs);

/** @} */

/** @defgroup rolling Rolling
Control layer for the impact model, generating rolling sonic textures.
The output is a force, which should be applied to an inertial mass hitting a
resonator.
@{ */

/** @brief Opaque data structure for the rolling object */
typedef struct SDTRolling SDTRolling;

/** @brief Object constructor.
@return Pointer to the new instance */
extern SDTRolling *SDTRolling_new();

/** @brief Object destructor.
@param[in] x Pointer to the instance to destroy */
extern void SDTRolling_free(SDTRolling *x);

/** @brief Deep-copies a rolling object
@param[in] dest Pointer to the instance to modify
@param[in] src Pointer to the instance to copy
@param[in] unsafe If false, do not perform any memory-related changes
@return Pointer to destination instance */
extern SDTRolling *SDTRolling_copy(SDTRolling *dest, const SDTRolling *src,
                                   unsigned char unsafe);

/** @brief Registers a rolling object into the rolling objects list with a
unique ID.
@param[in] x Rolling process instance to register
@param[in] key Unique ID assigned to the rolling object instance
@return Zero on success, otherwise one */
extern int SDT_registerRolling(SDTRolling *x, const char *key);

/** @brief Queries the rolling objects list by its unique ID. If a rolling
object with the ID is present, a pointer to the rolling object is returned.
Otherwise, a NULL pointer is returned.
@param[in] key Unique ID assigned to the rolling object instance
@return Rolling process instance pointer */
extern SDTRolling *SDT_getRolling(const char *key);

/** @brief Unregisters a rolling object from the rolling objects list. If a
rolling object with the given ID is present, it is unregistered from the list.
@param[in] key Unique ID of the rolling object instance to unregister
@return Zero on success, otherwise one */
extern int SDT_unregisterRolling(const char *key);

/** @brief Gets the grain of the surface.
@return Surface grain */
extern double SDTRolling_getGrain(const SDTRolling *x);

/** @brief Gets the average bump depth.
@return Average depth of the surface bumps */
extern double SDTRolling_getDepth(const SDTRolling *x);

/** @brief Gets the rolling mass.
@return Mass of the rolling object, in Kg */
extern double SDTRolling_getMass(const SDTRolling *x);

/** @brief Gets the rolling velocity.
@return Rolling velocity */
extern double SDTRolling_getVelocity(const SDTRolling *x);

/** @brief Represent a rolling object as a JSON object.
@param[in] x Pointer to the instance
@return JSON object */
extern json_value *SDTRolling_toJSON(const SDTRolling *x);

/** @brief Initialize a rolling object from a JSON object.
@param[in] x JSON object
@return Pointer to the instance */
extern SDTRolling *SDTRolling_fromJSON(const json_value *x);

/** @brief Set parameters of a rolling object from a JSON object.
@param[in] x Pointer to the instance
@param[in] j JSON object
@param[in] unsafe If false, do not perform any memory-related changes
@return Pointer to destination instance */
extern SDTRolling *SDTRolling_setParams(SDTRolling *x, const json_value *j,
                                        unsigned char unsafe);

/** @brief Sets the grain of the surface.
This parameter affects the density of the micro-impacts:
Lower values result in a bumpier rolling,
higher values result in a smoother rolling.
@param[in] f Surface grain [0, 1] */
extern void SDTRolling_setGrain(SDTRolling *x, double f);

/** @brief Sets the average bump depth.
This parameter affects the energy of the micro-impacts.
@param[in] f Average depth of the surface bumps */
extern void SDTRolling_setDepth(SDTRolling *x, double f);

/** @brief Sets the rolling mass.
The mass parameter of the controlled object should be updated accordingly.
@param[in] f Mass of the rolling object, in Kg */
extern void SDTRolling_setMass(SDTRolling *x, double f);

/** @brief Sets the rolling velocity.
@param[in] f Rolling velocity */
extern void SDTRolling_setVelocity(SDTRolling *x, double f);

/** @brief Signal processing routine.
Call this function at sample rate to compute the force acting on the rolling
object.
@param[in] in Surface profile, as an audio signal
@return Normal force on the exciter */
extern double SDTRolling_dsp(SDTRolling *x, double in);

/** @} */

/** @defgroup scraping Scraping
Control layer for resonators, generating scraping sonic textures.
The output is a force, which should be applied directly to a single resonator.
Interactors are not needed, although friction with another solid can be used to
add a rubbing character to the sound.
@{ */

/** @brief Opaque data structure for the scraping object */
typedef struct SDTScraping SDTScraping;

/** @brief Object constructor.
@return Pointer to the new instance */
extern SDTScraping *SDTScraping_new();

/** @brief Object destructor.
@param[in] x Pointer to the instance to destroy */
extern void SDTScraping_free(SDTScraping *x);

/** @brief Deep-copies a scraping object
@param[in] dest Pointer to the instance to modify
@param[in] src Pointer to the instance to copy
@param[in] unsafe If false, do not perform any memory-related changes
@return Pointer to destination instance */
extern SDTScraping *SDTScraping_copy(SDTScraping *dest, const SDTScraping *src,
                                     unsigned char unsafe);

/** @brief Registers a scraping object into the scraping objects list with
a unique ID.
@param[in] x Scraping process instance to register
@param[in] key Unique ID assigned to the scraping object instance
@return Zero on success, otherwise one */
extern int SDT_registerScraping(SDTScraping *x, const char *key);

/** @brief Queries the scraping objects list by its unique ID.
If a scraping object with the ID is present, a pointer to the scraping object is
returned. Otherwise, a NULL pointer is returned.
@param[in] key Unique ID assigned to the scraping object instance
@return Scraping process instance pointer */
extern SDTScraping *SDT_getScraping(const char *key);

/** @brief Unregisters a scraping object from the scraping objects list. If a
scraping object with the given ID is present, it is unregistered from the list.
@param[in] key Unique ID of the scraping object instance to unregister
@return Zero on success, otherwise one */
extern int SDT_unregisterScraping(const char *key);

/** @brief Gets the grain of the surface.
@return Surface grain */
extern double SDTScraping_getGrain(const SDTScraping *x);

/** @brief Gets the normal force of the scraping probe.
@return Normal force of the scraping probe on the resonating surface */
extern double SDTScraping_getForce(const SDTScraping *x);

/** @brief Gets the scraping velocity.
@return Scraping velocity */
extern double SDTScraping_getVelocity(const SDTScraping *x);

/** @brief Represent a scraping object as a JSON object.
@param[in] x Pointer to the instance
@return JSON object */
extern json_value *SDTScraping_toJSON(const SDTScraping *x);

/** @brief Initialize a scraping object from a JSON object.
@param[in] x JSON object
@return Pointer to the instance */
extern SDTScraping *SDTScraping_fromJSON(const json_value *x);

/** @brief Set parameters of a scraping object from a JSON object.
@param[in] x Pointer to the instance
@param[in] j JSON object
@param[in] unsafe If false, do not perform any memory-related changes
@return Pointer to destination instance */
extern SDTScraping *SDTScraping_setParams(SDTScraping *x, const json_value *j,
                                          unsigned char unsafe);

/** @brief Sets the grain of the surface.
This parameter affects the density of the micro-impacts:
Lower values result in a rougher scraping,
higher values result in a smoother scraping.
@param[in] f Surface grain [0, 1] */
extern void SDTScraping_setGrain(SDTScraping *x, double f);

/** @brief Sets the normal force of the scraping probe on the surface.
This parameter affects the energy of the micro-impacts.
@param[in] f Normal force of the scraping probe on the resonating surface */
extern void SDTScraping_setForce(SDTScraping *x, double f);

/** @brief Sets the scraping velocity.
@param[in] f Probe velocity */
extern void SDTScraping_setVelocity(SDTScraping *x, double f);

/** @brief Signal processing routine.
Call this function at sample rate to compute the force acting on the scraped
surface.
@param[in] in Surface profile, as an audio signal
@return Normal force on the resonator */
extern double SDTScraping_dsp(SDTScraping *x, double in);

/** @} */

#ifdef __cplusplus
};
#endif

#endif

/** @} */