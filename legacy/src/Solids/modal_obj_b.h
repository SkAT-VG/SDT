/** \file modal_obj_b.h
 * Definition of a modal resonator. For theoretical background please refer
 * to Adrien (reference [2] SOb book). 
 * The algorithm implementation is achieved through discretization by 
 * bilinear transformation: that's what the "_b" in the name stands for.
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

#if !defined(_MODAL_OBJ_B_H_)
#define _MODAL_OBJ_B_H_

#define MINTE 1e-10 /**< Minimal assumed 1/e-decay time t_e. */

#include "solids.h"
#include "matrix_calc.h"

/**
 * Structure of a general resonating object in the modal description
 * Holds parameters to be accessed from outside, internal (private) parameters
 * and the current state of the object.
 */
typedef struct
{
  /**
   * "Public" attributes, to be set or read from outside
   */
  struct _modalobjb_publ
  {
    int n_modes; /**< Number of resonant modes of the object, is set at creation and NOT to be changed explicitly */
    int n_actmodes; /**< Number of active resonant modes of the object.
			 With this parameter the calculation of "higher" modes can be switched on or off for adjustment of computational cost and sound quality.
			 The maximum number of modes to be activated is of course given by "n_modes". */
    int n_picks; /**< Number of interaction points, in which the object can interact with the outside,
						is set at creation and NOT to be changed explicitly */

    float base_freq; /**< Global factor, by which all modal frequencies are multiplied */
    float base_te; /**< Global factor, by which all modal decay times are multiplied */
    float base_gain; /**< Global factor, by which all modal weights at all picks are multiplied */

    /**
     * Container for parameters of each mode
     */
    struct _modalobjb_modepubl
    {
      float freq0; /**< Resonant frequency of the mode when undamped */
      float t_e; /**< Time for the mode to decay by a factor 1/e */
      float *pick_contrib; /**< Array of weights of the mode at the interaction points */
    } *mode; /**< Array of modes */

    t_matrix **pp_K; /**< Array of (pointers to) K-matrices at the interaction points */ //N.B. 1 K-matrix for each interaction point
  } publ; /**< Instance of the substructure */

  /**
   * Private parameters of the modal object
   * These are computed from public parameters by the function set_privateprops_modalobjb
   * and should never be touched explicitly
   */
  struct _modalobjb_priv
  {
    /**
     * Container of filter coefficients of a mode
     */
    struct _modalobjb_modepriv
    {
      int legal_freq; /**< Flag to switch on/off mode depending if current frequency is lower/higher than half of samplerate */

      double a11; //Matrix A and array b (ref. p.144 ch.8 SOb)
      double a12;
      double a21;
      double a22;
      double b1;
      double b2;
    } *mode; /**< Array of coefficients of each mode */
  } priv; /**< Instance of the substructure */

  /**
   * State variables of a mode
   */
  struct _modalobjb_sta
  {
    /**
     * The usual container
     */
    struct _modalobjb_modesta
    {
      double displ; /**< Displacement of mode */
      double velo; /**< Velocity of mode */

      double last_force; /**< Last force applied to mode */ 
    } *mode; /**< Array of modal states */					
  } state; /**< Instance of the substructure */
} t_modal_object_b;




/**
 * Setting of base parameters, see t_modal_object_b
 *
 * \note For efficiency this should be declared as inline
 */
static void set_base_modalobjb(t_modal_object_b *p_obj, /**< Pointer to the modal object */
									  float base_freq, /**< Global frequency factor */
									  float base_te, /**< Global factor of decay times */
									  float base_gain /**< Global factor for modal weights */)
{
  p_obj->publ.base_freq = base_freq;
  p_obj->publ.base_te = base_te;
  p_obj->publ.base_gain = base_gain;
  /*
  post("baseprops set to %f, %f.", p_obj->publ.base_freq, p_obj->publ.base_te);
  */
}

/**	
 * Setting of the ratio between the undamped frequency of the addressed mode and the global base frequency
 *
 * \note For efficiency this should be declared as inline
 */
static void set_freq0_modalobjb(t_modal_object_b *p_obj, /**< Pointer to the modal object */
								int mode, /**< Number of mode */
								float freq0 /**< Relative undamped frequency of addressed mode */)
{
  if (mode >= p_obj->publ.n_modes)
    post("mode no.%d does not exist!", mode);
  else
  {
    if (freq0 <= 0.)
	{
	  freq0 = 0.;
	  post("warning: setting Freq0%d = 0.", mode);
	}
  p_obj->publ.mode[mode].freq0 = freq0;

#if (defined(_DEBUG_))
      post("freq0%d set to %f.", mode, p_obj->publ.mode[mode].freq0);
#endif
  }
}

/**
 * Returns the (absolute) undamped frequency of the addressed mode 
 *																	
 * \note For efficiency this should be declared as inline
 */
static float freq0_modalobjb(t_modal_object_b *p_obj, /**< Pointer to the modal object */
									  int mode /**< Number of mode */)
{
  return(p_obj->publ.base_freq * p_obj->publ.mode[mode].freq0);
}

/**	
 * Setting of the ratio between the 1/e-decay time of the addressed mode and the global base time
 *
 * \note For efficiency this should be declared as inline
 */
static void set_te_modalobjb(t_modal_object_b *p_obj, /**< Pointer to the modal object */
									int mode, /**< Number of mode */
									float t_e /**< Relative 1/e-decay time of mode */)
{
  if (mode >= p_obj->publ.n_modes)
    post("mode no.%d does not exist!", mode);
  else
  {
    if (t_e <= 0.)
	{
	  t_e = MINTE;
	  post("warning: t_e of mode no.%d <= 0?! Is set to %f.", mode, MINTE);
	}
    p_obj->publ.mode[mode].t_e = t_e;

#if (defined(_DEBUG_))
    post("t_e%d set to %f.", mode, p_obj->publ.mode[mode].t_e);
#endif
  }
}

/**																
 * Returns the (absolute) 1/e-decay time of the addressed mode
 *
 * \note For efficiency this should be declared as inline
 */
static float te_modalobjb(t_modal_object_b *p_obj, /**< Pointer to the modal object */
								   int mode /**< Number of mode */)
{
  return(p_obj->publ.base_te * p_obj->publ.mode[mode].t_e);	
}

/**
 * Setting of the relative weight of the addressed mode at the addressed interaction point
 *
 * \note For efficiency this should be declared as inline
 */
static void set_pickcontrib_modalobjb(t_modal_object_b *p_obj, /**< Pointer to the modal object */
											 int pick, /**< Number of interaction point */
											 int mode, /**< Number of mode */
											 float pick_contrib /**< Relative weight */)
{
  if (mode >= p_obj->publ.n_modes || pick >= p_obj->publ.n_picks)
    post("mode no.%d or pick no.%d do not exist!", mode, pick);
  else
    p_obj->publ.mode[mode].pick_contrib[pick] = pick_contrib;

#if (defined(_DEBUG_))
  post("modal: pick_contrib%d for mode%d set to %.10f.", pick, mode, p_obj->publ.mode[mode].pick_contrib[pick]);
#endif
}

/**																						
 * Returns the (absolute) weight of the addressed mode at the addressed interaction point
 *
 * \note For efficiency this should be declared as inline
 */
static float pickcontrib_modalobjb(t_modal_object_b *p_obj, /**< Pointer to the modal object */
											int pick, /**< Number of interaction point */
											int mode /**< Number of mode */)
{
  return(p_obj->publ.base_gain * p_obj->publ.mode[mode].pick_contrib[pick]);
}

/**
 * Setting of the legal_freq flag of the addressed mode
 *
 * \note For efficiency this should be declared as inline
 */
static void set_legal_freq_modalobjb(t_modal_object_b *p_obj, /**< Pointer to the modal object */
											int mode, /**< Number of mode */
											int legal_freq /**< Flag of legality of current frequency */)
{
  if ((legal_freq != 0) && (legal_freq != 1))
    post("Flag of legality of frequency must be 0 or 1.");
  else
    {
      p_obj->priv.mode[mode].legal_freq = legal_freq;

      if (legal_freq == 0)
		post("Mode no.%d switched off.", mode);
      else
		post("Mode no.%d switched on.", mode);
    }
}

/**
 * Returns the legal_freq flag of the addressed mode
 *
 * \note For efficiency this should be declared as inline
 */
static int legal_freq_modalobjb(t_modal_object_b *p_obj, /**< Pointer to the modal object */
										 int mode /**< Number of mode */)
{
  //DEBUG
  //post("modal_obj: Mode %d: legal frequency flag = %d", mode, p_obj->priv.mode[mode].legal_freq);
  return(p_obj->priv.mode[mode].legal_freq);
}

/**
 * Setting of the state of the addressed mode
 *
 * \note For efficiency this should be declared as inline
 */
static void set_state_modalobjb(t_modal_object_b *p_obj, /**< Pointer to the modal object */
									   int mode, /**< Number of mode */
									   double displ, /**< Displacement */
									   double velo, /**< Velocity */
									   double last_force /**< Last applied force */)
{
  p_obj->state.mode[mode].displ = displ;
  p_obj->state.mode[mode].velo = velo;
  p_obj->state.mode[mode].last_force = last_force;
  
#if (defined(_DEBUG_))
  post("modal: state set to %f, %f, %f.", p_obj->state.mode[mode].displ, p_obj->state.mode[mode].velo, p_obj->state.mode[mode].last_force);
#endif 
}

/**
 * Returns the pointer to the K-matrix at the addressed interaction point
 *
 * \note For efficiency this should be declared as inline
 */
static t_matrix* p_K_modalobjb(t_modal_object_b *p_obj, /**< Pointer to the modal object */
									  int pick /**< Number of interaction point */)
{
  return(p_obj->publ.pp_K[pick]);
}

/* Prototypes */
t_modal_object_b *new_modal_object_b(int n_modes, int n_picks);

int destroy_modal_object_b(t_modal_object_b *p_obj);

void set_actmodes_modalobjb(t_modal_object_b *p_obj, int n_actmodes);

void set_privateprops_modalobjb(t_modal_object_b *p_obj, float samprate);

void start_cycle_modalobjb(t_modal_object_b *p_obj);
void add_force_modalobjb(t_modal_object_b *p_obj, int pick, double force);
void apply_forces_modalobjb(t_modal_object_b *p_obj);

double displ_modalobjb(t_modal_object_b *p_obj, int pick);
double velo_modalobjb(t_modal_object_b *p_obj, int pick);
t_displ_velo pickup_modalobjb(t_modal_object_b *p_obj, int pick);

#endif /* !defined(_MODAL_OBJ_B_H_) */
