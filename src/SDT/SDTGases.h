/** \file SDTGases.h
 * Physical models for gas turbulence, flow and explosion. 
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

#ifndef SDT_GASES_H
#define SDT_GASES_H

typedef struct SDTWindFlow SDTWindFlow;

extern SDTWindFlow *SDTWindFlow_new();
extern void SDTWindFlow_free(SDTWindFlow *x);
extern void SDTWindFlow_setFilters(SDTWindFlow *x);
void SDTWindFlow_setWindSpeed(SDTWindFlow *x, double f);
extern double SDTWindFlow_dsp(SDTWindFlow *x);

//-------------------------------------------------------------------------------------//

typedef struct SDTWindCavity SDTWindCavity;

extern SDTWindCavity *SDTWindCavity_new(int maxDelay);
extern void SDTWindCavity_free(SDTWindCavity *x);
extern void SDTWindCavity_setLength(SDTWindCavity *x, double f);
extern void SDTWindCavity_setDiameter(SDTWindCavity *x, double f);
extern void SDTWindCavity_setWindSpeed(SDTWindCavity *x, double f);
extern void SDTWindCavity_updateGeometry(SDTWindCavity *x);
extern void SDTWindCavity_updateResonance(SDTWindCavity *x);
extern double SDTWindCavity_dsp(SDTWindCavity *x);

//-------------------------------------------------------------------------------------//

typedef struct SDTWindKarman SDTWindKarman;

extern SDTWindKarman *SDTWindKarman_new();
extern void SDTWindKarman_free(SDTWindKarman *x);
extern void SDTWindKarman_setDiameter(SDTWindKarman *x, double f);
extern void SDTWindKarman_setWindSpeed(SDTWindKarman *x, double f);
extern void SDTWindKarman_updateResonance(SDTWindKarman *x);
extern double SDTWindKarman_dsp(SDTWindKarman *x);

//-------------------------------------------------------------------------------------//

typedef struct SDTExplosion SDTExplosion;

extern SDTExplosion *SDTExplosion_new(long maxScatter, long maxDelay);
extern void SDTExplosion_free(SDTExplosion *x);
extern void SDTExplosion_setBlastTime(SDTExplosion *x, double f);
extern void SDTExplosion_setScatterTime(SDTExplosion *x, double f);
extern void SDTExplosion_setDispersion(SDTExplosion *x, double f);
extern void SDTExplosion_setDistance(SDTExplosion *x, double f);
extern void SDTExplosion_setWaveSpeed(SDTExplosion *x, double f);
extern void SDTExplosion_setWindSpeed(SDTExplosion *x, double f);
extern void SDTExplosion_update(SDTExplosion *x);
extern void SDTExplosion_dsp(SDTExplosion *x, double *outs);

#endif
