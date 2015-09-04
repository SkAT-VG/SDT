/** \file wg_obj.h
 * Definition of a one-dimensional waveguide resonator which 
 * accounts for energy dissipation. Dispersion is not considered.
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

#if !defined(_WG_OBJ_H_)
#define _WG_OBJ_H_

#define L_LENGTH 1024 	//1024 + 1024 = 2048 -> maximum delay line length 
#define R_LENGTH 1024 	// -> samplerate/LowestFreq + 1 -> minimum freq for each DL is ~21.5Hz @ 44100Hz

#include "solids.h"
#include "matrix_calc.h"


/********************************************************************************/
/** the following code has been extracted from the pd port of PeRColate' stk.h **/
/** the original float types have been changed to doubles                      **/

/* STRUCTURES */

//OneZero
typedef struct _onezero {
	double zeroCoeff, gain, sgain, input, lastOutput;
} OneZero;

//DLineA: delay line with allpass interpolation
typedef struct _dlineA {
	double *inputs; 	//delay line buffer	//array of doubles
	long inPoint;	//where to dump in the buffer
    long outPoint;	//where to grab from the buffer
    long length;	//delay line length	
    double alpha;	//N.B. additional fractional delay
    double coeff;	//just one coeff.: pole = -coeff and zero = -1/coeff
    double lastIn;
    double lastOutput;
} DLineA;


/* PROTOTYPES */

//OneZero
void OneZero_init(OneZero *onezero);
void OneZero_setGain(OneZero *onezero, double aValue);
void OneZero_setCoeff(OneZero *onezero, double aValue);
double OneZero_tick(OneZero *onezero, double sample); // Perform Filter Operation

//DlineA functions
void DLineA_alloc(DLineA *delayLine, long max_length);
void DLineA_free(DLineA *delayLine);
void DLineA_clear(DLineA *delayLine);
void DLineA_setDelay(DLineA *delayLine, double lag);
double DLineA_tick(DLineA *delayLine, double sample);

/** here ends the code extracted from the pd port of PeRColate' stk.h          **/
/********************************************************************************/


/**
 * Structure of a 1-D resonating object in the waveguide description
 * Holds parameters to be accessed from outside, internal (private) parameters
 * and the current state of the object.
 */
typedef struct
{
  /* "Public" attributes, to be set or read from outside */
  struct _wgobj_publ
  { 
	float strike_pos_save;	//Last contact position (normalized)
	float length;		//L		//Physical and geometrical parameters of the string
	float tension;	//T
	float mass;		//m

	float srate;	//Host's sample rate
    t_matrix *p_K; /**< pointer to the K-matrix */
  } publ; /**< Instance of the substructure */											

  /* Private parameters of the waveguide object
     should never be touched explicitly */		//Variables not managed by externals
  struct _wgobj_priv
  {
	//delay lines
	DLineA leftDelay;	
	DLineA rightDelay;	//2 wg sections
  
	//filter
	OneZero loopFilt;	//Simulates dissipation (averaging filter)
	double loopGain;	//Gain correction for dissipation at low freqs.

	//stuff
	double Z; //wave impedance: obtained from L, T and m (when no dispersion is accounted)
	double lastDLsLength;	//depends on the pitch of the string
  } priv; /**< Instance of the substructure */

  /* State variables at interaction point */
  struct _wgobj_sta
  {     
	double displ; /**< Displacement at contact position */
	double velo; /**< Velocity at contact position */

	//traveling waves (wave variables) incoming into ("before") the interaction point
	double vplus_L; //v+_L
	double vplus_R; //v+_R

    double last_force; /**< Last force applied */
   					
  } state; /**< Instance of the substructure */				
} t_wg_object;



// **** FUNCTIONS **** //

static void setStrikePos(t_wg_object *p_obj, float position)
{
	double delay = p_obj->priv.lastDLsLength;

	//Considers the length of the string normalized to 1
	if (position < .01)
	{
		position = .01;
		post("wg: WARNING! Strike position across wg object should range from 0.01 to 0.99 -> setting to 0.01");
	}
	else if (position > .99)
	{
		position = .99;
		post("wg: WARNING! Strike position across wg object should range from 0.01 to 0.99 -> setting to 0.99");
	}

	p_obj->publ.strike_pos_save = position;

	DLineA_setDelay(&p_obj->priv.leftDelay, delay * (1 - position) );	//Assigns the proper lengths to DLs 
	DLineA_setDelay(&p_obj->priv.rightDelay, delay * position);			//considering the external contact position

#if (defined(_DEBUG_))
		post("wg: leftDelay length = %d, rightDelay length = %d", p_obj->priv.leftDelay.outPoint, p_obj->priv.rightDelay.outPoint);
#endif		
}


static void setStrLength(t_wg_object *p_obj, float length)	//Just a check
{
	//Length should range between 0.05 and 2.00 metres
	if (length < 0.05)
	{
		length = 0.05;
		post("wg: WARNING! String length should range from 0.05 to 2 meters -> setting to 0.05");
	}
	else if (length > 2.)
	{
		length = 2.;
		post("wg: WARNING! String length should range from 0.05 to 2 meters -> setting to 2.0");
	}
	p_obj->publ.length = length;
}


static void setStrTension(t_wg_object *p_obj, float tension)	//Just a check
{
	//Tension should range between 1 and 1000 N
	if (tension < 1.)
	{
		tension = 1.;
		post("wg: WARNING! String tension should range from 1 to 1000 N -> setting to 1");
	}
	else if (tension > 1000.)
	{
		tension = 1000.;
		post("wg: WARNING! String tension should range from 1 to 1000 N -> setting to 1000");
	}
	p_obj->publ.tension = tension;
}


static void setStrMass(t_wg_object *p_obj, float mass)	//Just a check
{
	//Mass should range between .0005 and .1 Kg
	if (mass < .0005)
	{
		mass = .0005;
		post("wg: WARNING! String mass should range from 0.0005 to 0.1 Kg -> setting to 0.0005");
	}
	else if (mass > .1)
	{
		mass = .1;
		post("wg: WARNING! String mass should range from 0.0005 to 0.1 Kg -> setting to 0.1");
	}
	p_obj->publ.mass = mass;
}


static void updateStrImped_and_Pitch(t_wg_object *p_obj)
{
	double delay, pitch;
	double loopFilterDelay = 0.5;	//Delay introduced by LP averaging filter
	float samprate = p_obj->publ.srate;

	//Z = sqrt(T * m/L)
	p_obj->priv.Z = sqrt(p_obj->publ.tension * p_obj->publ.mass / p_obj->publ.length);

	//Computes K-matrix: sets K[0,0] and K[0,1]
	p_obj->publ.p_K->p_entry[0][0] = 1/(4 * samprate * p_obj->priv.Z);
	p_obj->publ.p_K->p_entry[1][0] = 1/(2 * p_obj->priv.Z);

#if (defined(_DEBUG_))
	post("wg: K-matrix set to [0,0]=%.10f, [1,0]=%.10f", 
		 entry_matrix(p_obj->publ.p_K, 0, 0), entry_matrix(p_obj->publ.p_K, 1, 0));
#endif
	
	pitch = 0.5 * p_obj->priv.Z / p_obj->publ.mass;	//Fundamental freq. = pitch of the string
		//= 0.5 * sqrt(p_obj->publ.tension / (p_obj->publ.mass * p_obj->publ.length)) = 0.5 * sqrt[T/(m*L)]

	if(pitch < 20.)		//check
	{	
		pitch = 20.;
		post("wg: Minimum allowable pitch is 20 Hz... setting to 20 Hz\n");
	}
	//N.B. anyhow, the function 'DLineA_setDelay()' prevent from choosing freqs. that yield to lengths bigger than the buffer

  	delay = p_obj->priv.lastDLsLength = (samprate / pitch) - loopFilterDelay;  //length - (approximate delay of LP filter)

#if (defined(_DEBUG_))
	post("wg: delay lines length = %f", delay);
	post("wg: strike pos save = %f", p_obj->publ.strike_pos_save);
#endif
  	DLineA_setDelay(&p_obj->priv.leftDelay, delay * (1 - p_obj->publ.strike_pos_save) );	//Assigns the proper lengths to DLs 
	DLineA_setDelay(&p_obj->priv.rightDelay, delay * p_obj->publ.strike_pos_save);			//considering the external contact position
	
	//loopgain -> N.B. compensate for too long decay times of low freqs.
  	p_obj->priv.loopGain = 0.995 + (pitch * 0.000005);	//when freq. decreases, it slightly decreases (up to min 0.995) loopGain
  	if (p_obj->priv.loopGain > 1.0)						//high freqs. (above 1000Hz) have loopGain = 1
		p_obj->priv.loopGain = 1;	//max 1 to retain stability
}


/**
 * Setting of the state
 *
 * \note For efficiency this should be declared as inline
 */
static void set_state_wgobj(t_wg_object *p_obj, //< Pointer to the wg object
								   double displ, //< Displacement
								   double velo, //< Velocity
								   double vplus_L, //< v+_L
								   double vplus_R, //< v+_R
								   double last_force) //< Last applied force
{	
	p_obj->state.displ = displ;
	p_obj->state.velo = velo;
	p_obj->state.vplus_L = vplus_L;
	p_obj->state.vplus_R = vplus_R;
	p_obj->state.last_force = last_force;
}


/**
 * Returns the pointer to the K-matrix
 *
 * \note For efficiency this should be declared as inline
 */
static t_matrix* p_K_wgobj(t_wg_object *p_obj /**< Pointer to the wg object */)
{
  return(p_obj->publ.p_K);
}




/* PROTOTYPES */
t_wg_object *new_wg_object(float samprate);
int destroy_wg_object(t_wg_object *p_obj);

void start_cycle_wgobj(t_wg_object *p_obj);
void add_force_wgobj(t_wg_object *p_obj, double force);
void apply_forces_wgobj(t_wg_object *p_obj);

double displ_wgobj(t_wg_object *p_obj);
double velo_wgobj(t_wg_object *p_obj);

#endif /* !defined(_WG_OBJ_H_) */
