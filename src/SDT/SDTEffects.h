/** \file SDTEffects.h
 * Digital audio effects. 
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

#ifndef SDT_EFFECTS_H
#define SDT_EFFECTS_H

typedef struct SDTReverb SDTReverb;

extern SDTReverb *SDTReverb_new(long maxDelay);
extern void SDTReverb_free(SDTReverb *x);
extern void SDTReverb_setXSize(SDTReverb *x, double f);
extern void SDTReverb_setYSize(SDTReverb *x, double f);
extern void SDTReverb_setZSize(SDTReverb *x, double f);
extern void SDTReverb_setRandomness(SDTReverb *x, double f);
extern void SDTReverb_setTime(SDTReverb *x, double f);
extern void SDTReverb_setTime1k(SDTReverb *x, double f);
extern void SDTReverb_update(SDTReverb *x);
extern double SDTReverb_dsp(SDTReverb *x, double in);

//-------------------------------------------------------------------------------------//

typedef struct SDTPitchShift SDTPitchShift;

extern SDTPitchShift *SDTPitchShift_new(long size);
extern void SDTPitchShift_free(SDTPitchShift *x);
extern void SDTPitchShift_setRatio(SDTPitchShift *x, double f);
extern double SDTPitchShift_dsp(SDTPitchShift *x, double in);

#endif
