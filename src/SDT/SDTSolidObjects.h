/** \file SDTSolidObjects.h
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

#ifndef SDT_SOLIDS_H
#define SDT_SOLIDS_H

typedef struct SDTSolidInertial SDTSolidInertial;

extern SDTSolidInertial *SDTSolidInertial_new();
extern void SDTSolidInertial_free(SDTSolidInertial *x);
extern void SDTSolidInertial_setMass(SDTSolidInertial *x, double f);
extern void SDTSolidInertial_applyForce(SDTSolidInertial *x, double f);
extern int SDTSolidInertial_dsp(SDTSolidInertial *x);
extern void SDTSolidInertial_getState(SDTSolidInertial *x, double *p, double *v, double *f);
extern void SDTSolidInertial_getKMatrix(SDTSolidInertial *x, double *b0, double *b1);

//-------------------------------------------------------------------------------------//

typedef struct SDTSolidMode SDTSolidMode;

extern SDTSolidMode *SDTSolidMode_new();
extern void SDTSolidMode_free(SDTSolidMode *x);
extern void SDTSolidMode_update(SDTSolidMode *x);
extern void SDTSolidMode_setFreq(SDTSolidMode *x, double f);
extern void SDTSolidMode_setDecay(SDTSolidMode *x, double f);
extern void SDTSolidMode_setWeight(SDTSolidMode *x, double f);
extern void SDTSolidMode_applyForce(SDTSolidMode *x, double f);
extern int SDTSolidMode_dsp(SDTSolidMode *x);
extern void SDTSolidMode_getState(SDTSolidMode *x, double *p, double *v, double *f);
extern void SDTSolidMode_getKMatrix(SDTSolidMode *x, double *b0, double *b1);

//-------------------------------------------------------------------------------------//

typedef struct SDTSolidModal SDTSolidModal;

extern SDTSolidModal *SDTSolidModal_new(int nModes, int nPickups);
extern void SDTSolidModal_free(SDTSolidModal *x);
extern void SDTSolidModal_setFreq(SDTSolidModal *x, unsigned int i, double f);
extern void SDTSolidModal_setDecay(SDTSolidModal *x, unsigned int i, double f);
extern void SDTSolidModal_setWeight(SDTSolidModal *x, unsigned int i, unsigned int j, double f);
extern void SDTSolidModal_setActiveModes(SDTSolidModal *x, unsigned int i);
extern void SDTSolidModal_applyForce(SDTSolidModal *x, unsigned int j, double f);
extern int SDTSolidModal_dsp(SDTSolidModal *x);
extern void SDTSolidModal_getState(SDTSolidModal *x, unsigned int j, double *p, double *v, double *f);
extern void SDTSolidModal_getKMatrix(SDTSolidModal *x, unsigned int j, double *b0, double *b1);

#endif