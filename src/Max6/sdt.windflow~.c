#include "ext.h"
#include "ext_obex.h"
/** \file sdt.windflow~.c
 * Max external for the simulation of flowing gases.
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

#include "z_dsp.h"
#include "SDT/SDTCommon.h"
#include "SDT/SDTGases.h"

// struct to represent the object's state
typedef struct _windflow {
  t_pxobject ob;			// the object itself (t_pxobject in MSP instead of t_object)
    SDTWindFlow *flow;
} t_windflow;

static t_class *windflow_class = NULL;

void *windflow_new(t_symbol *s, long argc, t_atom *argv) {
  t_windflow *x = (t_windflow *)object_alloc(windflow_class);
  
  if (x) {
    dsp_setup((t_pxobject *)x, 1);
    outlet_new(x, "signal");
    x->flow = SDTWindFlow_new();
  }
  return (x);
}

void windflow_free(t_windflow *x) {
  dsp_free((t_pxobject *)x);
  SDTWindFlow_free(x->flow);
}

void windflow_assist(t_windflow *x, void *b, long m, long a, char *s) {
  if (m == ASSIST_INLET) {
    sprintf(s, "(signal): Wind speed [0.0 ~ 1.0]");
  } 
  else {
    sprintf(s, "(signal): Output");
  }
}

t_int *windflow_perform(t_int *w) {
  t_windflow *x = (t_windflow *)(w[1]);
  t_float *inL = (t_float *)(w[2]);
  t_float *outL = (t_float *)(w[3]);
  int n = (int)w[4];
	
  while (n--) {
    SDTWindFlow_setWindSpeed(x->flow, *inL++);
    *outL++ = (float)SDTWindFlow_dsp(x->flow);
  }

  return w + 5;
}

void windflow_dsp(t_windflow *x, t_signal **sp, short *count) {
  SDT_setSampleRate(sp[0]->s_sr);
  SDTWindFlow_setFilters(x->flow);
  dsp_add(windflow_perform, 4, x, sp[0]->s_vec, sp[1]->s_vec, sp[0]->s_n);
}

void windflow_perform64(t_windflow *x, t_object *dsp64, double **ins, long numins, double **outs, long numouts, long sampleframes, long flags, void *userparam) {
  t_double *inL = ins[0];
  t_double *outL = outs[0];
  int n = sampleframes;
	
  while (n--) {
    SDTWindFlow_setWindSpeed(x->flow, *inL++);
    *outL++ = SDTWindFlow_dsp(x->flow);
  }
}

void windflow_dsp64(t_windflow *x, t_object *dsp64, short *count, double samplerate, long maxvectorsize, long flags) {
  SDT_setSampleRate(samplerate);
  SDTWindFlow_setFilters(x->flow);
  object_method(dsp64, gensym("dsp_add64"), x, windflow_perform64, 0, NULL);
}

int C74_EXPORT main(void) {	
  t_class *c = class_new("sdt.windflow~", (method)windflow_new, (method)windflow_free, (long)sizeof(t_windflow), 0L, A_GIMME, 0);
	
  class_addmethod(c, (method)windflow_dsp, "dsp", A_CANT, 0);
  class_addmethod(c, (method)windflow_dsp64, "dsp64", A_CANT, 0);
  class_addmethod(c, (method)windflow_assist, "assist", A_CANT, 0);
	
  class_dspinit(c);
  class_register(CLASS_BOX, c);
  windflow_class = c;

  return 0;
}