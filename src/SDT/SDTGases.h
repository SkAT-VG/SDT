#include "SDTCommonMacros.h"
#include "SDTJSON.h"

/** @file SDTGases.h
@defgroup gases SDTGases.h: Air turbulence and explosions
Physical models to simulate wooshes, wind gusts and howls, helicopter rotors and
so on. A gas flowing in a more or less constant direction usually doesn't make
any sound by itself, its pressure variations being too slow to fall into the
audible range. Nevertheless, objects obstructing the air flow are likely to
cause turbulence at much higher frequencies, and therefore they do make sounds.
Heavily inspired by the work of Andy Farnell in his book "Designing Sound",
these models render chaotic turbulences through filtered random noise.

This module also includes the simulation of powerful explosions,
as well as objects travelling at supersonic speed
such as rifle bullets or cracking whip tails.
All these phenomena create shock waves,
namely a sudden peak in pressure followed by a negative expansion tail.
Although being highly impulsive events, explosions also generate turbulence and
other kinds of chaotic scattering which yield complex acoustic textures and have
a direct effect on the resulting sound. The SDT explosion model uses a
Friedlander waveform to render the impulsive part, and a Feedback Delay Network
reverb to simulate scattering.
@{ */

#ifndef SDT_GASES_H
#define SDT_GASES_H

#ifdef __cplusplus
extern "C" {
#endif

/** @defgroup windflow Turbulence against solid objects
One of the possible sources of turbulence is the impact on a large solid
surface. In this case, turbulence is generated due to the impact of the air
molecules on the surface and to their random change of direction caused by the
irregularities of the surface itself. The resulting sound is modeled through a
bandpass-filtered white noise generator. The center frequency and bandwidth of
the filter are empirically set to fixed values, while the resulting output is
modulated in amplitude according to the velocity of the air flow.
@{ */

/** @brief Opaque data structure for a windflow object */
typedef struct SDTWindFlow SDTWindFlow;

/** @brief Object constructor.
@return Pointer to the new instance */
extern SDTWindFlow *SDTWindFlow_new();

/** @brief Object destructor.
@param[in] x Pointer to the instance to destroy */
extern void SDTWindFlow_free(SDTWindFlow *x);

/** @brief Deep-copies a windflow
@param[in] dest Pointer to the instance to modify
@param[in] src Pointer to the instance to copy
@param[in] unsafe If false, do not perform any memory-related changes
@return Pointer to destination instance */
extern SDTWindFlow *SDTWindFlow_copy(SDTWindFlow *dest, const SDTWindFlow *src,
                                     unsigned char unsafe);

/** @brief Registers a windflow into the windflows list with a unique ID.
@param[in] x WindFlow instance to register
@param[in] key Unique ID assigned to the windflow instance */
extern int SDT_registerWindFlow(SDTWindFlow *x, const char *key);

/** @brief Queries the windflows list by its unique ID. If a windflow with the
ID is present, a pointer to the windflow is returned. Otherwise, a NULL pointer
is returned.
@param[in] key Unique ID assigned to the WindFlow instance
@return WindFlow instance pointer */
extern SDTWindFlow *SDT_getWindFlow(const char *key);

/** @brief Unregisters a windflow from the windflows list. If a windflow with
the given ID is present, it is unregistered from the list.
@param[in] key Unique ID of the WindFlow instance to unregister */
extern int SDT_unregisterWindFlow(const char *key);

/** @brief Represent a windflow as a JSON object.
@param[in] x Pointer to the instance
@return JSON object */
extern json_value *SDTWindFlow_toJSON(const SDTWindFlow *x);

/** @brief Initialize a windflow from a JSON object.
@param[in] x JSON object
@return Pointer to the instance */
extern SDTWindFlow *SDTWindFlow_fromJSON(const json_value *x);

/** @brief Set parameters of a windflow from a JSON object.
@param[in] x Pointer to the instance
@param[in] j JSON object
@param[in] unsafe If false, do not perform any memory-related changes
@return Pointer to destination instance */
extern SDTWindFlow *SDTWindFlow_setParams(SDTWindFlow *x, const json_value *j,
                                          unsigned char unsafe);

/** @brief DEPRECATED: Use #SDTWindFlow_update, instead */
extern void SDTWindFlow_setFilters(SDTWindFlow *x) __attribute__((
    deprecated("SDTWindFlow_setFilters() has been renamed SDTWindFlow_update() "
               "to be consistent with other types in the SDT library.")));

/** @brief Update filter coefficients.
Should be always called after changing the sampling rate.
@param[in] x Pointer to a SDTWindFlow instance */
extern void SDTWindFlow_update(SDTWindFlow *x);

/** @brief Gets the wind speed.
@return Wind speed */
extern double SDTWindFlow_getWindSpeed(const SDTWindFlow *x);

/** @brief Sets the wind speed.
@param[in] x Pointer to a SDTWindFlow instance
@param[in] f Wind speed [0,1] */
extern void SDTWindFlow_setWindSpeed(SDTWindFlow *x, double f);

/** @brief Signal processing routine.
Call this function at sample rate to synthesize a wind turbulence sound.
@return Computed audio sample */
extern double SDTWindFlow_dsp(SDTWindFlow *x);

/** @} */

/** @defgroup windcavity Turbulence through hollow cavities
Hollow objects such as pipes, valves, tunnels and doorways
force the air moving inside them to oscillate at their resonant frequencies,
which depend on the size and shape of the cavity itself.
Different modes of resonance can be excited, in a more or less noticeable way,
depending on the speed of the air flowing inside the tube.
For each mode of resonance there is an optimal speed,
which makes the air inside the tube resonate the most.
As the speed increases, resonance gets weaker and weaker
until it breaks up into the next harmonic.
Sound waves trapped in a cylindrical cavity can be effectively simulated using
a simple comb filter, namely a delay line with feedback.
The different excitation of the various harmonics is modeled by a resonant
bandpass filter with a high Q factor, therefore with a narrow band and a high
resonance.
@{ */

/** @brief Opaque data structure for a hollow cavity object */
typedef struct SDTWindCavity SDTWindCavity;

/** @brief Object constructor.
@param[in] maxDelay Size of the comb filter buffer, in samples.
@return Pointer to the new instance */
extern SDTWindCavity *SDTWindCavity_new(int maxDelay);

/** @brief Object destructor.
@param[in] x Pointer to the instance to destroy */
extern void SDTWindCavity_free(SDTWindCavity *x);

#define SDT_WINDCAVITY WindCavity
#define SDT_WINDCAVITY_NEW_ARGS 48000
#define SDT_WINDCAVITY_ATTRIBUTES(T, A)                   \
  A(T, maxDelay, int, MaxDelay, maxDelay, integer, 48000) \
  A(T, length, double, Length, length, double, 1.0)       \
  A(T, diameter, double, Diameter, diameter, double, 1.0)

SDT_TYPE_COPY_H(SDT_WINDCAVITY)
SDT_DEFINE_HASHMAP_H(SDT_WINDCAVITY)
SDT_TYPE_MAKE_GETTERS_H(SDT_WINDCAVITY)
SDT_JSON_SERIALIZE_H(SDT_WINDCAVITY)
SDT_JSON_DESERIALIZE_H(SDT_WINDCAVITY)

extern void SDTWindCavity_setMaxDelay(SDTWindCavity *x, int f);

/** @brief Sets the lenght of the cavity.
@param[in] f Length of the cavity, in m */
extern void SDTWindCavity_setLength(SDTWindCavity *x, double f);

/** @brief Sets the diameter of the cavity.
@param[in] f Diameter of the cavity, in m */
extern void SDTWindCavity_setDiameter(SDTWindCavity *x, double f);

/** @brief Sets the wind speed.
@param[in] f Wind speed, [0,1] */
extern void SDTWindCavity_setWindSpeed(SDTWindCavity *x, double f);

/** @brief Signal processing routine.
Call this function at sample rate to synthesize wind through a cavity.
@return Computed audio sample */
extern double SDTWindCavity_dsp(SDTWindCavity *x);

/** @} */

/** @defgroup windkarman Turbulence across thin objects
An air flow hitting a thin object, such as a tree branch or a suspended wire,
produces a singing or howling sound caused by a phenomenon known as Karman
vortex street. This particular kind of turbulence is a repeating pattern of
swirling vortices caused by the unsteady separation of flow of a fluid around
the object. Karman vortex streets are modeled by white noise, passing through a
bandpass filter with narrow bandwidth and high resonance.
@{ */

/** @brief Opaque data structure for a thin obstacle object */
typedef struct SDTWindKarman SDTWindKarman;

/** @brief Object constructor.
@return Pointer to the new instance */
extern SDTWindKarman *SDTWindKarman_new();

/** @brief Object destructor.
@param[in] x Pointer to the instance to destroy */
extern void SDTWindKarman_free(SDTWindKarman *x);

/** @brief Deep-copies a windkarman object
@param[in] dest Pointer to the instance to modify
@param[in] src Pointer to the instance to copy
@param[in] unsafe If false, do not perform any memory-related changes
@return Pointer to destination instance */
extern SDTWindKarman *SDTWindKarman_copy(SDTWindKarman *dest,
                                         const SDTWindKarman *src,
                                         unsigned char unsafe);

/** @brief Registers a windkarman object into the windkarman objects list with
a unique ID.
@param[in] x WindKarman process instance to register
@param[in] key Unique ID assigned to the windkarman object instance
@return Zero on success, otherwise one */
extern int SDT_registerWindKarman(SDTWindKarman *x, const char *key);

/** @brief Queries the windkarman objects list by its unique ID.
If a windkarman object with the ID is present, a pointer to the windkarman
object is returned. Otherwise, a NULL pointer is returned.
@param[in] key Unique ID assigned to the windkarman object instance
@return WindKarman process instance pointer */
extern SDTWindKarman *SDT_getWindKarman(const char *key);

/** @brief Unregisters a windkarman object from the windkarman objects list. If
a windkarman object with the given ID is present, it is unregistered from the
list.
@param[in] key Unique ID of the WindKarman instance to unregister */
extern int SDT_unregisterWindKarman(const char *key);

/** @brief Gets the diameter of the object.
@return Diameter of the object, in m */
extern double SDTWindKarman_getDiameter(const SDTWindKarman *x);

/** @brief Gets the wind speed.
@return Wind speed */
extern double SDTWindKarman_getWindSpeed(const SDTWindKarman *x);

/** @brief Represent a windkarman object as a JSON object.
@param[in] x Pointer to the instance
@return JSON object */
extern json_value *SDTWindKarman_toJSON(const SDTWindKarman *x);

/** @brief Initialize a windkarman object from a JSON object.
@param[in] x JSON object
@return Pointer to the instance */
extern SDTWindKarman *SDTWindKarman_fromJSON(const json_value *x);

/** @brief Set parameters of a windkarman object from a JSON object.
@param[in] x Pointer to the instance
@param[in] j JSON object
@param[in] unsafe If false, do not perform any memory-related changes
@return Pointer to destination instance */
extern SDTWindKarman *SDTWindKarman_setParams(SDTWindKarman *x,
                                              const json_value *j,
                                              unsigned char unsafe);

/** @brief Sets the diameter of the object.
@param[in] f Diameter of the object, in m. Works best with very small values (<
0.1) */
extern void SDTWindKarman_setDiameter(SDTWindKarman *x, double f);

/** @brief Sets the wind speed.
@param[in] f Wind speed, [0,1] */
extern void SDTWindKarman_setWindSpeed(SDTWindKarman *x, double f);

/** @brief Signal processing routine.
Call this function at sample rate to synthesize wind blowing against a thin
object.
@return Computed audio sample */
extern double SDTWindKarman_dsp(SDTWindKarman *x);

/** @} */

/**
@defgroup explosions Supersonic explosions
Powerful explosions, as well as objects travelling at supersonic speed
such as rifle bullets or cracking whip tails.
@{ */

/** @brief Opaque data structure for an explosion object */
typedef struct SDTExplosion SDTExplosion;

#define SDT_EXPLOSION_MAX_SCATTER_DEFAULT 44100
#define SDT_EXPLOSION_MAX_DELAY_DEFAULT 441000

/** @brief Object constructor.
@param[in] maxScatter Maximum scattering time, in samples
@param[in] maxDelay Maximum delay between explosion and sound, in samples
@return Pointer to the new instance */
extern SDTExplosion *SDTExplosion_new(long maxScatter, long maxDelay);

/** @brief Object destructor.
@param[in] x Pointer to the instance to destroy */
extern void SDTExplosion_free(SDTExplosion *x);

/** @brief Deep-copies an explosion
@param[in] dest Pointer to the instance to modify
@param[in] src Pointer to the instance to copy
@param[in] unsafe If false, do not perform any memory-related changes
@return Pointer to destination instance */
extern SDTExplosion *SDTExplosion_copy(SDTExplosion *dest,
                                       const SDTExplosion *src,
                                       unsigned char unsafe);

/** @brief Registers an explosion into the explosions list with
a unique ID.
@param[in] x Explosion process instance to register
@param[in] key Unique ID assigned to the explosion instance
@return Zero on success, otherwise one */
extern int SDT_registerExplosion(SDTExplosion *x, const char *key);

/** @brief Queries the explosions list by its unique ID.
If an explosion with the ID is present, a pointer to the explosion is returned.
Otherwise, a NULL pointer is returned.
@param[in] key Unique ID assigned to the explosion instance
@return Explosion process instance pointer */
extern SDTExplosion *SDT_getExplosion(const char *key);

/** @brief Unregisters an explosion from the explosions list. If an explosion
with the given ID is present, it is unregistered from the list.
@param[in] key Unique ID of the explosion instance to unregister
@return Zero on success, otherwise one */
extern int SDT_unregisterExplosion(const char *key);

/** @brief Represent an explosion as a JSON object.
@param[in] x Pointer to the instance
@return JSON object */
extern json_value *SDTExplosion_toJSON(const SDTExplosion *x);

/** @brief Initialize an explosion from a JSON object.
@param[in] x JSON object
@return Pointer to the instance */
extern SDTExplosion *SDTExplosion_fromJSON(const json_value *x);

/** @brief Set parameters of an explosion from a JSON object.
@param[in] x Pointer to the instance
@param[in] j JSON object
@param[in] unsafe If false, do not perform any memory-related changes
@return Pointer to destination instance */
extern SDTExplosion *SDTExplosion_setParams(SDTExplosion *x,
                                            const json_value *j,
                                            unsigned char unsafe);

/** @brief Gets the maximum scattering time
@param[in] x Pointer to the instance
@return Maximum scattering time, in samples */
extern long SDTExplosion_getMaxScatter(const SDTExplosion *x);

/** @brief Gets the maximum delay between explosion and sound.
@param[in] x Pointer to the instance
@return Maximum delay between explosion and sound, in samples */
extern long SDTExplosion_getMaxDelay(const SDTExplosion *x);

/** @brief Gets the duration of the initial spike.
@param[in] x Pointer to the instance
@return Blast time, in s */
extern double SDTExplosion_getBlastTime(const SDTExplosion *x);

/** @brief Gets the duration of the scattering.
@param[in] x Pointer to the instance
@return Scattering time, in s */
extern double SDTExplosion_getScatterTime(const SDTExplosion *x);

/** @brief Gets the balance between initial spike and successive scattering.
@param[in] x Pointer to the instance
@return Amount of scattering, [0,1] */
extern double SDTExplosion_getDispersion(const SDTExplosion *x);

/** @brief Gets the distance of the listener from the explosion.
@param[in] x Pointer to the instance
@return Distance between explosion and listener, in m */
extern double SDTExplosion_getDistance(const SDTExplosion *x);

/** @brief Gets the propagation velocity of the shockwave.
@param[in] x Pointer to the instance
@return Propagation velocity of the shockwave, in m/s */
extern double SDTExplosion_getWaveSpeed(const SDTExplosion *x);

/** @brief Gets the propagation velocity of the blast wind.
@param[in] x Pointer to the instance
@return Propagation velocity of the blast wind, in m/s */
extern double SDTExplosion_getWindSpeed(const SDTExplosion *x);

/** @brief Sets the maximum scattering time
@param[in] f Maximum scattering time, in samples */
extern void SDTExplosion_setMaxScatter(SDTExplosion *x, long f);

/** @brief Sets the maximum delay between explosion and sound.
@param[in] f Maximum delay between explosion and sound, in samples */
extern void SDTExplosion_setMaxDelay(SDTExplosion *x, long f);

/** @brief Sets the duration of the initial spike.
@param[in] f Blast time, in s */
extern void SDTExplosion_setBlastTime(SDTExplosion *x, double f);

/** @brief Sets the duration of the scattering.
@param[in] f Scattering time, in s */
extern void SDTExplosion_setScatterTime(SDTExplosion *x, double f);

/** @brief Sets the balance between initial spike and successive scattering.
@param[in] f Amount of scattering, [0,1] */
extern void SDTExplosion_setDispersion(SDTExplosion *x, double f);

/** @brief Sets the distance of the listener from the explosion.
@param[in] f Distance between explosion and listener, in m */
extern void SDTExplosion_setDistance(SDTExplosion *x, double f);

/** @brief Sets the propagation velocity of the shockwave.
@param[in] f Propagation velocity of the shockwave, in m/s */
extern void SDTExplosion_setWaveSpeed(SDTExplosion *x, double f);

/** @brief Sets the propagation velocity of the blast wind.
@param[in] f Propagation velocity of the blast wind, in m/s */
extern void SDTExplosion_setWindSpeed(SDTExplosion *x, double f);

/** @brief Resets the internal state of the object to the beginning of the
explosion. Please call this function after changing the SDT sample rate or one
or more of these parameters: scatter time, distance, wave speed, wind speed. */
extern void SDTExplosion_update(SDTExplosion *x);

/** @brief Signal processing routine.
Call this function at sample rate to synthesize an explosion sound.
@return Computed audio sample */
extern void SDTExplosion_dsp(SDTExplosion *x, double *outs);

/** @} */

#ifdef __cplusplus
};
#endif

#endif

/** @} */