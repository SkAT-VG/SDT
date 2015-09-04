/** \file impact_interactor.h
 * Definition of a non-linear impact-interactor.
 *
 * \author Matthias Rath
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

#if !defined(_IMPACT_INTERACTOR_H_)
#define _IMPACT_INTERACTOR_H_

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
  struct _publ_impact
  {
    float k; /**< Elasticity constant */ //see p.146 eq(8.11)
    float alpha; /**< Non-linearity exponent */
    float lambda; /**< Coefficient of dissipative term */
  } publ; /**< Instance of the substructure */

  /**
   * Private parameters of the interactor object
   * These are computed from public parameters by the function set_Kmatrix_impactor
   * and should never be touched explicitly
   */
  struct _priv_impact
  {
    double K1; /**< Coefficient related to the K-matrices */ //K[0,0] of K-matrix
    double K2; /**< Coefficient related to the K-matrices */ //K[1,0]
  } priv; /**< Instance of the substructure */

  /**
   * State variable(s) of the interactor
   */
  struct _priv_state
  {	
    double last_force1; /**< Last occured interaction force (starting value for the Newton-Raphson iteration) */
  } state; /**< Instance of the substructure */
} t_impact_interactor;


/**
 * Setting of the public parameters of the impact interactor object.
 * Physically meaningless values are clipped to nearest allowable.
 *
 * \note For efficiency this should be declared as inline
 */
static void set_publ_impactor(t_impact_interactor *p_felt, /**< Pointer to the interactor object */
									float k, /**< Elasticity constant */
									float alpha, /**< Non-linearity exponent */
									float lambda /**< Coefficient of dissipative term */)
{
  if (k <= 0.)
    {
      k = 0.;
      post("impactor: k < 0 ?!! ...forcing to 0.");
    }
  p_felt->publ.k = k;

  if (alpha < 0.)
    {
      alpha = 0.;
      post("impactor: alpha < 0 ?!! ...forcing 0.");
    }
  p_felt->publ.alpha = alpha;

  if (lambda < 0.)
    {
      lambda = 0.;
      post("impactor: lambda < 0 ?!! ...forcing to 0.");
    }
  p_felt->publ.lambda = lambda;

#if (defined(_DEBUG_))
  post("felt properties (k, alpha, lambda) set to %f, %f, %f.", k, alpha, lambda);
#endif

}

/**
 * Setting of the internal parameters of the impact interactor, i.e. a "K-matrix".
 *
 * \note For efficiency this should be declared as inline
 */
static void set_Kmatrix_impactor(t_impact_interactor *p_felt, /**< Pointer to the interactor object */
										t_matrix *p_Kmatrix1, /**< Pointer to K-matrix of resonator no.1 */
										t_matrix *p_Kmatrix2 /**< Pointer to K-matrix of resonator no.2 */)
{
  p_felt->priv.K1 = -(entry_matrix(p_Kmatrix2, 0, 0) + entry_matrix(p_Kmatrix1, 0, 0)); //K1 = -(K(r)[0,0] + K(h)[0,0])
  p_felt->priv.K2 = -(entry_matrix(p_Kmatrix2, 1, 0) + entry_matrix(p_Kmatrix1, 1, 0)); //K2 = -(K(r)[1,0] + K(h)[1,0])

#if (defined(_DEBUG_))
  post("impactor K-matrix [0,0] = %.10f, [1,0] = %.10f", p_felt->priv.K1, p_felt->priv.K2);
#endif
}

/* Prototype */
void impact_force_impactor(double *force1, double *force2, t_impact_interactor *p_felt, 
						   double P_displ1, double P_displ2, double P_velo1, double P_velo2);

#endif /* (_IMPACT_INTERACTOR_H_) */
