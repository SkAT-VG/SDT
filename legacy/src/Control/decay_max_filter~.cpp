/** \file circ_max_filter~.cpp
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

#include <flext.h>
 
// check for appropriate flext version
#if !defined(FLEXT_VERSION) || (FLEXT_VERSION < 501)
#error You need at least flext version 0.5.1
#endif

#include "../SDT.h"

#include <math.h>


/* ---------------- decay_max_filter~ ----------------- */

#define external_name "decay_max_filter~\0"


/**** FLEXT-BASED EXTERNAL CLASS DEFINITION ****/
// A flext dsp external ("tilde object") inherits from the class flext_dsp
class decay_max_filter: 
	public flext_dsp	/* N.B. */
{	
	FLEXT_HEADER_S(decay_max_filter, flext_dsp, setup)

	public:
		//TODO con attributi 
		decay_max_filter(int argc, t_atom *argv); //CONSTRUCTOR
		
	protected:
		float samprate;
		float max;
		float step;

		//METHODS PROTOTYPES
		void m_set_step(float step);
		// here we declare the virtual DSP function
		virtual void m_signal(int n, float *const *in, float *const *out);	/* polimorfismo */

	private:
		static void setup(t_classid c);

		// for every registered method a callback has to be declared
		FLEXT_CALLBACK_F(m_set_step)	// callback for method "m_set_step" (with 1 float arg)

}; // end of class declaration for decay_max_filter

FLEXT_NEW_DSP_V("decay_max_filter~", decay_max_filter)


/**** DEFINITIONS ****/

// ---- SETUP ----
void decay_max_filter::setup(t_classid c)
{
// --- set up methods (class scope) ---
	// set up tagged methods for the default inlet (0)
	FLEXT_CADDMETHOD_F(c, 0, "step", m_set_step);  // single float arg
	
	// set up methods for the 2nd inlet
	// no message tag used
	FLEXT_CADDMETHOD(c, 1, m_set_step);  // single float arg recognized automatically
}


// ---- CONSTRUCTOR ----
decay_max_filter::decay_max_filter(int argc, t_atom *argv)
{
	//SDT heading: output to console
    post("%s", DASH_LINE);
    SDT_TEXTHEAD
    
    //external description
    post("   %s: TODO description", external_name);
    post("   Version: %s", SDT_ver_str);
    post("   Author: Matthias Rath");
	post("   flext porting: Stefano Papetti");
    post("%s", DASH_LINE);

	samprate = Samplerate();	//Reads host's sample rate but doesn't follow it
								//-> the external needs to be re-created if sample rate changes during the session
	
	AddInSignal("signal; [step float(");	//1st inlet
	AddInFloat("float: step");	// 1 float in (2nd inlet)
	
	AddOutSignal("signal: filtered signal"); //outlet
	
	//TODO aggiungere controllo
	m_set_step(GetAFloat(argv[0])); //initialize
	
	// We're done constructing:
	post("%s: External initialization completed.", external_name);
}


// ---- FUNCTIONS ----

float maximum(float x, float y)
{
  if (x >= y)
    return(x);
  else
    return(y);
}


// ---- METHOD SPACE ----

void decay_max_filter::m_set_step(float new_step)
{ 
  step = 1./(new_step * samprate);
}

void decay_max_filter::m_signal(int n, float *const *in, float *const *out)
{
	const float * ins = in[0];
	float * outs = out[0];		/* ??? perchè non è const? */
	
	// We are now ready for the main signal loop
	while (n--)
	{
		*outs++ = max = maximum(max - step, *ins++);
	}
}  // end m_signal
