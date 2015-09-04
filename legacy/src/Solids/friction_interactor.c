/** \file friction_interactor.c
 * Implementation of a non-linear friction-interactor.
 *
 * \author Davide Rocchesso, Federico Avanzini, Matthias Rath
 * (roc@iuav.it, avanzini@dei.unipd.it)
 * Revision: Stefano Papetti (stefano.papetti@zhdk.ch)
 *
 * This file is part of the 'Sound Design Toolkit' (SDT)
 * Developed with the contribution of the following EU-projects:
 * 2001-2003 'SOb' http://www.soundobject.org/
 * 2006-2009 'CLOSED' http://closed.ircam.fr
 * 2008-2011 'NIW' http://www.niwproject.eu/
 *
 * Contacts: 
 * 	stefano.papetti@zhdk.ch
 * 	stefano.dellemonache@gmail.com
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

#include "friction_interactor.h"

#include "stdio.h"
#include <sys/types.h> 
#include <sys/stat.h>
#include <fcntl.h>

#define ERR_MAX .0000001 /**< Error below which Newton-Raphson terminates */
#define ITERATION_MAX 50 /**< Max. allowed iterations for Newton-Raphson */
#define drand48() ((double)rand()/(double)RAND_MAX) /** visualC compatibility */

//#define SIGN(x)	((x>=0.)? 1.0 : -1.0)

double sign(double x)
{
  double y;

  if (x>=0) y=1;
  else y=-1;
  return(y);
}


/** 
 *
 * The following function computes the forces on two interacting resonators, 
 * force1 and force2, from their "free-developed" velocities P_velo1, P_velo2.	//N.B. only velocities are needed (cfr. impact)
 * The underlying system is described in 
 * Dupont et al., IEEE Trans. Aut. Contr., may 2002:
 * $ force1 = -force2 = \sigma_0 z + \sigma_1 \dot{z} + \sigma_2 v $,  //see eq(8.16) p.152 f(z,dot_z,v) = sig0*z + sig1*dot_z + sig2*v. Still not considering s3*
 * where $z$ is the "bristle" displacement and v is the relative velocity 
 * between the resonators.
 *
 * \note The force is numerically approximated by the Newton-Raphson-method. //N.B.
 *
 * $Id: friction_interactor.c,v 0.3 2002/12/03 10:36:45 roc Exp $
 */
void friction_force_frictionor(double *p_force1, /**< Return value: Force for resonator no.1 */
							   double *p_force2, /**< Return value: Force for resonator no.2 */
							   t_friction_interactor *p_bow, /**< The interactor object */
							   double P_velo1, /**< Free-developed velocity of resonator no.1 */	//v_bow
							   double P_velo2  /**< Free-developed velocity of resonator no.2 */)	//v_bowed
{
  double P_v; /**< relative velocity between interacting objects */
  double P_z; /**< bristle displacement */
  double v_approx, z_approx, y_approx;	//y_approx is h
  double espon, zss;  /**< steady state displacement curve: z_ss(v) */
  double z_ba; /**< Break-away bristle displacement */
  double alpha; /**< elasto-plastic function */
  double dz_ss, dalpha_v, dalpha_z; /**< d(zss)/dv; d(alpha)/dv; d(alpha)/dz */
  double dfnl_v, dfnl_z;	/**< d(f_nl)/dv; d(f_nl)/dz */
  double diff, fnl, g, g_der;
  double randforce; //s3*w
  double B;
  int count;


  /*
    Numerical details:

    Nonlinear function: y = fnl(z,v) = v * (1 - alpha(z,v)*z/z_ss(v))   
	// = dot_z(z,v) = dot_z(n)   //se eq(8.37) p.168	  
	// = v * (1 - alpha(z,v)*z/z_ss(v))	//see eq(8.16) p.152

    g(p1, p2, y) = fnl[p1 + K(1) * y; p2 + K(2) * y] - y = 0	
	// p1 = v~; p2 = z~
	// g(v~, z~, h) = dot_z[v~ + K(1)*h; z~ + K(2)*h] - h		//see eq(8.41) p.170

    Newton Raphson iteration: y(count) = y(count-1) - g/(dg/dy)		//see code at p.170 h(k) = h(k-1) - g(h)/g'(h) computes h from g

    NOTE: Pure K method would find a function y = g~(p1, p2) by explicitation of g(p1, p2, y) = 0  //see p.170
  */
  
	
  if (p_bow->publ.F_n <= 0.) //if F_n <= 0 (no contact)
  {
    *p_force1 = *p_force2 = 0.;
    p_bow->state.last_y = 0.;
    p_bow->state.last_z = 0.;
  }
  else
  {
  /* Initializations */

	//dot_z(n-1)
	y_approx = p_bow->state.last_y;  /* last value of bristle velocity (\dot{z}) */

	//computes v~(n) and z~(n)
	P_z = p_bow->state.last_z + p_bow->priv.K2 * p_bow->state.last_y; /* computable part of bristle displacement */ 
		//z~(n) = z(n-1) + K(2)*dot_z(n-1)
	B = (p_bow->priv.K_aux1 + p_bow->priv.K_aux2);
	P_v = (P_velo2 - P_velo1 - B * p_bow->publ.sig0 * P_z) / (1 + p_bow->publ.sig2 * B); /* computable part of relative velocity */ 
		//v~(n) = (1/(1 + sig2*B)) * (v(r)~(n) - v(b)~(n) - B*sig0*z~(n))  

	//??? are external forces reckoned?

	//N.B. differently from in the impactor case, variables v~ and z~ are computed by the frictionor
	//v and z depends on dot_z
	//i.e. it behaves like a 3rd object adding bristles to interacting objects

	z_ba = p_bow->publ.c_ba * p_bow->priv.fc / p_bow->publ.sig0; /* Break-away bristle displacement */
	//z_ba = c_ba * fc/sig0	v. eq(8.28)
	z_ba = sign(P_v) * z_ba; //revision of the model by Dupont et al. (cfr. reference [66] in SOb)
							 //Actually this should be in the N-R iteractions, and depending on sign(v_approx).
							 //However in this way we avoid to compute z_ba at each iteraction
	randforce = 0.; //a sort of sig3*w
	count = 1;

  /* Here starts the Newton-Raphson approximation. */
    do
	{
	/* Newton-Raphson needs the K version of v and z, while impact/friction works in true v, z;   
	so we use v_approx and z_approx, computed at each cycle */
	  v_approx = P_v + p_bow->priv.K1 * y_approx; //v_approx = v~ + K(1) * h  see eq(8.37) p.168 and eq(8.41) p.170
	  z_approx = P_z + p_bow->priv.K2 * y_approx; //z_approx = z~ + K(2) * h
	  //approx versions equal K versions (cfr. eq(8.36)) whereas true versions are in eq(8.20) p.154

	 //if (v_approx == 0) // Does this strict equality test make sense? //simply put... er... NO
	 //{	zss = p_bow->priv.fs/p_bow->publ.sig0;
	 //}

#if (defined(_DEBUG_))
		post("frictionor: N-R iterazione %d", count);
		post("		F_n = %f", p_bow->publ.F_n);
		post("		P_v = %f, v_approx = %f", P_v, v_approx);
		post("		P_z = %.10f, z_approx = %.10f", P_z, z_approx);
#endif

	/* exponential function */
	  espon = exp(-(v_approx/p_bow->publ.v_s) * (v_approx/p_bow->publ.v_s));  // exp(-(v/v_s)²) see p.153 eq(8.17)
	/* steady state curve: z_ss(v) */
	  zss = sign(v_approx) * (p_bow->priv.fc + (p_bow->priv.fs - p_bow->priv.fc) * espon)/p_bow->publ.sig0;  
	  	// see p.153 eq(8.17)  zss = (sgn(v)/sig0) * (fc + (fs - fc) * exp(-(v/v_s)²))

#if (defined(_DEBUG_))
	post("frictionor: z_ss = %.10f, z_ba = %.10f", zss, z_ba);
#endif

	/* Elasto-Plastic function $\alpha(v,z)$ */
	  alpha = 0.0;	//if "|z|<=z_ba" or "sign(z_approx) != sign(v_approx)"  //see p.153 eq(8.18)
	  if (sign(z_approx) == sign(v_approx))	
	  {
	    if ( (fabs(z_approx) > fabs(z_ba)) && (fabs(z_approx) < fabs(zss)) ) 
		  alpha = 0.5 *(1.0 + sin(PI*(z_approx - 0.5*(zss + z_ba))/(zss - z_ba)) ); //alpha = alpha_m cfr. eq(8.19)
		else if (fabs(z_approx) >= fabs(zss))
		  alpha = 1.0;
	  }
	  //DEBUG
	  /*else
		  post("sign(z_approx) != sign(v_approx)");*/

#if (defined(_DEBUG_))
	post("frictionor: alpha = %.10f", alpha);
#endif
	
	  fnl = v_approx * ( 1.0 - alpha * z_approx / zss ); 
	  // dot_z(v,z) = v * [1 - alpha(z,v) * z/z_ss(v)]	//see eq(8.16) p.152 	

	/* Nonlinear function estimate */
	  g = fnl - y_approx;  /**< Newton-Raphson function estimate */ 
	  // g(h) = dot_z - h	//see p.170 eq(8.41)

	/* Compute derivatives */
	  //4th step p.171
	  dz_ss = -sign(v_approx) * 2.0 * v_approx * (p_bow->priv.fs - p_bow->priv.fc) * espon /
			  (p_bow->publ.sig0 * p_bow->publ.v_s * p_bow->publ.v_s); 
	  // dz_ss = -sgn(v) * 2v * (fs - fc) * exp((-v/v_s)²)/(sig0*v²)  //see p.171 eq(8.48)
	  
	  //3rd step p.171	
	  dalpha_v = dalpha_z = 0.0; //see eq(8.46) and (8.47)
	  if ((sign(z_approx) == sign(v_approx)) && (fabs(z_approx) > fabs(z_ba)) && (fabs(z_approx) < fabs(zss)) )
	  {
		/* Common subexpressions here, I trust the cleverness of compiler */  
		dalpha_v = 0.5 * PI * cos(PI*(z_approx - 0.5*(zss + z_ba))/(zss - z_ba)) *
				   dz_ss * (z_ba - z_approx)/((zss - z_ba) * (zss - z_ba));
		dalpha_z = 0.5 * PI * cos(PI*(z_approx - 0.5*(zss + z_ba))/(zss - z_ba)) / (zss - z_ba);
	  }

	  //2nd step p.171
	  dfnl_v = 1.0 - z_approx * ( (alpha + v_approx * dalpha_v) * zss - alpha * v_approx * dz_ss )/(zss * zss); // ddot_z/dv  see eq(8.45)
	  dfnl_z = -(v_approx / zss) * (z_approx * dalpha_z + alpha); // ddot_z/dz
	  
	  //1st step p.171
	  g_der = dfnl_v * p_bow->priv.K1 + dfnl_z * p_bow->priv.K2 - 1.0; // dg/dh  see eq(8.44)

	  diff = g/g_der;
	  y_approx -= diff; //see code at p.170: computes h(n) = h(n-1) - g(h)/g'(h) from g and, thanks to h, it applies K-method
#if (defined(_DEBUG_))
	  post("frictionor: diff = %.20f, y_approx = %.20f", diff, y_approx);
#endif
	} while(fabs(diff)>ERR_MAX && count++<ITERATION_MAX);	//end of the N-R algorithm

//#if (defined(_DEBUG_))
	if (count > ITERATION_MAX-1)
		post("\n            frictionor: WARNING! @@@@@@@@@@@@@@@@@@@@ N-R is not converging!!! @@@@@@@@@@@@@@@@@@@@\n");
//#endif

//DEBUG:
	/*if(z_approx == zss)
		post("#####   Stationary state   #####	-> dot_z = %.10f, alpha = %f", y_approx, alpha);*/

/* The internal interactor state must be updated here. */
    p_bow->state.last_y = y_approx;  //new dot_z(n)
    p_bow->state.last_z = P_z + p_bow->priv.K2 * y_approx; //new z(n) = z~(n) + K(2) * dot_z(n)  see eq(8.36) p.168
    
    v_approx = P_v + p_bow->priv.K1 * y_approx; //updates v(n) = v~(n) + K(1) * dot_z(n)  see eq(8.39) p.168

#if (defined(_DEBUG_))
	  post("frictionor: final v(n) (relative velo) = %.15f", v_approx);
	  post("frictionor: final z(n) = %.15f", p_bow->state.last_z);
	  post("frictionor: final dot_z(n)  = %.15f", y_approx);
#endif

    randforce = p_bow->publ.noisy * (drand48() - 0.5) * sqrt(sign(v_approx) * v_approx * p_bow->publ.F_n); //s3*w
	//s3 * (rand(-0.5 or 0.5) * v(sgn(v) * v * F_n))

/* Finally, the friction force */
	*p_force1 = (p_bow->publ.sig0 * p_bow->state.last_z + p_bow->publ.sig1 * p_bow->state.last_y 
				 + p_bow->publ.sig2 * v_approx + randforce); 
	//force1 = f(n) = sig0*z(n) + sig1*dot_z(n) + sig2*v(n) + s3*w		//see eq(8.16)
    *p_force2 = -(*p_force1);
  }
}
