/** \file sdt.spectralfeats~.c
 * Max external for spectral feature extraction.
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

typedef struct _spectralfeats {
  t_pxobject ob;
  SDTSpectralFeats *feats;
  void *outlets[8], *send;
  double overlap, minFreq, maxFreq, outs[8];
} t_spectralfeats;

static t_class *spectralfeats_class = NULL;

void spectralfeats_assist(t_spectralfeats *x, void *b, long m, long a, char *s) {
  if (m == ASSIST_INLET) {
    sprintf(s, "(signal): Input\n"
               "Object attributes and messages (see help patch)");
  } 
  else {
    switch (a) {
      case 0:
        sprintf(s, "(float): Spectral magnitude");
        break;
      case 1:
        sprintf(s, "(float): Spectral centroid (brightness)");
        break;
      case 2:
        sprintf(s, "(float): Spectral variance (spread)");
        break;
      case 3:
        sprintf(s, "(float): Spectral skewness");
        break;
      case 4:
        sprintf(s, "(float): Spectral kurtosis");
        break;
      case 5:
        sprintf(s, "(float): Spectral flatness");
        break;
      case 6:
        sprintf(s, "(float): Spectral flux");
        break;
      case 7:
        sprintf(s, "(float): Whitened and rectified spectral flux (onset function)");
        break;
    }
  }
}

void spectralfeats_overlap(t_spectralfeats *x, void *attr, long ac, t_atom *av) {
  x->overlap = atom_getfloat(av);
  SDTSpectralFeats_setOverlap(x->feats, x->overlap);
}

void spectralfeats_minFreq(t_spectralfeats *x, void *attr, long ac, t_atom *av) {
  x->minFreq = atom_getfloat(av);
  SDTSpectralFeats_setMinFreq(x->feats, x->minFreq);
}

void spectralfeats_maxFreq(t_spectralfeats *x, void *attr, long ac, t_atom *av) {
  x->maxFreq = atom_getfloat(av);
  SDTSpectralFeats_setMaxFreq(x->feats, x->maxFreq);
}

void spectralfeats_send(t_spectralfeats *x) {
  outlet_float(x->outlets[0], x->outs[0]);
  outlet_float(x->outlets[1], x->outs[1]);
  outlet_float(x->outlets[2], x->outs[2]);
  outlet_float(x->outlets[3], x->outs[3]);
  outlet_float(x->outlets[4], x->outs[4]);
  outlet_float(x->outlets[5], x->outs[5]);
  outlet_float(x->outlets[6], x->outs[6]);
  outlet_float(x->outlets[7], x->outs[7]);
}

t_int *spectralfeats_perform(t_int *w) {
  t_spectralfeats *x = (t_spectralfeats *)(w[1]);
  t_float *in = (t_float *)(w[2]);
  int n = (int)w[3];
  
  while (n--) {
    if (SDTSpectralFeats_dsp(x->feats, x->outs, *in++)) {
      qelem_set(x->send);
    }
  }

  return w + 4;
}

void spectralfeats_dsp(t_spectralfeats *x, t_signal **sp, short *count) {
  SDT_setSampleRate(sp[0]->s_sr);
  SDTSpectralFeats_setOverlap(x->feats, x->overlap);
  SDTSpectralFeats_setMinFreq(x->feats, x->minFreq);
  SDTSpectralFeats_setMaxFreq(x->feats, x->maxFreq);
  dsp_add(spectralfeats_perform, 3, x, sp[0]->s_vec, sp[0]->s_n);
}

void spectralfeats_perform64(t_spectralfeats *x, t_object *dsp64, double **ins, long numins, double **outs, long numouts, long sampleframes, long flags, void *userparam) {
  t_double *in = ins[0];
  int n = sampleframes;
  
  while (n--) {
    if (SDTSpectralFeats_dsp(x->feats, x->outs, *in++)) {
      qelem_set(x->send);
    }
  }
}

void spectralfeats_dsp64(t_spectralfeats *x, t_object *dsp64, short *count, double samplerate, long maxvectorsize, long flags) {
  SDT_setSampleRate(samplerate);
  SDTSpectralFeats_setOverlap(x->feats, x->overlap);
  SDTSpectralFeats_setMinFreq(x->feats, x->minFreq);
  SDTSpectralFeats_setMaxFreq(x->feats, x->maxFreq);
  object_method(dsp64, gensym("dsp_add64"), x, spectralfeats_perform64, 0, NULL);
}

void *spectralfeats_new(t_symbol *s, long argc, t_atom *argv) {
  t_spectralfeats *x;
  long windowSize;
  
  x = (t_spectralfeats *)object_alloc(spectralfeats_class);
  if (x) {
    dsp_setup((t_pxobject *)x, 1);
    if (argc > 0 && atom_gettype(&argv[0]) == A_LONG) {
      windowSize = atom_getlong(&argv[0]);
    }
    else {
      windowSize = 1024;
    }
    x->feats = SDTSpectralFeats_new(windowSize);
    x->outlets[7] = floatout(x);
    x->outlets[6] = floatout(x);
    x->outlets[5] = floatout(x);
    x->outlets[4] = floatout(x);
    x->outlets[3] = floatout(x);
    x->outlets[2] = floatout(x);
    x->outlets[1] = floatout(x);
    x->outlets[0] = floatout(x);
    x->send = qelem_new((t_object *)x, (method)spectralfeats_send);
    attr_args_process(x, argc, argv);
  }
  return (x);
}

void spectralfeats_free(t_spectralfeats *x) {
  dsp_free((t_pxobject *)x);
  object_free(x->outlets[0]);
  object_free(x->outlets[1]);
  object_free(x->outlets[2]);
  object_free(x->outlets[3]);
  object_free(x->outlets[4]);
  object_free(x->outlets[5]);
  object_free(x->outlets[6]);
  object_free(x->outlets[7]);
  qelem_free(x->send);
  SDTSpectralFeats_free(x->feats);
}

int C74_EXPORT main(void) {	
  t_class *c = class_new("sdt.spectralfeats~", (method)spectralfeats_new, (method)spectralfeats_free, (long)sizeof(t_spectralfeats), 0L, A_GIMME, 0);
	
  class_addmethod(c, (method)spectralfeats_dsp, "dsp", A_CANT, 0);
  class_addmethod(c, (method)spectralfeats_dsp64, "dsp64", A_CANT, 0);
  class_addmethod(c, (method)spectralfeats_assist, "assist", A_CANT, 0);
  
  CLASS_ATTR_DOUBLE(c, "overlap", 0, t_spectralfeats, overlap);
  CLASS_ATTR_DOUBLE(c, "minFreq", 0, t_spectralfeats, minFreq);
  CLASS_ATTR_DOUBLE(c, "maxFreq", 0, t_spectralfeats, maxFreq);
  
  CLASS_ATTR_FILTER_CLIP(c, "overlap", 0.0, 1.0);
  CLASS_ATTR_FILTER_MIN(c, "minFreq", 0.0);
  CLASS_ATTR_FILTER_MIN(c, "maxFreq", 0.0);
  
  CLASS_ATTR_ACCESSORS(c, "overlap", NULL, (method)spectralfeats_overlap);
  CLASS_ATTR_ACCESSORS(c, "minFreq", NULL, (method)spectralfeats_minFreq);
  CLASS_ATTR_ACCESSORS(c, "maxFreq", NULL, (method)spectralfeats_maxFreq);
  
  CLASS_ATTR_ORDER(c, "overlap", 0, "1");
  CLASS_ATTR_ORDER(c, "minFreq", 0, "2");
  CLASS_ATTR_ORDER(c, "maxFreq", 0, "3");
  
  class_dspinit(c);
  class_register(CLASS_BOX, c);
  spectralfeats_class = c;

  return 0;
}