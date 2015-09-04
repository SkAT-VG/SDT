/** \file windflow~.c
 * Puredata external for the simulation of flowing gases.
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

#include "m_pd.h"
#include "SDT/SDTCommon.h"
#include "SDT/SDTGases.h"
#ifdef NT
#pragma warning( disable : 4244 )
#pragma warning( disable : 4305 )
#endif

static t_class *windflow_class;

typedef struct _windflow {
  t_object obj;
  SDTWindFlow *flow;
  t_float f;
  t_outlet *out;
} t_windflow;

static t_int *windflow_perform(t_int *w) { 
  t_windflow *x = (t_windflow *)(w[1]);
  t_float *in = (t_float *)(w[2]);
  t_float *out = (t_float *)(w[3]);
  int n = (int)(w[4]);
  while (n--) {
    SDTWindFlow_setWindSpeed(x->flow, *in++);
    *out++ = (float)SDTWindFlow_dsp(x->flow);
  }
  return (w+5);
}

static void windflow_dsp(t_windflow *x, t_signal **sp) {
  SDT_setSampleRate(sp[0]->s_sr);
  SDTWindFlow_setFilters(x->flow);
  dsp_add(windflow_perform, 4, x, sp[0]->s_vec, sp[1]->s_vec, sp[0]->s_n);
}

static void *windflow_new(void) {
  t_windflow *x = (t_windflow *)pd_new(windflow_class);
  x->out = outlet_new(&x->obj, gensym("signal"));
  x->flow = SDTWindFlow_new();
  return (x);
}

static void windflow_free(t_windflow *x) {
  outlet_free(x->out);
  SDTWindFlow_free(x->flow);
}

void windflow_tilde_setup(void) {
  windflow_class = class_new(gensym("windflow~"), (t_newmethod)windflow_new, (t_method)windflow_free, sizeof(t_windflow), 0, A_DEFFLOAT, 0);
  CLASS_MAINSIGNALIN(windflow_class, t_windflow, f);
  class_addmethod(windflow_class, (t_method)windflow_dsp, gensym("dsp"), 0);
}
