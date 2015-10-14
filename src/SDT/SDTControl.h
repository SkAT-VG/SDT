/**
 * \file SDTControl.h
 * This module contains objects designed to provide a temporal control layer over
 * the basic mechanical interactions, to simulate complex textures, evolving patterns
 * and compound sound events.
 */

#ifndef SDT_CONTROL_H
#define SDT_CONTROL_H

//! Opaque data structure for the crumpling object.
typedef struct SDTCrumpling SDTCrumpling;

//! Crumpling object constructor.
/**
 *  Each created instance should be correctly destroyed later by calling SDTCrumpling_free().
 *
 *  \return Pointer to the created instance.
 */
extern SDTCrumpling *SDTCrumpling_new();

//! Destroys a crumpling instance.
extern void SDTCrumpling_free(SDTCrumpling *x /**< Pointer to the crumpling object. */);

//! Sets the crushing energy.
extern void SDTCrumpling_setCrushingEnergy(SDTCrumpling *x, /**< Pointer to the crumpling object. */
                                           double f /**< Crushing energy, compared to the process energy. */);

//! Sets the crumpling smoothness.
extern void SDTCrumpling_setGranularity(SDTCrumpling *x, /**< Pointer to the crumpling object. */
                                        double f /**< Frequency of micro impacts, normalized between 0 and 1 */);

//! Sets the amount of progressive fragmentation of the object during the process.
extern void SDTCrumpling_setFragmentation(SDTCrumpling *x, /**< Pointer to the crumpling object. */
                                          double f /**< Object fragmentation, normalized between 0 and 1. */);

//! Restores the initial crumpling energy to 1.
extern void SDTCrumpling_reset(SDTCrumpling *x, /**< Pointer to the crumpling object. */
                               double *size, /**< Pointer used to return the size of the excited fragment. */
                               double *energy /**< Pointer used to return the energy of the micro impact. */);

//! Single iteration of a discrete crumpling process.
extern void SDTCrumpling_discrete(SDTCrumpling *x, /**< Pointer to the crumpling object. */
                                  double *size, /**< Pointer used to return the size of the excited fragment. */
                                  double *energy /**< Pointer used to return the energy of the micro impact. */);
                                  
//! Single iteration of a continuous crumpling process.
extern void SDTCrumpling_continuous(SDTCrumpling *x, /**< Pointer to the crumpling object. */
                                    double *size, /**< Pointer used to return the size of the excited fragment. */
                                    double *energy /**< Pointer used to return the energy of the micro impact. */);
                                    
//! Checks if the crumpling process is finished, i.e. if the remaining energy is 0.
/**
 * \return 0 if the remaining energy is <= 0, 1 otherwise.
 */
extern int SDTCrumpling_hasFinished(SDTCrumpling *x);

//-------------------------------------------------------------------------------------//

typedef struct SDTRolling SDTRolling;

extern SDTRolling *SDTRolling_new();
extern void SDTRolling_free(SDTRolling *x);
extern void SDTRolling_setGrain(SDTRolling *x, double f);
extern void SDTRolling_setDepth(SDTRolling *x, double f);
extern void SDTRolling_setMass(SDTRolling *x, double f);
extern void SDTRolling_setVelocity(SDTRolling *x, double f);
extern double SDTRolling_dsp(SDTRolling *x, double in);

//-------------------------------------------------------------------------------------//

typedef struct SDTScraping SDTScraping;

extern SDTScraping *SDTScraping_new();
extern void SDTScraping_free(SDTScraping *x);
extern void SDTScraping_setGrain(SDTScraping *x, double f);
extern void SDTScraping_setForce(SDTScraping *x, double f);
extern void SDTScraping_setVelocity(SDTScraping *x, double f);
extern double SDTScraping_dsp(SDTScraping *x, double in);

#endif