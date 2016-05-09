/** \file fluidflow~.c
 * Puredata external for the generation of liquid sounds.
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
#include "SDT/SDTLiquids.h"
#ifdef NT
#pragma warning( disable : 4244 )
#pragma warning( disable : 4305 )
#endif

static t_class *fluidflow_class;

typedef struct _fluidflow {
  t_object obj;
  SDTFluidFlow *flow;
  t_outlet *out;
} t_fluidflow;

void fluidflow_avgRate(t_fluidflow *x, t_float f) {
  SDTFluidFlow_setAvgRate(x->flow, f);
}

void fluidflow_minRadius(t_fluidflow *x, t_float f) {
  SDTFluidFlow_setMinRadius(x->flow, f);
}

void fluidflow_maxRadius(t_fluidflow *x, t_float f) {
  SDTFluidFlow_setMaxRadius(x->flow, f);
}

void fluidflow_expRadius(t_fluidflow *x, t_float f) {
  SDTFluidFlow_setExpRadius(x->flow, f);
}

void fluidflow_minDepth(t_fluidflow *x, t_float f) {
  SDTFluidFlow_setMinDepth(x->flow, f);
}

void fluidflow_maxDepth(t_fluidflow *x, t_float f) {
  SDTFluidFlow_setMaxDepth(x->flow, f);
}

void fluidflow_expDepth(t_fluidflow *x, t_float f) {
  SDTFluidFlow_setExpDepth(x->flow, f);
}

void fluidflow_riseFactor(t_fluidflow *x, t_float f) {
  SDTFluidFlow_setRiseFactor(x->flow, f);
}

void fluidflow_riseCutoff(t_fluidflow *x, t_float f) {
  SDTFluidFlow_setRiseCutoff(x->flow, f);
}

static t_int *fluidflow_perform(t_int *w) { 
  t_fluidflow *x = (t_fluidflow *)(w[1]);
  t_float *out = (t_float *)(w[2]);
  int n = (int)(w[3]);
  while (n--) {
    *out++ = (float)SDTFluidFlow_dsp(x->flow);
  }
  return (w+4);
}

static void fluidflow_dsp(t_fluidflow *x, t_signal **sp) {
  SDT_setSampleRate(sp[0]->s_sr);
  dsp_add(fluidflow_perform, 3, x, sp[0]->s_vec, sp[0]->s_n);
}

static void *fluidflow_new(t_symbol *s, int argc, t_atom *argv) {
  t_fluidflow *x = (t_fluidflow *)pd_new(fluidflow_class);
  x->out = outlet_new(&x->obj, gensym("signal"));
  if (argc > 0 && argv[0].a_type == A_FLOAT) {
    x->flow = SDTFluidFlow_new(atom_getfloat(argv));
  }
  else {
    x->flow = SDTFluidFlow_new(64);
  }
  return (x);
}

static void fluidflow_free(t_fluidflow *x) {
  outlet_free(x->out);
  SDTFluidFlow_free(x->flow);
}

void fluidflow_tilde_setup(void) {
  fluidflow_class = class_new(gensym("fluidflow~"), (t_newmethod)fluidflow_new, (t_method)fluidflow_free, sizeof(t_fluidflow), CLASS_DEFAULT, A_GIMME, 0);
  class_addmethod(fluidflow_class, (t_method)fluidflow_avgRate, gensym("avgRate"), A_FLOAT, 0);
  class_addmethod(fluidflow_class, (t_method)fluidflow_minRadius, gensym("minRadius"), A_FLOAT, 0);
  class_addmethod(fluidflow_class, (t_method)fluidflow_maxRadius, gensym("maxRadius"), A_FLOAT, 0);
  class_addmethod(fluidflow_class, (t_method)fluidflow_expRadius, gensym("expRadius"), A_FLOAT, 0);
  class_addmethod(fluidflow_class, (t_method)fluidflow_minDepth, gensym("minDepth"), A_FLOAT, 0);
  class_addmethod(fluidflow_class, (t_method)fluidflow_maxDepth, gensym("maxDepth"), A_FLOAT, 0);
  class_addmethod(fluidflow_class, (t_method)fluidflow_expDepth, gensym("expDepth"), A_FLOAT, 0);
  class_addmethod(fluidflow_class, (t_method)fluidflow_riseFactor, gensym("riseFactor"), A_FLOAT, 0);
  class_addmethod(fluidflow_class, (t_method)fluidflow_riseCutoff, gensym("riseCutoff"), A_FLOAT, 0);
  class_addmethod(fluidflow_class, (t_method)fluidflow_dsp, gensym("dsp"), 0);
}
