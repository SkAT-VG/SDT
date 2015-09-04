/** \file solids.h
 *
 * \author Stefano Papetti (stefano.papetti@zhdk.ch)
 *
 * This file is part of the 'Sound Design Toolkit' (SDT)
 * Developed with the contribution of the following EU-projects:
 * 2001-2003 'SOb' http://www.soundobject.org/
 * 2006-2009 'CLOSED' http://closed.ircam.fr
 * 2008-2011 'NIW' http://www.niwproject.eu/
 *
 * Contacts: 
 * 	stefano.papetti@zhdk.ch
 * 	stefano.dellemonache@gmail.com
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

#if !defined(_SOLIDS_H_)
#define _SOLIDS_H_

/* Uncomment the following line to compile modules with further console output for debugging purposes: */
//#define _DEBUG_
//#define _DEBUG_IMPULSE_	//Ignores calculated forces and send a force impulse to struck object. 
						//Implemented in 'impact_..._wg~.cpp' modules only

#include <stdlib.h>
#include <math.h>

#ifndef PI
#ifdef __GNUC__
//#define INLINE inline
#define PI M_PI
#else
#define PI 3.1415926535897932384626433832795
#endif
#endif

#ifndef TWOPI
#define TWOPI (2. * PI)
#endif

#define PENTIUM_BUG 1.e-10 /**< A small offset constant to fight the loss-of-precision-interrupt */ //0.0000000001
#define DEFAULT_SAMPRATE 44100


/**********************************/
typedef struct
{
  double displ;
  double velo;
} t_displ_velo;

#endif /* (_FLEXT_MODULES_H_) */
