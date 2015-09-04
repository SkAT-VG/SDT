/** \file bubbleObj.cpp
 * C++ object implementing the simulation of a radially oscillating bubble 
 * under the surface of a liquid volume.
 *
 * \author Carlo Drioli (carlo.drioli@univr.it) 
 * Ref: Kees van den Doel, Physically-based Models for Liquid Sounds, 
 * ACM Transactions on Applied Perception, Vol. 2, No. 4, pp. 534-546, 
 * October 2005
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

#include "bubbleObj.h"
//#include <flext.h> //for debug purposes

BubbleObj::BubbleObj()
{
m_r = 5.0/1000.0;
m_slope = 0.5;
m_env = 0.0; 
m_amp = 1.0;
m_state = 0;
m_t=0.0;
m_fs=44100;
m_elapsed_time=0.0;
m_trigger_time=0.0;
}

BubbleObj::BubbleObj(int In_SampleRate, float r, float slope)
{
m_r = r/1000.0;
m_slope = slope;
m_env = 0.0; 
m_amp = 1.0;
m_state = 0;
m_t=0.0;
m_fs=In_SampleRate;
m_elapsed_time=0.0;
m_trigger_time=0.0;
}

BubbleObj::~BubbleObj()
{
}


void BubbleObj::Start(float r, float slope)
{
m_r = r/1000.0;
m_slope = slope;
m_env = 0.0; 
m_amp = 1.0;
m_state=1;
}

void BubbleObj::Start(float r, float slope, float env, float amp, int sampleoffset)
{
	m_trigger_time = m_elapsed_time+(double)sampleoffset/(double)m_fs;
	
	m_r = r/1000.0;
	m_slope = slope;
	m_env = env; 
	m_amp = amp;
	m_state=1;
}

void BubbleObj::Start()
{
m_state=1;
}

void BubbleObj::Stop()
{
m_state=0;
}

double BubbleObj::tick()
{

m_elapsed_time+=1.0/(double)m_fs;
if((m_elapsed_time<=m_trigger_time)&&(m_elapsed_time>m_trigger_time-1.0/m_fs))
{
 m_state=1;
//post("-- BubbleObj : m_state==1 at m_trigger_time %f\n",m_trigger_time);
}

double f, d, sl, fsl, t, damping, out;

f=3.0/m_r;
d=0.13/m_r+0.0072*pow(m_r,1.5); 
sl=m_slope*d/10.0;

if(m_state==1)
{
	m_t+=1.0/m_fs;
	fsl=f*(1.0+sl*m_t);
	
	//damping=exp(-d*m_t);
	//double kd=pow(10.0,6.0-m_env);
	double k=m_env/10.0;
    //damping=50.0/sqrt(kd)*exp(-d*m_t)*exp(-(1.0/(kd*(m_t+1.0/m_fs))));
	damping=exp(-d*m_t)*exp(-(k/(m_t+1.0/m_fs)));

	double tprime=sqrt(k/d)+1.0/m_fs;
	double norm= exp(-d*tprime)*exp(-k/tprime);
	damping=damping/norm;

	out = m_amp*sin(TWOPI*fsl*m_t)*damping;
        
	if(m_t>=0.1 && damping<1E-3)
	{
		m_t=0.0;
		m_state=0;
	}
}
else
out=0.0;	

return out;

}

void BubbleObj::buffertick(int n, float* outbuffer){
	
	double f, d, sl, fsl, t, damping, out;

	f=3.0/m_r;
	d=0.13/m_r+0.0072*pow(m_r,1.5); 
	sl=m_slope*d/10.0;

	double k=m_env/10.0;
	double damping_i=exp(-d*m_t)*exp(-(k/(m_t+1.0/m_fs)));
	double damping_f=exp(-d*(m_t+(double)n/m_fs))*exp(-(k/((m_t+(double)n/m_fs)+1.0/m_fs)));
    
    double tprime=sqrt(k/d)+1.0/m_fs;
	double norm= exp(-d*tprime)*exp(-k/tprime);
	
	double bufferlen=(double)n;

	while(n--){	
		m_elapsed_time+=1.0/(double)m_fs;		

		if((m_elapsed_time<=m_trigger_time)&&(m_elapsed_time>m_trigger_time-1.0/m_fs)){
			m_state=1;
			//post("-- BubbleObj : m_state==1 at m_trigger_time %f\n",m_trigger_time);
			//post("-- BubbleObj : m_state==1");
		}

		if(m_state==0)
			*outbuffer++=0.0;
		else {
			m_t+=1.0/m_fs;
			fsl=f*(1.0+sl*m_t);

			//damping=exp(-d*m_t)*exp(-(k/(m_t+1.0/m_fs)));
			damping=damping_i+(damping_f-damping_i)*(bufferlen-(double)n)/bufferlen; //linear interpolation
			damping=damping/norm;
		
			//post("-- BubbleObj: damping=%f", damping);

			if(m_t>=0.1 && damping<1E-3){
				m_t=0.0;
				m_state=0;
			}
		
			*outbuffer++ += m_amp*sin(TWOPI*fsl*m_t)*damping;
		}
	}//while
}
	
void BubbleObj::SetParams(float r, float slope)
{
m_r = r/1000.0;
m_slope = slope;
}

void BubbleObj::set_r(float r){
m_r = r/1000.0;
}

void BubbleObj::set_slope(float slope){
m_slope = slope;
}

void BubbleObj::set_reltriggerInstant(double timeinsec){
m_trigger_time = m_elapsed_time+timeinsec;
}

int BubbleObj::get_state(){
	return m_state;
}

