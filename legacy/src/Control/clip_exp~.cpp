/** \file clip_exp~.cpp
 * flext-based external for Pd and Max limiting ("clipping") the slope of the 
 * logarithm of an audio-signal. 
 * Exactly: The "expmax" parameter specifies the maximal possible ratio of two
 * signal values at a temporal distance of 1 ms. If the input signal jumps by a
 *  factor exceeding the thus defined allowed ratio of two following samples
 * (up- or downwards) it is clipped accordingly. Note that the output signal 
 * can consequently not change between positive and negative range. It can 
 * though approach and, due to finit bit resolution, reach zero. The output is
*  than "stuck" at 0. A "reset"+float message at the first inlet resets the
* state.
 * So far, no care has been taken to avoid a possible stream of low-precision
 * interrupts for very small signals, a phenomenon known as "pentium-bug".
 *
 * \author Matthias Rath
 * flext porting: Stefano Papetti (stefano.papetti@zhdk.ch)
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

#include <math.h>


/* ---------------- clip_exp~ ----------------- */

#define external_name "clip_exp~\0"


/**** FLEXT-BASED EXTERNAL CLASS DEFINITION ****/
// A flext dsp external ("tilde object") inherits from the class flext_dsp
class clip_exp: 
	public flext_dsp	/* N.B. */
{	
	FLEXT_HEADER_S(clip_exp, flext_dsp, setup)

	public:
		//TODO con attributi 
		clip_exp(int argc, t_atom *argv); //CONSTRUCTOR
		
	protected:
		float samprate;
		
		float minfact;
		float maxfact;
		float last;

		//METHODS PROTOTYPES
		void m_reset_state(float state);
		void m_set_expmax(float expmax);
		
		// here we declare the virtual DSP function
		virtual void m_signal(int n, float *const *in, float *const *out);	/* polimorfismo */

	private:
		static void setup(t_classid c);

		// for every registered method a callback has to be declared
		FLEXT_CALLBACK_F(m_reset_state)	// callback for method with 1 float arg
		FLEXT_CALLBACK_F(m_set_expmax)	// callback for method with 1 float arg

}; // end of class declaration for clip_exp

FLEXT_NEW_DSP_V("clip_exp~", clip_exp)


/**** DEFINITIONS ****/

// ---- SETUP ----
void clip_exp::setup(t_classid c)
{
// --- set up methods (class scope) ---
	// set up tagged methods for the default inlet (0)
	FLEXT_CADDMETHOD_F(c, 0, "expmax", m_set_expmax);  // single float arg
	FLEXT_CADDMETHOD_F(c, 0, "reset", m_reset_state);  // single float arg
	
	// set up methods for the 2nd inlet
	// no message tag used
	FLEXT_CADDMETHOD(c, 1, m_set_expmax);  // single float arg recognized automatically
}


// ---- CONSTRUCTOR ----
clip_exp::clip_exp(int argc, t_atom *argv)
{
	//SDT heading: output to console
    post("%s", DASH_LINE);
    SDT_TEXTHEAD
    
    //external description
    post("   %s: Limits the slope of the logarithm of an audio-signal.", external_name);
    post("   Version: %s", SDT_ver_str);
    post("   Author: Matthias Rath");
	post("   flext porting: Stefano Papetti");
    post("%s", DASH_LINE);
	
	samprate = Samplerate();	//Reads host's sample rate but doesn't follow it
								//-> the external needs to be re-created if sample rate changes during the session
	
	AddInSignal("signal; [reset float(");	//1st inlet
	AddInFloat("float: expmax");	// 1 float in (2nd inlet)
	
	AddOutSignal("signal"); //outlet
	
	//initialize
	last = 1.;
	//TODO aggiungere controllo
	m_set_expmax(GetAFloat(argv[0]));
	
	// We're done constructing:
	post("%s: External initialization completed.", external_name);
}


// ---- METHOD SPACE ----

void clip_exp::m_reset_state(float state)
{
	last = state;
}

void clip_exp::m_set_expmax(float expmax)
{
	if (expmax < 1.)
    {
		maxfact = minfact = 1.;
		post("%s: expmax < 1!!! Forcing to 1.", external_name);
    }
	else
    {
		maxfact = pow(expmax, (float)(1000. / samprate));
		minfact = 1. / maxfact;
    }
}

void clip_exp::m_signal(int n, float *const *in, float *const *out)
{
	const float * ins = in[0];
	float * outs = out[0];		/* ??? perchè non è const? */
	
	float input, ratio;
	
	// We are now ready for the main signal loop
	while (n--)
	{
		input = *ins++;

		if (last != 0.)
		{
			ratio = input / last;
			if (ratio > maxfact)
				last *= maxfact;
			else if (ratio < minfact)
				last *= minfact;
			else
				last = input;
		}

		*outs++ = last;
	}
}  // end m_signal
