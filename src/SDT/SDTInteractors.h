/** \file SDTInteractors.h
 * Interactions between solid objects. 
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

#ifndef SDT_INTERACTORS_H
#define SDT_INTERACTORS_H

typedef struct SDTInteractor SDTInteractor;

extern void SDTInteractor_setFirstResonator(SDTInteractor *x, SDTResonator *p);
extern void SDTInteractor_setSecondResonator(SDTInteractor *x, SDTResonator *p);
extern void SDTInteractor_setFirstPoint(SDTInteractor *x, long l);
extern void SDTInteractor_setSecondPoint(SDTInteractor *x, long l);
extern void SDTInteractor_dsp(SDTInteractor *x, double f0, double f1, double *outs);

//-------------------------------------------------------------------------------------//

typedef struct SDTImpact SDTImpact;

extern SDTInteractor *SDTImpact_new();
extern void SDTImpact_free(SDTInteractor *x);
extern void SDTImpact_setStiffness(SDTInteractor *x, double f);
extern void SDTImpact_setDissipation(SDTInteractor *x, double f);
extern void SDTImpact_setShape(SDTInteractor *x, double f);
extern void SDTImpact_setLinear(SDTInteractor *x);
extern void SDTImpact_setNonlinear(SDTInteractor *x);
extern void SDTImpact_linear(SDTInteractor *x);
extern void SDTImpact_nonlinear(SDTInteractor *x);

//-------------------------------------------------------------------------------------//

typedef struct SDTFriction SDTFriction;

extern SDTInteractor *SDTFriction_new();
extern void SDTFriction_free(SDTInteractor *x);
extern void SDTFriction_setNormalForce(SDTInteractor *x, double f);
extern void SDTFriction_setStribeckVelocity(SDTInteractor *x, double f);
extern void SDTFriction_setStaticCoefficient(SDTInteractor *x, double f);
extern void SDTFriction_setDynamicCoefficient(SDTInteractor *x, double f);
extern void SDTFriction_setStiffness(SDTInteractor *x, double f);
extern void SDTFriction_setDissipation(SDTInteractor *x, double f);
extern void SDTFriction_setViscosity(SDTInteractor *x, double f);
extern void SDTFriction_setNoisiness(SDTInteractor *x, double f);
extern void SDTFriction_setBreakAway(SDTInteractor *x, double f);
extern void SDTFriction_setStatic(SDTInteractor *x);
extern void SDTFriction_setDynamic(SDTInteractor *x);
extern void SDTFriction_static(SDTInteractor *x);
extern void SDTFriction_dynamic(SDTInteractor *x);

#endif
