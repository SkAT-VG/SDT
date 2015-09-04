/** \file manybubblesObj.cpp
 * C++ object implementing the simulation of a population of a radially 
 * oscillating bubbles.
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

#include "manybubblesObj.h"

//#include <flext.h> //for debug purposes

#include <stdlib.h>
#include <time.h>
#include <math.h>

ManyBubblesObj::ManyBubblesObj():
	m_availbubbles(0), m_activebubbles(0), m_Bubbles(0)
{

m_fs = 22050.0;
m_numbubbles=100;

m_frcounter=1;
m_dropflag=1;

m_Bubbles=new BubbleObj*[m_numbubbles];
for (int i=0;i<m_numbubbles;i++)
  m_Bubbles[i]=new BubbleObj();

m_availbubbles=new int[m_numbubbles];
for (int i=0;i<m_numbubbles;i++)
	m_availbubbles[i]=i;
m_iavail=m_numbubbles-1;
m_activebubbles=new int[m_numbubbles];
for (int i=0;i<m_numbubbles;i++)
	m_activebubbles[i]=-1;
m_iactive=-1;

}

ManyBubblesObj::ManyBubblesObj(int In_SampleRate, int In_BufferSize, int  numbubbles):
		m_availbubbles(0), m_activebubbles(0), m_Bubbles(0)
{
m_numbubbles=numbubbles;
m_fs=(double)In_SampleRate;
m_framesize=In_BufferSize;

m_frcounter=1;
m_dropflag=1;

m_r=5.0;
m_rvar=0.0;
m_slope=0.9;
m_slopevar=0.0;
m_amp=1.0;
m_env=0.0;
m_bups=0;
m_bupfr = (double)m_bups/(m_fs/(double)m_framesize );

float r, rmin, rmax, slope;
rmin=3.2;
rmax=7.0;
slope=0.9;
m_Bubbles=new BubbleObj*[m_numbubbles];
int fs = (int)m_fs;
for (int i=0;i<m_numbubbles;i++)
{ 
  //r=rmin*pow((rmax/rmin),((float)i/(float)(m_numbubbles-1)));
  r=rmin+(rmax-rmin)*((float)i/(float)(m_numbubbles-1));
  m_Bubbles[i]=new BubbleObj(fs,r,slope);
  //slope+=0.9/m_numbubbles;
}

m_availbubbles=new int[m_numbubbles];
for (int i=0;i<m_numbubbles;i++)
	m_availbubbles[i]=i;
m_iavail=m_numbubbles-1;
m_activebubbles=new int[m_numbubbles];
for (int i=0;i<m_numbubbles;i++)
	m_activebubbles[i]=-1;
m_iactive=-1;

}

ManyBubblesObj::~ManyBubblesObj()
{

if ( m_availbubbles != NULL )
	delete m_availbubbles;
if ( m_activebubbles != NULL )
	delete m_activebubbles;

if(m_Bubbles != NULL )
{
for (int i=0;i<m_numbubbles;i++)
	delete m_Bubbles[i];

delete[] m_Bubbles; 
}


}

void ManyBubblesObj::OnOffToggle()
{
if (m_state==0)
m_state=1;
else
m_state=0;
}

void ManyBubblesObj::Start()
{
m_state=1;
}

void ManyBubblesObj::Stop()
{
m_state=0;
}

double ManyBubblesObj::tick()
{
double out=0.0;

//post("-- manybubblesObj : m_iactive=%i", m_iactive);

for (int i=0;i<=m_iactive;i++)
{
  out+=0.1*m_Bubbles[m_activebubbles[i]]->tick();
}

out=out/(double)(3*m_numbubbles); 

return out;

}

void ManyBubblesObj::buffertick(int n, float* outbuffer)
{
if(m_state==1)
{
	//select trigger instants for bubbles in present frame
	//post("-- manybubblesObj : m_bupfr=%f", m_bupfr);
	if(m_bupfr>=1.0){
		for(int k=0;(k<(int)m_bupfr)&&(m_iavail>=0);k++){
			int bufferoffset=(int)(m_framesize*((double)rand()/(double)RAND_MAX));
			double rdispl=m_rvar*(-1.0+2.0*(double)rand()/(double)RAND_MAX);
			double sldispl= m_slopevar*(-1.0+2.0*(double)rand()/(double)RAND_MAX);
			double ampdispl=0.1*m_amp*(double)rand()/(double)RAND_MAX;
			double totamp = m_amp; // /(double)m_bupfr; // /(double)(m_iavail<m_bupfr?m_iavail:m_bupfr);
			m_Bubbles[m_availbubbles[m_iavail]]->Start((float)(m_r*(1.0+rdispl)),(float)m_slope*(1.0+sldispl),(float)m_env,(float)(totamp-ampdispl),bufferoffset); 
			m_iactive++;
			m_activebubbles[m_iactive]=m_availbubbles[m_iavail];
			m_iavail--;
		}
	}
	else{

		if(m_bupfr*(double)m_frcounter>=1.0){
			m_frcounter=1;
			m_dropflag=1;
		}

		double r=((double)rand()/(double)RAND_MAX);
		if(m_dropflag==1 && r<m_bupfr*(double)m_frcounter && (m_iavail>=0)){
			//post("-- manybubblesObj : r=%f", r);
			//post("-- manybubblesObj : m_bupfr=%f", m_bupfr);
			int bufferoffset=(int)(m_framesize*((double)rand()/(double)RAND_MAX));
			//double r2=-1.0+2.0*((double)rand()/(double)RAND_MAX);
			//m_Bubbles[m_availbubbles[m_iavail]]->Start((float)(m_r*(1.0+0.15*r2)),(float)m_slope,(float)m_env,(float)(m_amp*(1.0+0.30*r2)),bufferoffset);
			double rdispl=m_rvar*(-1.0+2.0*(double)rand()/(double)RAND_MAX);
			double sldispl=m_slopevar*(-1.0+2.0*(double)rand()/(double)RAND_MAX);
			double ampdispl=0.0;//m_amp*(double)rand()/(double)RAND_MAX;
			double totamp = 1.0; // 0.1/(double)m_bupfr; ///(double)(m_iavail<m_bupfr?m_iavail:m_bupfr);
			//double ampdispl=m_amp*(double)rand()/(double)RAND_MAX;
			m_Bubbles[m_availbubbles[m_iavail]]->Start((float)(m_r*(1.0+rdispl)),(float)m_slope*(1.0+sldispl),(float)m_env,(float)(totamp-ampdispl),bufferoffset);
			m_iactive++;
			m_activebubbles[m_iactive]=m_availbubbles[m_iavail];
			m_iavail--;
			m_dropflag=0;
		}
		
		m_frcounter++;

	}

/*

	while(n--)
	{
		*outbuffer++=(float)this->tick();
	}
	*/

	float* tempbuffer = new float[n];
	for(int i=0;i<n;i++)
			tempbuffer[i]=0.0;

	for (int i=0;i<=m_iactive;i++){
		m_Bubbles[m_activebubbles[i]]->buffertick(n,tempbuffer);
	}
	for(int i=0;i<n;i++)
		outbuffer[i]=0.1*tempbuffer[i]/(double)(3*m_numbubbles);; ///(1.0+50.0*(double)(m_iactive));  // /(double)(1+2*m_iactive);       // /(double)(2*m_numbubbles);
	//out=out/(double)(3*m_numbubbles); 
    delete tempbuffer;

	//if bubble has terminated, drop from active list
	for (int i=0;i<=m_iactive;i++){
		if(m_Bubbles[m_activebubbles[i]]->get_state()==0){
			m_iavail++;
			m_availbubbles[m_iavail]=m_activebubbles[i];
			m_activebubbles[i]=-1;
			for(int j=0;j<m_iactive-i;j++){
				m_activebubbles[i+j]=m_activebubbles[i+j+1];
			}
			m_iactive--; 
		}
	}
}
else
while(n--)	
{
	*outbuffer++=(float)0.0;
}

}

void ManyBubblesObj::set_r(double r){
m_r = r;
}

void ManyBubblesObj::set_rvar(double rvar){
m_rvar = rvar;
}

void ManyBubblesObj::set_slope(double slope){
m_slope = slope;
}

void ManyBubblesObj::set_slopevar(double slopevar){
m_slopevar = slopevar;
}

void ManyBubblesObj::set_amp(double amp){
m_amp = amp;
}

void ManyBubblesObj::set_env(double env){
m_env = env;
}

void ManyBubblesObj::set_framesize(int framesize){
m_framesize = framesize;
}

void ManyBubblesObj::set_bups(int bups){
m_bups = bups;

m_bupfr = (double)bups/(m_fs/(double)m_framesize );

}

void ManyBubblesObj::set_bupfr(double bupfr){
m_bupfr = bupfr;

m_bups = (int)(m_bupfr*(m_fs/(double)m_framesize ));
}


