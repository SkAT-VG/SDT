/** \file control_contcrump.cpp
 * flext-based external for Pd and Max for the control of crumpling 
 * processes. This external is expressly meant to drive impact events modeled
 * by one instance of 'impact_inertialb_modalb~' externals (see SDT User's 
 * Guide for details)
 *
 * \author Federico Fontana and Stefano Papetti
 * (federico.fontana@uniud.it, stefano.papetti@zhdk.ch)
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

#include <flext.h>
 
// check for appropriate flext version
#if !defined(FLEXT_VERSION) || (FLEXT_VERSION < 501)
#error You need at least flext version 0.5.1
#endif

#include "../SDT.h"


/* ---------------- control_contcrump ----------------- */

#include <math.h>
#include <stdlib.h>

#define external_name "control_contcrump\0"


/* PROTOTYPES */
int poisson_rand(float);
double exp_rand(float);


/* Prevent dynamic overshoot and undershoot from exponential distribution */
static const float BOUND_OVERSHOOT = 0.025;
static const float BOUND_UNDERSHOOT = 0.1;
static const float NRG_GAIN = -30.; //Negative due to the conventions in impact models

/* Lowest time delay and density of Poisson process overload during process (ex: 0.2 -> 20% overload) */	//TODO inizializzare in constructor?
//static const int SUCCESS_BEST = 5;



/**** FLEXT-BASED EXTERNAL CLASS DEFINITION ****/
class control_contcrump:
	public flext_base
{
	FLEXT_HEADER_S(control_contcrump, flext_base, setup)
		
	public:
		// constructor with possibly variable argument list
		control_contcrump(int argc, t_atom *argv);

	protected:
		//int time_gap;
		//float gamma;
		//float poisson;

		float resistance;
		float potential;
		
		void m_set_force(float value);
		void m_set_resistance(float value);

	private:
		static void setup(t_classid c);

		// for every registered method a callback has to be declared
		FLEXT_CALLBACK_F(m_set_force)
		FLEXT_CALLBACK_F(m_set_resistance)
};


FLEXT_NEW_V("control_contcrump", control_contcrump) // instantiate the class (constructor takes ??? arguments)



/**** DEFINITIONS ****/

// ---- SETUP ----
void control_contcrump::setup(t_classid c)
{
	FLEXT_CADDMETHOD_F(c, 0, "force", m_set_force);  // 1 float argument
	FLEXT_CADDMETHOD_F(c, 0, "resistance", m_set_resistance);  // 1 float argument
	
	// here no message tag is used.
	//FLEXT_CADDMETHOD(c, 1, m_set_initial_energy);  // float arg recognized automatically
}


// ---- CONSTRUCTOR ----
control_contcrump::control_contcrump(int argc, t_atom *argv) 
{
	//SDT heading: output to console
    post("%s", DASH_LINE);
    SDT_TEXTHEAD
    
    //external description
    post("   %s: Is meant to drive impact events provided by 'impact_inertialb_modalb~'", external_name);
	post("   %s: in order to model continuous crumpling processes.", external_name);
    post("   Version: %s", SDT_ver_str);
    post("   Authors: Federico Fontana, Stefano Papetti");
    post("%s", DASH_LINE);
	
	//gamma = GetAFloat(argv[0]);
	//poisson = GetAFloat(argv[1]);

	//INLETS
	AddInAnything("""force"" float; ""resistance"" float"); // default inlet
	
	AddOutFloat("to delay"); // outlet index = 0
	AddOutFloat("to impact velocity");	// outlet index = 1

	// We're done constructing:
	post("%s: External initialization completed.", external_name);
}



/**** METHOD SPACE ****/

/* Add force to increase the available potential energy and 
 * if it is enough then trigger an impact */
void control_contcrump::m_set_force(float value) 
{	
	double energy;	/*  Actual energy */
	int delay;

	potential += value;		//available potential energy
	//TODO errors check ?

	energy = exp_rand(value);	//energy needed to trigger a new impact

	if (potential > energy)
	{
		delay = poisson_rand(resistance);
		ToOutFloat(0, delay);	// output value to outlet 0
		ToOutFloat(1, energy*NRG_GAIN);	// output value to outlet 1
		potential -= energy;
	}
	//DEBUG
	//else
	//	post("Not enough force!");
}


/* Set the resistance */
void control_contcrump::m_set_resistance(float value)
{ 
	resistance = value;
	//TODO errors check ?
}




/**** FUNCTIONS ****/

/* Generate discrete Poisson random variable.
 * Input parameter: probability of success (must lie between 0 and 1) */
int poisson_rand(float success)
{
	float experiment;	// result of the experiment
	int counter;	// count failed experiments

	experiment = 1.;	// failure leads to next experiment
	counter = 0;//SUCCESS_BEST;	// extremely low delay times are avoided

	//Check
	if (success <= 0.)
	{	
		success = 0.01;
		post("%s: !!! Need a value between 0. and 1.\n", external_name);
	}
	else if (success > 1.)
	{	
		success = 1.;
		post("%s: !!! Need a value between 0. and 1.\n", external_name);
	}


	while (experiment >= success)	//Loop until success
	{
		experiment = ((float)rand())/RAND_MAX;	//New experiment
		++counter;	// one more failure
	}

	return (counter);
}


/* Generate exponential random variable described by p(E)=E^(-g).
 * Input parameter: exponent g (must be greater than 1) */
double exp_rand(float exp_arg)
{
	double rand_var, undershoot, overshoot;

	if (exp_arg <= 1.) 
	{	
		exp_arg = 1.01;
		post("%s: !!! Value must be greater than 1.", external_name);
	}

	//calculate undershoot and overshoot bounds
	undershoot = pow((exp_arg-1.)*BOUND_UNDERSHOOT, (double)(-exp_arg));
	overshoot = pow((exp_arg-1.)*BOUND_OVERSHOOT, (double)(-exp_arg));
	//DEBUG
	//post("undershoot = %d \novershoot = %d", undershoot, overshoot);

	//uniform random number between undershoot and overshoot
	rand_var = undershoot + ((double)rand())/RAND_MAX * (overshoot-undershoot);

	//map to exponential distribution
	rand_var = pow(rand_var/(exp_arg-1.), (double)(-1./exp_arg));
	  
	return (rand_var);
}
