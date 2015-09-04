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

typedef struct SDTInertialMass SDTInertialMass;

extern SDTResonator *SDTInertialMass_new();
extern void SDTInertialMass_free(SDTResonator *x);
extern void SDTInertialMass_setMass(SDTResonator *x, double f);
extern void SDTInertialMass_setPosition(SDTResonator *x, double f);
extern void SDTInertialMass_setVelocity(SDTResonator *x, double f);

//-------------------------------------------------------------------------------------//

typedef struct SDTModalResonator SDTModalResonator;

extern SDTResonator *SDTModalResonator_new(unsigned int nModes, unsigned int nPickups);
extern void SDTModalResonator_free(SDTResonator *x);
extern void SDTModalResonator_setWeight(SDTResonator *x, unsigned int i, double f);
extern void SDTModalResonator_setFrequency(SDTResonator *x, unsigned int i, double f);
extern void SDTModalResonator_setDecay(SDTResonator *x, unsigned int i, double f);
extern void SDTModalResonator_update(SDTResonator *x, unsigned int i);

#endif
