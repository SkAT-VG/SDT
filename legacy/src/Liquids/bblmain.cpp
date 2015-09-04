/** \file bblmain.cpp
 * flext-based external for Pd and Max implementing the simulation of 
 * a radially oscillating bubble under the surface of a liquid volume.
 *
 * \author Carlo Drioli (carlo.drioli@univr.it) 
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

#if !defined(FLEXT_VERSION) || (FLEXT_VERSION < 501)
#error You need at least flext version 0.5.1
#endif

#include "../SDT.h"

#include "bubbleObj.h"

#define external_name "onebubble~\0"

// A flext dsp external ("tilde object") inherits from the class flext_dsp 
class onebubble: 
	public flext_dsp
{
	
	FLEXT_HEADER(onebubble, flext_dsp)

	public:
	//constructor
	onebubble();
        ~onebubble();
	
	protected:
		// here we declare the virtual DSP function
		void m_bang();  // method for bang
		virtual void m_signal(int n, float *const *in, float *const *out);
	private:	
		BubbleObj* m_bubble; // holds our bubble object
        FLEXT_CALLBACK_F(set_slope)
		FLEXT_CALLBACK_F(set_r)
		FLEXT_CALLBACK(m_bang)  // callback for method "m_bang" 

		// Now setParams can get declared and defined here.
		void set_r(float r){
		     m_bubble->set_r(r);
		}
        	void set_slope(float slope){
		     m_bubble->set_slope(slope);
		}

    
}; // end of class declaration for onebubble

FLEXT_NEW_DSP("onebubble~", onebubble)

onebubble::onebubble():
			m_bubble(0) // initialize m_bubble
	{
		//SDT heading: output to console
        post("%s", DASH_LINE);
        SDT_TEXTHEAD

        //external description
        post("   %s: Radially oscillating bubble.", external_name);
        post("   Version: %s", SDT_ver_str);
        post("   Author: Carlo Drioli");
        post("%s", DASH_LINE);

			AddInAnything(); 
			AddInFloat("bubble radius");    // 1 float in
			AddInFloat("bubble pitch-slope");
			AddOutSignal("signal out");  // 1 audio out
			SetupInOut();           
			
			FLEXT_ADDBANG(0,m_bang);
			//FLEXT_ADDMETHOD(1,setParams);
			FLEXT_ADDMETHOD(1,set_r);
			FLEXT_ADDMETHOD(2,set_slope);

			int sr=(int)Samplerate();
			m_bubble= new BubbleObj(sr,5.0,0.5);
			
			// We're done constructing:
			post("%s: External initialization completed.", external_name);

		} // end of constructor

onebubble::~onebubble()
{
if ( m_bubble != NULL )
    delete m_bubble;
}

void onebubble::m_bang()
{
    m_bubble->Start();
    //post("-- onebubble~ : bang ---");
}

void onebubble::m_signal(int n, float *const *in, float *const *out)
{
    //post("-- onebubble~ : m_signal ---");
    
	//float *outs          = out[0];
	//m_bubble->buffertick(n,outs); //BUG: with buffered output, in Max6 a buzzing sound is produced
    
    for(int si = 0; si < n; ++si)
	{
#if (defined(_DEBUG_))
		post("CYCLE # %d:", si);
#endif
        out[0][si] = m_bubble->tick();
	}	//end main for loop 
}  // end m_signal
