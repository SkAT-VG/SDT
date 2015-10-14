/** \file SDTLiquids.h
 * Physical models for bubbling and flowing liquids. 
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

#ifndef SDT_LIQUIDS_H
#define SDT_LIQUIDS_H

typedef struct SDTBubble SDTBubble;

extern SDTBubble *SDTBubble_new();
extern void SDTBubble_free(SDTBubble *x);
extern void SDTBubble_setRadius(SDTBubble *x, double f);
extern void SDTBubble_setDepth(SDTBubble *x, double f);
extern void SDTBubble_setRiseFactor(SDTBubble *x, double f);
extern void SDTBubble_update(SDTBubble *x);
extern void SDTBubble_normAmp(SDTBubble *x);
extern double SDTBubble_dsp(SDTBubble *x);

//-------------------------------------------------------------------------------------//

typedef struct SDTFluidFlow SDTFluidFlow;

extern SDTFluidFlow *SDTFluidFlow_new(int nBubbles);
extern void SDTFluidFlow_free(SDTFluidFlow *x);
extern void SDTFluidFlow_setMinRadius(SDTFluidFlow *x, double f);
extern void SDTFluidFlow_setMaxRadius(SDTFluidFlow *x, double f);
extern void SDTFluidFlow_setExpRadius(SDTFluidFlow *x, double f);
extern void SDTFluidFlow_setMinDepth(SDTFluidFlow *x, double f);
extern void SDTFluidFlow_setMaxDepth(SDTFluidFlow *x, double f);
extern void SDTFluidFlow_setExpDepth(SDTFluidFlow *x, double f);
extern void SDTFluidFlow_setRiseFactor(SDTFluidFlow *x, double f);
extern void SDTFluidFlow_setRiseCutoff(SDTFluidFlow *x, double f);
extern void SDTFluidFlow_setAvgRate(SDTFluidFlow *x, double f);

extern double SDTFluidFlow_dsp(SDTFluidFlow *x);

#endif
