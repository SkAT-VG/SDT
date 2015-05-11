/** \file SDTDCMotor.h
 * Physically informed sound synthesis model of a DC electric motor.
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

#ifndef SDT_DCMOTOR_H
#define SDT_DCMOTOR_H

typedef struct SDTDCMotor SDTDCMotor;

extern SDTDCMotor *SDTDCMotor_new(long maxSize);
extern void SDTDCMotor_free(SDTDCMotor *x);
extern void SDTDCMotor_setFilters(SDTDCMotor *x);
extern void SDTDCMotor_setRpm(SDTDCMotor *x, double f);
extern void SDTDCMotor_setLoad(SDTDCMotor *x, double f);
extern void SDTDCMotor_setCoils(SDTDCMotor *x, long l);
extern void SDTDCMotor_setSize(SDTDCMotor *x, double f);
extern void SDTDCMotor_setReson(SDTDCMotor *x, double f);
extern void SDTDCMotor_setGearRatio(SDTDCMotor *x, double f);
extern void SDTDCMotor_setHarshness(SDTDCMotor *x, double f);
extern void SDTDCMotor_setRotorGain(SDTDCMotor *x, double f);
extern void SDTDCMotor_setGearGain(SDTDCMotor *x, double f);
extern void SDTDCMotor_setBrushGain(SDTDCMotor *x, double f);
extern void SDTDCMotor_setAirGain(SDTDCMotor *x, double f);
extern double SDTDCMotor_dsp(SDTDCMotor *x);

#endif