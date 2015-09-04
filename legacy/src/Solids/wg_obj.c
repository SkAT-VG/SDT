/** \file wg_obj.c
 * Implementation of a one-dimensional waveguide resonator which 
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


#include "wg_obj.h"


//////////////////////////////////////////////////////////////////////////////////////////
// **** the following code has been extracted from the pd port of PeRColate' stk.c **** //
// **** the original float types have been changed to doubles					   **** //

/*******************************************/
/*  One Zero Filter Class,                 */
/*  by Perry R. Cook, 1995-96              */ 
/*  The parameter gain is an additional    */
/*  gain parameter applied to the filter   */  
/*  on top of the normalization that takes */
/*  place automatically.  So the net max   */
/*  gain through the system equals the     */
/*  value of gain.  sgain is the combina-  */
/*  tion of gain and the normalization     */
/*  parameter, so if you set the poleCoeff */
/*  to alpha, sgain is always set to       */
/*  gain / (1.0 - fabs(alpha)).            */
/*******************************************/
void OneZero_init(OneZero *onezero)	//N.B. when no changes happen it's a simple LP
{									//with a zero in -1
  onezero->gain = 1.0;
  onezero->zeroCoeff = 1.0; //zero = -1
  onezero->sgain = 0.5;
  onezero->lastOutput = 0.;
  onezero->input = 0.;
}

//non utilizzata
void OneZero_setGain(OneZero *onezero, double aValue)	//Receives gain value
{
  onezero->gain = aValue;
  if (onezero->zeroCoeff > 0.0)    // Normalize gain to 1.0 max		//Computes 'sgain' so that gain is = 'gain' (...)
    onezero->sgain = onezero->gain / (1.0 + onezero->zeroCoeff);
  else
    onezero->sgain = onezero->gain / (1.0 - onezero->zeroCoeff);
}

//non utilizzata
void OneZero_setCoeff(OneZero *onezero, double aValue)	//Receives the coeff. value (N.B. needs '-zero' !)
{
  onezero->zeroCoeff = aValue;
  if (onezero->zeroCoeff > 0.0)     // Normalize gain to 1.0 max	//Computes 'sgain' so that gain is = 'gain' (...)
    onezero->sgain = onezero->gain / (1.0 + onezero->zeroCoeff);
  else
    onezero->sgain = onezero->gain / (1.0 - onezero->zeroCoeff);
}

double OneZero_tick(OneZero *onezero, double sample) // Perform Filter Operation
{													 //'sample' is the input sample
  double temp;

  temp = onezero->sgain * sample;	//temp = sgain * x(n)	
  onezero->lastOutput = (onezero->input * onezero->zeroCoeff) + temp;	//y(n) = (-zero) * (sgain * x(n-1)) + sgain * x(n) = sgain [x(n) - zero * x(n-1)]
  onezero->input = temp;	//input = sgain * x(n-1) = sgain * x(n)		//Y(z) = sgain * (1 + (-zero) * z^-1) * X(z) = 
																		//	   = sgain * ([z + (-zero)]/z) * X(z)
  return onezero->lastOutput;
}

/*******************************************/
/*  AllPass Interpolating Delay Line       */
/*  Object by Perry R. Cook 1995-96.       */
/*  Revised by Gary P. Scavone, 1999.      */
/*                                         */
/*  This one uses a delay line of maximum  */
/*  length specified on creation, and      */
/*  interpolates fractional length using   */
/*  an all-pass filter.  This version is   */
/*  more efficient for computing static    */
/*  length delay lines (alpha and coeff    */
/*  are computed only when the length      */
/*  is set, there probably is a more       */
/*  efficient computational form if alpha  */
/*  is changed often (each sample)).       */
/*                                         */
/*******************************************/
void DLineA_alloc(DLineA *delayLine, long max_length)
{
  	long i;
  	delayLine->length = max_length;
	delayLine->inputs = (double *) calloc(delayLine->length, sizeof(double)); //inputs[0,...,length-1] is a circular buffer
																	
  	if (!delayLine->inputs) {
		error("DlineA: out of memory");
		return;
  	}
	DLineA_clear(delayLine);	//Initializes to 0 the whole buffer
  	delayLine->inPoint = 0;	//Sets the 'in_pointer' at the beginning of the buffer
  	delayLine->outPoint = delayLine->length >> 1;	
}													

void DLineA_free(DLineA *delayLine)
{
	if (delayLine->inputs)
		//freebytes(delayLine->inputs, delayLine->length * sizeof(double));
		free(delayLine->inputs);
}

void DLineA_clear(DLineA *delayLine)
{
  	long i;
  	for (i=0;i<delayLine->length;i++) delayLine->inputs[i] = 0.; //Initializes
  	delayLine->lastIn = 0.;
  	delayLine->lastOutput = 0.;
}

void DLineA_setDelay(DLineA *delayLine, double lag)  //'lag' is the total delay (including the fractional part) = # of delay elements -> we need x(n - lag)
{													 //lag = M + alpha + 1
  double outPointer;

  if (lag > delayLine->length-1) {			// if delay is too big,
    post("DLineA: Delay length too big.\n");
    post("Setting to maximum length of %ld.\n", delayLine->length-1);
    outPointer = delayLine->inPoint + 1.0;	// force delay to max_length // = (in_p - MAX_length + 1)mod(MAX_length)
  }													
  else if (lag < 0.1) { //0.1 = min. (fractional) delay allowed
    post("DLineA: Delays < 0.1 not possible with current structure.\n");	
    post("Setting delay length to 0.1.\n");
    outPointer = delayLine->inPoint + 0.8999999999;
  }	
  else
    outPointer = delayLine->inPoint - lag + 1.0;    // outPointer chases inpoint
													// outPointer = n - M - alpha
  if (outPointer < 0)
    outPointer += delayLine->length;	// modulo table length //circular buffer wrapping

  delayLine->outPoint = (long) outPointer;           			// Integer part of delay
  delayLine->alpha = 1.0 + delayLine->outPoint - outPointer;    // fractional part of delay 
																// alpha = [0 : 1] + fractional_part
  if (delayLine->alpha == 0.) {  // exact integer delay
    delayLine->outPoint -= 1;								
    if (delayLine->outPoint < 0) 
    	delayLine->outPoint += delayLine->length;	// modulo length //circular buffer wrapping
  }

  if (delayLine->alpha < 0.1) {                     // Hack to avoid pole/zero cancellation. Keeps allpass
	delayLine->outPoint += 1;                       //if alpha = ~0 -> pole and zero cancels (alpha = (1 - coeff)/(1 + coeff))
    if (delayLine->outPoint >= delayLine->length)	//-> alpha >= 0.1
		delayLine->outPoint -= delayLine->length;	// modulo table length	//circular buffer wrapping
    delayLine->alpha += 1.0;                   		// delay in range of .1 to 1.1
  }

  delayLine->coeff = (1.0 - delayLine->alpha) /	(1.0 + delayLine->alpha);	// coeff = (1 - alpha)/(1 + alpha)
}																			// coefficient for all pass

double DLineA_tick(DLineA *delayLine, double sample) // Take sample, yield sample
{
  double temp;

  delayLine->inputs[delayLine->inPoint++] = sample;            // Write input sample	//x(n)
  if (delayLine->inPoint == delayLine->length)                 // then increment input pointer
    delayLine->inPoint -= delayLine->length;                   // modulo length

  temp = delayLine->inputs[delayLine->outPoint++];             // filter input
  //N.B. temp = x(n-M) is the DL output before interpolation -> for the AP filter is x(n) i.e. the current input
  if (delayLine->outPoint == delayLine->length)                // then increment output pointer
    delayLine->outPoint -= delayLine->length;                  // modulo length

  //interpolation ops (all-pass filter)																	
  delayLine->lastOutput = -delayLine->coeff * delayLine->lastOutput;      // delayed output		// -coeff * lastOutput = -coeff * x(n-1) = -coeff * x((n-M-alpha)-1)
  delayLine->lastOutput += delayLine->lastIn + (delayLine->coeff * temp); // input + delayed Input	//e.g. x(n) = lastOutput = -coeff * x(n-1) +  x(n-1) + coeff * x(n)
  delayLine->lastIn = temp;	//lastIn -> x(n-1) = x(n)

  return delayLine->lastOutput;                     			// save output and return
}

// **** end of code extracted from the pd version of PeRColate' stk.c **** //
/////////////////////////////////////////////////////////////////////////////




/**
 * Creation of a new instance of the waveguide resonator.
 * Remember that each created instance should later be destroyed correctly by calling destroy_wg_object.
 *
 * \return Pointer to created instance.
 *
 * \todo Success of "new_matrix" should be controlled.
 * \todo Success of DLineA_alloc e OneZero_init should be controlled
 */
t_wg_object *new_wg_object(float samprate)
{
  int i;

  t_wg_object *p_obj = (t_wg_object *) calloc(1, sizeof(t_wg_object));

  p_obj->publ.srate = samprate; //Needed to obtain the length of the DL and the pitch of the string

  //initialize things
  DLineA_alloc(&p_obj->priv.leftDelay, L_LENGTH);
  DLineA_alloc(&p_obj->priv.rightDelay , R_LENGTH);
  OneZero_init(&p_obj->priv.loopFilt); //initialized the LP filter

  p_obj->publ.p_K = new_matrix(2,1); //creates K-matrix (2x1)

  p_obj->publ.strike_pos_save = 0.123456789; //Initial interaction position (whichever value)
  p_obj->publ.length = 0.116; //The following values consider a C6 piano string
  p_obj->publ.mass = 0.00138;
  p_obj->publ.tension = 700.;

  return(p_obj);
}


/**
 * Destruction of an instance of the wg resonator.
 *
 * \return 0, if successful
 *
 * \todo Success of "destroy_matrix" and "freebytes" should be controlled.
 * \todo Success of 'DLineA_free' should be controlled.
 */
int destroy_wg_object(t_wg_object *p_obj /**< Pointer to the wg object */)
{ 
  destroy_matrix(p_obj->publ.p_K);

  DLineA_free(&p_obj->priv.leftDelay);
  DLineA_free(&p_obj->priv.rightDelay);

  //freebytes(p_obj, sizeof(t_wg_object));
  free(p_obj);

  return 0;
}


/**
 * "Internal" update of the state at the interaction point of the wg object, ignoring current input forces 
 * Yields x~(n) and v~(n) -> to be passed to the interactor (K-method)
 */
void start_cycle_wgobj(t_wg_object *p_obj /**< Pointer to the wg object */)
{
	float samprate = p_obj->publ.srate;
	double	v_interact; // = v~
	double	bug_compensation = /*PENTIUM_BUG * (2.*(rand()%2) - 1.)*/0.;	// = randomly +0.0000000001 or -0.0000000001
																	
	//Extraction of the 2 wave variables incoming into the interaction point 
	p_obj->state.vplus_L = p_obj->priv.leftDelay.lastOutput;	//v+_L(n)

	p_obj->state.vplus_R = -OneZero_tick(&p_obj->priv.loopFilt, p_obj->priv.rightDelay.lastOutput * p_obj->priv.loopGain);	//v+_R(n)
	
	v_interact = p_obj->state.vplus_L + p_obj->state.vplus_R; //N.B. for the interactor it's v~(n) = v+_L(n) + v+_R(n)

	p_obj->state.displ += (p_obj->state.velo + v_interact)/(2*samprate);
			// first part of the computation of x(n) = x(n-1) + [v(n-1) + v+_L(n) + v+_R(n)]/(2*Fs)
			// N.B. for the interactor it's x~(n)
	p_obj->state.velo = v_interact;
			// first part of the computation of v(n) = v+_L(n) + v+_R(n)
			// N.B. for the interactor it's v~(n)
	p_obj->state.last_force = bug_compensation;
}


/**
 * Addition of the contribution of an external force applied at the interaction point
 *
 * The sum of all force contributions added up by (possibly repeated) calls of this function
 * is finally applied by calling apply_forces_wgobj().
 *
 * \note This sum is reset to 0 after internal state update in start_cycle_wgobj. //reset to 'bug_compensation'
 *
 */
void add_force_wgobj(t_wg_object *p_obj, /**< Pointer to the wg object */
					 double force /**< Force applied at the interaction point */)
{
	p_obj->state.last_force += force; //Each call adds the contribution of a new force
} 


/**
 * Application of the summed contribution of external forces added up through 'add_force_wgobj' (cfr).
 *
 */
void apply_forces_wgobj(t_wg_object *p_obj /**< Pointer to the wg object */)
{
	double Zxlast_force = p_obj->state.last_force; //Here have been accumulated contact forces and external forces
	float	samprate = p_obj->publ.srate;
	double v_in; //Velocity injected by the exciter (actually computed from the contact force)

	v_in = Zxlast_force/(2 * p_obj->priv.Z);	//v_in(n) = f/2Z

	p_obj->state.displ += /* Zxlast_force/(4*samprate*Z) */ v_in/(2*samprate);	//x(n) = x~(n) + f(n)/(4Z*Fs)
	p_obj->state.velo += /* Zxlast_force/(2*Z) */ v_in;							//v(n) = v~(n) + f(n)/2Z
    	//it finally yields x(n) = x(n-1) + [v(n-1) + v+_L(n) + v+_R(n)]/(2*Fs) + f(n)/(4Z*Fs)
		//              and v(n) = v+_L(n) + v+_R(n) + f(n)/2Z
		//N.B. state at time n

	//Exploits input velocity for computing the new DLs input
	//and starts the computing (tick) of the new DLs output samples for the next cycle
	DLineA_tick(&p_obj->priv.leftDelay, -(p_obj->state.vplus_R + v_in));	// = -[v-_L(n)] = -[v+_R(n) + v_in(n)]
	DLineA_tick(&p_obj->priv.rightDelay, (p_obj->state.vplus_L + v_in));	// = v-_R(n) = v+_L(n) + v_in(n)
	/* corresponds to:
	DLineA_tick(&p_obj->priv.leftDelay, -(p_obj->state.velo - p_obj->state.vplus_L));   
	DLineA_tick(&p_obj->priv.rightDelay, (p_obj->state.velo - p_obj->state.vplus_R));
	*/

#if (defined(_DEBUG_))
	post("wg: Zxlast_force = %.15f", Zxlast_force);
	/*post("wg: new displ = %.15f", p_obj->state.displ);
	post("wg: new output velo = %.15f", p_obj->state.velo);
	post("wg: new leftDelay input velo = %.15f", -(p_obj->state.vplus_R + v_in));
	post("wg: new rightDelay input velo = %.15f", (p_obj->state.vplus_L + v_in));*/
#endif
}


/**
 * Returns the current displacement of the wg object at the interaction point.
 *
 */
double displ_wgobj(t_wg_object *p_obj /**< Pointer to the wg object */)
{
#if (defined(_DEBUG_))
  post("wg: returned displ = %.15f", p_obj->state.displ);
#endif
  return(p_obj->state.displ); //displacement at the interaction point
}


/**
 * Returns the current velocity of the wg object at the interaction point.
 *
 */
double velo_wgobj(t_wg_object *p_obj /**< Pointer to the wg object */)
{
#if (defined(_DEBUG_))
  post("wg: returned velo = %.15f", p_obj->state.velo);
#endif
  return(p_obj->state.velo); //velocity at the interaction point
}
