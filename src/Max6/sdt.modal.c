/** \file sdt.modal.c
 * Max external implementing a modal resonator.
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

typedef struct _modal {
  t_pxobject ob;
  SDTResonator *modal;
  char *key;
  t_object *pickups[SDT_MAX_PICKUPS];
  double weights[SDT_MAX_MODES], freqs[SDT_MAX_MODES], decays[SDT_MAX_MODES],
         pickupMasks[SDT_MAX_PICKUPS][SDT_MAX_MODES];
  long nModes, activeModes, nPickups;
} t_modal;

static t_class *modal_class = NULL;

void modal_pickups(t_modal *x, void *attr, long ac, t_atom *av);

void *modal_new(t_symbol *s, long argc, t_atom *argv) {
  t_modal *x;
  SDTResonator *modal;
  char *key;
  char attrName[10];
  int i, err;
  
  err = 0;
  if (argc < 1 || atom_gettype(&argv[0]) != A_SYM) {
    error("sdt.modal: Please provide a unique id as first argument.");
    err = 1;
  }
  if (argc < 2 || atom_gettype(&argv[1]) != A_LONG) {
    error("sdt.modal: Please provide the number of modes as second argument.");
    err = 1;
  }
  if (argc < 3 || atom_gettype(&argv[2]) != A_LONG) {
    error("sdt.modal: Please provide the number of pickups as third argument.");
    err = 1;
  }
  if (err) return NULL;
  modal = SDTModalResonator_new(atom_getlong(&argv[1]), atom_getlong(&argv[2]));
  key = atom_getsym(&argv[0])->s_name;
  if (SDT_registerResonator(modal, key)) {
    error("sdt.modal: Error registering the resonator. Probably a duplicate id?");
    SDTInertialMass_free(modal);
    return NULL;
  }
  x = (t_modal *)object_alloc(modal_class);
  if (!x) {
    error("sdt.modal: Instantiation error.");
    return NULL;
  }
  dsp_setup((t_pxobject *)x, 0);
  x->modal = modal;
  x->key = key;
  x->nModes = atom_getlong(&argv[1]);
  x->activeModes = atom_getlong(&argv[1]);
  x->nPickups = atom_getlong(&argv[2]);
  for (i = 0; i < x->nPickups; i++) {
    sprintf(attrName, "pickup%d", i);
    x->pickups[i] = attr_offset_array_new(attrName, gensym("float64"), SDT_MAX_MODES, 0,
                                          NULL, (method)modal_pickups,
                                          calcoffset(t_modal, nModes),
                                          calcoffset(t_modal, pickupMasks[i]));
    object_addattr(x, x->pickups[i]);
  }
  attr_args_process(x, argc, argv);
  return x;
}

void modal_free(t_modal *x) {
  char attrName[10];
  int i;
  
  dsp_free((t_pxobject *)x);
  for (i = 0; i < x->nPickups; i++) {
    sprintf(attrName, "pickup%d", i);
    object_deleteattr(x, gensym(attrName));
  }
  SDT_unregisterResonator(x->key);
  SDTModalResonator_free(x->modal);
}

void modal_assist(t_modal *x, void *b, long m, long a, char *s) {
  if (m == ASSIST_INLET) {
    sprintf(s, "weights (list of floats): mode weights\n"
               "freqs (list of floats): mode frequencies, in Hz\n"
               "decays (list of floats): mode decays, in s\n"
               "activeModes (int): n. of active modes\n"
               "pickup# (list of floats): pickup mask for pickup n. #");
  } 
}

void modal_weights(t_modal *x, void *attr, long ac, t_atom *av) {
    int i;
    
    for (i = 0; i < ac; i++) {
      x->weights[i] = atom_getfloat(av + i);
      SDTModalResonator_setWeight(x->modal, i, x->weights[i]);
      SDTModalResonator_update(x->modal, i);
    }
}

void modal_freqs(t_modal *x, void *attr, long ac, t_atom *av) {
    int i;
    
    for (i = 0; i < ac; i++) {
      x->freqs[i] = atom_getfloat(av + i);
      SDTModalResonator_setFrequency(x->modal, i, x->freqs[i]);
      SDTModalResonator_update(x->modal, i);
    }
}

void modal_decays(t_modal *x, void *attr, long ac, t_atom *av) {
    int i;
    
    for (i = 0; i < ac; i++) {
      x->decays[i] = atom_getfloat(av + i);
      SDTModalResonator_setDecay(x->modal, i, x->decays[i]);
      SDTModalResonator_update(x->modal, i);
    }
}

void modal_activeModes(t_modal *x, void *attr, long ac, t_atom *av) {
    x->activeModes = SDT_clip(atom_getlong(av), 0, x->nModes);
    SDTResonator_setActiveModes(x->modal, x->activeModes);
}

void modal_pickups(t_modal *x, void *attr, long ac, t_atom *av) {
  int i, j;
  
  for (i = 0; attr != x->pickups[i]; i++);
  for (j = 0; j < ac; j++) {
    x->pickupMasks[i][j] = SDT_fclip(atom_getfloat(av + j), -1.0, 1.0);
    SDTResonator_setPickupMask(x->modal, i, j, x->pickupMasks[i][j]);
  }
}

void modal_dsp(t_modal *x, t_signal **sp, short *count) {
  int i;
  
  SDT_setSampleRate(sp[0]->s_sr);
  for (i = 0; i < x->nModes; i++) {
    SDTModalResonator_setFrequency(x->modal, i, x->freqs[i]);
    SDTModalResonator_update(x->modal, i);
  }
}

void modal_dsp64(t_modal *x, t_object *dsp64, short *count, double samplerate,
                  long maxvectorsize, long flags) {
  int i;
  
  SDT_setSampleRate(samplerate);
  for (i = 0; i < x->nModes; i++) {
    SDTModalResonator_setFrequency(x->modal, i, x->freqs[i]);
    SDTModalResonator_update(x->modal, i);
  }
}

int C74_EXPORT main(void) {	
  t_class *c = class_new("sdt.modal", (method)modal_new, (method)modal_free,
                         (long)sizeof(t_modal), 0L, A_GIMME, 0);

  class_addmethod(c, (method)modal_assist, "assist", A_CANT, 0);
  class_addmethod(c, (method)modal_dsp, "dsp", A_CANT, 0);
  class_addmethod(c, (method)modal_dsp64, "dsp64", A_CANT, 0);

  CLASS_ATTR_DOUBLE_VARSIZE(c, "weights", 0, t_modal, weights, nModes, SDT_MAX_MODES);
  CLASS_ATTR_DOUBLE_VARSIZE(c, "freqs", 0, t_modal, freqs, nModes, SDT_MAX_MODES);
  CLASS_ATTR_DOUBLE_VARSIZE(c, "decays", 0, t_modal, decays, nModes, SDT_MAX_MODES);
  CLASS_ATTR_LONG(c, "activeModes", 0, t_modal, activeModes);
  
  CLASS_ATTR_ACCESSORS(c, "weights", NULL, (method)modal_weights);
  CLASS_ATTR_ACCESSORS(c, "freqs", NULL, (method)modal_freqs);
  CLASS_ATTR_ACCESSORS(c, "decays", NULL, (method)modal_decays);
  CLASS_ATTR_ACCESSORS(c, "activeModes", NULL, (method)modal_activeModes);
  
  CLASS_ATTR_ORDER(c, "weights", 0, "1");
  CLASS_ATTR_ORDER(c, "freqs", 0, "2");
  CLASS_ATTR_ORDER(c, "decays", 0, "3");
  CLASS_ATTR_ORDER(c, "activeModes", 0, "4");

  class_dspinit(c);
  class_register(CLASS_BOX, c);
  modal_class = c;

  return 0;
}
