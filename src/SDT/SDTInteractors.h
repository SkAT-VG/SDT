#include "SDTJSON.h"
#include "SDTResonators.h"

/** @file SDTInteractors.h
@defgroup interactors SDTInteractors.h: interactions between solids
These models simulate basic mechanical interactions that can occur
between two resonators: impacts and friction.
@{ */

#ifndef SDT_INTERACTORS_H
#define SDT_INTERACTORS_H

#ifdef __cplusplus
extern "C" {
#endif

/** @defgroup interactor Interactor interface
This abstract object acts as a generic interface implemented by all interactors.
It contains two pointers to the interacting objects, information
on the chosen contact points, and an algorithm that, after reading the state
of the objects (displacement and velocity) at the specified contact points,
accordingly computes a force to be applied to those contact points. The generic
interactor should never be directly instantiated, instead it should be obtained
through the specific SDTImpact and SDTFriction constructors.
@{ */

/** @brief Opaque data structure representing the interactor interface */
typedef struct SDTInteractor SDTInteractor;

#define SDT_INTERACTOR Interactor
#define SDT_INTERACTOR_ATTRIBUTES(T, A)                 \
  A(T, contact0, int, FirstPoint, contact0, integer, 0) \
  A(T, contact1, int, SecondPoint, contact1, integer, 0)

/** @brief Sets the pointer to the first interacting resonator
@param[in] p Pointer to a SDTResonator instance */
extern void SDTInteractor_setFirstResonator(SDTInteractor *x, SDTResonator *p);

/** @brief Sets the pointer to the second interacting resonator
@param[in] p Pointer to a SDTResonator instance */
extern void SDTInteractor_setSecondResonator(SDTInteractor *x, SDTResonator *p);

/** @brief Sets the contact point index for the first resonator
@param[in] Number of the first resonator pickup chosen for interaction */
extern void SDTInteractor_setFirstPoint(SDTInteractor *x, long l);

/** @brief Sets the contact point index for the second resonator
@param[in] Number of the second resonator pickup chosen for interaction */
extern void SDTInteractor_setSecondPoint(SDTInteractor *x, long l);

/** @brief Gets the pointer to the first interacting resonator
@param[in] p The pointer to the first interacting resonator */
extern SDTResonator *SDTInteractor_getFirstResonator(const SDTInteractor *x);

/** @brief Gets the pointer to the second interacting resonator
@param[in] p The pointer to the second interacting resonator */
extern SDTResonator *SDTInteractor_getSecondResonator(const SDTInteractor *x);

/** @brief Gets the contact point index for the first resonator
@return Number of the first resonator pickup chosen for interaction */
extern long SDTInteractor_getFirstPoint(const SDTInteractor *x);

/** @brief Gets the contact point index for the second resonator
@return Number of the second resonator pickup chosen for interaction */
extern long SDTInteractor_getSecondPoint(const SDTInteractor *x);

/** @brief Computes a force to apply to the contact points,
based on the resonators' state at the chosen pickups */
extern double SDTInteractor_computeForce(SDTInteractor *x);

/** @brief Signal processing routine.
Convenience method to compute the interaction force, apply it to the resonators
and update their state. This method already calls the DSP routines of the two
resonators, so be sure not to call them if you use this method.
@param[in] f0 Applied force to the first resonator
@param[in] v0 Applied velocity to the first resonator (resets position to 0, or
to make contact with second object if present)
@param[in] s0 Fragment size of the first resonator
@param[in] f1 Applied force to the second resonator
@param[in] v1 Applied velocity to the second resonator (resets position to 0, or
to make contact with first object if present)
@param[in] s1 Fragment size of the second resonator
@param[out] outs Displacement of the resonators at their pickup points */
extern void SDTInteractor_dsp(SDTInteractor *x, double f0, double v0, double s0,
                              double f1, double v1, double s1, double *outs);

/** @} */

/** @defgroup impact Impact
Simulates a non-linear impact, computing impact force from the total
compression, namely the relative displacement between the two contact points.
The algorithm is based on the Hunt-Crossley impact model, with the resulting
force being the sum of an elastic component and a dissipative term.

The elastic component is parameterized by the force stiffness (or elasticity)
and a non-linear exponent which models the local geometry around the contact
area. The linear dissipative component is parameterized by a dissipation
(damping) weight.
@{ */

/** @brief Opaque data structure representing the internal state of an impact
 * interactor. */
typedef struct SDTImpact SDTImpact;

/** @brief Object constructor.
@return Pointer to a SDTInteractor instance, configured for the impact case */
extern SDTInteractor *SDTImpact_new();

#define SDT_IMPACT Impact
#define SDT_IMPACT_ATTRIBUTES(T, A)                        \
  A(T, shape, double, Shape, shape, double, 0)             \
  A(T, stiffness, double, Stiffness, stiffness, double, 0) \
  A(T, dissipation, double, Dissipation, dissipation, double, 0)

/** @brief Copy src into dest
@param[in] dest Pointer to the instance to overwrite
@param[in] src Pointer to the instance to copy
@return Pointer to the dest */
extern SDTInteractor *SDTImpact_copy(SDTInteractor *dest,
                                     const SDTInteractor *src);

/** @brief Check if the interactor is an Impact
@return Truth value of the check */
extern int SDTInteractor_isImpact(const SDTInteractor *x);

/** @brief Object destructor.
param[in] Pointer to a SDTInteractor instance, configured for the impact case.
*/
extern void SDTImpact_free(SDTInteractor *x);

/** @brief Gets the impact stiffness.
@return Impact stiffness */
extern double SDTImpact_getStiffness(const SDTInteractor *x);

/** @brief Gets the dissipation coefficient.
@return Dissipation coefficient */
extern double SDTImpact_getDissipation(const SDTInteractor *x);

/** @brief Gets the shape factor.
@return Shape factor */
extern double SDTImpact_getShape(const SDTInteractor *x);

/** @brief Sets the impact stiffness.
@param[in] f Impact stiffness (>> 1) */
extern void SDTImpact_setStiffness(SDTInteractor *x, double f);

/** @brief Sets the dissipation coefficient.
@param[in] f Dissipation coefficient, positive scalar */
extern void SDTImpact_setDissipation(SDTInteractor *x, double f);

/** @brief Sets the shape factor.
@param[in] f Shape factor. Must be > 1, with 1.5 = spherical shape. Optimal
range [1,4] */
extern void SDTImpact_setShape(SDTInteractor *x, double f);

/** @defgroup json_impact JSON
JSON functions for SDT Impacts
@{ */

/** @brief Convert an SDTImpact object in a JSON object
@param[in] x Pointer to the SDTInteractor
@param[in] key0 First resonator ID
@param[in] key1 Second resonator ID
@return Pointer to the JSON object. Memory must be freed with json_builder_free
*/
extern json_value *SDTImpact_toJSON(const SDTInteractor *x, const char *key0,
                                    const char *key1);

/** @brief Load an SDTImpact object from a JSON object
@param[in] x Pointer to the JSON object
@return Pointer to the SDTImpact, or 0 on failure. Memory must be freed with
::SDTImpact_free */
extern SDTInteractor *SDTImpact_fromJSON(const json_value *x);

/** @} */

/** @} */

/** @defgroup friction Friction
Elasto-plastic friction model, computing friction force from the relative
velocity between the two contact points. The resulting force is the sum of four
components: an elastic term, an internal dissipation term, a viscosity term, and
finally a random term representing noise related to the surface roughness.

More subtle phenomena, such as pre-sliding behavior
(gradual increase of the friction force for very small displacements),
are simulated by the "plastic" part of the algorithm and parametrized
by several other values, such as static/dynamic friction coefficients,
break-away and Stribeck velocity, and so on.

These phenomena are mostly related to the transients and are worth being modeled
despite the added complexity of the algorithm because of their importance
for a realistic simulation of friction sounds.
@{ */

/** @brief Opaque data structure representing the internal state of a friction
 * interactor. */
typedef struct SDTFriction SDTFriction;

/** @brief Object constructor.
@return Pointer to a SDTInteractor instance, configured for the friction case */
extern SDTInteractor *SDTFriction_new();

#define SDT_FRICTION Friction
#define SDT_FRICTION_ATTRIBUTES(T, A)                     \
  A(T, , double, NormalForce, force, double, 0)           \
  A(T, , double, StribeckVelocity, stribeck, double, 0)   \
  A(T, , double, StaticCoefficient, kStatic, double, 0)   \
  A(T, , double, DynamicCoefficient, kDynamic, double, 0) \
  A(T, , double, BreakAway, breakAway, double, 0)         \
  A(T, , double, Stiffness, stiffness, double, 0)         \
  A(T, , double, Dissipation, dissipation, double, 0)     \
  A(T, , double, Viscosity, viscosity, double, 0)         \
  A(T, , double, Noisiness, noisiness, double, 0)

/** @brief Copy src into dest
@param[in] dest Pointer to the instance to overwrite
@param[in] src Pointer to the instance to copy
@return Pointer to the dest */
extern SDTInteractor *SDTFriction_copy(SDTInteractor *dest,
                                       const SDTInteractor *src);

/** @brief Check if the interactor is a Friction
@return Truth value of the check */
extern int SDTInteractor_isFriction(const SDTInteractor *x);

/** @brief Object destructor.
param[in] Pointer to a SDTInteractor instance, configured for the friction case.
*/
extern void SDTFriction_free(SDTInteractor *x);

/** @brief Sets the perpendicular force (pressure) applied to the two sliding
resonators.
@param[in] f Normal force, in N */
extern void SDTFriction_setNormalForce(SDTInteractor *x, double f);

/** @brief Sets the Stribeck velocity.
@param[in] f Stribeck velocity, in m/s */
extern void SDTFriction_setStribeckVelocity(SDTInteractor *x, double f);

/** @brief Sets the static friction coefficient.
@param[in] f Static friction coefficient [0,1] */
extern void SDTFriction_setStaticCoefficient(SDTInteractor *x, double f);

/** @brief Sets the dynamic friction coefficient.
@param[in] f Dynamic friction coefficient [0,1]. Should be less than the static
friction coefficient */
extern void SDTFriction_setDynamicCoefficient(SDTInteractor *x, double f);

/** @brief Sets the break away coefficient.
@param[in] f Break away coefficient, positive scalar */
extern void SDTFriction_setBreakAway(SDTInteractor *x, double f);

/** @brief Sets the contact stiffness.
@param[in] f Contact stiffness, positive scalar */
extern void SDTFriction_setStiffness(SDTInteractor *x, double f);

/** @brief Sets the dissipation coefficient.
@param[in] f Dissipation coefficient, positive scalar */
extern void SDTFriction_setDissipation(SDTInteractor *x, double f);

/** @brief Sets the contact viscosity.
@param[in] f Contact viscosity, positive scalar */
extern void SDTFriction_setViscosity(SDTInteractor *x, double f);

/** @brief Sets the surface roughness.
@param[in] f Surface roughness, positive scalar */
extern void SDTFriction_setNoisiness(SDTInteractor *x, double f);

/** @brief Gets the perpendicular force (pressure) applied to the two sliding
resonators.
@return Normal force, in N */
extern double SDTFriction_getNormalForce(const SDTInteractor *x);

/** @brief Gets the Stribeck velocity.
@return Stribeck velocity, in m/s */
extern double SDTFriction_getStribeckVelocity(const SDTInteractor *x);

/** @brief Gets the static friction coefficient.
@return Static friction coefficient [0,1] */
extern double SDTFriction_getStaticCoefficient(const SDTInteractor *x);

/** @brief Gets the dynamic friction coefficient.
@return Dynamic friction coefficient [0,1] */
extern double SDTFriction_getDynamicCoefficient(const SDTInteractor *x);

/** @brief Gets the break away coefficient.
@return Break away coefficient */
extern double SDTFriction_getBreakAway(const SDTInteractor *x);

/** @brief Gets the contact stiffness.
@return Contact stiffness */
extern double SDTFriction_getStiffness(const SDTInteractor *x);

/** @brief Gets the dissipation coefficient.
@return Dissipation coefficient */
extern double SDTFriction_getDissipation(const SDTInteractor *x);

/** @brief Gets the contact viscosity.
@return Contact viscosity */
extern double SDTFriction_getViscosity(const SDTInteractor *x);

/** @brief Gets the surface roughness.
@return Surface roughness */
extern double SDTFriction_getNoisiness(const SDTInteractor *x);

/** @defgroup json_friction JSON
JSON functions for SDT Frctions
@{ */

/** @brief Convert an SDTImpact object in a JSON object
@param[in] x Pointer to the SDTInteractor
@param[in] key0 First resonator ID
@param[in] key1 Second resonator ID
@return Pointer to the JSON object. Memory must be freed with json_builder_free
*/
extern json_value *SDTFriction_toJSON(const SDTInteractor *x, const char *key0,
                                      const char *key1);

/** @brief Load an SDTImpact object from a JSON object
@param[in] x Pointer to the JSON object
@return Pointer to the SDTImpact, or 0 on failure. Memory must be freed with
::SDTImpact_free */
extern SDTInteractor *SDTFriction_fromJSON(const json_value *x);

/** @} */

/** @} */

#ifdef __cplusplus
};
#endif

#endif

/** @} */
