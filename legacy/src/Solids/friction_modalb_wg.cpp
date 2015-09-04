/** \file friction_modalb_wg.cpp
 * flext-based external for Pd and Max implementing interaction between two 
 * resonators (a modal one and a waveguide one) by means of a non-linear 
 * friction force.
 * The "b" at the end of the name refers to the realization of the modal 
 * resonator by discretization through "b"ilinear transformation.
 *
 * \author Stefano Papetti (stefano.papetti@zhdk.ch)
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

// IMPORTANT: enable attribute processing (specify before inclusion of flext headers!)
// #define FLEXT_ATTRIBUTES 1 //TODO

#include <flext.h>
 
// check for appropriate flext version
#if !defined(FLEXT_VERSION) || (FLEXT_VERSION < 501)
#error You need at least flext version 0.5.1
#endif

#include "../SDT.h"

#include "solids.h"


/* ---------------- friction_modalb_wg~ ----------------- */

extern "C" {
#include "friction_interactor.h"
#include "modal_obj_b.h"
#include "wg_obj.h"
}

#define INTERACT_PICK 0 /**< Index of the interaction point at which
                             the friction takes place */
#define N_PROPS_INTERACT 9 /**< Number of interactor attributes to be set */

#define N_ARG_BASE 3 /**< Number of global base factors for the modal object, to be taken from creation arguments */

#define N_SIG_INLETS 3 /**< Number of signal inlets of the plugin */

#define external_name "friction_modalb_wg~\0"


/**** TYPE DEFINITIONS ****/

/**
 * Pointertypes to pickup functions		
 */
typedef double (*t_pickup_signal_function_modalb)(t_modal_object_b*, int);
				//Arguments are: a pointer to a modal obj. and the considered pick

typedef double (*t_pickup_signal_function_wg)(t_wg_object*);


/**
 * Container for internal control structure of plugin.
 */
typedef struct _friction_modalb_wg_ctl /**< Links the 2 interacting objects and the interactor */
{
  t_modal_object_b *p_object1; /**< Pointer to striking object ("bow") */
  t_wg_object *p_object2; /**< Pointer to bowed object */
  t_friction_interactor bow; /**< Interactor object */

  float last_distance; /**< Last additional offset value, stored for internal purposes. */

  t_pickup_signal_function_modalb *p_pickup_signal1; /**< Array of pointers to pickup functions for all interaction points of modal resonator */
  t_pickup_signal_function_wg p_pickup_signal2; /**< Pointer to pickup function of wg resonator */
} t_friction_modalb_wg_ctl;


// A flext dsp external ("tilde object") inherits from the class flext_dsp 
class friction_modalb_wg: 
	public flext_dsp	/* N.B. */
{	
	FLEXT_HEADER_S(friction_modalb_wg, flext_dsp, setup)

	public:
		//TODO con attributi 
		// CONSTRUCTOR with no arguments
		// initial values are set by attributes at creation time (see help file)	/* N.B. */
		friction_modalb_wg(int argc, t_atom *argv);
		

	protected:
		float samprate;
		t_friction_modalb_wg_ctl x_cspace; 
		t_friction_modalb_wg_ctl *x_ctl;

	//FUNCTIONS PROTOTYPES
		int prepare_modal_obj_b(int argc, t_atom *argv);
		void prepare_wg_obj();

	//METHODS PROTOTYPES
		void m_strike(float velocity);

		//methods for interactor
		void m_interactor_props(int argc, t_atom *argv);

		//methods for modal obj
		void m_set_actmodes1(int actmodes);
		void m_base1(float base_freq0, float base_te, float base_gain);
		void m_mode_freqs1(int argc, t_atom *argv);
		void m_mode_ts1(int argc, t_atom *argv);
		void m_mode_contribs1(int argc, t_atom *argv);

		//methods waveguide obj
		void m_contact_pos2(float bowing_pos);
		void m_str_length2(float str_length);
		void m_str_tension2(float str_tension);
		void m_str_mass2(float str_mass);

		// here we declare the virtual DSP function
		virtual void m_signal(int n, float *const *in, float *const *out);	/* polimorfismo */


	private:
		static void setup(t_classid c);

	// for every registered method a callback has to be declared
		FLEXT_CALLBACK_F(m_strike)

		FLEXT_CALLBACK_V(m_interactor_props)

		FLEXT_CALLBACK_I(m_set_actmodes1)
		FLEXT_CALLBACK_FFF(m_base1)
		FLEXT_CALLBACK_V(m_mode_freqs1)
		FLEXT_CALLBACK_V(m_mode_ts1)
		FLEXT_CALLBACK_V(m_mode_contribs1)

		FLEXT_CALLBACK_F(m_contact_pos2)
		FLEXT_CALLBACK_F(m_str_length2)
		FLEXT_CALLBACK_F(m_str_tension2)
		FLEXT_CALLBACK_F(m_str_mass2)

}; // end of class declaration for friction_modalb_wg

FLEXT_NEW_DSP_V("friction_modalb_wg~", friction_modalb_wg)


/**** DEFINITIONS ****/

// ---- SETUP ----
void friction_modalb_wg::setup(t_classid c)
{
// --- set up methods (class scope) ---

	// set up tagged methods for the default inlet (0)
	FLEXT_CADDMETHOD_F(c, 0, "start_bowing", m_strike);  // single float arg
	
	FLEXT_CADDMETHOD_(c, 0, "nteract_pressr", m_interactor_props);	// list of 9 float args recognized automatically

	FLEXT_CADDMETHOD_I(c, 0, "actmodes1", m_set_actmodes1);	// single int arg
	FLEXT_CADDMETHOD_FFF(c, 0, "base1", m_base1);	// 3 float args
	FLEXT_CADDMETHOD_(c, 0, "mode_freqs1", m_mode_freqs1);	// any arg recognized automatically
	FLEXT_CADDMETHOD_(c, 0, "mode_ts1", m_mode_ts1);	// any arg recognized automatically
	FLEXT_CADDMETHOD_(c, 0, "mode_contribs1", m_mode_contribs1);	// any arg recognized automatically

	FLEXT_CADDMETHOD_F(c, 0, "contact_pos2", m_contact_pos2);	// single float arg
	FLEXT_CADDMETHOD_F(c, 0, "str_length2", m_str_length2);	// single float arg
	FLEXT_CADDMETHOD_F(c, 0, "str_tension2", m_str_tension2);	// single float arg
	FLEXT_CADDMETHOD_F(c, 0, "str_mass2", m_str_mass2);		// single float arg

	// set up methods for other inlets
	// no message tag used
	FLEXT_CADDMETHOD(c, 3, m_strike);  // single float arg recognized automatically
	
	FLEXT_CADDMETHOD(c, 4, m_interactor_props);	// list of 9 float args recognized automatically

	FLEXT_CADDMETHOD(c, 5, m_base1);	// 3 float args recognized automatically
	FLEXT_CADDMETHOD(c, 6, m_mode_freqs1);	// any arg recognized automatically
	FLEXT_CADDMETHOD(c, 7, m_mode_ts1);	// any arg recognized automatically
	FLEXT_CADDMETHOD(c, 8, m_mode_contribs1);	// any arg recognized automatically

	FLEXT_CADDMETHOD(c, 9, m_contact_pos2);	// single float arg recognized automatically
	FLEXT_CADDMETHOD(c, 10, m_str_length2);	// single float arg recognized automatically
	FLEXT_CADDMETHOD(c, 11, m_str_tension2);	// single float arg recognized automatically
	FLEXT_CADDMETHOD(c, 12, m_str_mass2);		// single float arg recognized automatically
}


// ---- CONSTRUCTOR ----
friction_modalb_wg::friction_modalb_wg(int argc, t_atom *argv)
{	

	int n_picks1, n_modes1;
	int	pos_object1=N_PROPS_INTERACT, pos_base1, pos_freqs1, pos_ts1, pos_interacts1, //Positions of creation args. inside array "argv"
		pos_object2, pos_bowing_pos2, pos_str_length2, pos_str_tension2, pos_str_mass2, pos_output_mask2;
	int i;

	//SDT heading: output to console
    post("%s", DASH_LINE);
    SDT_TEXTHEAD
    
    //external description
    post("   %s: Friction between a 'modal' bow and a 'waveguide' resonator.", external_name);
    post("   Version: %s", SDT_ver_str);
    post("   Authors: Davide Rocchesso, Federico Avanzini and Matthias Rath");
	post("   Author: Stefano Papetti");
	post("%s", DASH_LINE);

	samprate = Samplerate();	//Reads host's sample rate but doesn't follow it
								//-> the external needs to be re-created if sample rate changes during the session
	x_ctl = &x_cspace;  


	//** object1: modal object. bow **/									
	n_picks1 = prepare_modal_obj_b(argc-pos_object1, argv+pos_object1);

	if (!(x_ctl->p_pickup_signal1 = (t_pickup_signal_function_modalb *) calloc(n_picks1, sizeof(t_pickup_signal_function_modalb))))
		post("%s: !!! Something wrong with pointer to pickup_signal functions of modal_obj!", external_name);
	//TODO free?
	for (i=0; i<n_picks1; i++) //Reads the output masks
		if (GetAFloat(argv[pos_object1+2+i]) == 1) //if = '1' -> velocity
		{
			x_ctl->p_pickup_signal1[i] = velo_modalobjb; 
			post("%s: Pickup %d of object1 reads velocity information.", external_name, i);
		}
		else //if = 'd' or anything else -> displacement
		{
			x_ctl->p_pickup_signal1[i] = displ_modalobjb;
			post("%s: Pickup %d of object1 reads displacement information.", external_name, i);
		}

	n_modes1 = x_ctl->p_object1->publ.n_modes;

	pos_base1 = pos_object1 + 2 + n_picks1;
	pos_freqs1 = pos_base1 + 3;
	pos_ts1 = pos_freqs1 + n_modes1;
	pos_interacts1 = pos_ts1 + n_modes1;

	//** object2: wg object. bowed object**/
	prepare_wg_obj();	//Wrap up of waveguide object creation, delay lines and 
						//filters creation, state initialization, ...

	pos_object2 = pos_bowing_pos2 = pos_interacts1 + (n_modes1+1)*n_picks1;
	pos_str_length2 = pos_bowing_pos2 + 1;
	pos_str_tension2 = pos_str_length2 + 1;
	pos_str_mass2 = pos_str_tension2 + 1;
	pos_output_mask2 = pos_str_mass2 + 1;

	//Reads output mask
	//TODO calloc come sopra per modal
	if (GetAFloat(argv[pos_output_mask2]) == 1) //if = '1' -> velocity
	{												   
		x_ctl->p_pickup_signal2 = velo_wgobj;
		post("%s: Pickup of object2 reads velocity information.", external_name);
	}
	else //if anything else (e.g. 'd') -> displacement
	{
		x_ctl->p_pickup_signal2 = displ_wgobj;
		post("%s: Pickup of object2 reads displacement information.", external_name);
	}


	// The constructor of your class is responsible for
	// setting up inlets and outlets and for registering
	// inlet-methods:
	// The descriptions of the inlets and outlets are output				/* N.B. */
	// via the Max/MSP assist method (when mousing over them in edit mode).
	// PD will hopefully provide such a feature as well soon

	AddInSignal("signal: external bowing force");			// 1 float in (1st inlet) //floats are translated to signals
	AddInSignal("signal: external force on string");			// 1 float in (2nd inlet)
	AddInSignal("signal: additional offset between objects");   // 1 float in (3th inlet)

	AddInFloat("float: initial bow velocity");				// 1 float in (4th inlet)

	AddInList("list[9]: interactor properties");			// 1 List in (5th inlet)

	AddInList("list[3]: modal_obj base factors");		// 1 List in (6th inlet)
	AddInList("list[n_modes]: modes frequencies");		// 1 List in (7th inlet)
	AddInList("list[n_modes]: modes decay times");		// 1 List in (8th inlet)
	AddInList("list[1 + n_modes]: pickup #, modes weight factors");	// 1 List in (9th inlet)

	AddInFloat("float: contact position along the string");	// 1 float in (10th inlet)
	AddInFloat("float: string length");					// 1 float in (11th inlet)
	AddInFloat("float: string tension");					// 1 float in (12th inlet)
	AddInFloat("float: string mass");						// 1 float in (13th inlet)

	for (i=0; i<(n_picks1); i++) //1 outlet for each interaction points of modal obj1 
		AddOutSignal("signal: bow output");
	AddOutSignal("signal: string output");   // + 1 for wg obj2


	//** Below are explicit calls to METHODS for initializing the just created objects **/

	//interactor
	m_interactor_props(argc, argv);		//Sets publ. params. of frictionor from creation arguments and computes the K-matrix
	set_state_frictionor(&x_ctl->bow, 0., 0.); //Sets mean bristle displ. (z) and velo (dot_z = y)

	//obj1. modal object. (modal bow)
	m_mode_freqs1(argc-pos_freqs1, argv+pos_freqs1);		//Sets modes freqs. of obj1. 
	m_mode_ts1(argc-pos_ts1, argv+pos_ts1);	//Sets modes decays of obj1.
	for (i=0; i<n_picks1; i++)	//for each pick 
		m_mode_contribs1(argc-(pos_interacts1+i*(n_modes1+1)), argv+(pos_interacts1+i*(n_modes1+1)));	//Sets modal weights of obj1.
	for (i=0; i<n_modes1; i++)	//for each mode
		set_state_modalobjb(x_ctl->p_object1, i, 0., 0., 0.);		//Initializes displ, velo and last_force to 0 --> no vibrations
	m_base1(GetAFloat(argv[pos_base1]), GetAFloat(argv[pos_base1+1]), GetAFloat(argv[pos_base1+2])); 

	//obj2. wg object. (bowed waveguide object)
	m_str_length2(GetAFloat(argv[pos_str_length2]));
	m_str_tension2(GetAFloat(argv[pos_str_tension2]));
	m_str_mass2(GetAFloat(argv[pos_str_mass2]));
	m_contact_pos2(GetAFloat(argv[pos_bowing_pos2]));	//N.B. must be last!
										//Sets the lengths of wg sections preceding and following the contact position
	set_state_wgobj(x_ctl->p_object2, 0., 0., 0., 0., 0.); //Initializes displ, velo, vmin_l, vmin_r and last_force to 0


	x_ctl->last_distance = 0.;
	
	post("%s: External initialization completed.", external_name);
	
} // end of CONSTRUCTOR



// *** FUNCTIONS *** //

/**	
 * Wrap up of several modal object initialization actions, as object creation, state initialization, ...
 *
 * \return Number of interaction points ("picks") of the initialized modal object.
 *
 * \todo Negative return values for failures.
 */
int friction_modalb_wg::prepare_modal_obj_b(int argc, t_atom *argv)
{																							
  int n_modes=1, n_picks=1; //When no args. consider n_modes=1 and n_picks=1
  int i, j;

  if (argc>0) 
    {
      if ((n_modes = GetAInt(argv[0])) <= 0)
		{
			post("%s: !!! n_modes of object1 <= 0 ?!! Forcing to 1.", external_name);
			n_modes = 1;
		}
      if (argc>1)
		if ((n_picks = GetAInt(argv[1])) <= 0)
		{
			post("%s: !!! n_picks of object1 <= 0 ?!! Forcing to 1.", external_name);
			n_picks = 1;
		}
    }

  post("%s: object1: n_modes = %d, n_picks = %d.", external_name, n_modes, n_picks);

  if (!(x_ctl->p_object1 = new_modal_object_b(n_modes, n_picks))) //Creates new modal obj
    post("%s: !!! Creation of new modal_obj failed!", external_name);

  return(n_picks); //Returns: # of picks
}


/**		
 * Wrap up of waveguide object creation, delay lines and filters creation, state initialization, ...
 *
 * \todo Negative return values for failures.
 */
void friction_modalb_wg::prepare_wg_obj()
{														
  if (!(x_ctl->p_object2 = new_wg_object(samprate)))	//Creates new wg obj
    post("%s: !!! Creation of new waveguide_obj failed!", external_name);
}													




//**** METHOD-SPACE ****/

/**
 * Sets "mode 0 (inertial mode) displ of the bow" = "bowed obj displ" (plus additional offset) --> contact!
 * Set objects to contact and bow initial velocity.	
 * All modes except no. 1 are set to "0 state".	
 */
void friction_modalb_wg::m_strike(float velocity)
{
  int i;
												
  set_state_modalobjb(x_ctl->p_object1,  
					  0, //Mode 0 (inertial)
					  displ_wgobj(x_ctl->p_object2) + x_ctl->last_distance,
					  velocity, //bow velocity
					  0.); //Last_force
									
  for (i=1; i < x_ctl->p_object1->publ.n_modes; i++) //Other modes 
    set_state_modalobjb(x_ctl->p_object1, i, 0., 0., 0.); //Sets to 0 displ, velo and last_force
}

/**
 * Sets the parameters of the interactor
 * and initiates the computation of internal parameters.
 */	
void friction_modalb_wg::m_interactor_props(int argc, t_atom *argv)
{
  set_publ_frictionor(&x_ctl->bow, GetAFloat(argv[0]),  // sig0
					  GetAFloat(argv[1]), // sig1
					  GetAFloat(argv[2]), // sig2
					  GetAFloat(argv[3]), // mu_d
					  GetAFloat(argv[4]), // mu_s
					  GetAFloat(argv[5]), // c_ba
					  GetAFloat(argv[6]), // v_s
					  GetAFloat(argv[7]), // F_n
					  GetAFloat(argv[8]));// noisy
}


//OBJECT 1 methods (modal bow)

/**
 * Set the number of active modes for object 1.
 */
void friction_modalb_wg::m_set_actmodes1(int n_actmodes)
{
  set_actmodes_modalobjb(x_ctl->p_object1, n_actmodes);
}																			

/**
 * Sets the base parameters of modal object 1
 * and initiates the computation of the internal parameters.
 * K-matrices are (re)passed to the interactor.
 */
void friction_modalb_wg::m_base1(float base_freq0, float base_te, float base_gain)
{
  int i;

  set_base_modalobjb(x_ctl->p_object1, base_freq0, base_te, base_gain);

  set_privateprops_modalobjb(x_ctl->p_object1, samprate);

  set_Kmatrix_frictionor(&x_ctl->bow, p_K_modalobjb(x_ctl->p_object1, INTERACT_PICK), p_K_wgobj(x_ctl->p_object2), samprate );
}

/**
 * Sets the undamped frequencies for the modes of modal object 1.
 */
void friction_modalb_wg::m_mode_freqs1(int argc, t_atom *argv)
{
  int i;

  for (i=0; i<x_ctl->p_object1->publ.n_modes; i++)
    set_freq0_modalobjb(x_ctl->p_object1, i, GetAFloat(argv[i]));
}

/**
 * Sets the 1/e-decay times of the modes of modal object 1.
 */
void friction_modalb_wg::m_mode_ts1(int argc, t_atom *argv)
{
  int i;

  for (i=0; i<x_ctl->p_object1->publ.n_modes; i++)
    set_te_modalobjb(x_ctl->p_object1, i, GetAFloat(argv[i]));
}

/**
 * Sets the interaction contribution of the modes of modal object 1 for the specified interaction point.
 */
void friction_modalb_wg::m_mode_contribs1(int argc, t_atom *argv)
{
  float weight;
  int i;
  int pick = GetAInt(argv[0]);

  for (i=0; i<x_ctl->p_object1->publ.n_modes; i++)
    {
      weight = GetAFloat(argv[i+1]);

      set_pickcontrib_modalobjb(x_ctl->p_object1, pick, i, weight);
    }
}


//OBJECT 2 methods (waveguide bowed object)

/**
 * Sets the pick position for waveguide object (object 2)
 */
void friction_modalb_wg::m_contact_pos2(float bowing_pos)
{														
  //DEBUG
  //post("Contact position along the string set to %f", bowing_pos);

  setStrikePos(x_ctl->p_object2, bowing_pos);
}

/**
 * Sets the length "L" of waveguide object (object 2)
 */
void friction_modalb_wg::m_str_length2(float length)
{														
  //DEBUG
  //post("String length is %f meters", length);

  setStrLength(x_ctl->p_object2, length);	//Basically just to check the value
  updateStrImped_and_Pitch(x_ctl->p_object2);	//Also computes K-matrix of wg obj
  
  set_Kmatrix_frictionor(&x_ctl->bow, p_K_modalobjb(x_ctl->p_object1, INTERACT_PICK), p_K_wgobj(x_ctl->p_object2), samprate );

}

/**
 * Sets the tension "T" of waveguide object (object 2)
 */
void friction_modalb_wg::m_str_tension2(float tension)
{														
  //DEBUG
  //post("String tension is %f N", tension);

  setStrTension(x_ctl->p_object2, tension);
  updateStrImped_and_Pitch(x_ctl->p_object2);
  
  set_Kmatrix_frictionor(&x_ctl->bow, p_K_modalobjb(x_ctl->p_object1, INTERACT_PICK), p_K_wgobj(x_ctl->p_object2), samprate );
}

/**
 * Sets the mass "m" of waveguide object (object 2)
 */
void friction_modalb_wg::m_str_mass2(float mass)
{														
  //DEBUG
  //post("String mass is %f Kg", mass);

  setStrMass(x_ctl->p_object2, mass);
  updateStrImped_and_Pitch(x_ctl->p_object2);
  
  set_Kmatrix_frictionor(&x_ctl->bow, p_K_modalobjb(x_ctl->p_object1, INTERACT_PICK), p_K_wgobj(x_ctl->p_object2), samprate );
}


// ---- DSP FUNCTION ----

// Now we define our DSP function. It gets this arguments:
// 
// int n: length of signal vector. Loop over this for your signal processing.
// float *const *in, float *const *out: 
//          These are arrays of the signals in the objects signal inlets rsp.
//          oulets. We come to that later inside the function.

void friction_modalb_wg::m_signal(int n, float * const * in, float * const * out)
{
	const float * ext_force1 = in[0];	/**< External force to be applied to the bow */
	const float * ext_force2 = in[1];	/**< External force to be applied to the bowed object*/
	const float * ext_offset = in[2];	/**< External offset to be added to the distance of the interacting objects */

	int i;
	//double displ, velo; 
	double force1, force2;

	int n_picks1 = x_ctl->p_object1->publ.n_picks,
		n_modes1 = x_ctl->p_object1->publ.n_modes;
	

#if (defined(_DEBUG_))
	post("---------> New buffer <----------");
#endif
	// We are now ready for the main signal loop
	for(int si = 0; si < n; ++si)
	{
#if (defined(_DEBUG_))
		post("CYCLE # %d:", si);
#endif
		start_cycle_modalobjb(x_ctl->p_object1); //Computes the state of the hammer ignoring current forces
		start_cycle_wgobj(x_ctl->p_object2); //Computes the state of the wg obj. ignoring current forces

		//TODO
		//displ = displ_modalobjb(x_ctl->p_object1, INTERACT_PICK);
	    
		///* if hammer moves "too far away",... */
		//if (displ>STRIKE_POS_MAX)
		//{
		//	set_state_modalobjb(x_ctl->p_object1, displ=STRIKE_POS_MAX, 0., 0.);
		//	post("friction_wg~: striker stopped at STRIKE_POS_MAX!");
		//}
		//else if (displ<STRIKE_POS_MIN)
		//{
		//	set_state_modalobjb(x_ctl->p_object1, displ=STRIKE_POS_MIN, 0., 0.);
		//	post("friction_wg~: striker stopped at STRIKE_POS_MIN!");
		//}
		///* ...stop it! */

#if (defined(_DEBUG_))
		post(" ---- frictionor:");
#endif
		friction_force_frictionor(&force1, &force2, //Returns the interaction forces in "force1" and "force2" 
							  &x_ctl->bow, 
							  velo_modalobjb(x_ctl->p_object1, INTERACT_PICK),	//these are v~(n) for the impactor
							  velo_wgobj(x_ctl->p_object2));

#if (defined(_DEBUG_))
		post(" ---- add force1 = %.15f, force2 = %.15f", force1, force2);
		post(" ---- add external force1 = %f, external force2 = %f", *ext_force1, *ext_force2);
#endif
		add_force_modalobjb(x_ctl->p_object1, INTERACT_PICK, force1);
		add_force_wgobj(x_ctl->p_object2, force2);

		add_force_modalobjb(x_ctl->p_object1, INTERACT_PICK, *ext_force1++);
		add_force_wgobj(x_ctl->p_object2, *ext_force2++);

#if (defined(_DEBUG_))
		post(" ---- apply forces");
#endif
		apply_forces_modalobjb(x_ctl->p_object1);
		apply_forces_wgobj(x_ctl->p_object2);
		//-> new output computed

#if (defined(_DEBUG_))
		post(" ---- output");
		post("Bow output:");
#endif
		for (i=0; i<n_picks1; i++)
			out[i][si] = x_ctl->p_pickup_signal1[i](x_ctl->p_object1, i);

#if (defined(_DEBUG_))
		post("Bowed object output:");
#endif
		out[n_picks1][si] = x_ctl->p_pickup_signal2(x_ctl->p_object2);
	}	//end main for loop
}  // end m_signal