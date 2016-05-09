/** @file SDTControl.h
@defgroup control SDTControl.h: Compound solid interactions
Objects designed to provide a temporal control layer over basic mechanical interactions,
to simulate complex textures, evolving patterns and compound sound events.
@{ */

#ifndef SDT_CONTROL_H
#define SDT_CONTROL_H

/** @defgroup crumpling Crumpling
Control layer for the impact model, generating crumpling and breaking sonic textures.
Two main outputs are exposed: size and energy. The former should be used to control
the size of the resonators, the latter should be used to control the impact velocity. 
@{ */

/** @brief Opaque data structure for the crumpling object. */
typedef struct SDTCrumpling SDTCrumpling;

/** @brief Object constructor.
@return Pointer to the new instance */
extern SDTCrumpling *SDTCrumpling_new();

/** @brief Object destructor.
@param[in] x Pointer to the instance to destroy */
extern void SDTCrumpling_free(SDTCrumpling *x);

/** @brief Sets the crushing energy.
@param[in] f Average energy of the micro impacts, compared to the global energy of the process [0, 1] */
extern void SDTCrumpling_setCrushingEnergy(SDTCrumpling *x, double f);

/** @brief Sets the event density of the crumpling process.
@param[in] f Event density [0, 1] */
extern void SDTCrumpling_setGranularity(SDTCrumpling *x, double f);

/** @brief Sets the amount of progressive fragmentation of the object during the process.
@param[in] f Object fragmentation [0, 1] */
extern void SDTCrumpling_setFragmentation(SDTCrumpling *x, double f);

/** @brief Resets the crumpling process, restoring its initial energy. */
extern void SDTCrumpling_reset(SDTCrumpling *x);

/** @brief Single iteration of a discrete crumpling process.
Call this routine in a loop to simulate a discrete crumpling process.
The loop should end when SDTCrumpling_hasFinished() returns true.
@param[out] size Size of the object fragment
@param[out] energy Energy of the micro-impact */
extern void SDTCrumpling_discrete(SDTCrumpling *x, double *size, double *energy);
                                  
/** @brief Single iteration of a continuous crumpling process.
Call this routine in a loop to simulate a continuous crumpling process.
Unlike in the discrete crumpling, iterations do not cause energy loss and the process
can continue indefinitely until explicitly interrupted.
@param[out] size Size of the object fragment
@param[out] energy Energy of the micro-impact */
extern void SDTCrumpling_continuous(SDTCrumpling *x, double *size, double *energy);
                                    
/** @brief Checks if the crumpling process is finished, i.e. if the remaining energy is 0.
@return 1 (true) if the remaining energy is <= 0, 0 (false) otherwise. */
extern int SDTCrumpling_hasFinished(SDTCrumpling *x);

/** @} */

/** @defgroup rolling Rolling
Control layer for the impact model, generating rolling sonic textures.
The output is a force, which should be applied to an inertial mass hitting a resonator. 
@{ */

/** @brief Opaque data structure for the rolling object */
typedef struct SDTRolling SDTRolling;

/** @brief Object constructor.
@return Pointer to the new instance */
extern SDTRolling *SDTRolling_new();

/** @brief Object destructor.
@param[in] x Pointer to the instance to destroy */
extern void SDTRolling_free(SDTRolling *x);

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
Call this function at sample rate to compute the force acting on the rolling object.
@param[in] in Surface profile, as an audio signal
@return Normal force on the exciter */
extern double SDTRolling_dsp(SDTRolling *x, double in);

/** @} */

/** @defgroup scraping Scraping
Control layer for resonators, generating scraping sonic textures.
The output is a force, which should be applied directly to a single resonator.
Interactors are not needed, although friction with another solid can be used to add
a rubbing character to the sound.
@{ */

/** @brief Opaque data structure for the scraping object */
typedef struct SDTScraping SDTScraping;

/** @brief Object constructor.
@return Pointer to the new instance */
extern SDTScraping *SDTScraping_new();

/** @brief Object destructor.
@param[in] x Pointer to the instance to destroy */
extern void SDTScraping_free(SDTScraping *x);

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
Call this function at sample rate to compute the force acting on the scraped surface.
@param[in] in Surface profile, as an audio signal
@return Normal force on the resonator */
extern double SDTScraping_dsp(SDTScraping *x, double in);

/** @} */

#endif

/** @} */