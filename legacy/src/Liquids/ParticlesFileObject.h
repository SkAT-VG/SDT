/** \file ParticlesFileObject.cpp
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

#if !defined(__ParticlesFileObject_h)
#define __ParticlesFileObject_h

#include <cstring>
//#include "Afx.h" //for CString
//#include "Stdlib.h" //for exit

//#include <iostream.h> 
#include <math.h>
#include <string.h>
 
#include <stdio.h>
#include <stdlib.h>

struct Part_Frame{
	 float* px;
	 float* py;
	 float* pz;
 	 float* vx;
	 float* vy;
	 float* vz;
	 float* ax;
	 float* ay;
	 float* az;
	 float* dens;
	 float* press;
	 float* mass;
	 float* coll;

	 int listsize;
	 int* nindex;
	 float* listsq;
	  
	 int* neighb_listsize;
	 int**	neighb_index;
	 float** neighb_sqdist;

	 //Neighbors(i,j).listsize=listsize;
	 //Neighbors(i,j).nindex=nindex;
	 //Neighbors(i,j).listsq=listsq;

	 //grid infos
	 float grid_len;
	 float gminx;
     float gminy;
     float gminz;
     float gwidth;
     float gheight;
     float gdepth;
};


class ParticlesFileObject
{
  protected:

	char* InputSanFileName;
	char* OutputSanFileName;

	float m_viscosity;
	float m_smoothlen;
	float m_timestep;
	float m_stiff;

	int m_n_particles;
	int m_fluid_start;
	int m_n_fluidp;
	int m_n_frames;

	float m_frameIndex; //for frame interpolation ?
	
	Part_Frame* m_PartStructFrames;

	int m_OutFileFlag;
	int m_InFileFlag;
	FILE* m_cpufile;

  public:
	ParticlesFileObject();
    ~ParticlesFileObject();
	//int SetInCpuFile(CString In_CpuFile);
	int SetInCpuFile(char* In_CpuFile, short int In_path);
    //int SetOutSinanFile(CString Out_SinanFile);

	/*
	void SinusAn1(float* In_ShortBuffer,float* Out_ShortBufferH,float &Out_pitch, float &Out_Eh, float &Out_En);
	void SinusResyn1(float* Out_ShortBufferH);
	void SinusResyn2(float* Out_ShortBufferH, double m_dTime_control, double m_dPitch_control);
	*/

	void GiveFrame(int nframe,Part_Frame* pFrame);
	int GiveNparticles();
	int GiveNframes();
	void Start();
	void GotoEnd();
};
#endif
