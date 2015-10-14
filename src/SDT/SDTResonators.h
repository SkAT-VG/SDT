/** \file SDTResonators.h
 * Physically informed models for resonating solid objects. 
 *
 * \author Stefano Baldan (stefanobaldan@iuav.it)
 *
 * This file is part of the 'Sound Design Toolkit' (SDT)
 * Developed with the contribution of the following EU-projects:
 * 2001-2003 'SOb' http://www.soundobject.org/
 * 2006-2009 'CLOSED' http://closed.ircam.fr/
 * 2008-2011 'NIW' http://www.niwproject.eu/
 * 2014-2017 'SkAT-VG http://www.skatvg.eu/
 *
 * Contacts: 
 * 	stefano.papetti@zhdk.ch
 * 	stefano.dellemonache@gmail.com
 *  stefanobaldan@iuav.it
 *
 * Complete list of authors (either programmers or designers):
 * 	Federico Avanzini (avanzini@dei.unipd.it)
 *	Nicola Bernardini (nicb@sme-ccppd.org)
 *	Gianpaolo Borin (gianpaolo.borin@tin.it)
 *	Carlo Drioli (carlo.drioli@univr.it)
 *	Stefano Delle Monache (stefano.dellemonache@gmail.com)
 *	Delphine Devallez
 *	Federico Fontana (federico.fontana@uniud.it)
 *	Laura Ottaviani
 *	Stefano Papetti (stefano.papetti@zhdk.ch)
 *	Pietro Polotti (pietro.polotti@univr.it)
 *	Matthias Rath
 *	Davide Rocchesso (roc@iuav.it)
 *	Stefania Serafin (sts@media.aau.dk)
 *  Stefano Baldan (stefanobaldan@iuav.it)
 *
 * The SDT is free software; you can redistribute it and/or
 * modify it under the terms of the GNU General Public License
 * as published by the Free Software Foundation; either version 2
 * of the License, or (at your option) any later version.
 *
 * The SDT is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with the SDT; if not, write to the Free Software
 * Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301, USA.
 *****************************************************************************/

#ifndef SDT_RESONATORS_H
#define SDT_RESONATORS_H

typedef struct SDTResonator SDTResonator;

extern double SDTResonator_getPosition(SDTResonator *x, unsigned int p);
extern double SDTResonator_getVelocity(SDTResonator *x, unsigned int p);
extern double SDTResonator_getKPosition(SDTResonator *x, unsigned int p);
extern double SDTResonator_getKVelocity(SDTResonator *x, unsigned int p);
extern double SDTResonator_getNPickups(SDTResonator *x);
extern void SDTResonator_setPickupMask(SDTResonator *x, unsigned int p, unsigned int m, double f);
extern void SDTResonator_setActiveModes(SDTResonator *x, int i);
extern void SDTResonator_applyForce(SDTResonator *x, unsigned int p, double f);
extern void SDTResonator_dsp(SDTResonator *x);

//-------------------------------------------------------------------------------------//

/*!
 * Physical modeling of an inertial mass.
 */
typedef struct SDTInertialMass SDTInertialMass;

//! Inertial mass constructor
extern SDTResonator *SDTInertialMass_new();

//! Inertial mass destructor
extern void SDTInertialMass_free(SDTResonator *x);

//! Sets the mass of the inertial object
extern void SDTInertialMass_setMass(SDTResonator *x, double f);

//! Sets the fragment size of the inertial object
extern void SDTInertialMass_setFragmentSize(SDTResonator *x, double f);

//! Sets a displacement for the inertial mass
extern void SDTInertialMass_setPosition(SDTResonator *x, double f);

//! Sets a velocity for the inertial mass
extern void SDTInertialMass_setVelocity(SDTResonator *x, double f);

//! Updates the object state
extern void SDTInertialMass_update(SDTResonator *x);

//-------------------------------------------------------------------------------------//

typedef struct SDTModalResonator SDTModalResonator;

//! Constructs a new instance of the modal resonator.
/**
 *  Each created instance should be correctly destroyed later by calling SDTModalResonator_free().
 *
 *  \return Pointer to the created instance.
 */
extern SDTResonator *SDTModalResonator_new(unsigned int nModes, /**< Number of resonant modes. */
                                           unsigned int nPickups /**< Number of listening points. */);

//! Destroys a modal resonator instance.
extern void SDTModalResonator_free(SDTResonator *x /**< Pointer to the modal resonator instance. */);

//! Sets the resonant frequency for a given mode.
/**
 *  Remember to call SDTModalResonator_update() for changes to take effect.
 */
extern void SDTModalResonator_setFrequency(SDTResonator *x, /**< Pointer to the modal resonator instance. */
                                           unsigned int i, /**< Selected mode index. */
                                           double f /**< New mode frequency, in Hz */);

//! Sets the decay time for a given mode.
/**
 *  Remember to call SDTModalResonator_update() for changes to take effect.
 */                                         
extern void SDTModalResonator_setDecay(SDTResonator *x, /**< Pointer to the modal resonator instance. */
                                       unsigned int i, /**< Selected mode index. */
                                       double f /**< New mode decay time, in seconds */);

//! Sets the weight for a given mode.
/**
 *  Remember to call SDTModalResonator_update() for changes to take effect.
 */                                         
extern void SDTModalResonator_setWeight(SDTResonator *x, /**< Pointer to the modal resonator instance. */
                                       unsigned int i, /**< Selected mode index. */
                                       double f /**< New mode weight, in 1/Kg */);

//! Sets the fragment size of the inertial object
extern void SDTModalResonator_setFragmentSize(SDTResonator *x, double f);
                                       
//! Updates the internal attributes for a given mode.
/**
 * This function should always be called to apply the changes made through
 * SDTModalResonator_setFrequency() and SDTModalResonator_setDecay().
 */
extern void SDTModalResonator_update(SDTResonator *x, /**< Pointer to the modal resonator instance. */
                                     unsigned int i /**< Selected mode index. */);

#endif
