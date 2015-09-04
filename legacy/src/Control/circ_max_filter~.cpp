/** \file circ_max_filter~.cpp
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


/* ---------------- circ_max_filter~ ----------------- */

extern "C" {
#include "circular_buffer_1float2int.h"
}

#define RADIUS_OFFSET .99

#define external_name "circ_max_filter~\0"


/**** FLEXT-BASED EXTERNAL CLASS DEFINITION ****/
// A flext dsp external ("tilde object") inherits from the class flext_dsp
class circ_max_filter: 
	public flext_dsp	/* N.B. */
{	
	FLEXT_HEADER(circ_max_filter, flext_dsp)
	// No SETUP here (no methods other than DSP)

	public:
		//TODO con attributi 
		circ_max_filter(int argc, t_atom *argv); //CONSTRUCTOR
		
	protected:
		float samprate;
		t_circular_buffer_1float2int *p_peaks;

		//METHODS PROTOTYPES
		// here we declare the virtual DSP function
		virtual void m_signal(int n, float *const *in, float *const *out);	/* polimorfismo */

}; // end of class declaration for circ_max_filter

FLEXT_NEW_DSP_V("circ_max_filter~", circ_max_filter)


/**** DEFINITIONS ****/

// No SETUP here (no methods other than DSP)

// ---- CONSTRUCTOR ----
circ_max_filter::circ_max_filter(int argc, t_atom *argv)
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
	
	AddInSignal("signal: input");	//1st inlet
	AddInSignal("signal: radius");	//2nd inlet
	AddInSignal("signal: velocity");	//3rd inlet
	
	AddOutSignal("signal: filtered signal"); //outlet
	
	p_peaks = new_circ_buff_1float2int(GetAInt(argv[0]));
	clear_circ_buff_1float2int(p_peaks, 0., 1, 0);
	
	// We're done constructing:
	post("%s: External initialization completed.", external_name);
}

//TODO 
/* static void destroy(t_circ_max_filter *x)
{
  t_circ_max_filter_ctl cspace = x->x_cspace;

  destroy_circ_buff_1float2int(cspace.p_peaks);
} */


// ---- FUNCTIONS ----

static void to_buffer(t_circular_buffer_1float2int *p_peaks, float samprate, 
					float in, float radius_new, float velocity, int range)
{
	float x_d, y_d_, z_d_2, a, x, y, d_x, d_y, radius = radius_new * RADIUS_OFFSET;
	int circrange;

	if (height_circ_buff_1float2int(p_peaks) == 1)
    {
		post("circ_max_filter: Buffer-underrun!");

		add_top_circ_buff_1float2int(p_peaks, in, range, 0);
    }
	else
    {
		x_d =  velocity * range / samprate; /* meters */
		y_d_ = top_fvalue_circ_buff_1float2int(p_peaks) - in; /* input is in meters */
		z_d_2 = x_d*x_d + y_d_*y_d_;
		
		if (z_d_2 <= (4.*radius*radius))
		{
			a = .5*sqrt(4.*radius*radius / z_d_2 - 1.);
			x = a*y_d_ - .5*x_d;
			y = a*x_d + .5*(top_fvalue_circ_buff_1float2int(p_peaks) + in);

			/*
			post("in, top, velocity, x, y: %f, %f, %f, %f, %f", in, top_fvalue_circ_buff_1float2int(p_peaks), velocity, x, y);
			*/

			d_x = x_d + velocity * top_ivalue1_circ_buff_1float2int(p_peaks) / samprate + x;
			d_y = y - second_fvalue_circ_buff_1float2int(p_peaks);

			if ((d_x*d_x + d_y*d_y) <= (radius*radius))
			{
				range += top_ivalue1_circ_buff_1float2int(p_peaks);
				delete_top_circ_buff_1float2int(p_peaks);

				to_buffer(p_peaks, samprate, in, radius_new, velocity, range);
			}
			else if (height_circ_buff_1float2int(p_peaks) < size_circ_buff_1float2int(p_peaks))
			{
				circrange = (int)floor((double)(samprate/velocity*x)) + range;
				set_top_ivalue2_circ_buff_1float2int(p_peaks, -1*circrange);
				add_top_circ_buff_1float2int(p_peaks, in, range, 0);
			}
			else
				post("circ_buffer_1float2int: Overrun!");
		}
		else
		{
			post("circ_max_filter~: signal-jumps bigger than radius!");
			if (height_circ_buff_1float2int(p_peaks) < size_circ_buff_1float2int(p_peaks))
			{
				set_top_ivalue2_circ_buff_1float2int(p_peaks, 0);
				add_top_circ_buff_1float2int(p_peaks, in, range, 0);
			}
			else
				post("circ_buffer_1float2int: Overrun!");
		}
    }
}

static float up_circle(float x, float radius)
{
	float x_2 = x*x, radius_2 = radius*radius;

	if (x_2 >= radius_2)
    {
#if (defined(_DEBUG_))
		post("circ_max_filter~: radius exception.");
#endif
		return(0.);
    }
	else
		return(sqrt(radius_2 - x_2));
}


// ---- METHOD SPACE ----

void circ_max_filter::m_signal(int n, float *const *in, float *const *out)
{
	const float * ins0 = in[0];
	const float * ins1 = in[1];
	const float * ins2 = in[2];
	float * outs = out[0];

	float input, radius, velocity;
	int range;

	while (n--)
    {
		input = *ins0++;
		radius = *ins1++;
		velocity = *ins2++;

	    inc_bottom_ivalue1_circ_buff_1float2int(p_peaks, -1);

	    while ((range = bottom_ivalue1_circ_buff_1float2int(p_peaks)) < bottom_ivalue2_circ_buff_1float2int(p_peaks))
		{
			delete_bottom_circ_buff_1float2int(p_peaks);
			inc_bottom_ivalue1_circ_buff_1float2int(p_peaks, range);
		}

	    *outs++ = up_circle(velocity * range / samprate, radius) + bottom_fvalue_circ_buff_1float2int(p_peaks);

	    to_buffer(p_peaks, samprate, input, radius, velocity, 1);
	}//end while loop
}// end m_signal
