/** \file bubblestreammain.cpp
 * flext-based external for Pd and Max implementing the simulation of 
 * a population of radially oscillating bubbles.     
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

#include "manybubblesObj.h"

#define external_name "bubblestream~\0"

// A flext dsp external ("tilde object") inherits from the class flext_dsp 
class bubblestream: 
    public flext_dsp
{
    
    FLEXT_HEADER(bubblestream, flext_dsp)

    public:
    //constructor
    bubblestream();
    ~bubblestream();
    
    protected:
        // here we declare the virtual DSP function
        void m_bang();  // method for bang
        virtual void m_signal(int n, float *const *in, float *const *out);
    private:    
    
        int sr; //sample rate
        int bs; //frame size  
        ManyBubblesObj* m_bubbles; // holds our bubbles object
    
        FLEXT_CALLBACK_F(set_rmean)
        FLEXT_CALLBACK_F(set_rvar)
        FLEXT_CALLBACK_F(set_slopemean)
        FLEXT_CALLBACK_F(set_slopevar)
        FLEXT_CALLBACK_F(set_ampvar)
        FLEXT_CALLBACK_F(set_env)
        FLEXT_CALLBACK_F(set_bubps)

        FLEXT_CALLBACK(m_bang)  // callback for method "m_bang" 

        // Now setParams can get declared and defined here.
        
        void set_rmean(double r){
             m_bubbles->set_r(r);
		//post("-- bubblestream~ : set_r to %f", r);
        }

		void set_rvar(double rvar){
             m_bubbles->set_rvar(rvar);
		//post("-- bubblestream~ : set_r to %f", r);
        }
    
        void set_slopemean(double slope){
             m_bubbles->set_slope(slope);
        }

        void set_slopevar(double slopevar){
             m_bubbles->set_slopevar(slopevar);
        }

        void set_ampvar(double ampvar){
             m_bubbles->set_amp(ampvar);
        }
        
        void set_env(double envattack){
             m_bubbles->set_env(envattack);
        }
        
         void set_bubps(int bubps){
             m_bubbles->set_bups(bubps);
        }

}; // end of class declaration for bubblestream

FLEXT_NEW_DSP("bubblestream~", bubblestream)

bubblestream::bubblestream():
            m_bubbles(0) // initialize m_bubbles
    {
        //SDT heading: output to console
        post("%s", DASH_LINE);
        SDT_TEXTHEAD
        
        //external description
        post("   %s: Population of bubbles.", external_name);
        post("   Version: %s", SDT_ver_str);
        post("   Author: Carlo Drioli");
        post("%s", DASH_LINE);

            AddInAnything(); 
            AddInFloat("bubble mean radius");    // 1 float in
            AddInFloat("bubble radius variance");    // 1 float in
            AddInFloat("bubble mean pitch-slope");
     		AddInFloat("bubble pitch-slope variance");
            AddInFloat("bubble amplitude variance");
            AddInFloat("bubble envelope");
            AddInFloat("bubbles per sec");
            
            AddOutSignal("signal out");          // 1 audio out
            SetupInOut();           
            
            FLEXT_ADDBANG(0,m_bang);
            FLEXT_ADDMETHOD(1,set_rmean);
            FLEXT_ADDMETHOD(2,set_rvar);
            FLEXT_ADDMETHOD(3,set_slopemean);
			FLEXT_ADDMETHOD(4,set_slopevar);
            FLEXT_ADDMETHOD(5,set_ampvar);
            FLEXT_ADDMETHOD(6,set_env);
            FLEXT_ADDMETHOD(7,set_bubps);

            sr=(int)Samplerate();
            bs=(int)Blocksize();
			//post("-- bubblestream~ : blocksize=%i", bs);
            m_bubbles= new ManyBubblesObj(sr,bs,100);
            
            // We're done constructing:
			post("%s: External initialization completed.", external_name);
            
        } // end of constructor

bubblestream::~bubblestream()
{
if ( m_bubbles != NULL )
    delete m_bubbles;
}

void bubblestream::m_bang()
{
    m_bubbles->OnOffToggle();
    //post("-- bubblestream~ : bang ---");
}

void bubblestream::m_signal(int n, float *const *in, float *const *out)
{
    //post("-- bubblestream~ : m_signal ---");
    float *outs          = out[0];
    m_bubbles->buffertick(n,outs);
}  // end m_signal
