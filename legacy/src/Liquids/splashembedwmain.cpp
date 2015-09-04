/** \file splashembedwmain.cpp
 * flext-based external for Pd and Max implementing the simulation of 
 * an object or drop falling into a quiescent liquid (splash). This version is 
 * based on a bubble model mixed with sampled textures.    
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
#include "SplashSampleObj.h"

#define external_name "splash~\0"

// A flext dsp external ("tilde object") inherits from the class flext_dsp 
class splash: 
    public flext_dsp
{
    
    FLEXT_HEADER(splash, flext_dsp)

    public:
    //constructor
    splash();
    ~splash();
    
    protected:
        // here we declare the virtual DSP function
        void m_bang();  // method for bang
        virtual void m_signal(int n, float *const *in, float *const *out);
    private:    
        BubbleObj* m_bubble; // holds our bubble object
        SplashSampleObj* m_wavsampleobj;

        float m_amp1, m_amp2, m_amp3;
    int headsampleflag, tailsampleflag;

    
        FLEXT_CALLBACK_F(set_slope)
        FLEXT_CALLBACK_F(set_r)
        FLEXT_CALLBACK_F(set_amp1)
        FLEXT_CALLBACK_F(set_amp2)
        FLEXT_CALLBACK_F(set_amp3)

        FLEXT_CALLBACK(m_bang)  // callback for method "m_bang" 

        // Now setParams can get declared and defined here.
        void set_r(float r){
             m_bubble->set_r(r);
        }

        void set_slope(float slope){
             m_bubble->set_slope(slope);
        }
        
        void set_amp1(float amp){
             m_amp1=amp;
            }
        void set_amp2(float amp){
            m_amp2=amp;        
            }
        void set_amp3(float amp){
            m_amp3=amp;        
            }

    
}; // end of class declaration for splash

FLEXT_NEW_DSP("splash~", splash)

splash::splash():
            m_bubble(0), m_wavsampleobj(0) // initialize m_bubble and m_wavsampleobj
    {
        //SDT heading: output to console
        post("%s", DASH_LINE);
        SDT_TEXTHEAD
        
        //external description
        post("   %s: Splash event.", external_name);
        post("   Version: %s", SDT_ver_str);
        post("   Author: Carlo Drioli");
        post("%s", DASH_LINE);

            m_amp1=0.5;
            m_amp2=0.5;
            m_amp3=0.5;
            AddInAnything(); 
            AddInFloat("bubble radius");    // 1 float in
            AddInFloat("bubble pitch-slope");
            AddInFloat("amp1");
            AddInFloat("amp2");
            AddInFloat("amp3");
            AddOutSignal("signal out");          // 1 audio out
            SetupInOut();           
            
            FLEXT_ADDBANG(0,m_bang);
            FLEXT_ADDMETHOD(1,set_r);
            FLEXT_ADDMETHOD(2,set_slope);
            FLEXT_ADDMETHOD(3,set_amp1);
            FLEXT_ADDMETHOD(4,set_amp2);
            FLEXT_ADDMETHOD(5,set_amp3);

            int sr=(int)Samplerate();
            m_bubble= new BubbleObj(sr,10.0,0.4);
			m_wavsampleobj = new SplashSampleObj();
			int headsize = m_wavsampleobj->getheadSize();
			int tailsize = m_wavsampleobj->gettailSize();
            headsampleflag = 1;
			tailsampleflag = 1;                       

            // We're done constructing:
			post("%s: External initialization completed.", external_name);
		} // end of constructor


splash::~splash()
{
if ( m_bubble != NULL )
    delete m_bubble;
if (m_wavsampleobj!= NULL )
    delete m_wavsampleobj;

}

void splash::m_bang()
{   if(headsampleflag)
        m_wavsampleobj->set_headreltriggerInstant(0.1);
    m_bubble->set_reltriggerInstant(0.2);
    if(tailsampleflag)
        m_wavsampleobj->set_tailreltriggerInstant(0.2);

    //post("-- splash~ : bang ---");
}

void splash::m_signal(int n, float *const *in, float *const *out)
{
    //post("-- splash~ : m_signal ---");
    float *outs = out[0];

    for(int j=0;j<n;j++) outs[j]=0.0;
    
    float *singleeventout=new float[n];
	
	m_wavsampleobj->buffertick(n,m_amp1,m_amp3,singleeventout);
	for(int k=0;k<n;k++) outs[k]+=singleeventout[k];

    m_bubble->buffertick(n,singleeventout);
    for(int l=0;l<n;l++) outs[l]+=m_amp2*singleeventout[l];

    delete singleeventout; 

}  // end m_signal
