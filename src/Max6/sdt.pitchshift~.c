/** \file sdt.pitchshift~.c
 * Max external for pitch shifting in time domain.
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
#include "SDT/SDTEffects.h"

typedef struct _pitchshift {
	t_pxobject ob;
	SDTPitchShift *shift;
	double ratio;
} t_pitchshift;

static t_class *pitchshift_class = NULL;

void *pitchshift_new(t_symbol *s, long argc, t_atom *argv) {
  t_pitchshift *x = (t_pitchshift *)object_alloc(pitchshift_class);
  long size;
  
  if (x) {
    dsp_setup((t_pxobject *)x, 1);
    outlet_new(x, "signal");
    if (argc > 0 && atom_gettype(&argv[0]) == A_LONG) {
      size = atom_getlong(&argv[0]);
    }
    else {
      size = 4096;
    }
    x->shift = SDTPitchShift_new(size);
    attr_args_process(x, argc, argv);
  }
  return (x);
}

void pitchshift_free(t_pitchshift *x) {
  dsp_free((t_pxobject *)x);
  SDTPitchShift_free(x->shift);
}

void pitchshift_assist(t_pitchshift *x, void *b, long m, long a, char *s) {
  if (m == ASSIST_INLET) { //inlet
    sprintf(s, "(signal): Input\n"
               "ratio (float): Playback speed ratio");
  } 
  else {
    sprintf(s, "(signal): Output");
  }
}

void pitchshift_ratio(t_pitchshift *x, void *attr, long ac, t_atom *av) {
  x->ratio = atom_getfloat(av);
  SDTPitchShift_setRatio(x->shift, x->ratio);
}

t_int *pitchshift_perform(t_int *w) {
  t_pitchshift *x = (t_pitchshift *)(w[1]);
  t_float *in = (t_float *)(w[2]);
  t_float *out = (t_float *)(w[3]);
  int n = (int)w[4];

  while (n--) {
    *out++ = (float)SDTPitchShift_dsp(x->shift, *in++);
  }
  
  return w + 5;
}

void pitchshift_dsp(t_pitchshift *x, t_signal **sp, short *count) {
  SDT_setSampleRate(sp[0]->s_sr);
  dsp_add(pitchshift_perform, 4, x, sp[0]->s_vec, sp[1]->s_vec, sp[0]->s_n);
}

void pitchshift_perform64(t_pitchshift *x, t_object *dsp64, double **ins, long numins, double **outs, long numouts, long sampleframes, long flags, void *userparam) {
  t_double *in = ins[0];
  t_double *out = outs[0];
  int n = sampleframes;
	
  while (n--) {
    *out++ = SDTPitchShift_dsp(x->shift, *in++);
  }
}

void pitchshift_dsp64(t_pitchshift *x, t_object *dsp64, short *count, double samplerate, long maxvectorsize, long flags) {
  SDT_setSampleRate(samplerate);
  object_method(dsp64, gensym("dsp_add64"), x, pitchshift_perform64, 0, NULL);
}

int C74_EXPORT main(void) {	
  t_class *c = class_new("sdt.pitchshift~", (method)pitchshift_new, (method)pitchshift_free, (long)sizeof(t_pitchshift), 0L, A_GIMME, 0);

  class_addmethod(c, (method)pitchshift_dsp, "dsp", A_CANT, 0);
  class_addmethod(c, (method)pitchshift_dsp64, "dsp64", A_CANT, 0);
  class_addmethod(c, (method)pitchshift_assist, "assist", A_CANT, 0);

  CLASS_ATTR_DOUBLE(c, "ratio", 0, t_pitchshift, ratio);
  CLASS_ATTR_ACCESSORS(c, "ratio", NULL, (method)pitchshift_ratio);

  class_dspinit(c);
  class_register(CLASS_BOX, c);
  pitchshift_class = c;

  return 0;
}



