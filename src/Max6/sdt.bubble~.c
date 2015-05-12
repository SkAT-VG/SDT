/** \file sdt.bubble~.c
 * Max external for the generation of single bubbles.
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
#include "SDT/SDTLiquids.h"

typedef struct _bubble {
	t_pxobject ob;
	SDTBubble *bubble;
    double radius, riseFactor;
} t_bubble;

static t_class *bubble_class = NULL;

void *bubble_new(t_symbol *s, short argc, t_atom *argv) {
	t_bubble *x = (t_bubble *)object_alloc(bubble_class);

	if (x) {
		dsp_setup((t_pxobject *)x, 0);
		outlet_new(x, "signal");
		x->bubble = SDTBubble_new();
		attr_args_process(x, argc, argv); 
	}
	return (x);
}

void bubble_free(t_bubble *x)  {
	dsp_free((t_pxobject *)x);
    SDTBubble_free(x->bubble);
}

void bubble_assist(t_bubble *x, void *b, long m, long a, char *s) {
	if (m == ASSIST_INLET) {
        sprintf(s, "(bang): Triggers a bubble\n"
                   "radius (float): Bubble radius, in mm [0.15 ~ 150.0]\n"
                   "riseFactor (float): Noticeable rise in frequency [0.0 ~ 3.0]");
	} 
	else {
	    sprintf(s, "(signal): Output");
	}
}

void bubble_bang(t_bubble *x) {
    SDTBubble_update(x->bubble, 0.001 * x->radius, 1.0, x->riseFactor);
    SDTBubble_normAmp(x->bubble);
}

t_int *bubble_perform(t_int *w) {
	t_bubble *x = (t_bubble *)(w[1]);
	t_float *outL = (t_float *)(w[2]);
	int n = (int)w[3];
	
	while (n--)
		*outL++ = SDTBubble_dsp(x->bubble);
		
	return w + 4;
}

void bubble_perform64(t_bubble *x, t_object *dsp64, double **ins, long numins,
                      double **outs, long numouts, long sampleframes,
                      long flags, void *userparam) {
	t_double *outL = outs[0];
	int n = sampleframes;
	
	while (n--)
		*outL++ = SDTBubble_dsp(x->bubble);
}

void bubble_dsp(t_bubble *x, t_signal **sp, short *count) {
	SDT_setSampleRate(sp[0]->s_sr);
	dsp_add(bubble_perform, 3, x, sp[1]->s_vec, sp[0]->s_n);
}

void bubble_dsp64(t_bubble *x, t_object *dsp64, short *count,
                  double samplerate, long maxvectorsize, long flags) {
	SDT_setSampleRate(samplerate);
	object_method(dsp64, gensym("dsp_add64"), x, bubble_perform64, 0, NULL);
}

int C74_EXPORT main(void) {	
	t_class *c = class_new("sdt.bubble~", (method)bubble_new, (method)bubble_free,
	                       (long)sizeof(t_bubble), 0L, A_GIMME, 0);
	
	
	class_addmethod(c, (method)bubble_bang, "bang", 0);
	class_addmethod(c, (method)bubble_dsp, "dsp", A_CANT, 0);
	class_addmethod(c, (method)bubble_dsp64, "dsp64", A_CANT, 0);
	class_addmethod(c, (method)bubble_assist, "assist", A_CANT, 0);
	
	CLASS_ATTR_DOUBLE(c, "radius", 0, t_bubble, radius);
    CLASS_ATTR_DOUBLE(c, "riseFactor", 0, t_bubble, riseFactor);
	
	CLASS_ATTR_FILTER_CLIP(c, "radius", 0.15, 150.0);
    CLASS_ATTR_FILTER_CLIP(c, "riseFactor", 0.0, 3.0);
	
	CLASS_ATTR_ORDER(c, "radius", 0, "1");
	CLASS_ATTR_ORDER(c, "riseFactor", 0, "2");
	
	class_dspinit(c);
	class_register(CLASS_BOX, c);
	bubble_class = c;

	return 0;
}