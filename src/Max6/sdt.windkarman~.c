/** \file sdt.windkarman~.c
 * Max external for the simulation of Karman vortexes
 * (gas flowing across thin objects).
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
#include "SDT/SDTGases.h"

typedef struct _windkarman {
	t_pxobject ob;
	SDTWindKarman *karman;
	double diameter;
} t_windkarman;

static t_class *windkarman_class = NULL;

void *windkarman_new(t_symbol *s, long argc, t_atom *argv) {
  t_windkarman *x = (t_windkarman *)object_alloc(windkarman_class);

  if (x) {
    dsp_setup((t_pxobject *)x, 1);
    outlet_new(x, "signal");
    x->karman = SDTWindKarman_new();
    attr_args_process(x, argc, argv);
  }
  return (x);
}

void windkarman_free(t_windkarman *x) {
  dsp_free((t_pxobject *)x);
  SDTWindKarman_free(x->karman);
}

void windkarman_assist(t_windkarman *x, void *b, long m, long a, char *s) {
  if (m == ASSIST_INLET) { //inlet
    sprintf(s, "(signal): Wind speed [0.0 ~ 1.0]\n"
               "diameter (float): Object diameter (mm)");
  } 
  else {
    sprintf(s, "(signal): Output");
  }
}

void windkarman_diameter(t_windkarman *x, void *attr, long ac, t_atom *av) {
  x->diameter = atom_getfloat(av);
  SDTWindKarman_setDiameter(x->karman, 0.001 * x->diameter);
}

t_int *windkarman_perform(t_int *w) {
  t_windkarman *x = (t_windkarman *)(w[1]);
  t_float *inL = (t_float *)(w[2]);
  t_float *outL = (t_float *)(w[3]);
  int n = (int)w[4];

  while (n--) {
    SDTWindKarman_setWindSpeed(x->karman, *inL++);
    *outL++ = (float)SDTWindKarman_dsp(x->karman);
  }
  
  return w + 5;
}

void windkarman_dsp(t_windkarman *x, t_signal **sp, short *count) {
  SDT_setSampleRate(sp[0]->s_sr);
  dsp_add(windkarman_perform, 4, x, sp[0]->s_vec, sp[1]->s_vec, sp[0]->s_n);
}

void windkarman_perform64(t_windkarman *x, t_object *dsp64, double **ins, long numins, double **outs, long numouts, long sampleframes, long flags, void *userparam) {
  t_double *inL = ins[0];
  t_double *outL = outs[0];
  int n = sampleframes;
	
  while (n--) {
    SDTWindKarman_setWindSpeed(x->karman, *inL++);
    *outL++ = SDTWindKarman_dsp(x->karman);
  }
}

void windkarman_dsp64(t_windkarman *x, t_object *dsp64, short *count, double samplerate, long maxvectorsize, long flags) {
  SDT_setSampleRate(samplerate);
  object_method(dsp64, gensym("dsp_add64"), x, windkarman_perform64, 0, NULL);
}

int C74_EXPORT main(void) {	
  t_class *c = class_new("sdt.windkarman~", (method)windkarman_new, (method)windkarman_free, (long)sizeof(t_windkarman), 0L, A_GIMME, 0);

  class_addmethod(c, (method)windkarman_dsp, "dsp", A_CANT, 0);
  class_addmethod(c, (method)windkarman_dsp64, "dsp64", A_CANT, 0);
  class_addmethod(c, (method)windkarman_assist, "assist", A_CANT, 0);

  CLASS_ATTR_DOUBLE(c, "diameter", 0, t_windkarman, diameter);
  CLASS_ATTR_FILTER_MIN(c, "diameter", 0.001);
  CLASS_ATTR_ACCESSORS(c, "diameter", NULL, (method)windkarman_diameter);

  class_dspinit(c);
  class_register(CLASS_BOX, c);
  windkarman_class = c;

  return 0;
}



