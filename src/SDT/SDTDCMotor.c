/** \file SDTDCMotor.c
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

#include <math.h>
#include <stdlib.h>
#include <time.h>
#include "SDTCommon.h"
#include "SDTFilters.h"
#include "SDTOscillators.h"
#include "SDTDCMotor.h"

struct SDTDCMotor {
  SDTComb *chassis;
  SDTTwoPoles *brushFilter, *airFilter;
  double rpm, load, size, reson, gearRatio, harshness,
         rotorGain, gearGain, brushGain, airGain,
         revPhase, rotorPhase, gearPhase;
  long coils;
};

SDTDCMotor *SDTDCMotor_new(long maxSize) {
  SDTDCMotor *x;
  
  x = (SDTDCMotor *)malloc(sizeof(SDTDCMotor));
  x->chassis = SDTComb_new(maxSize, maxSize);
  x->brushFilter = SDTTwoPoles_new();
  x->airFilter = SDTTwoPoles_new();
  x->revPhase = 0.0;
  x->rotorPhase = 0.0;
  x->gearPhase = 0.0;
  x->rpm = 0.0;
  x->load = 0.0;
  x->coils = 2;
  x->size = 0.2;
  x->reson = 0.8;
  x->gearRatio = 1.0;
  x->harshness = 0.5;
  x->rotorGain = 0.5;
  x->gearGain = 0.3;
  x->brushGain = 0.2;
  return x;
}

void SDTDCMotor_free(SDTDCMotor *x) {
  SDTComb_free(x->chassis);
  SDTTwoPoles_free(x->brushFilter);
  SDTTwoPoles_free(x->airFilter);
  free(x);
}

void SDTDCMotor_setFilters(SDTDCMotor *x) {
  SDTComb_setYGain(x->chassis, x->reson);
  SDTComb_setYDelay(x->chassis, SDT_samplesInAir(x->size));
  SDTTwoPoles_resonant(x->brushFilter, 4000.0, 3.0);
  SDTTwoPoles_resonant(x->airFilter, 800.0, 3.0);
}

void SDTDCMotor_setRpm(SDTDCMotor *x, double f) {
  x->rpm = fmax(0.0, f);
}

void SDTDCMotor_setLoad(SDTDCMotor *x, double f) {
  x->load = SDT_fclip(f, 0.0, 1.0);
}

void SDTDCMotor_setCoils(SDTDCMotor *x, long l) {
  x->coils = l > 2 ? l : 2;
}

void SDTDCMotor_setSize(SDTDCMotor *x, double f) {
  x->size = fmax(f, 0.0);
  SDTComb_setYDelay(x->chassis, SDT_samplesInAir(x->size));
}

void SDTDCMotor_setReson(SDTDCMotor *x, double f) {
  x->reson = SDT_fclip(f, 0.0, 1.0);
  SDTComb_setYGain(x->chassis, x->reson);
}

void SDTDCMotor_setGearRatio(SDTDCMotor *x, double f) {
  x->gearRatio = fmax(f, 0.0);
}

void SDTDCMotor_setHarshness(SDTDCMotor *x, double f) {
  x->harshness = SDT_fclip(f, 0.0, 1.0);
}

void SDTDCMotor_setRotorGain(SDTDCMotor *x, double f) {
  x->rotorGain = SDT_fclip(f, 0.0, 1.0);
}

void SDTDCMotor_setGearGain(SDTDCMotor *x, double f) {
  x->gearGain = SDT_fclip(f, 0.0, 1.0);
}

void SDTDCMotor_setBrushGain(SDTDCMotor *x, double f) {
  x->brushGain = SDT_fclip(f, 0.0, 1.0);
}

void SDTDCMotor_setAirGain(SDTDCMotor *x, double f) {
  x->airGain = SDT_fclip(f, 0.0, 1.0);
}

double SDTDCMotor_dsp(SDTDCMotor *x) {
  double revStep, rotorStep, gearStep,
         rotor, gears, brushes, air,
         partPhase, partGain, totGain, outGain;
  int i;
  
  revStep = SDT_timeStep * x->rpm / 60.0;
  x->revPhase += revStep;
  x->revPhase -= (int)x->revPhase;
  rotorStep = revStep * x->coils * (1.0 + x->load * cos(SDT_TWOPI * x->revPhase));
  x->rotorPhase += rotorStep;
  x->rotorPhase -= (int)x->rotorPhase;
  gearStep = rotorStep * x->gearRatio;
  x->gearPhase += gearStep;
  x->gearPhase -= (int)x->gearPhase;
  rotor = 0.0;
  gears = 0.0;
  totGain = 0.0;
  for (i = 0; i < 16; i++) {
    partPhase = SDT_TWOPI * (i + 1);
    partGain = exp(-(1.0 - x->harshness) * i);
    rotor += cos(partPhase * x->rotorPhase) * partGain;
    gears += cos(partPhase * x->gearPhase) * partGain;
    totGain += partGain;
  }
  rotor /= totGain;
  gears /= totGain;
  brushes = SDTTwoPoles_dsp(x->brushFilter, rotor * SDT_whiteNoise());
  air = SDTTwoPoles_dsp(x->airFilter, SDT_whiteNoise());
  rotor *= x->rotorGain;
  gears *= x->gearGain;
  brushes *= x->brushGain;
  air *= x->airGain;
  outGain = (1.0 - x->reson) * SDT_fclip(0.005 * rotorStep * SDT_sampleRate, 0.0, 1.0);
  return outGain * (SDTComb_dsp(x->chassis, rotor + gears + brushes) + air);
}