/** \file impact_inertialb_wg.cpp
 * flext-based external for Pd and Max implementing interaction between an 
 * inertial striker and a waveguide resonator by means of a non-linear impact 
 * force.
 * The "b" at the end of the name refers to the realization of the inertial 
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


/* ---------------- impact_inertialb_wg~ ----------------- */

extern "C" {
#include "impact_interactor.h"
#include "inertial_obj_b.h"
#include "wg_obj.h"
}

#define STRIKE_POS_MAX 10000. /**< Maximal allowed positive displacement for the striker */
#define STRIKE_POS_MIN -10000. /**< Maximal allowed negative displacement for the striker */

#define N_PROPS_INTERACT 3 /**< Number of interactor attributes to be set */
#define N_PROPS_STRIKER 1 /**< Number of striker attributes to be set */

#define N_SIG_INLETS 3 /**< Number of signal inlets of the plugin */

#define external_name "impact_inertialb_wg~\0"


/**** TYPE DEFINITIONS ****/

/**
* Pointertype to a pickup function		
*/
typedef double (*t_pickup_signal_function_wg)(t_wg_object*);


/**
* Container for internal control structure of plugin.
*/
typedef struct _impact_inertialb_wg_ctl
{
	t_inertial_object_b *p_striker; /**< Pointer to the striking object ("striker") */
	t_wg_object *p_struckobject; /**< Pointer to the struck object */
	t_impact_interactor felt; /**< Interactor object */ 

	float last_distance; /**< Last additional offset value, stored for internal purposes. */

	t_pickup_signal_function_wg p_pickup_signal; /**< Pointer to pickup function of wg resonator */
} t_impact_inertialb_wg_ctl;




/**** FLEXT-BASED EXTERNAL CLASS DEFINITION ****/

// A flext dsp external ("tilde object") inherits from the class flext_dsp 
class impact_inertialb_wg: 
	public flext_dsp	/* N.B. */
{	
	FLEXT_HEADER_S(impact_inertialb_wg, flext_dsp, setup)

	public:
		impact_inertialb_wg(int argc, t_atom *argv);
		

	protected:
		float samprate;
		t_impact_inertialb_wg_ctl x_cspace; 
		t_impact_inertialb_wg_ctl *x_ctl;

		void prepare_wg_obj();

		//METHODS PROTOTYPES
		void m_strike(float velocity);

		void m_interact_and_striker_props(float k, float alpha, float lambda, float hammer_inertia);
		//methods waveguide obj
		void m_contact_pos2(float strike_pos);
		void m_str_length2(float str_length);
		void m_str_tension2(float str_tension);
		void m_str_mass2(float str_mass);

		// here we declare the virtual DSP function
		virtual void m_signal(int n, float *const *in, float *const *out);


	private:
		static void setup(t_classid c);

	// for every registered method a callback has to be declared
		FLEXT_CALLBACK_F(m_strike)

		FLEXT_CALLBACK_4(m_interact_and_striker_props, float, float, float, float)

		FLEXT_CALLBACK_F(m_contact_pos2)
		FLEXT_CALLBACK_F(m_str_length2)
		FLEXT_CALLBACK_F(m_str_tension2)
		FLEXT_CALLBACK_F(m_str_mass2)

}; // end of class declaration for impact_inertialb_wg

FLEXT_NEW_DSP_V("impact_inertialb_wg~ impact_wg~", impact_inertialb_wg)
// N.B. there are two names for the object: "impact_inertialb_wg~" as main name and "impact_wg~" as its alias




/**** DEFINITIONS ****/

// ---- SETUP ----
void impact_inertialb_wg::setup(t_classid c)
{
// --- set up methods (class scope) ---

	// set up tagged methods for the default inlet (0)
	FLEXT_CADDMETHOD_F(c, 0, "strike", m_strike);  // single float arg recognized automatically
	FLEXT_CADDMETHOD_4(c, 0, "nteract_strikr", m_interact_and_striker_props, float, float, float, float);

	FLEXT_CADDMETHOD_F(c, 0, "contact_pos2", m_contact_pos2);	// single float arg recognized automatically
	FLEXT_CADDMETHOD_F(c, 0, "str_length2", m_str_length2);	// single float arg recognized automatically
	FLEXT_CADDMETHOD_F(c, 0, "str_tension2", m_str_tension2);	// single float arg recognized automatically
	FLEXT_CADDMETHOD_F(c, 0, "str_mass2", m_str_mass2);		// single float arg recognized automatically

	// set up methods for other inlets
	// no message tag used
	FLEXT_CADDMETHOD(c, 3, m_strike);  // single float arg recognized automatically

	FLEXT_CADDMETHOD_4(c, 4, "list", m_interact_and_striker_props, float, float, float, float);

	FLEXT_CADDMETHOD(c, 5, m_contact_pos2);	// single float arg recognized automatically
	FLEXT_CADDMETHOD(c, 6, m_str_length2);	// single float arg recognized automatically
	FLEXT_CADDMETHOD(c, 7, m_str_tension2);	// single float arg recognized automatically
	FLEXT_CADDMETHOD(c, 8, m_str_mass2);		// single float arg recognized automatically
}


// ---- CONSTRUCTOR ----
impact_inertialb_wg::impact_inertialb_wg(int argc, t_atom *argv)
{	
	//SDT heading: output to console
    post("%s", DASH_LINE);
    SDT_TEXTHEAD
    
    //external description
    post("   %s: Nonlinear impact between an 'inertial' hammer and a 'waveguide' resonator.", external_name);
    post("   Version: %s", SDT_ver_str);
    post("   Author: Stefano Papetti");
	post("%s", DASH_LINE);

	samprate = Samplerate();	//Reads host's sample rate but doesn't follow it
								//-> the external needs to be re-created if sample rate changes during the session
	x_ctl = &x_cspace;  


	if(!(x_ctl->p_striker = new_inertial_object_b()))			//initialize intertial obj
		post("%s: !!! Creation of new inertial_obj failed!", external_name);

	prepare_wg_obj();	//Wrap up of waveguide object creation, delay lines and 
						//filters creation, state initialization, ...

	//if (!(x_ctl->p_struckobject = new_wg_object(samprate)))		//initialize waveguide obj
	//	post("Failed to create new waveguide_object.");			

	// The constructor of your class is responsible for
	// setting up inlets and outlets and for registering
	// inlet-methods:
	// The descriptions of the inlets and outlets are output				/* N.B. */
	// via the Max/MSP assist method (when mousing over them in edit mode).
	// PD will hopefully provide such a feature as well soon

	AddInSignal("signal: external force on striker");			// 1 float in (1st inlet) //floats are translated to signals
	AddInSignal("signal: external force on string");			// 1 float in (2nd inlet)
	AddInSignal("signal: additional offset between objects");   // 1 float in (3th inlet)

	AddInFloat("float: initial striker velocity");				// 1 float in (4th inlet)

	AddInList("list[3,1]: interactor properties, striker mass");	// 1 List in (5th inlet)

	AddInFloat("float: contact position along the string");	// 1 float in (6th inlet)
	AddInFloat("float: string length");					// 1 float in (7th inlet)
	AddInFloat("float: string tension");					// 1 float in (8th inlet)
	AddInFloat("float: string mass");						// 1 float in (9th inlet)

	AddOutSignal("signal: string output");   // 1 audio out


	//** Below are explicit calls to METHODS for initializing the just created objects **/
  
	//interactor
	m_interact_and_striker_props(GetAFloat(argv[0]), GetAFloat(argv[1]), GetAFloat(argv[2]), GetAFloat(argv[3]));	
								//k, alfa, lambda and hammer mass

	//obj1. inertial object. (striker)
	set_state_inertobjb(x_ctl->p_striker, 0., 0., 0.); //Initializes to 0 displ, velo and last_force of the striker

	argc -= N_PROPS_INTERACT+N_PROPS_STRIKER;
	argv += N_PROPS_INTERACT+N_PROPS_STRIKER;

	//obj2. wg object. (struck object)
	m_str_length2(GetAFloat(argv[1]));
	m_str_tension2(GetAFloat(argv[2]));
	m_str_mass2(GetAFloat(argv[3]));
	m_contact_pos2(GetAFloat(argv[0]));	//N.B. must be last!
										//Sets the lengths of wg sections preceding and following the contact position

	set_state_wgobj(x_ctl->p_struckobject, 0., 0., 0., 0., 0.); //Initializes displ, velo, vmin_l, vmin_r and last_force to 0
	  
	//Reads output masks
	if (GetAFloat(argv[4]) == 1)	//if = '1' -> velocity
	{
		x_ctl->p_pickup_signal = velo_wgobj; 
		post("%s: Pickup of object2 reads velocity information.", external_name);
	}
	else //if anything else (e.g. 'd') -> displacement
	{
		x_ctl->p_pickup_signal = displ_wgobj;
		post("%s: Pickup of object2 reads displacement information.", external_name);
	}

	x_ctl->last_distance = 0.;
	
	post("%s: External initialization completed.", external_name);
	
} // end of constructor



// *** FUNCTIONS *** //

/**		
 * Wrap up of waveguide object creation, delay lines and filters creation, state initialization, ...
 *
 * \todo Negative return values for failures.
 */
void impact_inertialb_wg::prepare_wg_obj()
{														
  if (!(x_ctl->p_struckobject = new_wg_object(samprate)))	//Creates new wg obj
    post("%s: !!! Creation of new waveguide_obj failed!", external_name);
}



// ---- METHODS	----

/**
 * Set striker to contact (displ_1 = displ_2 + additional offset) and given impact velocity.
 */
void impact_inertialb_wg::m_strike(float velocity)
{	
	set_state_inertobjb(x_ctl->p_striker, displ_wgobj(x_ctl->p_struckobject) + x_ctl->last_distance, velocity, 0.);
}


/**
 * Sets the parameters of the interactor and the striker
 * and initiates the computation of internal parameters.
 * K-matrices are (re)passed to the interactor.
 */
void impact_inertialb_wg::m_interact_and_striker_props(float k, /**< Elasticity constant */
													float alpha, /**< Non-linearity exponent */
													float lambda, /**< Coefficient for dissipative term */
													float m /**< Hammer mass */)
{
	set_publ_inertobjb(x_ctl->p_striker, m);

	set_privateprops_inertobjb(x_ctl->p_striker, samprate);

	set_publ_impactor(&x_ctl->felt, k, alpha, lambda);
	set_Kmatrix_impactor(&x_ctl->felt, p_K_inertobjb(x_ctl->p_striker), p_K_wgobj(x_ctl->p_struckobject));

	////DEBUG
	//post("Hammer mass = %f Kg", m);
	//post("k = %f", k);
	//post("alpha = %f", alpha);
	//post("lambda = %f", lambda);
}


//OBJECT 2 methods (waveguide struck object)

/**
 * Sets the pick position for waveguide object (object 2)
 */
void impact_inertialb_wg::m_contact_pos2(float strike_pos)
{														
  //DEBUG
  //post("Contact position along the string set to %f", strike_pos);

  setStrikePos(x_ctl->p_struckobject, strike_pos);
}

/**
 * Sets the length "L" of waveguide object (object 2)
 */
void impact_inertialb_wg::m_str_length2(float length)
{														
  //DEBUG
  //post("String length is %f meters", length);

  setStrLength(x_ctl->p_struckobject, length);	//Basically just to check the value
  updateStrImped_and_Pitch(x_ctl->p_struckobject);	//Also computes K-matrix of wg obj
  
  set_Kmatrix_impactor(&x_ctl->felt, p_K_inertobjb(x_ctl->p_striker), p_K_wgobj(x_ctl->p_struckobject) );

}

/**
 * Sets the tension "T" of waveguide object (object 2)
 */
void impact_inertialb_wg::m_str_tension2(float tension)
{														
  //DEBUG
  //post("String tension is %f N", tension);

  setStrTension(x_ctl->p_struckobject, tension);
  updateStrImped_and_Pitch(x_ctl->p_struckobject);
  
  set_Kmatrix_impactor(&x_ctl->felt, p_K_inertobjb(x_ctl->p_striker), p_K_wgobj(x_ctl->p_struckobject) );
}

/**
 * Sets the mass "m" of waveguide object (object 2)
 */
void impact_inertialb_wg::m_str_mass2(float mass)
{														
  //DEBUG
  //post("String mass is %f Kg", mass);

  setStrMass(x_ctl->p_struckobject, mass);
  updateStrImped_and_Pitch(x_ctl->p_struckobject);
  
  set_Kmatrix_impactor(&x_ctl->felt, p_K_inertobjb(x_ctl->p_striker), p_K_wgobj(x_ctl->p_struckobject) );
}



// ---- DSP FUNCTION ----

// Now we define our DSP function. It gets this arguments:
// 
// int n: length of signal vector. Loop over this for your signal processing.
// float *const *in, float *const *out: 
//          These are arrays of the signals in the objects signal inlets rsp.
//          oulets. We come to that later inside the function.

void impact_inertialb_wg::m_signal(int n, float *const *in, float *const *out)
{
	const float *ext_force1 = in[0];	/**< External force to be applied to the striker */
	const float *ext_force2 = in[1];	/**< External force to be applied to the struck object*/
	const float *ext_offset = in[2];	/**< External offset to be added to the distance of the interacting objects */
    
	double displ, velo; 
	double force1, force2;


#if (defined(_DEBUG_))
	post("---------> New buffer <----------");
#endif
	// We are now ready for the main signal loop
	for(int si = 0; si < n; ++si)
	{
#if (defined(_DEBUG_))
		post("CYCLE # %d:", si);
#endif
		start_cycle_inertobjb(x_ctl->p_striker); //Computes the state of the hammer ignoring current forces
		start_cycle_wgobj(x_ctl->p_struckobject); //Computes the state of the wg obj. ignoring current forces

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
		post(" ---- Impactor:");
#endif
		velo = velo_inertobjb(x_ctl->p_striker);

		impact_force_impactor(&force1, &force2, //Returns forces acting on the 2 objs in "force1" and "force2" 
								&x_ctl->felt, //Interactor
								displ, 
								displ_wgobj(x_ctl->p_struckobject) + (x_ctl->last_distance = *ext_offset++),
								velo, 
								velo_wgobj(x_ctl->p_struckobject));

#if (defined(_DEBUG_))
		post(" ---- add & apply forces");
		post(" ---- force1 = %.10f, force2 = %.10f", force1, force2);
#endif
		apply_force_inertobjb(x_ctl->p_striker, force1 + *ext_force1++ * inertia_inertobjb(x_ctl->p_striker));
		  
		add_force_wgobj(x_ctl->p_struckobject, force2 + *ext_force2++);
		apply_forces_wgobj(x_ctl->p_struckobject);

#if (defined(_DEBUG_))
		post(" ---- struck object output:");
#endif
        out[0][si] = x_ctl->p_pickup_signal(x_ctl->p_struckobject);
	}	//end main for loop
}  // end m_signal


