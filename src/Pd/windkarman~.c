/** \file windkarman~.c
 * Puredata external for the simulation of karman vortex sounds.
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

static t_class *windkarman_class;

typedef struct _windkarman {
  t_object obj;
  SDTWindKarman *karman;
  t_float f;
  t_outlet *out;
} t_windkarman;

void windkarman_diameter(t_windkarman *x, t_float f) {
  SDTWindKarman_setDiameter(x->karman, f);
}

static t_int *windkarman_perform(t_int *w) { 
  t_windkarman *x = (t_windkarman *)(w[1]);
  t_float *in = (t_float *)(w[2]);
  t_float *out = (t_float *)(w[3]);
  int n = (int)(w[4]);
  while (n--) {
    SDTWindKarman_setWindSpeed(x->karman, *in++);
    *out++ = (float)SDTWindKarman_dsp(x->karman);
  }
  return (w+5);
}

static void windkarman_dsp(t_windkarman *x, t_signal **sp) {
  SDT_setSampleRate(sp[0]->s_sr);
  dsp_add(windkarman_perform, 4, x, sp[0]->s_vec, sp[1]->s_vec, sp[0]->s_n);
}

static void *windkarman_new(t_symbol *s, int argc, t_atom *argv) {
  t_windkarman *x = (t_windkarman *)pd_new(windkarman_class);
  x->out = outlet_new(&x->obj, gensym("signal"));
  x->karman = SDTWindKarman_new();
  return (x);
}

static void windkarman_free(t_windkarman *x) {
  outlet_free(x->out);
  SDTWindKarman_free(x->karman);
}

void windkarman_tilde_setup(void) {
  windkarman_class = class_new(gensym("windkarman~"), (t_newmethod)windkarman_new, (t_method)windkarman_free, sizeof(t_windkarman), CLASS_DEFAULT, A_GIMME, 0);
  CLASS_MAINSIGNALIN(windkarman_class, t_windkarman, f);
  class_addmethod(windkarman_class, (t_method)windkarman_diameter, gensym("diameter"), A_FLOAT, 0);
  class_addmethod(windkarman_class, (t_method)windkarman_dsp, gensym("dsp"), 0);
}
