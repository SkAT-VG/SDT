/** \file windcavity~.c
 * Puredata external for the simulation of gas flowing through resonating cavities.
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

static t_class *windcavity_class;

typedef struct _windcavity {
  t_object obj;
  SDTWindCavity *cavity;
  t_float f;
  t_outlet *out;
} t_windcavity;

void windcavity_length(t_windcavity *x, t_float f) {
  SDTWindCavity_setLength(x->cavity, f);
}

void windcavity_diameter(t_windcavity *x, t_float f) {
  SDTWindCavity_setDiameter(x->cavity, f);
}

static t_int *windcavity_perform(t_int *w) { 
  t_windcavity *x = (t_windcavity *)(w[1]);
  t_float *in = (t_float *)(w[2]);
  t_float *out = (t_float *)(w[3]);
  int n = (int)(w[4]);
  while (n--) {
    SDTWindCavity_setWindSpeed(x->cavity, *in++);
    *out++ = (float)SDTWindCavity_dsp(x->cavity);
  }
  return (w+5);
}

static void windcavity_dsp(t_windcavity *x, t_signal **sp) {
  SDT_setSampleRate(sp[0]->s_sr);
  dsp_add(windcavity_perform, 4, x, sp[0]->s_vec, sp[1]->s_vec, sp[0]->s_n);
}

static void *windcavity_new(t_symbol *s, int argc, t_atom *argv) {
  t_windcavity *x = (t_windcavity *)pd_new(windcavity_class);
  x->out = outlet_new(&x->obj, gensym("signal"));
  if (argc > 0 && argv[0].a_type == A_FLOAT) {
    x->cavity = SDTWindCavity_new(atom_getfloat(argv));
  }
  else {
    x->cavity = SDTWindCavity_new(48000);
  }
  return (x);
}

static void windcavity_free(t_windcavity *x) {
  outlet_free(x->out);
  SDTWindCavity_free(x->cavity);
}

void windcavity_tilde_setup(void) {
  windcavity_class = class_new(gensym("windcavity~"), (t_newmethod)windcavity_new, (t_method)windcavity_free, sizeof(t_windcavity), CLASS_DEFAULT, A_GIMME, 0);
  CLASS_MAINSIGNALIN(windcavity_class, t_windcavity, f);
  class_addmethod(windcavity_class, (t_method)windcavity_length, gensym("length"), A_FLOAT, 0);
  class_addmethod(windcavity_class, (t_method)windcavity_diameter, gensym("diameter"), A_FLOAT, 0);
  class_addmethod(windcavity_class, (t_method)windcavity_dsp, gensym("dsp"), 0);
}
