/** \file linpact_interactor.h
 * Definition of a linear impact-interactor.
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

#if !defined(_LINPACT_INTERACTOR_H_)
#define _LINPACT_INTERACTOR_H_

#include "matrix_calc.h"

#define C_MIN 1.e-9 /**< Minimal considered value for internal coefficients, trying to get around the pentium bug */
#define C_MAX 1.e9 /**< Maximal considered value for internal coefficients, trying to get around the pentium bug */

/**
 * Structure of a linear interactor object.
 * Holds parameters to be accessed from outside and internal (private) parameters.
 */
typedef struct
{
  /**
   * "Public" attributes, to be set or read from outside
   */
  struct _publ_linpact
  {
    float k; /**< Elasticity constant */ //see p.146 SOb ch.8
    float r; /**< Damping coefficient */
  } publ; /**< Instance of the substructure */

  /**
   * Private parameters of the interactor object
   * These are computed from public parameters by the function set_Kmatrix_impactor
   * and should never be touched explicitly
   */
  struct _priv_impact
  {
    double C1; //coefficients related to K-matrices
    double C2;
  } priv; /**< Instance of the substructure */
} t_linpact_interactor;


/**
 * Setting of the public parameters of the linear impact interactor object.
 * Physically meaningless values are clipped to nearest allowable.
 *
 * \note For efficiency this should be declared as inline
 */
static void set_publ_linpactor(t_linpact_interactor *p_felt, /**< Pointer to the interactor object */
							   float k, /**< Elasticity constant */
							   float r /**< Damping coefficient */)
{
  if (k < 0.)
    {
      k = 0.;
      post("linpactor: elasticity k <= 0 ?!! ...is set to 0!");
    }
  p_felt->publ.k = k;

  if (r < 0.)
    {
      r = 0.;
      post("linpactor: friction r < 0 ?!! ...is set to 0!");
    }
  p_felt->publ.r = r;

#if (defined(_DEBUG_))
  post("felt properties: k = %f, r = %f.", k, r);
#endif
}

/**
 * Setting of the internal parameters of the linear impact interactor.
 *
 * \note For efficiency this should be declared as inline
 */
static void set_priv_linpactor(t_linpact_interactor *p_felt, /**< Pointer to the interactor object */
									  t_matrix *p_Kmatrix1, /**< Pointer to K-matrix of resonator no.1 */
									  t_matrix *p_Kmatrix2 /**< Pointer to K-matrix of resonator no.2 */)
{
  //C = 1 + (k * (K2[0,0] + K1[0,0])) + (r * (K2[1,0] + K1[1,0]))
  double C = 1. + p_felt->publ.k * (entry_matrix(p_Kmatrix2, 0, 0) + entry_matrix(p_Kmatrix1, 0, 0))
			 + p_felt->publ.r * (entry_matrix(p_Kmatrix2, 1, 0) + entry_matrix(p_Kmatrix1, 1, 0));	
// it was: double C = 1. - p_felt->publ.k * (entry_matrix(p_Kmatrix2, 0, 0) - entry_matrix(p_Kmatrix1, 0, 0))
//						 - p_felt->publ.r * (entry_matrix(p_Kmatrix2, 1, 0) - entry_matrix(p_Kmatrix1, 1, 0));
//TODO: verify correctness

  if ((fabs(C) > C_MAX) || (fabs(C) < C_MIN))
    {
      post("Overflow of internal parameters of linear impact interactor: C = %f.", C);
      post("Forcing C1 and C2 to 0.");
      p_felt->priv.C1 = p_felt->priv.C2 = 0.;
    }
  else
    {
      p_felt->priv.C1 = p_felt->publ.k/C; //C1 = k/C
      p_felt->priv.C2 = p_felt->publ.r/C; //C2 = r/C
      if ((p_felt->priv.C1 < C_MIN) || (p_felt->priv.C1 > C_MAX) || (p_felt->priv.C2 < C_MIN) || (p_felt->priv.C2 > C_MAX))
		{
		  post("Overflow of internal parameters of linear impact interactor: C1, C2 = %f, %f.", p_felt->priv.C1, p_felt->priv.C2);
		  post("Forcing C1 and C2 to 0.");
		  p_felt->priv.C2 = p_felt->priv.C1 = 0.;
		}
    }
#if (defined(_DEBUG_))
  post("C1, C2 = %f, %f.", p_felt->priv.C1, p_felt->priv.C2);
#endif
}


/**
 *
 * The following function computes the interaction forces on the two resonators, force1 and force2,
 * from their "free-developed" states, P_displ1, P_velo1, P_displ2, P_velo2.
 * The underlying formula is:
 * $force_1 = -force_2 = k(-distance) + r(\dot{-distance}),\ for distance \lt 0.\ ("contact")$,
 * $force_1 = force_2 = 0.,\ else$.
 *									//eq(8.11) is linearized as: f(n) = k*x(n) + r*v(n) if x(n)<=0
 */									//							 f(n )= 0 otherwise
static void linpact_force_linpactor(double *p_force1, /**< Return value: Force for resonator no.1 */ 
									double *p_force2, /**< Return value: Force for resonator no.2 */
									t_linpact_interactor *p_felt, /**< The interactor object */
									double P_displ1, /**< "Free-developed displacement of resonator no.1 */
									double P_displ2, /**< "Free-developed displacement of resonator no.2 */
									double P_velo1, /**< "Free-developed velocity of resonator no.1 */
									double P_velo2 /**< "Free-developed velocity of resonator no.2 */)
{
  double P_displ = P_displ2 - P_displ1; /**< negative distance, "penetration" */ // x(n) = x2(n) - x1(n)
  double P_velo = P_velo2 - P_velo1; /**< negative velocity of distance, "penetration velocity" */ // v(n) = v2(n) - v1(n)

  *p_force1 = p_felt->priv.C1 * P_displ + p_felt->priv.C2 * P_velo; //force1 = C1 * x(n) + C2 * v(n)

  if (*p_force1 < 0.)
    *p_force2 = *p_force1 = 0.;
  else
    *p_force2 = -1. * *p_force1; //force2 = -force1
}

#endif /* (_LINPACT_INTERACTOR_H_) */
