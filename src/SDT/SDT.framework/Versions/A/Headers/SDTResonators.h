/** @file SDTResonators.h
@defgroup resonators SDTResonators.h: Solid resonators
Physical model of a solid resonator, represented as a set of parallel mass-spring-damper
mechanical oscillators. Each oscillator corresponds to a normal mode of resonance of the
object, with the oscillation period, the mass and the damping coefficient of each
oscillator corresponding respectively to the resonance frequency, the magnitude and
the decay time of each mode. Resonant modes can be mixed and weighted with different gains,
to simulate different pickup points on the resonating object. A single mode with a resonant
frequency of 0 Hz, infinite decay time and unity pickup gain behaves like an inertial
point mass. The model uses the impulse invariant method as discretization scheme.
@{
*/

#ifndef SDT_RESONATORS_H
#define SDT_RESONATORS_H

#ifdef __cplusplus
extern "C" {
#endif

/** @brief Opaque data structure representing a solid resonator object. */
typedef struct SDTResonator SDTResonator;

/** @brief Object constructor.
@param[in] nModes Number of resonant modes
@param[in] nPickups Number of pickup points
@return Pointer to the new instance */
extern SDTResonator *SDTResonator_new(unsigned int nModes, unsigned int nPickups);

/** @brief Object destructor.
@param[in] x Pointer to the instance to destroy */
extern void SDTResonator_free(SDTResonator *x);

/** @brief Gets the displacement of the object at a given pickup point.
@param[in] pickup Pickup point
@return Object displacement, in m */
extern double SDTResonator_getPosition(SDTResonator *x, unsigned int pickup);

/** @brief Gets the velocity of the object at a given pickup point.
@param[in] pickup Pickup point
@return Object velocity, in m/s */
extern double SDTResonator_getVelocity(SDTResonator *x, unsigned int pickup);

/** @brief Gets the number of pickup points
@return Number of pickup points */
extern int SDTResonator_getNPickups(SDTResonator *x);

/** @brief Sets a modal displacement at a given pickup point
@param[in] pickup Pickup point
@param[in] f Modal displacement, in m */
extern void SDTResonator_setPosition(SDTResonator *x, unsigned int pickup, double f);

/** @brief Sets a modal velocity at a given pickup point
@param[in] pickup Pickup point
@param[in] f Modal velocity, in m/s */
extern void SDTResonator_setVelocity(SDTResonator *x, unsigned int pickup, double f);

/** @brief Sets the resonant frequency for a given mode
@param[in] mode Mode number
@param[in] f Modal frequency, in Hz */
extern void SDTResonator_setFrequency(SDTResonator *x, unsigned int mode, double f);

/** @brief Sets the decay for a given mode
@param[in] mode Mode number
@param[in] f Modal decay, in s. A value of 0 means no decay at all (infinite decay time) */
extern void SDTResonator_setDecay(SDTResonator *x, unsigned int mode, double f);

/** @brief Sets the weight for a given mode
@param[in] mode Mode number
@param[in] f Modal weight, in Kg */
extern void SDTResonator_setWeight(SDTResonator *x, unsigned int mode, double f);

/** @brief Sets the pickup gain for a given mode and pickup
@param[in] pickup Pickup number
@param[in] mode Mode number
@param[in] f Pickup gain */
extern void SDTResonator_setGain(SDTResonator *x, unsigned int pickup, unsigned int mode, double f);

/** @brief Reduces the object into a smaller fragment.
This paramenter influences various aspects of the object: Smaller fragments resonate
louder and at higher frequencies, but with shorter decay times.
@param[in] f Fragment size, compared to the whole object [0,1] */
extern void SDTResonator_setFragmentSize(SDTResonator *x, double f);

/** @brief Sets the number of active (actually computed) modes.
@param[in] i Number of active (computed) modes */
extern void SDTResonator_setActiveModes(SDTResonator *x, unsigned int i);

/** @brief Applies a force to the resonator at a given pickup point.
The force is distributed across the modes according to their normalized pickup gains
(modal gain/sum of all gains). If the function is called multiple times in a single
DSP cycle, the applied force gets accumulated.  
@param[in] pickup Pickup point
@param[in] f Applied force, in N */
extern void SDTResonator_applyForce(SDTResonator *x, unsigned int pickup, double f);

/** @brief Computes the total energy of the object, after applying all acting forces.
@param[in] pickup Pickup point
@param[in] f External force applied at the pickup point
@return Sum of kinetic and potential energy, in J */
extern double SDTResonator_computeEnergy(SDTResonator *x, unsigned int pickup, double f);

/** @brief Signal processing routine.
Call this function at sample rate to update the internal state of the resonator.
DO NOT call this function if you plan to use any of the interactor DSP methods instead!
See the SDTInteractors.h module documentation for further information. */
extern void SDTResonator_dsp(SDTResonator *x);

#ifdef __cplusplus
};
#endif

#endif

/** @} */