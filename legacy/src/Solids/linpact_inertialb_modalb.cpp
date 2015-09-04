/** \file linpact_inertialb_modalb.cpp
 * flext-based external for Pd and Max implementing interaction between an 
 * inertial striker and a modal resonator by means of a non-linear impact 
 * force.
 * The "b" at the end of the name refers to the realization of both 
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


/* ---------------- linpact_inertialb_modalb~ ----------------- */

extern "C" {
#include "linpact_interactor.h"
#include "inertial_obj_b.h"
#include "modal_obj_b.h"
}

#define STRIKE_POS_MAX 10000. /**< Maximal allowed positive displacement for the striker */
#define STRIKE_POS_MIN -10000. /**< Maximal allowed negative displacement for the striker */

#define INTERACT_PICK 0 /**< Index of the interaction point at which the impact takes place */

#define N_PROPS_INTERACT 2 /**< Number of interactor attributes to be set */
#define N_PROPS_STRIKE 1 /**< Number of striker attributes to be set */

#define N_ARG_BASE 3 /**< Number of global base factors for the modal object, to be taken from creation arguments */

#define N_SIG_INLETS 3 /**< Number of signal inlets of the plugin */

#define external_name "linpact_inertialb_modalb~\0"


/**** TYPE DEFINITIONS ****/

/**
 * Pointertypes to pickup function
 */
typedef double (*t_pickup_signal_function_modalb)(t_modal_object_b*, int);
				//Arguments are: a pointer to a modal obj. and the considered pick


/**
* Container for internal control structure of plugin.
*/
typedef struct _linpact_inertialb_modalb_ctl
{
	t_inertial_object_b *p_striker; /**< Pointer to the striking object ("striker") */
	t_modal_object_b *p_struckobject; /**< Pointer to the struck object */
	t_linpact_interactor felt; /**< Interactor object */ 

	float last_distance; /**< Last additional offset value, stored for internal purposes. */

	t_pickup_signal_function_modalb *p_pickup_signal; /**< Pointer to pickup function of modal resonator */
} t_linpact_inertialb_modalb_ctl;




/**** FLEXT-BASED EXTERNAL CLASS DEFINITION ****/

// A flext dsp external ("tilde object") inherits from the class flext_dsp 
class linpact_inertialb_modalb: 
	public flext_dsp	/* N.B. */
{	
	FLEXT_HEADER_S(linpact_inertialb_modalb, flext_dsp, setup)

	public:
		//TODO con attributi 
		// CONSTRUCTOR with no arguments
		// initial values are set by attributes at creation time (see help file)	/* N.B. */
		linpact_inertialb_modalb(int argc, t_atom *argv);
		
	protected:
		float samprate;
		t_linpact_inertialb_modalb_ctl x_cspace; 
		t_linpact_inertialb_modalb_ctl *x_ctl;

		//FUNCTION PROTOTYPE
		int prepare_modal_obj_b(int argc, t_atom *argv/*, int object_id*/);

		//METHODS PROTOTYPES
		void m_strike(float velocity);

		void m_interact_and_striker_props(float k, float r, float hammer_inertia);
		//methods for modal obj
		void m_set_actmodes(int actmodes);
		void m_base(float base_freq0, float base_te, float base_gain);
		void m_mode_freqs(int argc, t_atom *argv);
		void m_mode_ts(int argc, t_atom *argv);
		void m_mode_contribs(int argc, t_atom *argv);

		// here we declare the virtual DSP function
		virtual void m_signal(int n, float *const *in, float *const *out);	/* polimorfismo */

	private:
		static void setup(t_classid c);

	// for every registered method a callback has to be declared
		FLEXT_CALLBACK_F(m_strike)

		FLEXT_CALLBACK_FFF(m_interact_and_striker_props)
		
		FLEXT_CALLBACK_I(m_set_actmodes)
		FLEXT_CALLBACK_FFF(m_base)
		FLEXT_CALLBACK_V(m_mode_freqs)
		FLEXT_CALLBACK_V(m_mode_ts)
		FLEXT_CALLBACK_V(m_mode_contribs)

}; // end of class declaration for linpact_inertialb_modalb

FLEXT_NEW_DSP_V("linpact_inertialb_modalb~ linpact_modalb~", linpact_inertialb_modalb)
// N.B. there are two names for the object: "linpact_inertialb_modalb~" as main name and "linpact_modalb~" as its alias




/**** DEFINITIONS ****/

// ---- SETUP ----
void linpact_inertialb_modalb::setup(t_classid c)
{
// --- set up methods (class scope) ---

	// set up tagged methods for the default inlet (0)
	FLEXT_CADDMETHOD_F(c, 0, "strike", m_strike);  // single float arg recognized automatically
	FLEXT_CADDMETHOD_FFF(c, 0, "nteract_strikr", m_interact_and_striker_props); // 3 float args
	
	FLEXT_CADDMETHOD_I(c, 0, "actmodes2", m_set_actmodes);	// single int arg
	FLEXT_CADDMETHOD_FFF(c, 0, "base2", m_base);	// 3 float args
	FLEXT_CADDMETHOD_(c, 0, "mode_freqs2", m_mode_freqs);	// any arg recognized automatically
	FLEXT_CADDMETHOD_(c, 0, "mode_ts2", m_mode_ts);	// any arg recognized automatically
	FLEXT_CADDMETHOD_(c, 0, "mode_contribs2", m_mode_contribs);	// any arg recognized automatically

	// set up methods for other inlets
	// no message tag used
	FLEXT_CADDMETHOD(c, 3, m_strike);  // single float arg recognized automatically
	FLEXT_CADDMETHOD(c, 4, m_interact_and_striker_props); // 3 float args recognized automatically

	FLEXT_CADDMETHOD(c, 5, m_base);	// 3 float args recognized automatically
	FLEXT_CADDMETHOD(c, 6, m_mode_freqs);	// any arg recognized automatically
	FLEXT_CADDMETHOD(c, 7, m_mode_ts);	// any arg recognized automatically
	FLEXT_CADDMETHOD(c, 8, m_mode_contribs);	// any arg recognized automatically
}


// ---- CONSTRUCTOR ----
linpact_inertialb_modalb::linpact_inertialb_modalb(int argc, t_atom *argv)
{	
	int n_picks, n_modes;
	int i;

	//SDT heading: output to console
    post("%s", DASH_LINE);
    SDT_TEXTHEAD
    
    //external description
    post("   %s: Linear impact between an 'inertial' hammer and a 'modal' resonator.", external_name);
    post("   Version: %s", SDT_ver_str);
    post("   Author: Matthias Rath");
	post("   Revision and flext porting: Stefano Papetti");
	post("%s", DASH_LINE);

	samprate = Samplerate();	//Reads host's sample rate but doesn't follow it
								//-> the external needs to be re-created if sample rate changes during the session
	x_ctl = &x_cspace;  

	if(!(x_ctl->p_striker = new_inertial_object_b()))			//create inertial obj
		post("%s: !!! Creation of new inertial_obj failed!", external_name);

	n_picks = prepare_modal_obj_b(argc-(N_PROPS_INTERACT+N_PROPS_STRIKE), argv+(N_PROPS_INTERACT+N_PROPS_STRIKE)); 
				//create modal obj (read picks and modes number)

	// The constructor of your class is responsible for
	// setting up inlets and outlets and for registering
	// inlet-methods:
	// The descriptions of the inlets and outlets are output				/* N.B. */
	// via the Max/MSP assist method (when mousing over them in edit mode).
	// PD will hopefully provide such a feature as well soon

	AddInSignal("signal: external force on striker");			// 1 float in (1st inlet) //floats are translated to signals
	AddInSignal("signal: external force on struck object");			// 1 float in (2nd inlet)
	AddInSignal("signal: additional offset between objects");   // 1 float in (3th inlet)

	AddInFloat("float: initial striker velocity");				// 1 float in (4th inlet)

	AddInList("list[2,1]: interactor properties, striker mass");	// 1 List in (5th inlet)

	AddInList("list[3]: modal_obj base factors");		// 1 List in (6th inlet)
	AddInList("list[n_modes]: modal_obj modes frequencies");		// 1 List in (7th inlet)
	AddInList("list[n_modes]: modal_obj modes decay times");		// 1 List in (8th inlet)
	AddInList("list[1 + n_modes]: modal_obj: pickup #, modes weight factors");	// 1 List in (9th inlet)

	for (i=0; i<n_picks; i++) //1 outlet for each interaction points of modal obj
		AddOutSignal("signal: struck object output"); 


	//** Below are explicit calls to METHODS for initializing the just created objects **/
  
//interactor
	m_interact_and_striker_props(GetAFloat(argv[0]), GetAFloat(argv[1]), GetAFloat(argv[2]));	
								//k, r and hammer mass
//obj1. inertial object. (striker)
	set_state_inertobjb(x_ctl->p_striker, 0., 0., 0.); //Initializes to 0 displ, velo and last_force of the striker

//obj2. modal object. (struck object)
	n_modes = x_ctl->p_struckobject->publ.n_modes;

	argc -= N_PROPS_INTERACT+N_PROPS_STRIKE+2;
	argv += N_PROPS_INTERACT+N_PROPS_STRIKE+2;
	//Reads output masks
	if (!(x_ctl->p_pickup_signal = (t_pickup_signal_function_modalb *) calloc(n_picks, sizeof(t_pickup_signal_function_modalb))))
		post("%s: Something wrong with pointer to pickup_signal functions of modal_obj.", external_name);
	//TODO free?
	for (i=0; i<n_picks; i++) 
		if (GetAFloat(argv[i]) == 1)	//if = '1' -> velocity
		{
			x_ctl->p_pickup_signal[i] = velo_modalobjb; 
			post("%s: Pickup %d of object2 reads velocity information.", external_name, i);						
		}	
		else //if anything else (e.g. 'd') -> displacement
		{
			x_ctl->p_pickup_signal[i] = displ_modalobjb; 
			post("%s: Pickup %d of object2 reads displacement information.", external_name, i);
		}

	argc -= n_picks;
	argv += n_picks;
	m_base(GetAFloat(argv[0]), GetAFloat(argv[1]), GetAFloat(argv[2]));

	argc -= N_ARG_BASE;
	argv += N_ARG_BASE;
	m_mode_freqs(argc, argv);

	argc -= n_modes;
	argv += n_modes;
	m_mode_ts(argc, argv);

	argc -= n_modes;
	argv += n_modes;
	for (i=0; i<n_picks; i++)
		m_mode_contribs(argc-(i*(n_modes+1)), argv+(i*(n_modes+1)));

	for (i=0; i<n_modes; i++)
		set_state_modalobjb(x_ctl->p_struckobject, i, 0., 0., 0.);
	
	x_ctl->last_distance = 0.;
	
	post("%s: External initialization completed.", external_name);
	
} // end of constructor


// *** FUNCTIONS *** //

/**	
 * Wrap up of several modal object initialization actions, as object creation, state initialization, ...
 *
 * \return Number of interaction points ("picks") of the initialized modal object.
 *
 * \todo Negative return values for failures.
 */
int linpact_inertialb_modalb::prepare_modal_obj_b(int argc, t_atom *argv/*, int object_id*/)
{																
	int n_modes=1, n_picks=1;

	if (argc>0)
		{
		if ((n_modes = GetAInt(argv[0])) <= 0)
			{															
			post("%s: !!! n_modes of object2 <= 0 ?!! Forcing to 1.", external_name);
			n_modes = 1;
			}
		if (argc>1)
			if ((n_picks = GetAInt(argv[1])) <= 0)
			{
			post("%s: !!! n_picks of object2 <= 0 ?!! Forcing to 1.", external_name);
			n_picks = 1;
			}
		}

	post("%s: object2: n_modes = %d, n_picks = %d.", external_name, n_modes, n_picks);

	if (!(x_ctl->p_struckobject = new_modal_object_b(n_modes, n_picks)))	//Creates new modal obj
		post("%s: !!! Creation of new modal_obj failed!", external_name);

	return(n_picks); //Returns: # of picks
}

// ---- METHODS	----

/**
 * Set striker to contact (displ_1 = displ_2 + additional offset) and given impact velocity.
 */
void linpact_inertialb_modalb::m_strike(float velocity)
{	
	set_state_inertobjb(x_ctl->p_striker, displ_modalobjb(x_ctl->p_struckobject, INTERACT_PICK) + x_ctl->last_distance, velocity, 0.);
}


/**
 * Sets the parameters of the interactor and the striker
 * and initiates the computation of internal parameters.
 * K-matrices are (re)passed to the interactor.
 */
void linpact_inertialb_modalb::m_interact_and_striker_props(float k, /**< Elasticity constant */
															float r, /**< Damping coefficient */
															float m /**< Hammer mass */)
{
	set_publ_inertobjb(x_ctl->p_striker, m);
	set_privateprops_inertobjb(x_ctl->p_striker, samprate);

	set_publ_linpactor(&x_ctl->felt, k, r);
	set_priv_linpactor(&x_ctl->felt, p_K_inertobjb(x_ctl->p_striker), p_K_modalobjb(x_ctl->p_struckobject, INTERACT_PICK));
}


//OBJECT 2 methods ("struck")

/**
 * Set the number of active modes for modal object.
 */
void linpact_inertialb_modalb::m_set_actmodes(int n_actmodes)
{
  set_actmodes_modalobjb(x_ctl->p_struckobject, n_actmodes);
}

/**
 * Sets the base parameters of modal object
 * and initiates the computation of the internal parameters.
 * K-matrices are (re)passed to the interactor.
 */
void linpact_inertialb_modalb::m_base(float base_freq0, float base_te, float base_gain)
{
  int i;

  set_base_modalobjb(x_ctl->p_struckobject, base_freq0, base_te, base_gain);

  set_privateprops_modalobjb(x_ctl->p_struckobject, samprate);

  set_priv_linpactor(&x_ctl->felt, p_K_inertobjb(x_ctl->p_striker), p_K_modalobjb(x_ctl->p_struckobject, INTERACT_PICK) );
}

/**
 * Sets the undamped frequencies for the modes of modal object.
 */
void linpact_inertialb_modalb::m_mode_freqs(int argc, t_atom *argv)
{
  int i;

  for (i=0; i<x_ctl->p_struckobject->publ.n_modes; i++)
    set_freq0_modalobjb(x_ctl->p_struckobject, i, GetAFloat(argv[i]));
}

/**
 * Sets the 1/e-decay times of the modes of modal object.
 */
void linpact_inertialb_modalb::m_mode_ts(int argc, t_atom *argv)
{
  int i;

  for (i=0; i<x_ctl->p_struckobject->publ.n_modes; i++)
    set_te_modalobjb(x_ctl->p_struckobject, i, GetAFloat(argv[i]));
}

/**
 * Sets the interaction contribution of the modes of modal object for the specified interaction point.
 */
void linpact_inertialb_modalb::m_mode_contribs(int argc, t_atom *argv)
{
  float weight;
  int i;
  int pick = GetAInt(argv[0]);

  for (i=0; i<x_ctl->p_struckobject->publ.n_modes; i++)
    {
      weight = GetAFloat(argv[i+1]);

      set_pickcontrib_modalobjb(x_ctl->p_struckobject, pick, i, weight);
    }
}



// ---- DSP FUNCTION ----

// Now we define our DSP function. It gets this arguments:
// 
// int n: length of signal vector. Loop over this for your signal processing.
// float *const *in, float *const *out: 
//          These are arrays of the signals in the objects signal inlets rsp.
//          oulets. We come to that later inside the function.

void linpact_inertialb_modalb::m_signal(int n, float *const *in, float *const *out)
{
	const float *ext_force1 = in[0];	/**< External force to be applied to the striker */
	const float *ext_force2 = in[1];	/**< External force to be applied to the struck object*/
	const float *ext_offset = in[2];	/**< External offset to be added to the distance of the interacting objects */

	int n_picks = x_ctl->p_struckobject->publ.n_picks, 
		n_modes = x_ctl->p_struckobject->publ.n_modes;

	double displ, velo; 
	double force1, force2;

	int i;
	

#if (defined(_DEBUG_))
	post("---------> New buffer <----------");
#endif
	// We are now ready for the main signal loop
	for(int si = 0; si < n; ++si)
	{
#if (defined(_DEBUG_))
		post("CYCLE # %d:", Blocksize() - n);
#endif
		start_cycle_inertobjb(x_ctl->p_striker); //Computes the state of the hammer ignoring current forces
		start_cycle_modalobjb(x_ctl->p_struckobject); //Computes the state of the modal obj. ignoring current forces

		displ = displ_inertobjb(x_ctl->p_striker);
	      
		/* if hammer moves "too far away",... */
		if (displ>STRIKE_POS_MAX)
		{
			set_state_inertobjb(x_ctl->p_striker, displ=STRIKE_POS_MAX, 0., 0.);
			post("%s: object1 stopped at STRIKE_POS_MAX!", external_name);
		}
		else if (displ<STRIKE_POS_MIN)
		{
			set_state_inertobjb(x_ctl->p_striker, displ=STRIKE_POS_MIN, 0., 0.);
			post("%s: object1 stopped at STRIKE_POS_MIN!", external_name);
		}
		/* ...stop it! */

#if (defined(_DEBUG_))
		post(" ---- Linpactor:");
#endif
		velo = velo_inertobjb(x_ctl->p_striker);

		linpact_force_linpactor(&force1, &force2, //Returns forces acting on the 2 objs in "force1" and "force2" 
								&x_ctl->felt, //Interactor
								displ, 
								displ_modalobjb(x_ctl->p_struckobject, INTERACT_PICK) + (x_ctl->last_distance = *ext_offset++),
								velo, 
								velo_modalobjb(x_ctl->p_struckobject, INTERACT_PICK));

#if (defined(_DEBUG_))
		post(" ---- add & apply forces");
		post(" ---- force1 = %.10f, force2 = %.10f", force1, force2);
#endif
		apply_force_inertobjb(x_ctl->p_striker, force1 + *ext_force1++ * inertia_inertobjb(x_ctl->p_striker));
		  
		add_force_modalobjb(x_ctl->p_struckobject, INTERACT_PICK, force2 + *ext_force2++);
		apply_forces_modalobjb(x_ctl->p_struckobject);

#if (defined(_DEBUG_))
		post(" ---- struck object output:");
#endif
		for (i=0; i<n_picks; i++)
			out[i][si] = x_ctl->p_pickup_signal[i](x_ctl->p_struckobject, i);
	}	//end main for loop
}  // end m_signal


