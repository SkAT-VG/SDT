/** \file particlesmain.cpp
 * flext-based external for Pd and Max rendering the simulation of a population
 *  of liquid particles.     
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

#if FLEXT_SYS != FLEXT_SYS_MAX
#error This external only works in Max and won't compile for Pd.
#endif

#include "manybubblesObj.h"
#include "ParticlesFileObject.h"

#define external_name "particles_sim~\0"

#define M_MAX_NBUBBLES 300

// A flext dsp external ("tilde object") inherits from the class flext_dsp 
class particles_sim: 
    public flext_dsp
{
    
    FLEXT_HEADER(particles_sim, flext_dsp)

    public:
    //constructor
    particles_sim();
    //particles_sim(char* filename);
    ~particles_sim();
    
    protected:
        void m_bang();  // method for bang
		void set_frpsec(int frpsec);
		void set_downsamplfact(int dsf);
		void set_meanr(double mranr);
        virtual void m_signal(int n, float *const *in, float *const *out);

    private:    
    
        int sr; //sample rate
        int bs; //frame size
		int m_frpsec;
		int audioframecount;
		int framecount;
		int part_downsample;
		bool m_bIsBang;
		//int m_max_nbubbles = 300;
		double m_meanr;
        
		ParticlesFileObject* m_particlesFile;
		ManyBubblesObj* m_bubbles; // holds our bubbles object

        FLEXT_CALLBACK(m_bang)  // callback for method "m_bang" 
		FLEXT_CALLBACK_I(set_frpsec)
		FLEXT_CALLBACK_I(set_downsamplfact)
		FLEXT_CALLBACK_F(set_meanr)

}; // end of class declaration for particles

FLEXT_NEW_DSP("particles_sim~", particles_sim)

particles_sim::particles_sim():
            m_bubbles(0) // initialize m_bubbles
	{
        //SDT heading: output to console
        post("%s", DASH_LINE);
        SDT_TEXTHEAD
        
        //external description
        post("   %s: Population of particles.", external_name);
        post("   Version: %s", SDT_ver_str);
        post("   Author: Carlo Drioli");
        post("%s", DASH_LINE);

            AddInAnything(); 
			AddInInt("frames per second(1-40)");    // 1 int in
			AddInInt("particles downsampling factor (1-20)");    // 1 int in
			AddInFloat("bubbles mean radius");    // 1 float in
            
            AddOutSignal("signal out");          // 1 audio out
			AddOutList("particles position x");  // x-pos list out
			AddOutList("particles position y");  // y-pos list out
			AddOutList("particles position z");  // z-pos list out
            SetupInOut();           
            
            FLEXT_ADDBANG(0,m_bang);
			FLEXT_ADDMETHOD(1,set_frpsec);
			FLEXT_ADDMETHOD(2,set_downsamplfact);
			FLEXT_ADDMETHOD(3,set_meanr);

            sr=(int)Samplerate();
            bs=(int)Blocksize();
			m_frpsec=20; //def video frames per sec. 
			audioframecount=0;
			//post("-- particles~ : blocksize=%i", bs);

			char filename[256];
			short int path;
			long int type = 0L; // some file type you're looking for
			long int outtype;
			open_promptset ("Please provide the location for an sph simulation file (.sph extension) ");
			open_dialog(filename, &path, &outtype, &type, 0);
			path_setdefault(path, 0);

			char filenamefullpath[256];
			path_topathname(path,filename,(char*)&filenamefullpath);
			//post("-- particles~ : filenamefullpath=%s\n", filenamefullpath);
			
													
#if FLEXT_OS == FLEXT_OS_MAC
			char prefix[10]="/Volumes/";
			char* pch;
			pch=strchr(filenamefullpath,':');
			char newfilenamefullpath[256]; 
			strncpy (newfilenamefullpath,prefix,10);
			//post("-- particles~ : pch-filenamefullpath=%i\n", (pch-filenamefullpath));			
			char pch2[pch-filenamefullpath];
			strncpy (pch2,filenamefullpath,pch-filenamefullpath);
			pch2[pch-filenamefullpath]='\0';
			//post("-- particles~ : pch2=%s\n", pch2);
			
			strcat (newfilenamefullpath,pch2);
			strcat (newfilenamefullpath,pch+1);
#else
			char* newfilenamefullpath = filenamefullpath;
#endif

			post("%s: sph file selected: %s\n",external_name,newfilenamefullpath);
			
			framecount = 0;
			m_particlesFile = new ParticlesFileObject();
			if(m_particlesFile->SetInCpuFile(newfilenamefullpath,path)==0){
				post("%s: Number of particles: %i\n",external_name,m_particlesFile->GiveNparticles());
				post("%s: Number of particles simul frames: %i\n", external_name,m_particlesFile->GiveNframes());
			}
			else{
				post("%s: Unable to open particle_sim file!");
			}

			//m_max_nbubbles = 300;

			m_bubbles= new ManyBubblesObj(sr,bs,M_MAX_NBUBBLES);
			m_bubbles->Start();
			m_bubbles->set_bupfr(0.0);
			m_meanr = 10.0;

			m_bIsBang=FALSE;

            
            // We're done constructing:
			post("%s: External initialization completed.", external_name);
            
        } // end of constructor

particles_sim::~particles_sim()
{
if ( m_particlesFile != NULL )
	delete  m_particlesFile;

if ( m_bubbles != NULL )
    delete m_bubbles;
}

void particles_sim::m_bang()
{
    //m_bubbles->OnOffToggle();
    
	//post("-- particles~ : bang ---");
	m_bIsBang = TRUE;
	framecount = 0; //restart
}

void particles_sim::set_frpsec(int frpsec){
             m_frpsec = frpsec;
}

void particles_sim::set_downsamplfact(int dsf){
             part_downsample = dsf;
}

void particles_sim::set_meanr(double meanr){
             m_meanr = meanr;
}

void particles_sim::m_signal(int n, float *const *in, float *const *out)
{
    //post("-- particles_sim~ : m_signal ---");
	int numaudioframespersec = (int)((float)sr/(float)bs);
	int numaudioframespervideoframe = numaudioframespersec/m_frpsec; 
	
	if (audioframecount>=numaudioframespervideoframe){
		audioframecount=0;
		

		//trigger new video frame
		framecount++;
		//post("Framecount: %i\n",framecount);
	
		if(framecount>=m_particlesFile->GiveNframes())
			m_particlesFile->GiveNframes();
		else
		{
			Part_Frame actFrame;
			m_particlesFile->GiveFrame(framecount,&actFrame);

	//1. frame analysis
			float EpsilonV=0.1f;
			float EpsilonA=50.0f;

			int flying_list[M_MAX_NBUBBLES];
			int fl_ind=0;
			int coll_list[M_MAX_NBUBBLES];
			int coll_ind=0;
			for(int i=0; i<m_particlesFile->GiveNparticles();i++)
			{
				if(fabs(actFrame.vz[i])>EpsilonV && fl_ind<M_MAX_NBUBBLES){
					flying_list[fl_ind]=i;
					fl_ind++;
				}
				if(actFrame.az[i]>EpsilonA && coll_ind<M_MAX_NBUBBLES){
					coll_list[coll_ind]=i;
					coll_ind++;
				}
			}

			//post("Frame: %i, coll_ind: %i",framecount,coll_ind);

			//2. bubbles triggering
			m_bubbles->set_bupfr((double)coll_ind/(double)numaudioframespervideoframe);
			m_bubbles->set_r(m_meanr);
			m_bubbles->set_rvar(0.2);
			m_bubbles->set_amp(10.0);
			m_bubbles->set_env(2.0);
	
			//3. create list outputs
			int part_num;
			if(part_downsample>0)
				part_num = m_particlesFile->GiveNparticles()/part_downsample;
			else
				part_num = m_particlesFile->GiveNparticles();

			int scale_fact=(floor)((float)m_particlesFile->GiveNparticles()/(float)part_num);
	
			AtomList m_list1(part_num); 
			AtomList m_list2(part_num); 
			AtomList m_list3(part_num); 
	
			//t_atom item;
			for (int i=0;i<part_num;i++){
				SetFloat(m_list1[i],actFrame.px[i*scale_fact]); //
				SetFloat(m_list2[i],actFrame.py[i*scale_fact]); //
				SetFloat(m_list3[i],actFrame.pz[i*scale_fact]); //
		//m_list.Append(item);
			}
			ToOutList(1,m_list1);
			ToOutList(2,m_list2);
			ToOutList(3,m_list3);
	        //post("Frame: %i, coll_ind: %i",framecount,coll_ind);

			m_list1.Clear();
			m_list2.Clear(); 
			m_list3.Clear(); 
		}
	}
	else{
		audioframecount++;
		/*
		if(audioframecount>50)
			m_bubbles->set_bupfr(0.0);
		*/
	}


    float *outs          = out[0];
    m_bubbles->buffertick(n,outs);
}  // end m_signal
