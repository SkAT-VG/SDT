/** \file modal_obj_b.c
 * Implementation of a modal resonator. For theoretical background please refer
 * to Adrien (reference [2] SOb book). 
 * The algorithm implementation is achieved through discretization by 
 * bilinear transformation: that's what the "_b" in the name stands for.
 *
 * \author Matthias Rath
 * Revision: Stefano Papetti (stefano.papetti@zhdk.ch)
 * 
 * The SDT is free software; you can redistribute it and/or
 * modify it under the terms of the GNU General Public License
 * as published by the Free Software Foundation; either version 2
 * of the License, or (at your option) any later version.
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
 * The SDT is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with the SDT; if not, write to the Free Software
 * Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301, USA.
 *****************************************************************************/

#include "modal_obj_b.h"

/**
 * Creation of a new instance of the modal resonator.
 * Remember that each created instance should later be destroyed correctly by calling destroy_modal_object_b.
 *
 * \return Pointer to created instance.
 *
 * \todo Success of "getbytes" and "new_matrix" should be controlled.
 */
t_modal_object_b *new_modal_object_b(int n_modes, /**< Number of resonant modes */
									 int n_picks /**< Number of interaction points */)
{
  int i;

  t_modal_object_b *p_obj = (t_modal_object_b *) calloc(1, sizeof(t_modal_object_b));
																				
  p_obj->publ.n_modes = p_obj->publ.n_actmodes = n_modes;
  p_obj->publ.n_picks = n_picks;

  p_obj->publ.mode = (struct _modalobjb_modepubl *) calloc(n_modes, sizeof(struct _modalobjb_modepubl));
  p_obj->priv.mode = (struct _modalobjb_modepriv *) calloc(n_modes, sizeof(struct _modalobjb_modepriv));
  p_obj->state.mode = (struct _modalobjb_modesta *) calloc(n_modes, sizeof(struct _modalobjb_modesta));

  for (i=0; i<n_modes; i++)
    p_obj->publ.mode[i].pick_contrib = (float *) calloc(n_picks, sizeof(float));
																						
  p_obj->publ.pp_K = (t_matrix **) calloc(n_picks, sizeof(t_matrix *)); //array of #n_picks K-matrices
  for (i=0; i<n_picks; i++)
    p_obj->publ.pp_K[i] = new_matrix(2, 1); //#n_picks K-matrices (2x1)

  return(p_obj);
}

/**
 * Destruction of an instance of the modal resonator.
 *
 * \return 0, if successful, else !0.
 *
 * \todo Success of "destroy_matrix" and "free" should be controlled.
 */
int destroy_modal_object_b(t_modal_object_b *p_obj /**< Pointer to the modal object */)
{
  int i;
  int n_picks = p_obj->publ.n_picks, n_modes = p_obj->publ.n_modes;

  for (i=0; i<n_picks; i++) //#n_picks K-matrices
    destroy_matrix(p_obj->publ.pp_K[i]);
  //freebytes(p_obj->publ.pp_K, n_picks * sizeof(t_matrix *));
  free(p_obj->publ.pp_K);	//TODO verificare correttezza uso free
															
  for (i=0; i<n_modes; i++)	//#n_modes arrays of #n_picks weights
	  free(p_obj->publ.mode[i].pick_contrib);
    //freebytes(p_obj->publ.mode[i].pick_contrib, n_picks * sizeof(float));

  /*freebytes(p_obj->publ.mode, n_modes * sizeof(struct _modalobjb_modepubl));
  freebytes(p_obj->priv.mode, n_modes * sizeof(struct _modalobjb_modepriv));
  freebytes(p_obj->state.mode, n_modes * sizeof(struct _modalobjb_modesta));*/
  free(p_obj->publ.mode);
  free(p_obj->priv.mode);
  free(p_obj->state.mode);

  //freebytes(p_obj, sizeof(t_modal_object_b));
  free(p_obj);

  return 0;
}


/**
 * Setting of the number of active modes, see t_modal_object_b
 */
void set_actmodes_modalobjb(t_modal_object_b *p_obj, /**< Pointer to the modal object */
							int n_actmodes /**< Number of modes to be activated */)
{
  int i;

  if ((n_actmodes > p_obj->publ.n_modes) || (n_actmodes < 0))
    post("Modal object has %d modes. You can not activate more at runtime.", p_obj->publ.n_modes);
  else
    {
	  for (i=n_actmodes; i<p_obj->publ.n_modes; i++)
		set_state_modalobjb(p_obj, i, 0., 0., 0.); //Initialization
      p_obj->publ.n_actmodes = n_actmodes;
    }

  post("Number of active modes: %d", p_obj->publ.n_actmodes);
}


/**
 * Computation of private (internal) parameters	
 */
void set_privateprops_modalobjb(t_modal_object_b *p_obj, /**< Pointer to the modal object */
								float samprate /**< Current sample-rate */)
     /* The K-matrix is also computed in here! Let's think about it some day. */	//???
{
  int i, j;
  double ss = samprate*samprate;
  double freq0, t_e, fs, psf0s, fact;

  for (j=0; j<p_obj->publ.n_picks; j++)
    p_obj->publ.pp_K[j]->p_entry[0][0] = p_obj->publ.pp_K[j]->p_entry[1][0] = 0.;

  for (i=0; i<p_obj->publ.n_modes; i++) //N.B. for each mode
    {
      freq0 = p_obj->publ.base_freq * p_obj->publ.mode[i].freq0;

      t_e = p_obj->publ.base_te * p_obj->publ.mode[i].t_e;

		/*
		if (freq0 > .5*samprate)
		{
		freq0 = .5*samprate;
		#if (defined(_DEBUG_))
		post("Warning: freq0 of mode %d higher than half of samplerate! set to maximum (i.e. half of ...).", i);
		#endif
		}
		*/

	  if ((fs = freq0*freq0-1./(t_e*t_e)) > (.25*samprate*samprate)) //???
	  {
		  if (legal_freq_modalobjb(p_obj, i))
			{
			  set_legal_freq_modalobjb(p_obj, i, 0); //mode OFF
			  set_state_modalobjb(p_obj, i, 0., 0., 0.); //re-initialization: stop vibration
			}
	  }
	  else 
		  if (!legal_freq_modalobjb(p_obj, i))
			  set_legal_freq_modalobjb(p_obj, i, 1);

#if (defined(_DEBUG_))
	  if (fs > 0.)
		post("frequency %d: %f.", i, sqrt(fs));
	  else
		post("mode %d overdamped.", i);
#endif

      psf0s = PI*PI*freq0*freq0; //(PI² * freq0²) = (ω²/4) (see p.144 ω = 2*PI*freq0)
      fact = 1. / (ss + samprate/t_e + psf0s); //fact = 1/(samprate² + samprate/t_e + ω²/4) = 1/Δ (see p.144 SOb ch.8)
      p_obj->priv.mode[i].a11 = 1. - 2.* psf0s * fact; // a11 = 1 - (ω²/2) * (1/Δ)
      p_obj->priv.mode[i].a12 = samprate * fact; // a12 = samprate * (1/Δ)
      p_obj->priv.mode[i].a21 = -4.* samprate * psf0s * fact; //a21 = -samprate * (ω²/2) * (1/Δ)
      p_obj->priv.mode[i].a22 = 2.* ss * fact - 1.; // a22 = 2 * samprate² * (1/Δ) - 1

      p_obj->priv.mode[i].b1 = .25 * fact; // b1 = 1/(4Δ).  N.B. with respect to p.144 the modal weight component (1/m) is missing (see later)
      p_obj->priv.mode[i].b2 = .5 * samprate * fact; // b2 = samprate/(2Δ). Again the modal weight component (1/m) is missing

      for (j=0; j<p_obj->publ.n_picks; j++) //for each interaction point
		{
		  p_obj->publ.pp_K[j]->p_entry[0][0] += p_obj->publ.mode[i].pick_contrib[j] * p_obj->priv.mode[i].b1;
		  p_obj->publ.pp_K[j]->p_entry[1][0] += p_obj->publ.mode[i].pick_contrib[j] * p_obj->priv.mode[i].b2;
	//N.B. the modal weight components (1/m) are recovered here; 
	//??? (see p.166 SOb ch.8) it should be multiplied by the coefficients of the transform matrix !
  	//??? perche' non usa quelli sotto? non considera gain in uscita! infatti la matrice K viene usata solo dall'impactor

		  //p_obj->publ.pp_K[j]->p_entry[0][0] += p_obj->publ.base_gain * p_obj->publ.mode[i].pick_contrib[j] * p_obj->publ.mode[i].pick_contrib[j] * p_obj->priv.mode[i].b1;	//TODO verificare se era nell'originale!
		  //p_obj->publ.pp_K[j]->p_entry[1][0] += p_obj->publ.base_gain * p_obj->publ.mode[i].pick_contrib[j] * p_obj->publ.mode[i].pick_contrib[j] * p_obj->priv.mode[i].b2;

#if (defined(_DEBUG_))
		  post("modal: K-matrix for pick %d set to [0,0]=%.10f, [1,0]=%.10f", j, entry_matrix(p_obj->publ.pp_K[j], 0, 0), entry_matrix(p_obj->publ.pp_K[j], 1, 0));
#endif
        }
	}

  /*
    post("private props set!");
  */
}


/**
 * "Internal" update of the state of the modal object, ignoring current input forces
 */
void start_cycle_modalobjb(t_modal_object_b *p_obj /**< Pointer to the modal object */)
{
  int i;
  double last_displ, last_velo;
  double bug_compensation = PENTIUM_BUG * (2.*(rand()%2) - 1.); //Randomly = +0.0000000001 or -0.0000000001
																
  for (i=0; i<p_obj->publ.n_actmodes; i++)
    if (p_obj->priv.mode[i].legal_freq)
    {
		last_displ = p_obj->state.mode[i].displ;
		last_velo = p_obj->state.mode[i].velo;
	
		//N.B. with respect to p.144 it should be ... + (b * [y(n) + y(n-1)]) but look into 'add_force_modalobjb()'	
		p_obj->state.mode[i].displ = p_obj->priv.mode[i].a11 * last_displ + p_obj->priv.mode[i].a12 * last_velo
									 + p_obj->priv.mode[i].b1 * p_obj->state.mode[i].last_force; // x(n) = a11 * x(n-1) + a12 * v(n-1) + b1 * y(n-1)
																								//N.B. x~(n) for the interactor
		//N.B. with respect to p.144 it should be ... + (b * [y(n) + y(n-1)]) but look into 'add_force_modalobjb()'									 
		p_obj->state.mode[i].velo = p_obj->priv.mode[i].a21 * last_displ + p_obj->priv.mode[i].a22 * last_velo
									+ p_obj->priv.mode[i].b2 * p_obj->state.mode[i].last_force; // v(n) = a21 * x(n-1) + a22 * v(n-1) + b2 * y(n-1)
																								//N.B. v~(n) for the interactor
		p_obj->state.mode[i].last_force = bug_compensation; 

//#if (defined(_DEBUG_))
//		post("modal: mode %d, displacement = %.10f", i, p_obj->state.mode[i].displ);
//		post("modal: mode %d, velocity = %.10f", i, p_obj->state.mode[i].velo);
//#endif
	}														
}


/**
 * Addition of the contribution of an external force applied at the addressed interaction point
 *
 * The sum of all force contributions added up by (possibly repeated) calls of this function
 * is finally applied by calling apply_forces_modalobjb.
 *
 * \author Matthias Rath for the SOb european project
 *
 * \note This sum is reset to 0 after internal state update in start_cycle_modalobjb.
 */
void add_force_modalobjb(t_modal_object_b *p_obj, /**< Pointer to the modal object */
						 int pick, /**< Number of interaction point */
						 double force /**< Force applied to interaction point */)
{
  int i;

  for (i=0; i<p_obj->publ.n_actmodes; i++)
    if (p_obj->priv.mode[i].legal_freq)
		p_obj->state.mode[i].last_force += p_obj->publ.base_gain * p_obj->publ.mode[i].pick_contrib[pick] * force; // weight input force
} // last_force = (preceding last_force) + (base_gain * (1/m of #pick interaction point) * (f_ext applied to #pick interaction point))
  // last_force = y(n)


/**
 * Application of the summed contribution of external forces added up through add_force_modalobj (cfr).
 *
 */
void apply_forces_modalobjb(t_modal_object_b *p_obj /**< Pointer to the modal object */)
{
  int i;
  double Zxlast_force;

  for (i=0; i<p_obj->publ.n_actmodes; i++)
    if (p_obj->priv.mode[i].legal_freq)
      {
		Zxlast_force = p_obj->state.mode[i].last_force; //Zxlast_force = last_force for the i-th mode at #pick interaction point
		p_obj->state.mode[i].displ += p_obj->priv.mode[i].b1 * Zxlast_force; //x(n) = x~(n) + b1 * force
		p_obj->state.mode[i].velo += p_obj->priv.mode[i].b2 * Zxlast_force;  //v(n) = v~(n) + b2 * force
		
//#if (defined(_DEBUG_))
//		post("modal: mode %d Zxlast_force = %.10f", i, Zxlast_force);
//		post("modal: mode %d new displacement = %.10f", i, p_obj->state.mode[i].displ);
//		post("modal: mode %d new velocity = %.10f", i, p_obj->state.mode[i].velo);
//#endif

      }	//x(n) = a11 * x(n-1) + a12 * v(n-1) + b1 * [y(n) + y(n-1)]
	    //v(n) = a21 * x(n-1) + a22 * v(n-1) + b2 * [y(n) + y(n-1)] see p.144
}		//N.B. modal weights are still not considered in b: the spatial viewpoint is still not reckoned


/**
 * Returns the current displacement of the modal object at the addressed interaction point.
 *
 */
double displ_modalobjb(t_modal_object_b *p_obj, /**< Pointer to the modal object */
						int pick /**< Number of interaction point */)
{
  int i;
  double displ = 0.; //Initialization

  for (i=0; i<p_obj->publ.n_actmodes; i++)
    if (p_obj->priv.mode[i].legal_freq)
		displ += p_obj->state.mode[i].displ;	//TODO !!! Inaccuracy: we lose spatial information!!! waiting for a revision
		//displ += p_obj->publ.mode[i].pick_contrib[pick] * p_obj->state.mode[i].displ; //N.B. here modal weights contribution is reckoned (spatial viewpoint)
  
#if (defined(_DEBUG_))
  post("modal: returned total displ = %.10f", displ);
#endif

  return(displ); //displacement of interaction point #pick 
}

/**
 * Returns the current velocity of the modal object at the addressed interaction point.
 *
 */
double velo_modalobjb(t_modal_object_b *p_obj, /**< Pointer to the modal object */
					   int pick /**< Number of interaction point */) //quale interaction point considero
{
  int i;
  double velo = 0.; //Initialization

  for (i=0; i<p_obj->publ.n_actmodes; i++)
	if (p_obj->priv.mode[i].legal_freq)
		velo += p_obj->state.mode[i].velo;	//TODO !!! Inaccuracy: we lose spatial information!!! waiting for a revision
		//velo += p_obj->publ.mode[i].pick_contrib[pick] * p_obj->state.mode[i].velo; //N.B. here modal weights contribution is reckoned (spatial viewpoint)

#if (defined(_DEBUG_))
  post("modal: returned total velocity = %.10f", velo);
#endif

  return(velo); //velocity of interaction point #pick
}


/**
 * Returns the current state of the modal object at the addressed interaction point.
 */	
t_displ_velo pickup_modalobjb(t_modal_object_b *p_obj, /**< Pointer to the modal object */
							  int pick /**< Number of interaction point */)
{
  t_displ_velo w;
  int i;

  w.displ = w.velo = 0.; //Initialization

  for (i=0; i<p_obj->publ.n_actmodes; i++) 
    if (p_obj->priv.mode[i].legal_freq)	
      {
	    //TODO !!! Inaccuracy: waiting for a revision
		w.displ += p_obj->publ.mode[i].pick_contrib[pick] * p_obj->state.mode[i].displ; //N.B. here modal weights contribution is reckoned (spatial viewpoint)
		w.velo += p_obj->publ.mode[i].pick_contrib[pick] * p_obj->state.mode[i].velo;
      }
  return(w); 
}
