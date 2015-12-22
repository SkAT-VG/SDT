/** \file sdt.zerocrossing~.c
 * Max external for spectral feature extraction.
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
#include "SDT/SDTAnalysis.h"

typedef struct _zerocrossing {
  t_pxobject ob;
  SDTZeroCrossing *zerox;
  void *outlet, *send;
  double overlap, out;
} t_zerocrossing;

static t_class *zerocrossing_class = NULL;

void zerocrossing_assist(t_zerocrossing *x, void *b, long m, long a, char *s) {
  if (m == ASSIST_INLET) {
    sprintf(s, "(signal): Input\n"
               "Object attributes and messages (see help patch)");
  } 
  else {
    sprintf(s, "(float): Normalized zero crossing rate");
  }
}

void zerocrossing_overlap(t_zerocrossing *x, void *attr, long ac, t_atom *av) {
  x->overlap = atom_getfloat(av);
  SDTZeroCrossing_setOverlap(x->zerox, x->overlap);
}

void zerocrossing_send(t_zerocrossing *x) {
  outlet_float(x->outlet, x->out);
}

t_int *zerocrossing_perform(t_int *w) {
  t_zerocrossing *x = (t_zerocrossing *)(w[1]);
  t_float *in = (t_float *)(w[2]);
  int n = (int)w[3];
  
  while (n--) {
    if (SDTZeroCrossing_dsp(x->zerox, &x->out, *in++)) {
      qelem_set(x->send);
    }
  }
  
  return w + 4;
}

void zerocrossing_dsp(t_zerocrossing *x, t_signal **sp, short *count) {
  SDT_setSampleRate(sp[0]->s_sr);
  SDTZeroCrossing_setOverlap(x->zerox, x->overlap);
  dsp_add(zerocrossing_perform, 3, x, sp[0]->s_vec, sp[0]->s_n);
}

void zerocrossing_perform64(t_zerocrossing *x, t_object *dsp64, double **ins, long numins, double **outs, long numouts, long sampleframes, long flags, void *userparam) {
  t_double *in = ins[0];
  int n = sampleframes;
  
  while (n--) {
    if (SDTZeroCrossing_dsp(x->zerox, &x->out, *in++)) {
      qelem_set(x->send);
    }
  }
}

void zerocrossing_dsp64(t_zerocrossing *x, t_object *dsp64, short *count, double samplerate, long maxvectorsize, long flags) {
  SDT_setSampleRate(samplerate);
  SDTZeroCrossing_setOverlap(x->zerox, x->overlap);
  object_method(dsp64, gensym("dsp_add64"), x, zerocrossing_perform64, 0, NULL);
}

void *zerocrossing_new(t_symbol *s, long argc, t_atom *argv) {
  t_zerocrossing *x;
  long windowSize;
  
  x = (t_zerocrossing *)object_alloc(zerocrossing_class);
  if (x) {
    dsp_setup((t_pxobject *)x, 1);
    if (argc > 0 && atom_gettype(&argv[0]) == A_LONG) {
      windowSize = atom_getlong(&argv[0]);
    }
    else {
      windowSize = 1024;
    }
    x->zerox = SDTZeroCrossing_new(windowSize);
    x->outlet = floatout(x);
    x->send = qelem_new((t_object *)x, (method)zerocrossing_send);
    x->out = 0.0;
    attr_args_process(x, argc, argv);
  }
  return (x);
}

void zerocrossing_free(t_zerocrossing *x) {
  dsp_free((t_pxobject *)x);
  SDTZeroCrossing_free(x->zerox);
  object_free(x->outlet);
  qelem_free(x->send);
}

int C74_EXPORT main(void) {	
  t_class *c = class_new("sdt.zerox~", (method)zerocrossing_new, (method)zerocrossing_free, (long)sizeof(t_zerocrossing), 0L, A_GIMME, 0);
	
  class_addmethod(c, (method)zerocrossing_dsp, "dsp", A_CANT, 0);
  class_addmethod(c, (method)zerocrossing_dsp64, "dsp64", A_CANT, 0);
  class_addmethod(c, (method)zerocrossing_assist, "assist", A_CANT, 0);
  
  CLASS_ATTR_DOUBLE(c, "overlap", 0, t_zerocrossing, overlap);
  CLASS_ATTR_FILTER_CLIP(c, "overlap", 0.0, 1.0);
  CLASS_ATTR_ACCESSORS(c, "overlap", NULL, (method)zerocrossing_overlap);
  
  class_dspinit(c);
  class_register(CLASS_BOX, c);
  zerocrossing_class = c;

  return 0;
}