/** \file friction_interactor.h
 * Definition of a non-linear friction-interactor.
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

#if !defined(_FRICTION_INTERACTOR_H_)
#define _FRICTION_INTERACTOR_H_

#include "solids.h"
#include "matrix_calc.h"

/**
 * Structure of a non-linear interactor object.
 * Holds parameters to be accessed from outside, internal (private) parameters
 * and the current state of the object.
 */
typedef struct
{
  /**
   * "Public" attributes, to be set or read from outside
   */
  struct _publ_friction
  {
    float sig0 ;    /**< bristle stiffness (typ. = 1e4)*/
    float sig1 ;    /**< bristle damping (typ. = .1*sqrt(sig0)*/
    float sig2 ;    /**< viscous friction term (typ. = 0.4) */ 
    float mu_d ;    /**< dynamic friction coefficient (typ. = 0.2) */  //see p.161 SOb ch.8
    float mu_s ;    /**< static friction coefficient (typ. = 0.4) */ 
    float c_ba ;    /**< break-away displacement coefficient (typ. = 0.7)*/  //see p.162 eq.(8.28)
    float v_s  ;    /**< the Stribeck velocity (typ. = 1e-1)*/
    float F_n ;     /**< normal inter-object pressure */  //Normal force
    float noisy ;   /**< gain for the noisy component of friction force */  //almost sigma3
  } publ; /**< Instance of the substructure */

  /**
   * Private parameters of the interactor object
   * These are computed from public parameters by the function 
   * set_Kmatrix_frictionor and should never be touched explicitly
   */
  struct _priv_friction
  {
    double K_aux1; /**< Auxiliary variable for computation of K matrices */
    double K_aux2; /**< Auxiliary variable for computation of K matrices */
    double K1; /**< Coefficient related to the K-matrices */
    double K2; /**< Coefficient related to the K-matrices */
    double fc; /**< Coulomb friction force */
    double fs; /**< stiction force */
  } priv; /**< Instance of the substructure */

  /**
   * State variable(s) of the interactor
   */
  struct _priv_state
  {
    double last_y;      /**< Last occured bristle velocity (starting value for the Newton-Raphson iteration) */
						//y = dot_z
    double last_z;      /**< Last occured bristle displacement (starting value for the Newton-Raphson iteration) */
  } state; /**< Instance of the substructure */

} t_friction_interactor;


/**
 * Setting of the public parameters of the friction interactor object.   //computes fc e fs (private parameters) indeed
 * Physically meaningless values are clipped to nearest allowable.
 *
 * \note For efficiency this should be declared as inline
 */
static  void set_publ_frictionor(t_friction_interactor *p_bow, /**< Pointer to the interactor object */
									   float sig0,    /**< bristle stiffness */
									   float sig1,    /**< bristle damping */
									   float sig2,    /**< viscous bristle friction */ 
									   float mu_d,    /**< dynamic friction coefficient */
									   float mu_s,    /**< static friction coefficient */
									   float c_ba,    /**< coefficient for break-away displacement curve */
									   float v_s,     /**< the Stribeck velocity */ 
									   float F_n,     /**< normal inter-object pressure */ //Normal force
									   float noisy    /**< gain for the noisy component of friction force */)
{ 
  if (sig0 < 0.)
    {
      sig0 = 0.;
      post("frictionor: bristle stiffness < 0 ?!! ...is set to 0!");
    }
  p_bow->publ.sig0 = sig0;

  if (sig1 < 0.)
    {
      sig1 = 0.;
      post("frictionor: bristle damping < 0 ?!! ...is set 0!");
    }
  p_bow->publ.sig1 = sig1;

  if (sig2 < 0.)
    {
      sig2 = 0.;
      post("frictionor: viscous bristle friction < 0 ?!! ...is set to 0!");
    }
  p_bow->publ.sig2 = sig2;

  if (mu_d < 0.)
    {
      mu_d = 0.;
      post("frictionor: dynamic friction coeff. < 0 ?!! ...is set to 0!");
    }
  p_bow->publ.mu_d = mu_d;
	
  if (mu_s < 0.)
    {
      mu_s = 0.;
      post("frictionor: static friction coefficient < 0 ?!! ...is set 0!");
    }
  p_bow->publ.mu_s = mu_s;

  if (c_ba < 0.)
    {
      c_ba = 0.;
      post("frictionor: break-away coefficient < 0 ?!! ...is set to 0!");
    }
  p_bow->publ.c_ba = c_ba;

  if (v_s < 0.)
    {
      v_s = 0.;
      post("frictionor: Stribeck velocity < 0 ?!! ...is set to 0!");
    }
  p_bow->publ.v_s = v_s;

  if (noisy < 0.)
    {
      noisy = 0.;
      post("frictionor: noise coefficient < 0 ?!! ...is set to 0!");
    }
  
  p_bow->publ.noisy = noisy; //a sort of sigma3

  p_bow->publ.F_n = F_n;

//"Coulomb force" and "static friction (stiction) force" (private parameters)
  if(p_bow->publ.F_n < 0.)	//fc and fs should be 0 when F_n < 0
	p_bow->priv.fc = p_bow->priv.fs = 0.;
  else
  {
	p_bow->priv.fc = p_bow->publ.mu_d * p_bow->publ.F_n; //fc = Coulomb force = mu_d * F_n
	p_bow->priv.fs = p_bow->publ.mu_s * p_bow->publ.F_n; //fs = stiction force = mu_s * F_n
  }

#if (defined(_DEBUG_))
   post("frictionor: bow properties (sig0, sig1, sig2, mu_d, mu_s, c_ba, v_s, F_n, noise) set to %f, %f, %f, %f, %f, %f, %f, %f, %f", sig0, sig1, sig2, mu_d, mu_s, c_ba, v_s, F_n, noisy);
   post("fc = %f, fs = %f", p_bow->priv.fc, p_bow->priv.fs);
#endif

  /*  p_bow->state.last_y = 0.0;
  p_bow->state.last_z = 0.0; */
}


/**
 * Setting internal parameters of the friction interactor, i.e. a "K-matrix".
 *
 * \note For efficiency this should be declared as inline
 */
static  void set_Kmatrix_frictionor(t_friction_interactor *p_bow, /**< Pointer to the interactor object */
										  t_matrix *p_Kmatrix1, /**< Pointer to K-matrix of resonator no.1 */
										  t_matrix *p_Kmatrix2, /**< Pointer to K-matrix of resonator no.2 */
										  float samprate)
{ 
  double B;

  //frictionor K(2)
  p_bow->priv.K2 = 1./(2.*samprate); // K(2) = Ts/2  see p.168
  
  //frictionor K(1)
  //p_bow->priv.K_aux1 = 2 * samprate * (entry_matrix(p_Kmatrix1, 0, 0)); // K_aux1 = 2/Ts * K1[0,0] = b1(2)  //K[0,0] is b(1)!!!	
  //p_bow->priv.K_aux2 = 2 * samprate * (entry_matrix(p_Kmatrix2, 0, 0)); // K_aux2 = 2/Ts * K2[0,0] = b2(2)  //N.B. see p.144: b(2) = b(1) * 2 * samprate = b(1) * 2/Ts


  p_bow->priv.K_aux1 = (entry_matrix(p_Kmatrix1, 1, 0));	//K_aux1 = K1[1,0]
  p_bow->priv.K_aux2 = (entry_matrix(p_Kmatrix2, 1, 0));	//K_aux2 = K2[1,0]
  /* p_bow->priv.K1 = -(p_bow->priv.K_aux1 + p_bow->priv.K_aux2) /											
					(1 + p_bow->publ.sig2 * (p_bow->priv.K_aux1 + p_bow->priv.K_aux2)) *
					(p_bow->publ.sig0 * p_bow->priv.K2 + p_bow->publ.sig1);
	//K(1) = -((K_aux1 + K_aux2)/(1 + sigma2 * (K_aux1 + K_aux2))) * (sigma0 * K(2) + sigma1) 
	//     = -(B/(1 + sigma2 * B)) * (sigma0 * Ts/2 + sigma1) see p.168 
  */
#if (defined(_DEBUG_))
  post("frictionor: received object1 K-matrix[1,0] = %.10f, object2 K-matrix[1,0] = %.10f", p_bow->priv.K_aux1, p_bow->priv.K_aux2);
#endif

  B = (p_bow->priv.K_aux1 + p_bow->priv.K_aux2); //B = K1[1,0] + K2[1,0]   //see eqq.(8.39) and (8.40) pp.168-9

  p_bow->priv.K1 = -(B / (1 + p_bow->publ.sig2 * B )) * (p_bow->publ.sig0 * p_bow->priv.K2 + p_bow->publ.sig1);
	//K(1) = -(B/(1 + sigma2 * B)) * (sigma0 * Ts/2 + sigma1) see p.168

#if (defined(_DEBUG_))
  post("frictionor: K(1) = %.10f, K(2) = %.10f", p_bow->priv.K1, p_bow->priv.K2);
#endif
} 	

/**
 * Setting state of the friction interactor (mean bristle displac. and velo.)
 *
 * \note For efficiency this should be declared as inline
 */
static  void set_state_frictionor(t_friction_interactor *p_bow, /**< Pointer to the interactor object */
										double lastz, /**< Mean bristle displacement */
										double lasty /**< Mean bristle velocity */)	//dot_z
{
  p_bow->state.last_z = lastz;
  p_bow->state.last_y = lasty; //dot_z
  post("frictionor: state set to %f, %f", p_bow->state.last_z, p_bow->state.last_y);
}


/* Prototype */
void friction_force_frictionor(double *force1, double *force2,
							   t_friction_interactor *p_bow, 
							   double P_velo1, double P_velo2);

#endif /* (_FRICTION_INTERACTOR_H_) */
