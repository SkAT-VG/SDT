#include "SDTCommonMacros.h"
#include "SDTJSON.h"

/** @file SDTResonators.h
@defgroup resonators SDTResonators.h: Solid resonators
Physical model of a solid resonator, represented as a set of parallel
mass-spring-damper mechanical oscillators. Each oscillator corresponds to a
normal mode of resonance of the object, with the oscillation period, the mass
and the damping coefficient of each oscillator corresponding respectively to the
resonance frequency, the magnitude and the decay time of each mode. Resonant
modes can be mixed and weighted with different gains, to simulate different
pickup points on the resonating object. A single mode with a resonant frequency
of 0 Hz, infinite decay time and unity pickup gain behaves like an inertial
point mass. The model uses the impulse invariant method as discretization
scheme.
@{
*/

#ifndef SDT_RESONATORS_H
#define SDT_RESONATORS_H

#ifdef __cplusplus
extern "C" {
#endif

/** @brief Opaque data structure representing a solid resonator object. */
typedef struct SDTResonator SDTResonator;

#define SDT_RESONATOR_NMODES_DEFAULT 1
#define SDT_RESONATOR_NPICKUPS_DEFAULT 1
#define SDT_RESONATOR_NPICKUPS_MAX 16

/** @brief Object constructor.
@param[in] nModes Number of resonant modes
@param[in] nPickups Number of pickup points
@return Pointer to the new instance */
extern SDTResonator *SDTResonator_new(unsigned int nModes,
                                      unsigned int nPickups);

/** @brief Object destructor.
@param[in] x Pointer to the instance to destroy */
extern void SDTResonator_free(SDTResonator *x);

/** @brief Update inner coefficients.
Call this function whenever you change the SDT sample rate.
@param[in] x Pointer to the instance to update */
extern void SDTResonator_update(SDTResonator *x);

/** @brief Deep-copies a resonator.
@param[in] dest Pointer to the instance to modify
@param[in] src Pointer to the instance to copy
@param[in] unsafe If false, do not perform any memory-related changes
@return Pointer to destination instance */
extern SDTResonator *SDTResonator_copy(SDTResonator *dest,
                                       const SDTResonator *src,
                                       unsigned char unsafe);

/** @brief Registers a resonator into the zero crossing rate
detectors list with a unique ID.
@param[in] x Resonator instance to register
@param[in] key Unique ID assigned to the resonator instance
@return Zero on success, otherwise one */
extern int SDT_registerResonator(SDTResonator *x, const char *key);

/** @brief Queries the resonators list by its unique ID.
If a resonator with the ID is present, a pointer to the zero
crossing rate detector is returned. Otherwise, a NULL pointer is returned.
@param[in] key Unique ID assigned to the resonator instance
@return Resonator instance pointer */
extern SDTResonator *SDT_getResonator(const char *key);

/** @brief Unregisters a resonator from the zero crossing rate
detectors list. If a resonator with the given ID is present,
it is unregistered from the list.
@param[in] key Unique ID of the resonator instance to
unregister
@return Zero on success, otherwise one */
extern int SDT_unregisterResonator(const char *key);

extern json_value *_SDTResonator_toFrequencyJSON(const SDTResonator *x);
extern json_value *_SDTResonator_toDecayJSON(const SDTResonator *x);
extern json_value *_SDTResonator_toWeightJSON(const SDTResonator *x);
extern json_value *_SDTResonator_toGainJSON(const SDTResonator *x);

/** @brief Represent a resonator as a JSON object.
@param[in] x Pointer to the instance
@return JSON object */
extern json_value *SDTResonator_toJSON(const SDTResonator *x);

/** @brief Set parameters of a resonator from a JSON object.
@param[in] x Pointer to the instance
@param[in] j JSON object
@param[in] unsafe If false, do not perform any memory-related changes
@return Pointer to destination instance */
extern SDTResonator *SDTResonator_setParams(SDTResonator *x,
                                            const json_value *j,
                                            unsigned char unsafe);

/** @brief Initialize a resonator from a JSON object.
@param[in] x JSON object
@return Pointer to the instance */
extern SDTResonator *SDTResonator_fromJSON(const json_value *x);

/** @brief Gets the displacement of the object at a given pickup point.
@param[in] pickup Pickup point
@return Object displacement, in m */
extern double SDTResonator_getPosition(const SDTResonator *x,
                                       unsigned int pickup);

/** @brief Gets the velocity of the object at a given pickup point.
@param[in] pickup Pickup point
@return Object velocity, in m/s */
extern double SDTResonator_getVelocity(const SDTResonator *x,
                                       unsigned int pickup);

/** @brief Gets the resonant frequency for a given mode
@param[in] mode Mode number
@return Modal frequency, in Hz */
extern double SDTResonator_getFrequency(const SDTResonator *x,
                                        unsigned int mode);

/** @brief Gets the decay for a given mode
@param[in] mode Mode number
@return Modal decay, in s. A value of 0 means no decay at all (infinite decay
time) */
extern double SDTResonator_getDecay(const SDTResonator *x, unsigned int mode);

/** @brief Gets the weight for a given mode
@param[in] mode Mode number
@return Modal weight, in Kg */
extern double SDTResonator_getWeight(const SDTResonator *x, unsigned int mode);

/** @brief Gets the pickup gain for a given mode and pickup
@param[in] pickup Pickup number
@param[in] mode Mode number
@return Pickup gain */
extern double SDTResonator_getGain(const SDTResonator *x, unsigned int pickup,
                                   unsigned int mode);

/** @brief Gets the number of pickup points
@return Number of pickup points */
extern int SDTResonator_getNPickups(const SDTResonator *x);

/** @brief Gets the number of resonant modes
@return Number of resonant modes */
extern int SDTResonator_getNModes(const SDTResonator *x);

/** @brief Gets the number of active modes
@return Number of active modes */
extern int SDTResonator_getActiveModes(const SDTResonator *x);

/** @brief Gets the fragment size
@return Fragment size */
extern double SDTResonator_getFragmentSize(const SDTResonator *x);

/** @brief Sets the number of pickup points.
This function allocates memory and should not be called inside a DSP cycle.
@param[in] f Number of pickup points */
extern void SDTResonator_setNPickups(SDTResonator *x, int f);

/** @brief Sets the number of resonant modes.
This function allocates memory and should not be called inside a DSP cycle.
@param[in] f Number of resonant modes */
extern void SDTResonator_setNModes(SDTResonator *x, int f);

/** @brief Sets a modal displacement at a given pickup point
@param[in] pickup Pickup point
@param[in] f Modal displacement, in m */
extern void SDTResonator_setPosition(SDTResonator *x, unsigned int pickup,
                                     double f);

/** @brief Sets a modal velocity at a given pickup point
@param[in] pickup Pickup point
@param[in] f Modal velocity, in m/s */
extern void SDTResonator_setVelocity(SDTResonator *x, unsigned int pickup,
                                     double f);

/** @brief Sets the resonant frequency for a given mode
@param[in] mode Mode number
@param[in] f Modal frequency, in Hz */
extern void SDTResonator_setFrequency(SDTResonator *x, unsigned int mode,
                                      double f);

/** @brief Sets the decay for a given mode
@param[in] mode Mode number
@param[in] f Modal decay, in s. A value of 0 means no decay at all (infinite
decay time) */
extern void SDTResonator_setDecay(SDTResonator *x, unsigned int mode, double f);

/** @brief Sets the weight for a given mode
@param[in] mode Mode number
@param[in] f Modal weight, in Kg */
extern void SDTResonator_setWeight(SDTResonator *x, unsigned int mode,
                                   double f);

/** @brief Sets the pickup gain for a given mode and pickup
@param[in] pickup Pickup number
@param[in] mode Mode number
@param[in] f Pickup gain */
extern void SDTResonator_setGain(SDTResonator *x, unsigned int pickup,
                                 unsigned int mode, double f);

/** @brief Reduces the object into a smaller fragment.
This paramenter influences various aspects of the object: Smaller fragments
resonate louder and at higher frequencies, but with shorter decay times.
@param[in] f Fragment size, compared to the whole object [0,1] */
extern void SDTResonator_setFragmentSize(SDTResonator *x, double f);

/** @brief Sets the number of active (actually computed) modes.
@param[in] i Number of active (computed) modes */
extern void SDTResonator_setActiveModes(SDTResonator *x, unsigned int i);

/** @brief Applies a force to the resonator at a given pickup point.
The force is distributed across the modes according to their normalized pickup
gains (modal gain/sum of all gains). If the function is called multiple times in
a single DSP cycle, the applied force gets accumulated.
@param[in] pickup Pickup point
@param[in] f Applied force, in N */
extern void SDTResonator_applyForce(SDTResonator *x, unsigned int pickup,
                                    double f);

/** @brief Computes the total energy of the object, after applying all acting
forces.
@param[in] pickup Pickup point
@param[in] f External force applied at the pickup point
@return Sum of kinetic and potential energy, in J */
extern double SDTResonator_computeEnergy(SDTResonator *x, unsigned int pickup,
                                         double f);

/** @brief Signal processing routine.
Call this function at sample rate to update the internal state of the resonator.
DO NOT call this function if you plan to use any of the interactor DSP methods
instead!
See the SDTInteractors.h module documentation for further information. */
extern void SDTResonator_dsp(SDTResonator *x);

/** @} */

#ifdef __cplusplus
};
#endif

#endif

/** @} */