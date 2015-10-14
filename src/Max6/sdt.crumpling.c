/** \file sdt.crumpling.c
 * Max external for the control of two impacts (crumpling texture).
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

#include "ext.h"
#include "ext_obex.h"
#include "SDT/SDTCommon.h"
#include "SDT/SDTControl.h"

typedef struct _crumpling {
	t_object ob;
	void *size, *energy, *discrete, *continuous;
	SDTCrumpling *crumpling;
    double fragmentation, crushingEnergy, granularity;
} t_crumpling;

static t_class *crumpling_class = NULL;

void crumpling_assist(t_crumpling *x, void *b, long m, long a, char *s) {
	if (m == ASSIST_INLET) {
        sprintf(s, "(bang): Starts the crumpling process\n"
                   "fragmentation (float): Object fragmentation to breaking, in N\n"
                   "crushingEnergy (float): Crushing energy, in N\n"
                   "granularity (float): Event density [0.0 ~ 1.0]");
	} 
	else {
	  switch (a) {
	    case 0:
	      sprintf(s, "(float): Fragment size");
	      break;
	    case 1:
	      sprintf(s, "(float): Event energy");
	      break;
	    default:
	      break;
	  }
	}
}

void crumpling_discrete(t_crumpling *x) {
    double size, energy;
    
    SDTCrumpling_discrete(x->crumpling, &size, &energy);
    if (size || energy) {
      outlet_float(x->size, size);
      outlet_float(x->energy, energy);
    }
    if (!SDTCrumpling_hasFinished(x->crumpling)) {
      qelem_set(x->discrete);
    }
}

void crumpling_continuous(t_crumpling *x) {
    double size, energy;
    
    SDTCrumpling_continuous(x->crumpling, &size, &energy);
    if (size || energy) {
      outlet_float(x->size, size);
      outlet_float(x->energy, energy);
    }
    qelem_set(x->continuous);
}

void crumpling_bang(t_crumpling *x) {
    double size, energy;
    
    SDTCrumpling_reset(x->crumpling, &size, &energy);
    outlet_float(x->size, size);
    outlet_float(x->energy, energy);
    qelem_set(x->discrete);
}

void crumpling_start(t_crumpling *x) {
    qelem_set(x->continuous);
}

void crumpling_stop(t_crumpling *x) {
    qelem_unset(x->continuous);
}

void crumpling_int(t_crumpling *x, long l) {
  if (l) crumpling_start(x);
  else crumpling_stop(x);
}

void crumpling_fragmentation(t_crumpling *x, void *attr, long ac, t_atom *av) {
  x->fragmentation = atom_getfloat(av);
  SDTCrumpling_setFragmentation(x->crumpling, x->fragmentation);
}

void crumpling_crushingEnergy(t_crumpling *x, void *attr, long ac, t_atom *av) {
  x->crushingEnergy = atom_getfloat(av);
  SDTCrumpling_setCrushingEnergy(x->crumpling, x->crushingEnergy);
}

void crumpling_granularity(t_crumpling *x, void *attr, long ac, t_atom *av) {
  x->granularity = atom_getfloat(av);
  SDTCrumpling_setGranularity(x->crumpling, x->granularity);
}

void *crumpling_new(t_symbol *s, short argc, t_atom *argv) {
  t_crumpling *x = (t_crumpling *)object_alloc(crumpling_class);
  if (x) {
    x->energy = floatout(x);
    x->size = floatout(x);
    x->discrete = qelem_new((t_object *)x, (method)crumpling_discrete);
    x->continuous = qelem_new((t_object *)x, (method)crumpling_continuous);
    x->crumpling = SDTCrumpling_new();
    attr_args_process(x, argc, argv); 
  }
  return (x);
}

void crumpling_free(t_crumpling *x)  {
    SDTCrumpling_free(x->crumpling);
    object_free(x->size);
    object_free(x->energy);
    qelem_free(x->discrete);
    qelem_free(x->continuous);
}

int C74_EXPORT main(void) {	
	t_class *c = class_new("sdt.crumpling", (method)crumpling_new, (method)crumpling_free,
	                       (long)sizeof(t_crumpling), 0L, A_GIMME, 0);
	                       
	class_addmethod(c, (method)crumpling_bang, "bang", 0);
	class_addmethod(c, (method)crumpling_start, "start", 0);
	class_addmethod(c, (method)crumpling_stop, "stop", 0);
	class_addmethod(c, (method)crumpling_int, "int", A_LONG, 0);
	class_addmethod(c, (method)crumpling_assist, "assist", A_CANT, 0);
	
	CLASS_ATTR_DOUBLE(c, "crushingEnergy", 0, t_crumpling, crushingEnergy);
    CLASS_ATTR_DOUBLE(c, "granularity", 0, t_crumpling, granularity);
    CLASS_ATTR_DOUBLE(c, "fragmentation", 0, t_crumpling, fragmentation);
	
	CLASS_ATTR_FILTER_CLIP(c, "crushingEnergy", 0.0, 1.0);
    CLASS_ATTR_FILTER_CLIP(c, "granularity", 0.0, 1.0);
    CLASS_ATTR_FILTER_CLIP(c, "fragmentation", 0.0, 1.0);
	
	CLASS_ATTR_ACCESSORS(c, "crushingEnergy", NULL, (method)crumpling_crushingEnergy);
    CLASS_ATTR_ACCESSORS(c, "granularity", NULL, (method)crumpling_granularity);
    CLASS_ATTR_ACCESSORS(c, "fragmentation", NULL, (method)crumpling_fragmentation);
	
	CLASS_ATTR_ORDER(c, "crushingEnergy", 0, "1");
	CLASS_ATTR_ORDER(c, "granularity", 0, "2");
	CLASS_ATTR_ORDER(c, "fragmentation", 0, "3");
	
	class_register(CLASS_BOX, c);
	crumpling_class = c;

	return 0;
}