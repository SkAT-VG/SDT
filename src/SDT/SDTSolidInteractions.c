/** \file SDTSolidInteractions.c
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

#include <math.h>
#include <stdlib.h>
#include "SDTCommon.h"
#include "SDTSolidInteractions.h"

#define MAX_ERR 0.0000001
#define MAX_ITER 50

struct SDTImpact {
  double stiffness, dissipation, shape;
};

SDTImpact *SDTImpact_new() {
  SDTImpact *x;
  
  x = (SDTImpact *)malloc(sizeof(SDTImpact));
  x->stiffness = 0.0;
  x->dissipation = 0.0;
  x->shape = 0.0;
  return x;
}

void SDTImpact_free(SDTImpact *x) {
  free(x);
}

void SDTImpact_setStiffness(SDTImpact *x, double f) {
  x->stiffness = fmax(0.0, f);
}

void SDTImpact_setDissipation(SDTImpact *x, double f) {
  x->dissipation = fmax(0.0, f);
}

void SDTImpact_setShape(SDTImpact *x, double f) {
  x->shape = fmax(0.0, f);
}

void SDTImpact_simple(SDTImpact *x, double p0, double v0, double p1, double v1, double *f0, double *f1) {
  double pos, vel, force;
  
  if (p0 < p1) {
    *f0 = 0.0;
    *f1 = 0.0;
    return;
  }
  pos = pow(p0 - p1, x->shape);
  vel = v0 - v1;
  force = x->stiffness * pos + x->dissipation * pos * vel;
  *f0 = -force;
  *f1 = force;
}