/** \file SDTCommon.h
 * Useful shared SDT-related stuff,
 * E.g. SDT version number, sample rate, signal clipping etc.
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

#ifndef SDT_COMMON_H
#define SDT_COMMON_H

#define SDT_ver          064
#define SDT_ver_str     "064"
#define SDT_PI           3.141592653589793
#define SDT_TWOPI        6.283185307179586
#define SDT_EULER        2.718281828459045
#define SDT_SQRT2        1.4142135623730951
#define SDT_MACH1      340.29
#define SDT_EARTH        9.81
#define SDT_MICRO        0.000001
#define SDT_LN001       -6.907755278982137

extern double SDT_sampleRate;
extern double SDT_timeStep;

extern void SDT_setSampleRate(double sampleRate);
extern long SDT_clip(long x, long min, long max);
extern double SDT_expRand(double min, double max);
extern double SDT_fclip(double x, double min, double max);
extern double SDT_frand();
extern double SDT_gravity(double mass);
extern double SDT_groundDecay(double grain, double velocity);
extern void SDT_hanning(double *sig, int n);
extern double SDT_kinetic(double mass, double velocity);
extern double SDT_normalize(double x, double min, double max);
extern double SDT_samplesInAir(double length);
extern double SDT_scale(double x, double in0, double in1,
                        double out0, double out1, double e);
extern int SDT_signum(double x);
#endif
