/** \file control_crump_v2.cpp
 * flext-based external for Pd and Max for the control of crumpling 
 * processes. This external is expressly meant to drive impact events modeled
 * by two instances of 'impact_inertialb_modalb~' externals (see SDT User's 
 * Guide for details)
 *
 * \author Federico Fontana (federico.fontana@uniud.it)
 * Version 2 and flext porting: Stefano Papetti (stefano.papetti@zhdk.ch)
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


/* ---------------- control_crump ----------------- */

#include <math.h>
#include <stdlib.h>

#define external_name "control_crump\0"

/*  Maximum allowed number of creases */
#define BUFFER_SIZE 10000

int poisson_rand(float);
double exp_rand(float);

/*  Parameter rescaling provides comfortable control from the host's GUI */	//TODO inizializzare in constructor?
static const float SMOOTHNESS_RATIO = 0.001;
static const float GAMMA_ENERGY_RATIO = 0.01;
static const float ENERGY_SUBTRACTION_RATIO = 1000.;
static const float DYNAMICS_RATIO = 30.;

/* Prevent dynamic overshoot and undershoot from exponential distribution */
static const float BOUND_OVERSHOOT = 0.025;
static const float BOUND_UNDERSHOOT = 0.1;

/* Lowest time delay and density of Poisson process overload during process (ex: 0.2 -> 20% overload) */	//TODO inizializzare in constructor?
static const int SUCCESS_BEST = 5;
static const float SUCCESS_OVERLOAD = 0.5;



/**** FLEXT-BASED EXTERNAL CLASS DEFINITION ****/
class control_crump:
	public flext_base
{
	FLEXT_HEADER_S(control_crump, flext_base, setup)
		
public:
	// constructor with possibly variable argument list
	control_crump(int argc, t_atom *argv);

protected:
	int fracture_buffer[BUFFER_SIZE]; /*  Store individual events (position is [arg]) */
	int time_gap;
	float gamma_energy, initial_energy, remaining_energy;
	float smoothness;
	double freq_fact_begin, freq_fact_end; //initial and final frequency factor
	double te_mode0_max, te_mode0_min, te_mode1_max, te_mode1_min; //maximum and minimum decay time for each resonator's mode
	double mass_max, mass_min;	//maximum and minimum striker mass
	float sweep_max, sweep_min; //maximum and minimum cutoff frequency of an external lowpass filter
	
	void m_bang();
	void m_reset();
	void m_set_initial_energy(float init_nrg);
	void m_set_gamma_energy(float gamma_nrg);
	void m_set_smoothness(float smoothn);
	void m_set_freq_fact(float f_fact_begin, float f_fact_end);
	void m_set_decays(float te0_max, float te0_min, float te1_max, float te1_min);
	void m_set_mass(float m_max, float m_min);
	void m_set_filter_sweep(float f_max, float f_min);

private:
	static void setup(t_classid c);

	// for every registered method a callback has to be declared
	FLEXT_CALLBACK(m_bang)  // callback for method "m_bang" (with no argument)
	FLEXT_CALLBACK(m_reset)  // callback for method "m_reset" (with no argument)
	FLEXT_CALLBACK_F(m_set_initial_energy)
	FLEXT_CALLBACK_F(m_set_gamma_energy)
	FLEXT_CALLBACK_F(m_set_smoothness)
	FLEXT_CALLBACK_FF(m_set_freq_fact)
	FLEXT_CALLBACK_4(m_set_decays, float, float, float, float)
	FLEXT_CALLBACK_FF(m_set_mass)
	FLEXT_CALLBACK_FF(m_set_filter_sweep)
};


FLEXT_NEW_V("control_crump", control_crump) // instantiate the class (constructor takes ??? arguments)


/**** DEFINITIONS ****/

// ---- SETUP ----
void control_crump::setup(t_classid c)
{
	// --- set up methods (class scope) ---
	// tagged methods (inlet 0)
	FLEXT_CADDBANG(c, 0, m_bang); // register a bang method to the default inlet (0)
	FLEXT_CADDMETHOD_(c, 0, "reset", m_reset); // register a reset method to the default inlet (0)
	//FLEXT_CADDMETHOD_(c, 1, "reset", m_reset); // register a reset method to the 2nd inlet (1)	//se ne puo' fare a meno!
	FLEXT_CADDMETHOD_FF(c, 0, "freq_fact_range", m_set_freq_fact);  // list: 2 float arguments
	FLEXT_CADDMETHOD_4(c, 0, "decays_range", m_set_decays, float, float, float, float);  // list: 4 float arguments
	FLEXT_CADDMETHOD_FF(c, 0, "mass_range", m_set_mass);  // list: 2 float arguments
	FLEXT_CADDMETHOD_FF(c, 0, "filter_sweep_range", m_set_filter_sweep);  // list: 2 float arguments
	
	// here no message tag is used.
	//FLEXT_CADDBANG(c, 1, m_reset); //trasforma un bang al 2nd inlet in un reset	//se ne puo' fare a meno!
	FLEXT_CADDMETHOD(c, 1, m_set_initial_energy);  // float arg recognized automatically
	FLEXT_CADDMETHOD(c, 2, m_set_gamma_energy);  // float arg recognized automatically
	FLEXT_CADDMETHOD(c, 3, m_set_smoothness);  // float arg recognized automatically
	FLEXT_CADDMETHOD(c, 4, m_set_freq_fact);	// list arg type recognized automatically
	FLEXT_CADDMETHOD_4(c, 5, "list", m_set_decays, float, float, float, float);  // list: 4 float arguments
	FLEXT_CADDMETHOD(c, 6, m_set_mass);	// list arg type recognized automatically
}


// ---- CONSTRUCTOR ----
control_crump::control_crump(int argc, t_atom *argv) 
{
	//SDT heading: output to console
    post("%s", DASH_LINE);
    SDT_TEXTHEAD
    
    //external description
    post("   %s: Is meant to drive impact events provided by two instances", external_name);
	post("   %s: of 'impact_inertialb_modalb~' in order to model crumpling processes.", external_name);
    post("   Version: %s", SDT_ver_str);
    post("   Author: Federico Fontana");
	post("   Revision (v2) and flext porting: Stefano Papetti");
    post("%s", DASH_LINE);
	
	/*  Trivial control over init parameters */
	if (argc < 13) //TODO aggiornare messaggio di errore
	{
		post("%s: !!! Bad arguments initialization! Need:\n", external_name);
		post("%s: (1)- size (greater than 0)\n", external_name);
		post("%s: (2)- force (between 100 and 150)\n", external_name);
		post("%s: (3)- smoothness (between 1 and 50)", external_name);
	}

	initial_energy = GetAFloat(argv[0]);
	gamma_energy = GetAFloat(argv[1]);
	smoothness = GetAFloat(argv[2]);
	freq_fact_begin = GetAFloat(argv[3]);
	freq_fact_end = GetAFloat(argv[4]);
	te_mode0_max = GetAFloat(argv[5]);
	te_mode0_min = GetAFloat(argv[6]);
	te_mode1_max = GetAFloat(argv[7]);
	te_mode1_min = GetAFloat(argv[8]);
	mass_max = GetAFloat(argv[9]);
	mass_min = GetAFloat(argv[10]);
	sweep_max = GetAFloat(argv[11]);
	sweep_min = GetAFloat(argv[12]);
	
	time_gap = 0;

	//INLETS
	AddInAnything("accepts: ""bang"", ""reset"""); // default inlet
	//AddInAnything("bang here to reset"); // 2nd inlet
	AddInFloat("float: initial energy");	// 1 float in (2nd inlet)
	AddInFloat("float: gamma energy");	// 1 float in (3th inlet)
	AddInFloat("float: smoothness");	// 1 float in (4th inlet)
	AddInList("list[2]: freq_fact_begin, freq_fact_end");
	AddInList("list[4]: te_mode0_max, te_mode0_min, te_mode1_max, te_mode1_min");
	AddInList("list[2]: striker mass_max, mass_min");
	
	AddOutFloat("to delay"); // outlet index = 0
	//left-object related
	AddOutFloat("to left obj's striker mass");	// outlet index = 1
	AddOutFloat("to left obj's frequency factor");	// outlet index = 2
	AddOutFloat("to decay time of left obj's mode0");	// outlet index = 3
	AddOutFloat("to decay time of left obj's mode1");	// outlet index = 4
	AddOutFloat("to left obj's energy factor");	// outlet index = 5
	//right-object related
	AddOutFloat("to right obj's striker mass"); // outlet index = 6
	AddOutFloat("to right obj's frequency factor"); // outlet index = 7
	AddOutFloat("to decay time of right obj's mode0"); // outlet index = 8
	AddOutFloat("to decay time of right obj's mode1"); // outlet index = 9
	AddOutFloat("to right obj's energy factor"); // outlet index = 10

	AddOutFloat("to frequency sweep"); // outlet index = 11		//??? serve?
  
	/*  Reset process (uses 'reset' method) */
	m_reset();

	// We're done constructing:
	post("%s: External initialization completed.", external_name);
}



/**** METHOD SPACE ****/

/* BANG processes new individual event.
 * update: consume energy, add crease
 * output: time gap (if any), l and r pitch, l and r energy, lowpass cutoff frequency */
void control_crump::m_bang() 
{
	int fracture_point;	/*  Fracture point position */
		
	double energy;	/*  Actual energy plus energies from left and right facets */
	double l_energy = 0.;
	double r_energy = 0.;
		
	int l_distance, r_distance;	/*  Distances between adjacent creases after fracture */

	float l_te0 = te_mode0_max; //0;   /*  Decay time of modes of left and right facets */ 
	float r_te0 = te_mode0_max; //0;
	float l_te1 = te_mode1_max; //0;
	float r_te1 = te_mode1_max; //0;
		
	float l_freq = freq_fact_begin; //0.;	/*  Pitches of sounds from left and right facets */ 
	float r_freq = freq_fact_begin; //0.;
	
	float l_mass = mass_max;	/* Mass of left and right facets */
	float r_mass = mass_max;

	float success;	/*  Input variable to Poisson process calculation */
	float sweep_center = sweep_max;	/*  lowpass filter (initial) cutoff frequency */ //TODO provare con un bandpass altrimenti cambia il nome della variabile a "cutoff"
	int time_gap_store = time_gap;	/*  Fix re-entrance problem */

	/*  Fracture is calculated only if energy is left into the system */
	if (remaining_energy > 0.) 
	{
		/*  Compute Poisson's time gap after rescaling input from user interface */
		success = (1. + SUCCESS_OVERLOAD) * smoothness - (remaining_energy / initial_energy) * SUCCESS_OVERLOAD * smoothness;
/* DEBUG */ //post("success = %f", success);
		time_gap = poisson_rand(success * SMOOTHNESS_RATIO);	//???
/* DEBUG */ //post("time_gap = %i", time_gap);

		/* Compute new crease position, set buffer accordingly,
		* then computes facets size (e.g., leftward and rightward distances
		* between new and existing neighbor creases) */
		fracture_point = rand()%(BUFFER_SIZE-2)+1;

		fracture_buffer[fracture_point] = 1;

		l_distance = 1;
		while(fracture_buffer[fracture_point] - fracture_buffer[fracture_point - l_distance])
			l_distance++;
/* DEBUG */ //post("l_distance = %d", l_distance);

		r_distance = 1;
		while(fracture_buffer[fracture_point] - fracture_buffer[fracture_point + r_distance])
			r_distance++;
/* DEBUG */ //post("r_distance = %d", r_distance);

		/* compute decay times (quality factors) from sizes */
		l_te0 = te_mode0_min - (te_mode0_min - te_mode0_max)*((double)l_distance/BUFFER_SIZE);
		r_te0 = te_mode0_min - (te_mode0_min - te_mode0_max)*((double)r_distance/BUFFER_SIZE);
/* DEBUG */ //post("l_te0 = %f, r_te0 = %f", l_te0, r_te0);
		l_te1 = te_mode1_min - (te_mode1_min - te_mode1_max)*((double)l_distance/BUFFER_SIZE);
		r_te1 = te_mode1_min - (te_mode1_min - te_mode1_max)*((double)r_distance/BUFFER_SIZE);
/* DEBUG */ //post("l_te1 = %f, r_te1 = %f", l_te1, r_te1);

		/* compute frequencies from sizes */
		l_freq = freq_fact_end - (freq_fact_end - freq_fact_begin)*((double)l_distance/BUFFER_SIZE);
		r_freq = freq_fact_end - (freq_fact_end - freq_fact_begin)*((double)r_distance/BUFFER_SIZE);
/* DEBUG */ //post("l_freq = %f, r_freq = %f", l_freq, r_freq);
		
		/* compute masses from sizes */
		l_mass = mass_min - (mass_min - mass_max)*((double)l_distance/BUFFER_SIZE);
		r_mass = mass_min - (mass_min - mass_max)*((double)r_distance/BUFFER_SIZE);
/* DEBUG */ //post("l_mass = %f, r_mass = %f", l_mass, r_mass);

		/*
		* Compute new energy, calculate energies from left and right facets,
		* then subtracts actual energy spent by the process
		*/
		energy = exp_rand(gamma_energy * GAMMA_ENERGY_RATIO);	// rescaling input from user interface
		l_energy = energy * (double)l_distance/BUFFER_SIZE/* (l_distance+r_distance) */;	// energy from left facet	//ho decommentato da * in poi
		r_energy = energy * (double)r_distance/BUFFER_SIZE/* (l_distance+r_distance) */;	// energy from right facet	//??? ho messo BUFFER_SIZE al denominatore (come sopra)
/* DEBUG */ //post("l_energy = %f, r_energy = %f", l_energy, r_energy);
		remaining_energy -= energy * ENERGY_SUBTRACTION_RATIO;	// rescaling input from user interface
/* DEBUG */ //post("remaining_energy = %f", remaining_energy);

		/*  Zeroes remaining energy if negative */
		if (remaining_energy < 0.)
			remaining_energy = 0.;

		/*  Compute lowpass filter cutoff frequency */
		sweep_center = sweep_min + remaining_energy / initial_energy * (sweep_max - sweep_min);

		ToOutFloat(0, time_gap_store);	// output value to outlet 0
		
		ToOutFloat(1, l_mass);	//??? erano fuori dall'if
		ToOutFloat(2, l_freq);
		ToOutFloat(3, l_te0);
		ToOutFloat(4, l_te1);
		ToOutFloat(5, l_energy*DYNAMICS_RATIO);	// rescale energy for correct dynamics
		
		ToOutFloat(6, r_mass);
		ToOutFloat(7, r_freq);
		ToOutFloat(8, r_te0);
		ToOutFloat(9, r_te1);
		ToOutFloat(10, r_energy*DYNAMICS_RATIO); // rescale energy for correct dynamics
		
		ToOutFloat(11, sweep_center);
	}
/* DEBUG */	
	// else
	// {	
		// post("No remaining energy! \n...resetting system...");
		// m_reset();
	// }
}


/* RESET: resets the overall process.
* set initial energy
* set initial quality factors
* zeroes out the buffer of creases */
void control_crump::m_reset() 
{
	remaining_energy = initial_energy;

	memset(fracture_buffer, '\0', sizeof(fracture_buffer));	//fills fracture_buffer with \0
	fracture_buffer[0] = 1;				// initialize left edge with fracture
	fracture_buffer[BUFFER_SIZE-1] = 1;	// initialize right edge with fracture
}


void control_crump::m_set_initial_energy(float value)
{ 
	//TODO errors check ?
	initial_energy = value;
	//post("initial_energy = %f", initial_energy);
}


void control_crump::m_set_gamma_energy(float value)
{ 
	//TODO errors check ?
	gamma_energy = value;
	//post("gamma_energy = %f", gamma_energy);
}


void control_crump::m_set_smoothness(float value)
{ 
	//TODO errors check ?
	smoothness = value;
	//post("smoothness = %f", smoothness);
}


void control_crump::m_set_freq_fact(float f_fact_begin, float f_fact_end)
{
	freq_fact_begin = f_fact_begin;
	freq_fact_end = f_fact_end;
/* DEBUG */ //post("resonators: freq_fact_begin = %f, freq_fact_end = %f", freq_fact_begin, freq_fact_end);
}


void control_crump::m_set_decays(float te0_max, float te0_min, float te1_max, float te1_min)
{
	te_mode0_max = te0_max;
	te_mode0_min = te0_min;
	te_mode1_max = te1_max;
	te_mode1_min = te1_min;
/* DEBUG */ //post("resonators: te0_max = %f, te0_min = %f, te1_max = %f, te1_min = %f", te_mode0_max, te_mode0_min, te_mode1_max, te_mode1_min);

}


void control_crump::m_set_mass(float m_max, float m_min)
{
	mass_max = m_max;
	mass_min =  m_min;
/* DEBUG */ //post("strikers: mass_max = %f, mass_min = %f", mass_max, mass_min);
}


void control_crump::m_set_filter_sweep(float f_max, float f_min)
{
	sweep_max = f_max;
	sweep_min =  f_min;
/* DEBUG */ //post("filter: sweep_max = %f, sweep_min = %f", sweep_max, sweep_min);
}


/**** FUNCTIONS ****/

/* Generate discrete Poisson random variable.
 * input parameter: probability of success (must lie between 0 and 1) */
int poisson_rand(float success_scaled)
{
	float experiment;	// result of the experiment
	int counter;	// count failed experiments

	experiment = 1.;	// failure lead to next experiment
	counter = SUCCESS_BEST;	// extremely low time delays are avoided

/* DEBUG */ //post("success_scaled = %f", success_scaled);
	if (success_scaled <= 0.) 
		post("%s: !!! Bad parameters initialization! Need:\n- smoothness (between 1. and 50.)\nparameter.\n", external_name);	//??? smoothness * SMOOTHNESS_RATIO < success_scaled <= (1 + SUCCESS_OVERLOAD) * smoothness * SMOOTHNESS_RATIO ---> perche' 0 < success_scaled < 1 deve essere 0 < smoothness < 1/(SMOOTHNESS_RATIO*(1 + SUCCESS_OVERLOAD) )
	if (success_scaled >= 1.) 
		post("%s: !!! Bad parameters initialization! Need:\n- smoothness (between 1. and 50.)\nparameter.\n", external_name);	//???

	/*  Loop until success */
	while (experiment > success_scaled) 
	{
		/*  New experiment */
		experiment = ((float)rand())/RAND_MAX;	
		++counter;	// one more failure
	}

	return (counter);
}


/* Generate exponential random variable described by p(E)=E^(-g).
 * input parameter: exponent g (must be greater than 1) */
double exp_rand(float exp_arg)
{
	double tmp, undershoot, overshoot;

	if (exp_arg <= 1.) 
		post("%s: !!! Bad parameters initialization. Need:\n- force (between 100. and 150.)\nparameter.\n", external_name);

	/*  calculate undershoot and overshoot bounds */  
	undershoot = pow((exp_arg-1.)*BOUND_UNDERSHOOT, (double)(-exp_arg));
	overshoot = pow((exp_arg-1.)*BOUND_OVERSHOOT, (double)(-exp_arg));

	/*  uniform random number between undershoot and overshoot */
	tmp = undershoot + ((double)rand())/RAND_MAX * (overshoot-undershoot);

	/*  map to exponential distribution */
	tmp = pow(tmp/(exp_arg-1.), (double)(-1./exp_arg));
	  
	return (tmp);
}
