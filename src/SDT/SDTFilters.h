/** \file SDTFilters.h
 * Useful DSP routines and algorithms for signal filtering.
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

#ifndef SDT_FILTERS_H
#define SDT_FILTERS_H

typedef struct SDTOnePole SDTOnePole;

extern SDTOnePole *SDTOnePole_new();
extern void SDTOnePole_free(SDTOnePole *x);
extern void SDTOnePole_setFeedback(SDTOnePole *x, double f);
extern void SDTOnePole_lowpass(SDTOnePole *x, double f);
extern void SDTOnePole_highpass(SDTOnePole *x, double f);
extern double SDTOnePole_dsp(SDTOnePole *x, double in);

//-------------------------------------------------------------------------------------//

typedef struct SDTAllPass SDTAllPass;

extern SDTAllPass *SDTAllPass_new();
extern void SDTAllPass_free(SDTAllPass *x);
extern void SDTAllPass_setFeedback(SDTAllPass *x, double f);
extern double SDTAllPass_dsp(SDTAllPass *x, double in);

//-------------------------------------------------------------------------------------//

typedef struct SDTEnvelope SDTEnvelope;

extern SDTEnvelope *SDTEnvelope_new();
extern void SDTEnvelope_free(SDTEnvelope *x);
extern void SDTEnvelope_setAttack(SDTEnvelope *x, double a);
extern void SDTEnvelope_setRelease(SDTEnvelope *x, double r);
extern double SDTEnvelope_dsp(SDTEnvelope *x, double in);

//-------------------------------------------------------------------------------------//

typedef struct SDTTwoPoles SDTTwoPoles;

extern SDTTwoPoles *SDTTwoPoles_new();
extern void SDTTwoPoles_free(SDTTwoPoles *x);
extern void SDTTwoPoles_lowpass(SDTTwoPoles *x, double fc);
extern void SDTTwoPoles_highpass(SDTTwoPoles *x, double fc);
extern void SDTTwoPoles_resonant(SDTTwoPoles *x, double fc, double q);
extern double SDTTwoPoles_dsp(SDTTwoPoles *x, double in);

//-------------------------------------------------------------------------------------//

typedef struct SDTAverage SDTAverage;

extern SDTAverage *SDTAverage_new(long size);
extern void SDTAverage_free(SDTAverage *x);
extern double SDTAverage_dsp(SDTAverage *x, double in);

//-------------------------------------------------------------------------------------//

typedef struct SDTDelay SDTDelay;

extern SDTDelay *SDTDelay_new(long maxDelay);
extern void SDTDelay_free(SDTDelay *x);
extern void SDTDelay_clear(SDTDelay *x);
extern void SDTDelay_setDelay(SDTDelay *x, double f);
extern double SDTDelay_dsp(SDTDelay *x, double in);

//-------------------------------------------------------------------------------------//

typedef struct SDTComb SDTComb;

extern SDTComb *SDTComb_new(long maxXDelay, long maxYDelay);
extern void SDTComb_free(SDTComb *x);
extern void SDTComb_setXDelay(SDTComb *x, long l);
extern void SDTComb_setYDelay(SDTComb *x, long l);
extern void SDTComb_setXYDelay(SDTComb *x, long l);
extern void SDTComb_setXGain(SDTComb *x, double f);
extern void SDTComb_setYGain(SDTComb *x, double f);
extern void SDTComb_setXYGain(SDTComb *x, double f);
extern double SDTComb_dsp(SDTComb *x, double in);

//-------------------------------------------------------------------------------------//

typedef struct SDTWaveguide SDTWaveguide;

extern SDTWaveguide *SDTWaveguide_new(int maxDelay);
extern void SDTWaveguide_free(SDTWaveguide *x);
extern double SDTWaveguide_getFwdOut(SDTWaveguide *x);
extern double SDTWaveguide_getRevOut(SDTWaveguide *x);
extern void SDTWaveguide_setDelay(SDTWaveguide *x, long l);
extern void SDTWaveguide_setFwdFeedback(SDTWaveguide *x, double f);
extern void SDTWaveguide_setRevFeedback(SDTWaveguide *x, double f);
extern void SDTWaveguide_setFwdDamping(SDTWaveguide *x, double f);
extern void SDTWaveguide_setRevDamping(SDTWaveguide *x, double f);
extern void SDTWaveguide_dsp(SDTWaveguide *x, double fwdIn, double revIn);

#endif
