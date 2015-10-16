/** \file sdt.pitch~.c
 * Max external for pitch tracking.
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

typedef struct _pitch {
  t_pxobject ob;
  SDTPitch *pitch;
  double overlap, tolerance;
} t_pitch;

static t_class *pitch_class = NULL;

void *pitch_new(t_symbol *s, long argc, t_atom *argv) {
  t_pitch *x;
  long windowSize;
  
  x = (t_pitch *)object_alloc(pitch_class);
  if (x) {
    dsp_setup((t_pxobject *)x, 1);
    outlet_new(x, "signal");
    outlet_new(x, "signal");
    if (argc > 0 && atom_gettype(&argv[0]) == A_LONG) {
      windowSize = atom_getlong(&argv[0]);
    }
    else {
      windowSize = 4096;
    }
    x->pitch = SDTPitch_new(windowSize);
    attr_args_process(x, argc, argv);
  }
  return (x);
}

void pitch_free(t_pitch *x) {
  dsp_free((t_pxobject *)x);
  SDTPitch_free(x->pitch);
}

void pitch_assist(t_pitch *x, void *b, long m, long a, char *s) {
  if (m == ASSIST_INLET) {
    sprintf(s, "(signal): Input\n"
               "Object attributes and messages (see help patch)");
  } 
  else {
    switch (a) {
      case 0:
        sprintf(s, "(signal): Estimated pitch in Hz");
        break;
      case 1:
        sprintf(s, "(signal): Pitch clarity");
        break;
    }
  }
}

void pitch_overlap(t_pitch *x, void *attr, long ac, t_atom *av) {
  x->overlap = atom_getfloat(av);
  SDTPitch_setOverlap(x->pitch, x->overlap);
}

void pitch_tolerance(t_pitch *x, void *attr, long ac, t_atom *av) {
  x->tolerance = atom_getfloat(av);
  SDTPitch_setTolerance(x->pitch, x->tolerance);
}

t_int *pitch_perform(t_int *w) {
  t_pitch *x = (t_pitch *)(w[1]);
  t_float *in = (t_float *)(w[2]);
  t_float *out0 = (t_float *)(w[3]);
  t_float *out1 = (t_float *)(w[4]);
  int n = (int)w[5];
  double tmpOuts[2];
  
  while (n--) {
  SDTPitch_dsp(x->pitch, tmpOuts, *in++);
    *out0++ = (float)tmpOuts[0];
    *out1++ = (float)tmpOuts[1];
  }

  return w + 6;
}

void pitch_dsp(t_pitch *x, t_signal **sp, short *count) {
  SDT_setSampleRate(sp[0]->s_sr);
  SDTPitch_setOverlap(x->pitch, x->overlap);
  SDTPitch_setTolerance(x->pitch, x->tolerance);
  dsp_add(pitch_perform, 5, x, sp[0]->s_vec, sp[1]->s_vec, sp[2]->s_vec, sp[0]->s_n);
}

void pitch_perform64(t_pitch *x, t_object *dsp64, double **ins, long numins, double **outs, long numouts, long sampleframes, long flags, void *userparam) {
  t_double *in = ins[0];
  t_double *out0 = outs[0];
  t_double *out1 = outs[1];
  int n = sampleframes;
  double tmpOuts[2];
  
  while (n--) {
    SDTPitch_dsp(x->pitch, tmpOuts, *in++);
    *out0++ = tmpOuts[0];
    *out1++ = tmpOuts[1];
  }
}

void pitch_dsp64(t_pitch *x, t_object *dsp64, short *count, double samplerate, long maxvectorsize, long flags) {
  SDT_setSampleRate(samplerate);
  SDTPitch_setOverlap(x->pitch, x->overlap);
  SDTPitch_setTolerance(x->pitch, x->tolerance);
  object_method(dsp64, gensym("dsp_add64"), x, pitch_perform64, 0, NULL);
}

int C74_EXPORT main(void) {	
  t_class *c = class_new("sdt.pitch~", (method)pitch_new, (method)pitch_free, (long)sizeof(t_pitch), 0L, A_GIMME, 0);
	
  class_addmethod(c, (method)pitch_dsp, "dsp", A_CANT, 0);
  class_addmethod(c, (method)pitch_dsp64, "dsp64", A_CANT, 0);
  class_addmethod(c, (method)pitch_assist, "assist", A_CANT, 0);
  
  CLASS_ATTR_DOUBLE(c, "overlap", 0, t_pitch, overlap);
  CLASS_ATTR_DOUBLE(c, "tolerance", 0, t_pitch, tolerance);
  
  CLASS_ATTR_FILTER_CLIP(c, "overlap", 0.0, 1.0);
  CLASS_ATTR_FILTER_CLIP(c, "tolerance", 0.0, 1.0);
  
  CLASS_ATTR_ACCESSORS(c, "overlap", NULL, (method)pitch_overlap);
  CLASS_ATTR_ACCESSORS(c, "tolerance", NULL, (method)pitch_tolerance);
  
  CLASS_ATTR_ORDER(c, "overlap", 0, "1");
  CLASS_ATTR_ORDER(c, "tolerance", 0, "2");
  
  class_dspinit(c);
  class_register(CLASS_BOX, c);
  pitch_class = c;

  return 0;
}