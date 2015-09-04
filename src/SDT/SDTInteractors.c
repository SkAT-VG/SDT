/* \file SDTInteractors.c
 * Interactions between solid objects. 
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
#include "SDTCommon.h"
#include "SDTStructs.h"
#include "SDTResonators.h"
#include "SDTInteractors.h"

#define MAX_ERROR     0.0000001
#define MAX_ITER     50

struct SDTInteractor {
  SDTResonator *obj0, *obj1;
  long p0, p1;
  void *state;
  void (*updateForces)(SDTInteractor *x);
};

SDTInteractor *SDTInteractor_new() {
  SDTInteractor *x;
  
  x = (SDTInteractor *)malloc(sizeof(SDTInteractor));
  x->obj0 = NULL;
  x->obj1 = NULL;
  x->p0 = 0;
  x->p1 = 0;
  x->state = NULL;
  x->updateForces = NULL;
  return x;
}

void SDTInteractor_free(SDTInteractor *x) {
  free(x);
}

void SDTInteractor_setFirstResonator(SDTInteractor *x, SDTResonator *p) {
  x->obj0 = p;
}

void SDTInteractor_setSecondResonator(SDTInteractor *x, SDTResonator *p) {
  x->obj1 = p;
}

void SDTInteractor_setFirstPoint(SDTInteractor *x, long l) {
  x->p0 = l;
}

void SDTInteractor_setSecondPoint(SDTInteractor *x, long l) {
  x->p1 = l;
}

void SDTInteractor_dsp(SDTInteractor *x, double f0, double f1, double *outs) {
  int i, n0, n1;
  if (x->obj0 && x->obj1) {
    x->updateForces(x);
  }
  if (x->obj0) {
    SDTResonator_applyForce(x->obj0, x->p0, f0);
    SDTResonator_dsp(x->obj0);
    n0 = SDTResonator_getNPickups(x->obj0);
    for (i = 0; i < n0; i++) {
      outs[i] = SDTResonator_getPosition(x->obj0, i);
    }
  }
  if (x->obj1) {
    SDTResonator_applyForce(x->obj1, x->p1, f1);
    SDTResonator_dsp(x->obj1);
    n1 = SDTResonator_getNPickups(x->obj1);
    for (i = 0; i < n1; i++) {
      outs[n0+i] = SDTResonator_getPosition(x->obj1, i);
    }
  }
}

//-------------------------------------------------------------------------------------//

struct SDTImpact {
  double stiffness, dissipation, shape;
};

SDTInteractor *SDTImpact_new() {
  SDTInteractor *x;
  SDTImpact *s;
  
  x = SDTInteractor_new();
  s = (SDTImpact *)malloc(sizeof(SDTImpact));
  s->stiffness = 0.0;
  s->dissipation = 0.0;
  s->shape = 0.0;
  x->state = s;
  x->updateForces = SDTImpact_nonlinear;
  return x;
}

void SDTImpact_free(SDTInteractor *x) {
  free(x->state);
  SDTInteractor_free(x);
}

void SDTImpact_setStiffness(SDTInteractor *x, double f) {
  ((SDTImpact *)x->state)->stiffness = fmax(0.0, f);
}

void SDTImpact_setDissipation(SDTInteractor *x, double f) {
  ((SDTImpact *)x->state)->dissipation = SDT_fclip(f, 0.0, 1.0);
}

void SDTImpact_setShape(SDTInteractor *x, double f) {
  ((SDTImpact *)x->state)->shape = fmax(0.0, f);
}

void SDTImpact_setLinear(SDTInteractor *x) {
  x->updateForces = SDTImpact_linear;
}

void SDTImpact_setNonlinear(SDTInteractor *x) {
  x->updateForces = SDTImpact_nonlinear;
}

void SDTImpact_linear(SDTInteractor *x) {
  SDTImpact *s = x->state;
  double p, f;
  
  p = SDTResonator_getPosition(x->obj1, x->p1) - SDTResonator_getPosition(x->obj0, x->p0);
  if (p > 0) {
    f = s->stiffness * pow(p, s->shape);
    SDTResonator_applyForce(x->obj0, x->p0, f);
    SDTResonator_applyForce(x->obj1, x->p1, -f);
  }
}

void SDTImpact_nonlinear(SDTInteractor *x) {
  SDTImpact *s = x->state;
  double p, v, kp, kv, lambda,
         pApprox, vApprox, fApprox, pShape,
         f, dfdp, dfdv, g, dg, error;
  long count;
  
  p = SDTResonator_getPosition(x->obj1, x->p1) - SDTResonator_getPosition(x->obj0, x->p0);
  v = SDTResonator_getVelocity(x->obj1, x->p1) - SDTResonator_getVelocity(x->obj0, x->p0);
  kp = -(SDTResonator_getKPosition(x->obj1, x->p1) + SDTResonator_getKPosition(x->obj0, x->p0));
  kv = -(SDTResonator_getKVelocity(x->obj1, x->p1) + SDTResonator_getKVelocity(x->obj0, x->p0));
  lambda = s->stiffness * s->dissipation;
  fApprox = 0;
  count = 0;

  while (1) {
    pApprox = p + kp * fApprox;
    if (pApprox <= 0) break;
    vApprox = v + kv * fApprox;
    pShape = pow(pApprox, s->shape);
    f = pShape * (s->stiffness + lambda * vApprox);
    dfdp = s->shape * f / pApprox;
    dfdv = pShape * lambda;
    g = f - fApprox;
    dg = dfdp * kp + dfdv * kv - 1.0;
    error = g / dg;
    if (!isnormal(error)) error = 0.0;
    fApprox -= error;
    count++;
    if (fabs(error) < MAX_ERROR || count > MAX_ITER) {
      SDTResonator_applyForce(x->obj0, x->p0, fApprox);
      SDTResonator_applyForce(x->obj1, x->p1, -fApprox);
      break;
    }
  }
}

//-------------------------------------------------------------------------------------//

struct SDTFriction {
  double fNormal, vStribeck, kStatic, kDynamic, fs, fc,
         stiffness, dissipation, viscosity,
         noisiness, breakAway,
         z, y;
};

SDTInteractor *SDTFriction_new() {
  SDTInteractor *x;
  SDTFriction *s;
  
  x = SDTInteractor_new();
  s = (SDTFriction *)malloc(sizeof(SDTFriction));
  s->fNormal = 0.0;
  s->vStribeck = 0.1;
  s->kStatic = 0.8;
  s->kDynamic = 0.2;
  s->stiffness = 1000.0;
  s->dissipation = 10.0;
  s->viscosity = 10.0;
  s->noisiness = 0.5;
  s->breakAway = 0.1;
  s->z = 0.0;
  s->y = 0.0;
  x->state = s;
  x->updateForces = SDTFriction_dynamic;
  return x;
}

void SDTFriction_free(SDTInteractor *x) {
  free(x->state);
  SDTInteractor_free(x);
}

void SDTFriction_setNormalForce(SDTInteractor *x, double f) {
  SDTFriction *s = (SDTFriction *)x->state;
  s->fNormal = fmax(0.0, f);
  s->fs = s->fNormal * s->kStatic;
  s->fc = s->fNormal * s->kDynamic;
}

void SDTFriction_setStribeckVelocity(SDTInteractor *x, double f) {
  ((SDTFriction *)x->state)->vStribeck = fmax(0.0, f);
}

void SDTFriction_setStaticCoefficient(SDTInteractor *x, double f) {
  SDTFriction *s = (SDTFriction *)x->state;
  s->kStatic = SDT_fclip(f, 0.0, 1.0);
  s->fs = s->fNormal * s->kStatic;
}

void SDTFriction_setDynamicCoefficient(SDTInteractor *x, double f) {
  SDTFriction *s = (SDTFriction *)x->state;
  s->kDynamic = SDT_fclip(f, 0.0, 1.0);
  s->fc = s->fNormal * s->kDynamic;
}

void SDTFriction_setStiffness(SDTInteractor *x, double f) {
  ((SDTFriction *)x->state)->stiffness = fmax(0.0, f);
}

void SDTFriction_setDissipation(SDTInteractor *x, double f) {
  ((SDTFriction *)x->state)->dissipation = fmax(0.0, f);
}

void SDTFriction_setViscosity(SDTInteractor *x, double f) {
  ((SDTFriction *)x->state)->viscosity = fmax(0.0, f);
}

void SDTFriction_setNoisiness(SDTInteractor *x, double f) {
  ((SDTFriction *)x->state)->noisiness = fmax(0.0, f);
}

void SDTFriction_setBreakAway(SDTInteractor *x, double f) {
  ((SDTFriction *)x->state)->breakAway = SDT_fclip(f, 0.0, 1.0);
}

void SDTFriction_setStatic(SDTInteractor *x) {
  x->updateForces = SDTFriction_static;
}

void SDTFriction_setDynamic(SDTInteractor *x) {
  x->updateForces = SDTFriction_dynamic;
}

void SDTFriction_static(SDTInteractor *x) {
  SDTFriction *s = (SDTFriction *)x->state;
  double v, vRatio, vExp, f;
  
  v = SDTResonator_getVelocity(x->obj1, x->p1) - SDTResonator_getVelocity(x->obj0, x->p0);
  vRatio = v / s->vStribeck;
  vExp = exp(-vRatio * vRatio);
  f = SDT_signum(v) * (s->fc + (s->fs - s->fc) * vExp);
  SDTResonator_applyForce(x->obj0, x->p0, f);
  SDTResonator_applyForce(x->obj1, x->p1, -f);
}

void SDTFriction_dynamic(SDTInteractor *x) {
  SDTFriction *s = (SDTFriction *)x->state;
  double u, b, oil, k2, k1, z, v, fba,
         yApprox, zApprox, vApprox, vRatio, vExp,
         zss, dzss, zba, a, dadz, dadv, zSum, zDif, zRad, zNum,
         f, dfdz, dfdv, g, dg, error,
         fr, fApprox;
  int count, vSgn, zSgn;
  
  if (s->fNormal <= 0.0) {
    s->z = 0.0;
    s->y = 0.0;
  }
  else {
    u = SDTResonator_getVelocity(x->obj1, x->p1) - SDTResonator_getVelocity(x->obj0, x->p0);
    b = SDTResonator_getKVelocity(x->obj1, x->p1) + SDTResonator_getKVelocity(x->obj0, x->p0);
    oil = 1.0 + s->viscosity * b;
    k2 = 0.5 * SDT_timeStep;
    k1 = -(b / oil) * (s->stiffness * k2 + s->dissipation); 
    z = s->z + k2 * s->y;
    v = (u - b * s->stiffness * z) / oil;
    fba = s->breakAway * s->fc / s->stiffness; 
    yApprox = s->y;
    count = 0;
  
    while (1) {
      zApprox = z + k2 * yApprox;
      zSgn = SDT_signum(zApprox);
      vApprox = v + k1 * yApprox;
	  vSgn = SDT_signum(vApprox);
	  vRatio = vApprox / s->vStribeck;
	  vExp = exp(-vRatio * vRatio);
	  zss = vSgn * (s->fc + (s->fs - s->fc) * vExp) / s->stiffness; 
      dzss = -vSgn * 2.0 * vApprox * (s->fs - s->fc) * vExp / (s->stiffness * s->vStribeck * s->vStribeck);
      zba = vSgn * fba;
      a = 0.0;
      dadz = 0.0;
      dadv = 0.0;
      if (vSgn == zSgn) { 
        if (fabs(zApprox) >= fabs(zss)) {
          a = 1.0;
        }
        else if (fabs(zApprox) > fabs(zba)) {
          zSum = zss + zba;
          zDif = zss - zba;
          zRad = SDT_PI * (zApprox - 0.5 * zSum) / zDif;
          zNum = 0.5 * SDT_PI * cos(zRad);
          a = 0.5 + 0.5 * sin(zRad);
          dadz = zNum / zDif;
          dadv = zNum * dzss * (zba - zApprox) / (zDif * zDif);
        }
      }
      f = vApprox * (1.0 - a * zApprox / zss);
      dfdz = -(vApprox / zss) * (zApprox * dadz + a);
      dfdv = 1.0 - zApprox * ((a + vApprox * dadv) * zss - a * vApprox * dzss) / (zss * zss);
	  g = f - yApprox;
	  dg = dfdv * k1 + dfdz * k2 - 1.0;
	  error = g / dg;
	  if (!isnormal(error)) error = 0.0;
	  yApprox -= error;
	  count++;
	  if (fabs(error) < MAX_ERROR || count > MAX_ITER) {
        s->z = z + k2 * yApprox;
        s->y = yApprox;
        vApprox = v + k1 * yApprox;
        fr = s->noisiness * (SDT_frand() - 0.5) * sqrt(vSgn * vApprox * s->fNormal);
	    fApprox = s->stiffness * s->z + s->dissipation * s->y + s->viscosity * vApprox + fr;
	    SDTResonator_applyForce(x->obj0, x->p0, fApprox);
        SDTResonator_applyForce(x->obj1, x->p1, -fApprox);
        break;
      }
    }
  }
}
