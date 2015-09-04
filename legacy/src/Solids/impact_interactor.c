/** \file impact_interactor.c
 * Implementation of a non-linear impact-interactor.
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

#include "impact_interactor.h"

#define ERR_MAX .0000001 /**< Maximum error, below which the Newton-Raphson method terminates */
#define ITERATION_MAX 50 /**< Maximum allowed number of iterations for the Newton-Raphson method */

/**
 *
 * The following function computes the forces on the two interacting resonators, force1 and force2,
 * from their "free-developed" states, P_displ1, P_velo1, P_displ2, P_velo2.
 * The underlying formula is (see Marhefka and Orin):
 * $ force_1 = -force_2 = k(-distance)^{alpha} + lambda(-distance)^{alpha} \dot{-distance},\ for distance \lt 0\ (``contact´´)$,
 * $ force_1 = force_2 = 0.,\ else$, with
 * $ distance = displ_2 - displ_1$.	
 * $ velo = velo_2 - velo_1$
 * \note The force is numerically approximated by the Newton-Raphson-method.	//K-method -> search for f_approx = h(n)
 *																				//numerical implementation of K-method -> Newton-Raphson
 * $Id: impact_interactor.c,v 0.0 2002/08/12 17:46:11 nicb Exp $
 */
void impact_force_impactor(double *p_force1, /**< Return value: Force for resonator no.1 */ 
						   double *p_force2, /**< Return value: Force for resonator no.2 */
						   t_impact_interactor *p_felt, /**< The interactor object */
						   double P_displ1, /**< "Free-developed" displacement of resonator no.1 */	//it could already be vibrating
						   double P_displ2, /**< "Free-developed" displacement of resonator no.2 */	//(e.g. for a previous impact)
						   double P_velo1, /**< "Free-developed" velocity of resonator no.1 */
						   double P_velo2 /**< "Free-developed" velocity of resonator no.2 */)
{
  double P_displ = P_displ2 - P_displ1; /**< negative distance, "penetration" */ // x(n) = x2(n) - x1(n) see p.166 eq(8.31)
  double P_velo = P_velo2 - P_velo1; /**< negative velocity of distance, "penetration velocity" */ // v(n) = v2(n) - v1(n)
  double displ_approx, velo_approx, f_approx = p_felt->state.last_force1 = 0., diff, term_powalpha_1, term_powalpha, funct, fact, g, g_der;
  int count = 1;					
  /*
    Newton-Raphson driss:	//N.B. p_x and p_xdot are x~ e v~

    g(h) = [(k + lambda*(p_xdot + K[1,0]*h)) * (p_x + K[0,0]*h)^alpha] - h	//see p.170 eq(8.41)
    --------------------------------------------------------------
    =>
    g_dot(h) = K_1*(k + lambda*(p_xdot + K[1,0]*h))*alpha*(p_x + K[0,0]*h)^(alpha-1) + K[1,0]*lambda*(p_x + K[0,0]*h)^alpha - 1
    ---------------------------------------------------------------------------------------------------------------


    general:
    g_dot(x)*(x - zerocross) = g(x)		<->		zerocross = x - g(x)/g_dot(x)	dove zerocross sarà il valore di h(n) che cerco

    quindi per ogni n calcolo -> h(n) = h_preced(n) - g(h_preced(n)/g_dot(h_preced(n)) e si ferma quando abs(h(n) - h_preced(n)) <= ERR_MAX
  */

#if (defined(_DEBUG_))
	post("impact_interactor: P_displ1 = %.10f, P_velo1 = %.10f", P_displ1, P_velo1);
	post("impact_interactor: P_displ2 = %.10f, P_velo2 = %.10f", P_displ2, P_velo2);
	post("impact_interactor: P_displ = %.10f, P_velo = %.10f", P_displ, P_velo);
#endif
  /** Here starts the Newton-Raphson approximation. */
  do
    { //N.B. computes "x_approx" and "v_approx" through K-method -> needs h(n)
      displ_approx = P_displ + p_felt->priv.K1 * f_approx; //x_approx(n) = x~(n) + (K[0,0] * h(n)) see eq(8.32)
      velo_approx = P_velo + p_felt->priv.K2 * f_approx; //v_approx(n) = v~(n) + (K[1,0] * h(n))	//1st iteration: f_approx = last_force1 = h(n-1) = 0
#if (defined(_DEBUG_))
	  post("impact_interactor: ciclo %d: f_approx = %.10f, displ_approx = %.6f, velo_approx = %.6f", count, f_approx, displ_approx, velo_approx);
#endif
	//N.B. at 1st iteration (displ_approx = P_displ) and (velo_approx = P_velo) because (f_approx = 0)
	  /** Positive distance = negative penetration => no contact force: */	
      if (displ_approx <= 0.)		//??? non sarebbe meglio mettere il controllo su P_displ = P_displ2 - P_displ1 ?											  
		{
#if (defined(_DEBUG_))
	post("NO CONTACT! impact_interactor: displ_approx = %.10f", displ_approx);
#endif
		*p_force2 = *p_force1 = p_felt->state.last_force1 = 0.;
		return;
		}
      else // x > 0 -> search for approximate contact force = h(n) (Newton-Raphson)
		{
		term_powalpha_1 = pow(displ_approx, p_felt->publ.alpha - 1.); // = x_approx(n)^(alpha-1)
		term_powalpha = term_powalpha_1 * displ_approx; // = (x_approx(n)^(alpha-1)) * x_approx(n) = x_approx(n)^(alpha)
		fact = p_felt->publ.k + p_felt->publ.lambda*velo_approx; // = k + lambda * v_approx(n)
		funct = fact * term_powalpha; /* approximate contact force */	// f(x_approx, v_approx) = [k + lambda * v_approx(n)] * x_approx(n)^(alpha)
		
		g = funct - f_approx; // g(h(n)) = [k + (lambda * v_approx(n) * x_approx(n)^(alpha))] - h(n) //see p.170 eq(8.41)
		g_der = p_felt->priv.K1*fact*p_felt->publ.alpha*term_powalpha_1 + p_felt->priv.K2*p_felt->publ.lambda*term_powalpha - 1.;
		// g_dot = K1 * (k + lambda * v_approx(n)) * alpha * (x_approx(n)^(alpha-1)) + K2 * lambda * (x_approx(n)^(alpha)) - 1 //eq(8.42)
		
		diff = g/g_der;

		f_approx -= diff;	//h(n) = h_preced(n) - g(h_preced(n))/g_dot(h_preced(n)) -> error decreases at each iteration
							//N.B. h_preced(n) is f_approx(n) computed during the preceding iteration. Don't make confusion with h(n-1)!!!
#if (defined(_DEBUG_))		
	post("impact_interactor: g = %.15f, g_der = %.15f", g, g_der);
	post("impact_interactor: fact = %f, funct = %.15f, g/g_der = %.15f, f_approx = %.15f", fact, funct, diff, f_approx);
	post("impact_interactor: fabs(diff) = %.15f, abs(diff) = %d", fabs(diff), abs(diff));
#endif
		}					
    }
  while (fabs(diff)>ERR_MAX && count++<ITERATION_MAX);

#if (defined(_DEBUG_))
	if (count > ITERATION_MAX-1)
		post("impact_interactor: @@@@@@@@@@ N-R is not converging!!! @@@@@@@@@@");
#endif
														
  //With the new h(n) updates "x_approx"  //N.B. needed just for the next check on x. No update on v (see p.167)
  displ_approx = P_displ + p_felt->priv.K1*f_approx; //x_approx(n) = x~(n) + (K[0,0] * h(n))
  
  /** Last check; for positive distance = negative penetration => no contact force: */
  if (displ_approx <= 0.)	//last check: if x <= 0 -> force = 0
	{
	  *p_force2 = *p_force1 = p_felt->state.last_force1 = 0.;
	  
#if (defined(_DEBUG_))
	  post("NO CONTACT! impact_interactor: displ_approx = %.10f", displ_approx);
#endif

	  return;
	}
  else //h(n) is valid
    *p_force2 = -1.* (*p_force1 = p_felt->state.last_force1 = f_approx); //also sets last_force1 for the next call 

//#if (defined(_DEBUG_))
//	post("impact_interactor: final f_approx = %.10f, (f_approx - funct) = %.20f", f_approx, f_approx - funct);
//	post("impact_interactor: final displ_approx = %.10f", displ_approx);
//#endif
}
