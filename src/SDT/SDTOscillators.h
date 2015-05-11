/** \file SDTOscillators.h
 * Useful oscillators and signal generators. 
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

#ifndef SDT_OSCILLATORS_H
#define SDT_OSCILLATORS_H

typedef struct SDTLumpedMass SDTLumpedMass;

extern SDTLumpedMass *SDTLumpedMass_new();
extern void SDTLumpedMass_free(SDTLumpedMass *x);
extern void SDTLumpedMass_update(SDTLumpedMass *x);
extern double SDTLumpedMass_getDisplacement(SDTLumpedMass *x);
extern double SDTLumpedMass_getVelocity(SDTLumpedMass *x);
extern void SDTLumpedMass_setState(SDTLumpedMass *x, double p, double v, double f);
extern void SDTLumpedMass_setMaxPos(SDTLumpedMass *x, double f);
extern void SDTLumpedMass_setMinPos(SDTLumpedMass *x, double f);
extern void SDTLumpedMass_setFrequency(SDTLumpedMass *x, double f);
extern void SDTLumpedMass_setDecay(SDTLumpedMass *x, double f);
extern void SDTLumpedMass_setWeight(SDTLumpedMass *x, double f);
extern void SDTLumpedMass_dsp(SDTLumpedMass *x, double f);

//-------------------------------------------------------------------------------------//

typedef struct SDTPinkNoise SDTPinkNoise;

extern SDTPinkNoise *SDTPinkNoise_new(int nOctaves);
extern void SDTPinkNoise_free(SDTPinkNoise *x);
extern double SDTPinkNoise_dsp(SDTPinkNoise *x);

//-------------------------------------------------------------------------------------//

extern double SDT_whiteNoise();

#endif