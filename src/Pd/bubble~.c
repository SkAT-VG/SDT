/** \file bubble~.c
 * Puredata external for the generation of single bubbles.
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

#include "SDTCommonPd.h"
#include "SDT/SDTCommon.h"
#include "SDT/SDTLiquids.h"
#ifdef NT
#pragma warning( disable : 4244 )
#pragma warning( disable : 4305 )
#endif

static t_class *bubble_class;

typedef struct _bubble {
  t_object obj;
  SDTBubble *bubble;
  t_float radius, riseFactor;
  t_outlet *out;
  char *key;
} t_bubble;

void bubble_bang(t_bubble *x) {
  SDTBubble_setRadius(x->bubble, x->radius);
  SDTBubble_setRiseFactor(x->bubble, x->riseFactor);
  SDTBubble_update(x->bubble);
  SDTBubble_normAmp(x->bubble);
}

void bubble_radius(t_bubble *x, t_float f) {
  x->radius = f;
}

void bubble_riseFactor(t_bubble *x, t_float f) {
  x->riseFactor = f;
}

static t_int *bubble_perform(t_int *w) { 
  t_bubble *x = (t_bubble *)(w[1]);
  t_float *out = (t_float *)(w[2]);
  int n = (int)(w[3]);
  while (n--) {
    *out++ = (float)SDTBubble_dsp(x->bubble);
  }
  return (w+4);
}

static void bubble_dsp(t_bubble *x, t_signal **sp) {
  SDT_setSampleRate(sp[0]->s_sr);
  dsp_add(bubble_perform, 3, x, sp[0]->s_vec, sp[0]->s_n);
}

static void *bubble_new(t_symbol *s, int argc, t_atom *argv) {
  SDT_PD_ARG_PARSE(1, A_SYMBOL)

  t_bubble *x = (t_bubble *)pd_new(bubble_class);
  x->bubble = SDTBubble_new();

  SDT_PD_REGISTER(Bubble, bubble, "bubble", 0)

  x->out = outlet_new(&x->obj, gensym("signal"));
  return (x);
}

static void bubble_free(t_bubble *x) {
  outlet_free(x->out);
  SDT_PD_FREE(Bubble, bubble)
}

void bubble_tilde_setup(void) {
  bubble_class = class_new(gensym("bubble~"), (t_newmethod)bubble_new, (t_method)bubble_free, sizeof(t_bubble), CLASS_DEFAULT, A_GIMME, 0);
  class_addmethod(bubble_class, (t_method)bubble_bang, gensym("bang"), 0);
  class_addmethod(bubble_class, (t_method)bubble_radius, gensym("radius"), A_FLOAT, 0);
  class_addmethod(bubble_class, (t_method)bubble_riseFactor, gensym("riseFactor"), A_FLOAT, 0);
  class_addmethod(bubble_class, (t_method)bubble_dsp, gensym("dsp"), 0);
}
