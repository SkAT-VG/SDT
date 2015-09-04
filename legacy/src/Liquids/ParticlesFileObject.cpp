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

#include "ParticlesFileObject.h"


ParticlesFileObject::ParticlesFileObject()
{
	m_OutFileFlag=0;
	m_InFileFlag=0;
	m_n_frames=0;
	m_frameIndex=0.0f;
}


ParticlesFileObject::~ParticlesFileObject()
{
	if(m_OutFileFlag==1)
	{
		fseek(m_cpufile,0,SEEK_SET);
		if(fseek(m_cpufile, 0, SEEK_SET) != 0 ) 
		{
			//Message_SevereError("Cannot fseek on cpu file");
			//return E_FAIL;
			exit(-1);
		}
		else
			fwrite(&m_n_frames,sizeof(long),1,m_cpufile);
	
		fclose(m_cpufile);
	}

	//ricorda di deallocare le strutture dei frame
	if(m_PartStructFrames != NULL){
		for (int cntf=0;cntf<m_n_frames;cntf++)						// for each frame...
		{
			delete[] m_PartStructFrames[cntf].px;
			delete[] m_PartStructFrames[cntf].py;
			delete[] m_PartStructFrames[cntf].pz;
			delete[] m_PartStructFrames[cntf].vx;
			delete[] m_PartStructFrames[cntf].vy;
			delete[] m_PartStructFrames[cntf].vz;
			delete[] m_PartStructFrames[cntf].ax;
			delete[] m_PartStructFrames[cntf].ay;
			delete[] m_PartStructFrames[cntf].az;
			delete[] m_PartStructFrames[cntf].dens;
			delete[] m_PartStructFrames[cntf].press;
			delete[] m_PartStructFrames[cntf].mass;
			delete[] m_PartStructFrames[cntf].coll;

			delete[] m_PartStructFrames[cntf].neighb_listsize;
			delete[] m_PartStructFrames[cntf].neighb_index;
			delete[] m_PartStructFrames[cntf].neighb_sqdist;

			for (int cntpart=0;cntpart<m_n_particles;cntpart++){
				delete[] m_PartStructFrames[cntf].neighb_index[cntpart];
				delete[] m_PartStructFrames[cntf].neighb_sqdist[cntpart];
			}	
		}
		delete[] m_PartStructFrames;
	}

/*
	delete[] xFreq;
	delete[] NewxFreq;
	delete WindowLobeObj;
	delete[] fWin;
	delete[] WinFreq;
	delete[] Freqs;
	delete[] Amps;
	delete[] Phases;
	delete[] xTime_windowed;
	delete[] xTime_shift; 
	delete[] xOutTime_windowed;
	delete[] xOutTime_shift; 
	*/

}

int ParticlesFileObject::SetInCpuFile(char* In_CpuFile, short int In_path)
{
	m_InFileFlag=1;

	//int err = path_openfile(In_CpuFile,In_path,m_cpufile,READ_PERM);

	if ((m_cpufile=fopen(In_CpuFile,"rb")) == NULL)
		{
			printf("Could not open file: %s\n", In_CpuFile);
			return -1;
		}
		
		fread(&m_viscosity,sizeof(float),1,m_cpufile);
		fread(&m_smoothlen,sizeof(float),1,m_cpufile);
		fread(&m_timestep,sizeof(float),1,m_cpufile);
		fread(&m_stiff,sizeof(float),1,m_cpufile);
		
		fread(&m_n_particles, sizeof (int), 1, m_cpufile);	
		fread(&m_fluid_start, sizeof (int), 1, m_cpufile);	
		fread(&m_n_fluidp, sizeof (int), 1, m_cpufile);	
		fread(&m_n_frames, sizeof (int), 1, m_cpufile);		
	
		m_PartStructFrames = new Part_Frame[m_n_frames];
		
		for (int cntf=0;cntf<m_n_frames;cntf++)						// Per ogni frame...
		{
			m_PartStructFrames[cntf].px = new float[m_n_particles];
			m_PartStructFrames[cntf].py = new float[m_n_particles];
			m_PartStructFrames[cntf].pz = new float[m_n_particles];
			m_PartStructFrames[cntf].vx = new float[m_n_particles];
			m_PartStructFrames[cntf].vy = new float[m_n_particles];
			m_PartStructFrames[cntf].vz = new float[m_n_particles];
			m_PartStructFrames[cntf].ax = new float[m_n_particles];
			m_PartStructFrames[cntf].ay = new float[m_n_particles];
			m_PartStructFrames[cntf].az = new float[m_n_particles];
			m_PartStructFrames[cntf].dens = new float[m_n_particles];
			m_PartStructFrames[cntf].press = new float[m_n_particles];
			m_PartStructFrames[cntf].mass = new float[m_n_particles];
			m_PartStructFrames[cntf].coll = new float[m_n_particles];

			m_PartStructFrames[cntf].neighb_listsize = new int[m_n_particles];
			m_PartStructFrames[cntf].neighb_index = new int*[m_n_particles];
			m_PartStructFrames[cntf].neighb_sqdist = new float*[m_n_particles];

			for (int cntpart=0;cntpart<m_n_particles;cntpart++){
				fread(&m_PartStructFrames[cntf].px[cntpart], sizeof (float), 1, m_cpufile);
				fread(&m_PartStructFrames[cntf].py[cntpart], sizeof (float), 1, m_cpufile);
				fread(&m_PartStructFrames[cntf].pz[cntpart], sizeof (float), 1, m_cpufile);
				fread(&m_PartStructFrames[cntf].vx[cntpart], sizeof (float), 1, m_cpufile);
				fread(&m_PartStructFrames[cntf].vy[cntpart], sizeof (float), 1, m_cpufile);
				fread(&m_PartStructFrames[cntf].vz[cntpart], sizeof (float), 1, m_cpufile);
				fread(&m_PartStructFrames[cntf].ax[cntpart], sizeof (float), 1, m_cpufile);
				fread(&m_PartStructFrames[cntf].ay[cntpart], sizeof (float), 1, m_cpufile);
				fread(&m_PartStructFrames[cntf].az[cntpart], sizeof (float), 1, m_cpufile);
				fread(&m_PartStructFrames[cntf].dens[cntpart], sizeof (float), 1, m_cpufile);
				fread(&m_PartStructFrames[cntf].press[cntpart], sizeof (float), 1, m_cpufile);
				fread(&m_PartStructFrames[cntf].mass[cntpart], sizeof (float), 1, m_cpufile);
				fread(&m_PartStructFrames[cntf].coll[cntpart], sizeof (float), 1, m_cpufile);

				fread(&m_PartStructFrames[cntf].neighb_listsize[cntpart], sizeof (int), 1, m_cpufile);
				int listsize = m_PartStructFrames[cntf].neighb_listsize[cntpart];
				m_PartStructFrames[cntf].neighb_index[cntpart] = new int[listsize];
				m_PartStructFrames[cntf].neighb_sqdist[cntpart] = new float[listsize];
				for (int cntneighblist=0;cntneighblist<listsize;cntneighblist++){
					fread(&m_PartStructFrames[cntf].neighb_index[cntpart][cntneighblist], sizeof (int), 1, m_cpufile);
					fread(&m_PartStructFrames[cntf].neighb_sqdist[cntpart][cntneighblist], sizeof (float), 1, m_cpufile);
				}	
			}
			//grid infos
			fread(&m_PartStructFrames[cntf].grid_len, sizeof (float), 1, m_cpufile);
			fread(&m_PartStructFrames[cntf].gminx, sizeof (float), 1, m_cpufile);
			fread(&m_PartStructFrames[cntf].gminy, sizeof (float), 1, m_cpufile);
			fread(&m_PartStructFrames[cntf].gminz, sizeof (float), 1, m_cpufile);
			fread(&m_PartStructFrames[cntf].gwidth, sizeof (float), 1, m_cpufile);
			fread(&m_PartStructFrames[cntf].gheight, sizeof (float), 1, m_cpufile);
			fread(&m_PartStructFrames[cntf].gdepth, sizeof (float), 1, m_cpufile);
		} // for	
		
		fclose(m_cpufile);
		
//	xTime_windowed = new float[FFTSize];
//	memset(xTime_windowed, 0, FFTSize * sizeof(float) );

	return 0;
}

void ParticlesFileObject::GiveFrame(int nframe,Part_Frame* pFrame)
{
	*pFrame = m_PartStructFrames[nframe];
}

int ParticlesFileObject::GiveNparticles()
{
	return m_n_particles;
}

int ParticlesFileObject::GiveNframes()
{
	return m_n_frames;
}


void ParticlesFileObject::Start()
{
m_frameIndex=0.0;
}

void ParticlesFileObject::GotoEnd()
{
m_frameIndex=(float)(m_n_frames-1);
}
