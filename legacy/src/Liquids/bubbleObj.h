/** \file bubbleObj.h
 * C++ object implementing the simulation of 
 * a radially oscillating bubble under the surface of a liquid volume.
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
 

# ifndef PI
  #define PI 3.14159265358979
# endif  //(PI)

# ifndef TWOPI
#define TWOPI		6.2831853071795864769
# endif  //(TWOPI)


#if !defined(__BubbleObj_h)
#define __BubbleObj_h

//#include "Stdlib.h" //for exit

//#include <iostream.h> 
#include <math.h>
//#include <string.h>
 
#include <stdio.h>
#include <stdlib.h>


class BubbleObj
{
protected:
	double m_r, m_slope, m_env, m_amp;
	double m_t,m_fs;
	int m_state;
	double m_elapsed_time;
	double m_trigger_time;


  public:
	BubbleObj();
	BubbleObj(int In_SampleRate, float r, float slope);
      ~BubbleObj();
	double tick();
      void buffertick(int n, float* outbuffer);
	void Start(); 
	void Start(float r, float slope); 
	void Start(float r, float slope, float env, float amp, int sampleoffset); 
	void Stop(); 
	void SetParams(float r, float slope);
	void set_r(float r);
	void set_slope(float slope);
	void set_reltriggerInstant(double timeinsec);
	int get_state();


};


#endif
