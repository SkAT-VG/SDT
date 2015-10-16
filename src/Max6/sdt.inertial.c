/** \file sdt.inertial.c
 * Max external implementing an inertial mass.
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
#include "z_dsp.h"
#include "SDT/SDTCommon.h"
#include "SDT/SDTSolids.h"

typedef struct _inertial {
  t_pxobject ob;
  SDTResonator *inertial;
  char *key;
  double mass, fragmentSize;
} t_inertial;

static t_class *inertial_class = NULL;

void *inertial_new(t_symbol *s, long argc, t_atom *argv) {
  t_inertial *x;
  SDTResonator *inertial;
  char *key;
  
  if (argc < 1 || atom_gettype(&argv[0]) != A_SYM) {
    error("sdt.inertial: Please provide a unique id as first argument.");
    return NULL;
  }
  inertial = SDTInertialMass_new();
  SDTResonator_setPickupMask(inertial, 0, 0, 1.0);
  SDTResonator_setActiveModes(inertial, 1);
  key = atom_getsym(&argv[0])->s_name;
  if (SDT_registerResonator(inertial, key)) {
    error("sdt.inertial: Error registering the resonator. Probably a duplicate id?");
    SDTInertialMass_free(inertial);
    return NULL;
  }
  x = (t_inertial *)object_alloc(inertial_class);
  if (!x) {
    error("sdt.inertial: Instantiation error.");
    return NULL;
  }
  dsp_setup((t_pxobject *)x, 0);
  x->inertial = inertial;
  x->key = key;
  x->mass = 1.0;
  x->fragmentSize = 1.0;
  attr_args_process(x, argc, argv);
  return x;
}

void inertial_free(t_inertial *x) {
  dsp_free((t_pxobject *)x);
  SDT_unregisterResonator(x->key);
  SDTInertialMass_free(x->inertial);
}

void inertial_assist(t_inertial *x, void *b, long m, long a, char *s) {
  if (m == ASSIST_INLET) { //inlet
    sprintf(s, "strike (float, float): instantly set position and velocity\n"
               "Object attributes and messages (see help patch)");
  }
}

void inertial_mass(t_inertial *x, void *attr, long ac, t_atom *av) {
    x->mass = atom_getfloat(av);
    SDTInertialMass_setMass(x->inertial, x->mass);
    SDTInertialMass_update(x->inertial);
}

void inertial_fragmentSize(t_inertial *x, void *attr, long ac, t_atom *av) {
    x->fragmentSize = atom_getfloat(av);
    SDTInertialMass_setFragmentSize(x->inertial, x->fragmentSize);
    SDTInertialMass_update(x->inertial);
}

void inertial_strike(t_inertial *x, double p, double v) {
  SDTInertialMass_setPosition(x->inertial, p);
  SDTInertialMass_setVelocity(x->inertial, v);
}

void inertial_dsp(t_inertial *x, t_signal **sp, short *count) {
  SDT_setSampleRate(sp[0]->s_sr);
  SDTInertialMass_setMass(x->inertial, x->mass);
  SDTInertialMass_setFragmentSize(x->inertial, x->fragmentSize);
  SDTInertialMass_update(x->inertial);
}

void inertial_dsp64(t_inertial *x, t_object *dsp64, short *count, double samplerate,
                    long maxvectorsize, long flags) {
  SDT_setSampleRate(samplerate);
  SDTInertialMass_setMass(x->inertial, x->mass);
  SDTInertialMass_setFragmentSize(x->inertial, x->fragmentSize);
  SDTInertialMass_update(x->inertial);
}

int C74_EXPORT main(void) {	
  t_class *c = class_new("sdt.inertial", (method)inertial_new, (method)inertial_free,
                         (long)sizeof(t_inertial), 0L, A_GIMME, 0);
  class_addmethod(c, (method)inertial_assist, "assist", A_CANT, 0);
  class_addmethod(c, (method)inertial_dsp, "dsp", A_CANT, 0);
  class_addmethod(c, (method)inertial_dsp64, "dsp64", A_CANT, 0);
  class_addmethod(c, (method)inertial_strike, "strike", A_FLOAT, A_FLOAT, 0);
  
  CLASS_ATTR_DOUBLE(c, "mass", 0, t_inertial, mass);
  CLASS_ATTR_DOUBLE(c, "fragmentSize", 0, t_inertial, fragmentSize);
  
  CLASS_ATTR_FILTER_MIN(c, "mass", 0.0);
  CLASS_ATTR_FILTER_CLIP(c, "fragmentSize", 0.0, 1.0);
  
  CLASS_ATTR_ACCESSORS(c, "mass", NULL, (method)inertial_mass);
  CLASS_ATTR_ACCESSORS(c, "fragmentSize", NULL, (method)inertial_fragmentSize);
  
  class_dspinit(c);
  class_register(CLASS_BOX, c);
  inertial_class = c;

  return 0;
}