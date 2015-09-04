/** \file linpact_2modalb.cpp
 * flext-based external for Pd and Maximplementing interaction between two 
 * modal resonators by means of a linear impact force.
 * The "b" at the end of the name refers to the realization of the modal 
 * resonators by discretization through "b"ilinear transformation.
 *
 * \author Matthias Rath
 * Revision and flext porting: Stefano Papetti (stefano.papetti@zhdk.ch)
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


/* ---------------- linpact_2modalb~ ----------------- */

extern "C" {
#include "linpact_interactor.h"
#include "modal_obj_b.h"
}

#define STRIKE_POS_MAX 10000. /**< Maximal allowed positive displacement for the striker */
#define STRIKE_POS_MIN -10000. /**< Maximal allowed negative displacement for the striker */

#define INTERACT_PICK 0 /**< Index of the interaction point at which the impact takes place */

#define N_PROPS_INTERACT 2 /**< Number of interactor attributes to be set */

#define N_ARG_BASE 3 /**< Number of global base factors for the modal object, to be taken from creation arguments */

#define N_SIG_INLETS 3 /**< Number of signal inlets of the plugin */

#define external_name "linpact_2modalb~\0"


/**** TYPE DEFINITIONS ****/

/**
 * Pointertypes to pickup functions
 */
typedef double (*t_pickup_signal_function_modalb)(t_modal_object_b*, int);
				//Arguments are: a pointer to a modal obj. and the considered pick


/**
 * Container for internal control structure of plugin.
 */
typedef struct _linpact_2modalb_ctl /**< Links the 2 interacting objects and the interactor */
{
	t_modal_object_b *p_object1, /**< Pointer to striker object ("striker") */
					 *p_object2; /**< Pointer to struck object */
	t_linpact_interactor felt; /**< Interactor object */

	float last_distance; /**< Last additional offset value, stored for internal purposes. */

	t_pickup_signal_function_modalb *p_pickup_signal1, /**< Pointers to pickup functions for all interaction points of modal resonator */
								   *p_pickup_signal2;
} t_linpact_2modalb_ctl;



// A flext dsp external ("tilde object") inherits from the class flext_dsp
class linpact_2modalb: 
	public flext_dsp	/* N.B. */
{	
	FLEXT_HEADER_S(linpact_2modalb, flext_dsp, setup)

	public:
		//TODO con attributi 
		// CONSTRUCTOR with no arguments
		// initial values are set by attributes at creation time (see help file)	/* N.B. */
		linpact_2modalb(int argc, t_atom *argv);
		
	protected:
		float samprate;
		t_linpact_2modalb_ctl x_cspace; 
		t_linpact_2modalb_ctl *x_ctl;

	//FUNCTIONS PROTOTYPES
		int prepare_modal_obj_b(int argc, t_atom *argv, int object_id);

	//METHODS PROTOTYPES
		void m_strike(float velocity);

		//methods for interactor
		void m_interactor_props(float k, float r);

		//methods for modal obj 1
		void m_set_actmodes1(int actmodes);
		void m_base1(float base_freq0, float base_te, float base_gain);
		void m_mode_freqs1(int argc, t_atom *argv);
		void m_mode_ts1(int argc, t_atom *argv);
		void m_mode_contribs1(int argc, t_atom *argv);

		//methods for modal obj 2
		void m_set_actmodes2(int actmodes);
		void m_base2(float base_freq0, float base_te, float base_gain);
		void m_mode_freqs2(int argc, t_atom *argv);
		void m_mode_ts2(int argc, t_atom *argv);
		void m_mode_contribs2(int argc, t_atom *argv);

		// here we declare the virtual DSP function
		virtual void m_signal(int n, float *const *in, float *const *out);	/* polimorfismo */


	private:
		static void setup(t_classid c);

	// for every registered method a callback has to be declared
		FLEXT_CALLBACK_F(m_strike)

		FLEXT_CALLBACK_FF(m_interactor_props)

		FLEXT_CALLBACK_I(m_set_actmodes1)
		FLEXT_CALLBACK_FFF(m_base1)
		FLEXT_CALLBACK_V(m_mode_freqs1)
		FLEXT_CALLBACK_V(m_mode_ts1)
		FLEXT_CALLBACK_V(m_mode_contribs1)

		FLEXT_CALLBACK_I(m_set_actmodes2)
		FLEXT_CALLBACK_FFF(m_base2)
		FLEXT_CALLBACK_V(m_mode_freqs2)
		FLEXT_CALLBACK_V(m_mode_ts2)
		FLEXT_CALLBACK_V(m_mode_contribs2)

}; // end of class declaration for linpact_2modalb

FLEXT_NEW_DSP_V("linpact_2modalb~ lin-impact_2modalb~", linpact_2modalb)
// N.B. there are two names for the object: "linpact_2modalb~" as main name and "lin-impact_2modalb~" as its alias



/**** DEFINITIONS ****/

// ---- SETUP ----
void linpact_2modalb::setup(t_classid c)
{
// --- set up methods (class scope) ---

	// set up tagged methods for the default inlet (0)
	FLEXT_CADDMETHOD_F(c, 0, "strike", m_strike);  // single float arg
	
	FLEXT_CADDMETHOD_FF(c, 0, "nteract", m_interactor_props);	// 2 float args

	FLEXT_CADDMETHOD_I(c, 0, "actmodes1", m_set_actmodes1);	// single int arg
	FLEXT_CADDMETHOD_FFF(c, 0, "base1", m_base1);	// 3 float args
	FLEXT_CADDMETHOD_(c, 0, "mode_freqs1", m_mode_freqs1);	// any arg recognized automatically
	FLEXT_CADDMETHOD_(c, 0, "mode_ts1", m_mode_ts1);	// any arg recognized automatically
	FLEXT_CADDMETHOD_(c, 0, "mode_contribs1", m_mode_contribs1);	// any arg recognized automatically

	FLEXT_CADDMETHOD_I(c, 0, "actmodes2", m_set_actmodes2);	// single int arg
	FLEXT_CADDMETHOD_FFF(c, 0, "base2", m_base2);	// 3 float args
	FLEXT_CADDMETHOD_(c, 0, "mode_freqs2", m_mode_freqs2);	// any arg recognized automatically
	FLEXT_CADDMETHOD_(c, 0, "mode_ts2", m_mode_ts2);	// any arg recognized automatically
	FLEXT_CADDMETHOD_(c, 0, "mode_contribs2", m_mode_contribs2);	// any arg recognized automatically

	// set up methods for other inlets
	// no message tag used
	FLEXT_CADDMETHOD(c, 3, m_strike);  // single float arg recognized automatically
	
	FLEXT_CADDMETHOD(c, 4, m_interactor_props);	// 2 float args recognized automatically

	FLEXT_CADDMETHOD(c, 5, m_base1);	// 3 float args recognized automatically
	FLEXT_CADDMETHOD(c, 6, m_mode_freqs1);	// any arg recognized automatically
	FLEXT_CADDMETHOD(c, 7, m_mode_ts1);	// any arg recognized automatically
	FLEXT_CADDMETHOD(c, 8, m_mode_contribs1);	// any arg recognized automatically

	FLEXT_CADDMETHOD(c, 9, m_base2);	// 3 float args recognized automatically
	FLEXT_CADDMETHOD(c, 10, m_mode_freqs2);	// any arg recognized automatically
	FLEXT_CADDMETHOD(c, 11, m_mode_ts2);	// any arg recognized automatically
	FLEXT_CADDMETHOD(c, 12, m_mode_contribs2);	// any arg recognized automatically
}


// ---- CONSTRUCTOR ----
linpact_2modalb::linpact_2modalb(int argc, t_atom *argv)
{	

	int n_picks1, n_modes1,
		n_picks2, n_modes2;
	int	pos_object1 = N_PROPS_INTERACT, pos_base1, pos_freqs1, pos_ts1, pos_interacts1, //Positions of creation args. inside array "argv"
		pos_object2, pos_base2, pos_freqs2, pos_ts2, pos_interacts2; 
	int i;

	//SDT heading: output to console
    post("%s", DASH_LINE);
    SDT_TEXTHEAD
    
    //external description
    post("   %s: Linear impact between 2 'modal' resonators.", external_name);
    post("   Version: %s", SDT_ver_str);
    post("   Author: Matthias Rath");
	post("   Revision and flext porting: Stefano Papetti");
	post("%s", DASH_LINE);

	samprate = Samplerate();	//Reads host's sample rate but doesn't follow it
								//-> the external needs to be re-created if sample rate changes during the session
	x_ctl = &x_cspace;  


	//** object1: modal object. "striker" **/									
	n_picks1 = prepare_modal_obj_b(argc-pos_object1, argv+pos_object1, 1);

	if (!(x_ctl->p_pickup_signal1 = (t_pickup_signal_function_modalb *) calloc(n_picks1, sizeof(t_pickup_signal_function_modalb))))
		post("%s: !!! Something wrong with pointer to pickup_signal functions of object1!", external_name);
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
	
	//modal obj. 2 (struck)
	pos_object2 = pos_object1 + 2 + n_picks1;

	n_picks2 = prepare_modal_obj_b(argc-pos_object2, argv+pos_object2, 2);
	if (!(x_ctl->p_pickup_signal2 = (t_pickup_signal_function_modalb *) calloc(n_picks2, sizeof(t_pickup_signal_function_modalb)))) 
		post("%s: !!! Something wrong with pointer to pickup_signal functions of object2!", external_name);
	//TODO free?
	for (i=0; i<n_picks2; i++) //Output masks
		if (GetAFloat(argv[pos_object2+2+i]) == 1) //if = '1' -> velocity
		{
			x_ctl->p_pickup_signal2[i] = velo_modalobjb;
			post("%s: Pickup %d of object2 reads velocity information.", external_name, i);
		}
		else
		{
			x_ctl->p_pickup_signal2[i] = displ_modalobjb;
			post("%s: Pickup %d of object2 reads displacement information.", external_name, i);
		}

	n_modes2 = x_ctl->p_object2->publ.n_modes;

	//modal obj. 1 ("striker")
	pos_base1 = pos_object2 + 2 + n_picks2;
	pos_freqs1 = pos_base1 + 3;
	pos_ts1 = pos_freqs1 + n_modes1;
	pos_interacts1 = pos_ts1 + n_modes1;
	//modal obj. 2 ("struck")
	pos_base2 = pos_interacts1 + n_picks1*(n_modes1+1);
	pos_freqs2 = pos_base2 + 3;
	pos_ts2 = pos_freqs2 + n_modes2;
	pos_interacts2 = pos_ts2 + n_modes2;


	// The constructor of your class is responsible for
	// setting up inlets and outlets and for registering
	// inlet-methods:
	// The descriptions of the inlets and outlets are output				/* N.B. */
	// via the Max/MSP assist method (when mousing over them in edit mode).
	// PD will hopefully provide such a feature as well soon

	AddInSignal("signal: external force on striker");			// 1 float in (1st inlet) //floats are translated to signals
	AddInSignal("signal: external force on struck object");		// 1 float in (2nd inlet)
	AddInSignal("signal: additional offset between objects");   // 1 float in (3th inlet)

	AddInFloat("float: initial striker velocity");				// 1 float in (4th inlet)

	AddInList("list[2]: interactor properties");			// 1 List in (5th inlet)

	AddInList("list[3]: modal_obj1 base factors");		// 1 List in (6th inlet)
	AddInList("list[n_modes]: modal_obj1 modes frequencies");		// 1 List in (7th inlet)
	AddInList("list[n_modes]: modal_obj1 modes decay times");		// 1 List in (8th inlet)
	AddInList("list[1 + n_modes]: modal_obj1: pickup #, modes weight factors");	// 1 List in (9th inlet)

	AddInList("list[3]: modal_obj2 base factors");		// 1 List in (10th inlet)
	AddInList("list[n_modes]: modal_obj2 modes frequencies");		// 1 List in (11th inlet)
	AddInList("list[n_modes]: modal_obj2 modes decay times");		// 1 List in (12th inlet)
	AddInList("list[1 + n_modes]: modal_obj2: pickup #, modes weight factors");	// 1 List in (13th inlet)

	for (i=0; i<n_picks1; i++) //1 outlet for each interaction points of modal obj1 
		AddOutSignal("signal: striker output");
	for (i=0; i<n_picks2; i++) //1 outlet for each interaction points of modal obj2
		AddOutSignal("signal: struck object output"); 


	//** Below are explicit calls to METHODS for initializing the just created objects **/

	//interactor
	m_interactor_props(GetAFloat(argv[0]), GetAFloat(argv[1]));		//k, r

	//obj1. modal object. ("striker")
	m_mode_freqs1(argc-pos_freqs1, argv+pos_freqs1);		//Sets modes freqs. of obj1. 
	m_mode_ts1(argc-pos_ts1, argv+pos_ts1);	//Sets modes decays of obj1.
	for (i=0; i<n_picks1; i++)	//for each pick 
		m_mode_contribs1(argc-(pos_interacts1+i*(n_modes1+1)), argv+(pos_interacts1+i*(n_modes1+1)));	//Sets modal weights of obj1.
	for (i=0; i<n_modes1; i++)	//for each mode
		set_state_modalobjb(x_ctl->p_object1, i, 0., 0., 0.);		//Initializes displ, velo and last_force to 0 --> no vibrations
	m_base1(GetAFloat(argv[pos_base1]), GetAFloat(argv[pos_base1+1]), GetAFloat(argv[pos_base1+2])); 

	//obj2. modal object. ("struck")
	m_mode_freqs2(argc-pos_freqs2, argv+pos_freqs2);
	m_mode_ts2(argc-pos_ts2, argv+pos_ts2);
	for (i=0; i<n_picks2; i++)
		m_mode_contribs2(argc-(pos_interacts2+i*(n_modes2+1)), argv+(pos_interacts2+i*(n_modes2+1)));
	for (i=0; i<n_modes2; i++)
		set_state_modalobjb(x_ctl->p_object2, i, 0., 0., 0.);
	m_base2(GetAFloat(argv[pos_base2]), GetAFloat(argv[pos_base2+1]), GetAFloat(argv[pos_base2+2])); 
	
	x_ctl->last_distance = 0.;
	
	// We're done constructing:
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
int linpact_2modalb::prepare_modal_obj_b(int argc, t_atom *argv, int object_id)
{																
	t_modal_object_b ** pp_object; //Pointer to pointer to modal objects
	int n_modes=1, n_picks=1;

	if (object_id == 1)
		pp_object = &x_ctl->p_object1;
	else if (object_id == 2)
		pp_object = &x_ctl->p_object2;
	else
		return -1;

	if (argc>0)
		{
		if ((n_modes = GetAInt(argv[0])) <= 0)
			{															
			post("%s: !!! n_modes of object%d <= 0 ?!! Forcing to 1.", external_name, object_id);
			n_modes = 1;
			}
		if (argc>1)
			if ((n_picks = GetAInt(argv[1])) <= 0)
			{
			post("%s: !!! n_picks of object%d <= 0 ?!! Forcing to 1.", external_name, object_id);
			n_picks = 1;
			}
		}

	post("%s: object%d: n_modes = %d, n_picks = %d.", external_name, object_id, n_modes, n_picks);

	if (!(*pp_object = new_modal_object_b(n_modes, n_picks)))	//Creates new modal obj
		post("%s: !!! Creation of new object%d failed!", external_name, object_id);

	return(n_picks); //Returns: # of picks
}



//**** METHOD-SPACE ****/

/**
 * Sets "mode 0 (inertial mode) displ of the striker" = "struck obj displ" (plus additional offset) --> contact!
 * Set objects to contact and "striker" initial velocity.	
 * All modes except no. 1 are set to "0 state".	
 */
void linpact_2modalb::m_strike(float velocity)
{
  int i;
												
  set_state_modalobjb(x_ctl->p_object1,  
					  0, //Mode 0 (inertial)
					  displ_modalobjb(x_ctl->p_object2, INTERACT_PICK) + x_ctl->last_distance,
					  velocity, //"striker" velocity
					  0.); //Last_force
									
  for (i=1; i < x_ctl->p_object1->publ.n_modes; i++) //Other modes 
    set_state_modalobjb(x_ctl->p_object1, i, 0., 0., 0.); //Sets to 0 displ, velo and last_force

  //post("Initial striker velocity is %f ", velocity);
}

/**
 * Sets the parameters of the interactor
 * and initiates the computation of internal parameters.
 */	
void linpact_2modalb::m_interactor_props(float k, float r)
{
  set_publ_linpactor(&x_ctl->felt, k, r);
  set_priv_linpactor(&x_ctl->felt, p_K_modalobjb(x_ctl->p_object1, INTERACT_PICK), p_K_modalobjb(x_ctl->p_object2, INTERACT_PICK));
}


//OBJECT 1 methods (modal "striker")

/**
 * Set the number of active modes for object 1.
 */
void linpact_2modalb::m_set_actmodes1(int n_actmodes)
{
  set_actmodes_modalobjb(x_ctl->p_object1, n_actmodes);
}				

/**
 * Sets the base parameters of modal object 1
 * and initiates the computation of the internal parameters.
 * K-matrices are (re)passed to the interactor.
 */
void linpact_2modalb::m_base1(float base_freq0, float base_te, float base_gain)
{
  int i;

  set_base_modalobjb(x_ctl->p_object1, base_freq0, base_te, base_gain);

  set_privateprops_modalobjb(x_ctl->p_object1, samprate);

  set_priv_linpactor(&x_ctl->felt, p_K_modalobjb(x_ctl->p_object1, INTERACT_PICK), p_K_modalobjb(x_ctl->p_object2, INTERACT_PICK) );
}

/**
 * Sets the undamped frequencies for the modes of modal object 1.
 */
void linpact_2modalb::m_mode_freqs1(int argc, t_atom *argv)
{
  int i;

  for (i=0; i<x_ctl->p_object1->publ.n_modes; i++)
    set_freq0_modalobjb(x_ctl->p_object1, i, GetAFloat(argv[i]));
}

/**
 * Sets the 1/e-decay times of the modes of modal object 1.
 */
void linpact_2modalb::m_mode_ts1(int argc, t_atom *argv)
{
  int i;

  for (i=0; i<x_ctl->p_object1->publ.n_modes; i++)
    set_te_modalobjb(x_ctl->p_object1, i, GetAFloat(argv[i]));
}

/**
 * Sets the interaction contribution of the modes of modal object 1 for the specified interaction point.
 */
void linpact_2modalb::m_mode_contribs1(int argc, t_atom *argv)
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


//OBJECT 2 methods ("struck")

/**
 * Set the number of active modes for object 2.
 */
void linpact_2modalb::m_set_actmodes2(int n_actmodes)
{
  set_actmodes_modalobjb(x_ctl->p_object2, n_actmodes);
}

/**
 * Sets the base parameters of modal object 2
 * and initiates the computation of the internal parameters.
 * K-matrices are (re)passed to the interactor.
 */
void linpact_2modalb::m_base2(float base_freq0, float base_te, float base_gain)
{
  int i;

  set_base_modalobjb(x_ctl->p_object2, base_freq0, base_te, base_gain);

  set_privateprops_modalobjb(x_ctl->p_object2, samprate);

  set_priv_linpactor(&x_ctl->felt, p_K_modalobjb(x_ctl->p_object1, INTERACT_PICK), p_K_modalobjb(x_ctl->p_object2, INTERACT_PICK) );
}

/**
 * Sets the undamped frequencies for the modes of modal object 2.
 */
void linpact_2modalb::m_mode_freqs2(int argc, t_atom *argv)
{
  int i;

  for (i=0; i<x_ctl->p_object2->publ.n_modes; i++)
    set_freq0_modalobjb(x_ctl->p_object2, i, GetAFloat(argv[i]));
}

/**
 * Sets the 1/e-decay times of the modes of modal object 2.
 */
void linpact_2modalb::m_mode_ts2(int argc, t_atom *argv)
{
  int i;

  for (i=0; i<x_ctl->p_object2->publ.n_modes; i++)
    set_te_modalobjb(x_ctl->p_object2, i, GetAFloat(argv[i]));
}

/**
 * Sets the interaction contribution of the modes of modal object 2 for the specified interaction point.
 */
void linpact_2modalb::m_mode_contribs2(int argc, t_atom *argv)
{
  float weight;
  int i;
  int pick = GetAInt(argv[0]);

  for (i=0; i<x_ctl->p_object2->publ.n_modes; i++)
    {
      weight = GetAFloat(argv[i+1]);

      set_pickcontrib_modalobjb(x_ctl->p_object2, pick, i, weight);
    }
}



// ---- DSP FUNCTION ----

// Now we define our DSP function. It gets this arguments:
// 
// int n: length of signal vector. Loop over this for your signal processing.
// float *const *in, float *const *out: 
//          These are arrays of the signals in the objects signal inlets rsp.
//          oulets. We come to that later inside the function.

void linpact_2modalb::m_signal(int n, float * const * in, float * const * out)
{
	const float * ext_force1 = in[0];	/**< External force to be applied to the striker object */
	const float * ext_force2 = in[1];	/**< External force to be applied to the struck object*/
	const float * ext_offset = in[2];	/**< External offset to be added to the distance of the interacting objects */

	int i;
	double displ, velo; 
	double force1, force2;

	int n_picks1 = x_ctl->p_object1->publ.n_picks,
		n_modes1 = x_ctl->p_object1->publ.n_modes,
		n_picks2 = x_ctl->p_object2->publ.n_picks,
		n_modes2 = x_ctl->p_object2->publ.n_modes;


#if (defined(_DEBUG_))
	post("---------> New buffer <----------");
#endif
	// We are now ready for the main signal loop
	for(int si = 0; si < n; ++si)
	{
#if (defined(_DEBUG_))
		post("CYCLE # %d:", si);
#endif
		start_cycle_modalobjb(x_ctl->p_object1); //Computes the state of the "striker" obj. ignoring current forces
		start_cycle_modalobjb(x_ctl->p_object2); //Computes the state of the "struck" obj. ignoring current forces

		displ = displ_modalobjb(x_ctl->p_object1, INTERACT_PICK);
	    
		/* if hammer moves "too far away",... */
		if (displ>STRIKE_POS_MAX)
		{
			set_state_modalobjb(x_ctl->p_object1, 0, displ=STRIKE_POS_MAX, 0., 0.);
				post("%s: object1 stopped at STRIKE_POS_MAX!", external_name);
		}
		else if (displ<STRIKE_POS_MIN)
		{
			set_state_modalobjb(x_ctl->p_object1, 0, displ=STRIKE_POS_MIN, 0., 0.);
				post("%s: object1 stopped at STRIKE_POS_MIN!", external_name);
		}
		/* ...stop it! */

		velo = velo_modalobjb(x_ctl->p_object1, INTERACT_PICK);

#if (defined(_DEBUG_))
		post(" ---- linpactor:");
#endif
		linpact_force_linpactor(&force1, &force2, //Returns the interaction forces in "force1" and "force2" 
								&x_ctl->felt,
								displ,
								displ_modalobjb(x_ctl->p_object2, INTERACT_PICK) + (x_ctl->last_distance = *ext_offset++),
								velo,	//these are v~(n) for the linpactor
								velo_modalobjb(x_ctl->p_object2, INTERACT_PICK));

#if (defined(_DEBUG_))
		post(" ---- add force1 = %.15f, force2 = %.15f", force1, force2);
		post(" ---- add external force1 = %f, external force2 = %f", *ext_force1, *ext_force2);
#endif
		add_force_modalobjb(x_ctl->p_object1, INTERACT_PICK, force1);
		add_force_modalobjb(x_ctl->p_object2, INTERACT_PICK, force2);

		add_force_modalobjb(x_ctl->p_object1, INTERACT_PICK, *ext_force1++);
		add_force_modalobjb(x_ctl->p_object2, INTERACT_PICK, *ext_force2++);

#if (defined(_DEBUG_))
		post(" ---- apply forces");
#endif
		apply_forces_modalobjb(x_ctl->p_object1);
		apply_forces_modalobjb(x_ctl->p_object2);
		//-> new output computed

#if (defined(_DEBUG_))
		post(" ---- output");
		post("Striker object output:");
#endif
		for (i=0; i<n_picks1; i++)
			out[i][si] = x_ctl->p_pickup_signal1[i](x_ctl->p_object1, i);

#if (defined(_DEBUG_))
		post("Struck object output:");
#endif 
		for (i=0; i<n_picks2; i++)
			out[n_picks1+i][si] = x_ctl->p_pickup_signal2[i](x_ctl->p_object2, i);
	}	//end main for loop
}  // end m_signal


