/** \file SplashSampleObj.h
 * C++ object storing the wavetables for initial impact and final droplets events
 * occurring in splashing.
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

# ifndef PI
#define PI 3.14159265358979
# endif  //(PI)

# ifndef TWOPI
#define TWOPI		6.2831853071795864769
# endif  //(TWOPI)


#if !defined(__SplashSampleObj_h)
#define __SplashSampleObj_h

//#include "Stdlib.h" //for exit

//#include <iostream.h> 
#include <math.h>
//#include "head.h"

//#include <string.h>
 
#include <stdio.h>
#include <stdlib.h>


class SplashSampleObj
{
protected:
	double m_fs;
	int m_headstate;
	int m_tailstate;
	int m_headsize;
	int m_tailsize;

	double m_elapsed_time;

	double m_headtrigger_time;
	double m_tailtrigger_time;

	double* m_headwavbuffer;
	double* m_tailwavbuffer;

	int m_headfileind;
	int m_tailfileind;


  public:
	SplashSampleObj();
	//SplashSamplObj(int In_SampleRate, char *filename);
    ~SplashSampleObj();
	//int AudioFileOpen(char* filename);
    void buffertick(int n, float amplhead, float ampltail, float* outbuffer);
	void headStart();
	void tailStart();
	void headStop();
	void tailStop();
	void set_headreltriggerInstant(double timeinsec);
	void set_tailreltriggerInstant(double timeinsec);
	int getheadSize();
	int gettailSize();
};


#endif
