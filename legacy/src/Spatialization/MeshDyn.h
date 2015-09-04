/** \file MeshDyn.h
 * C++ object implementing a bidimensional rectilinear
 * Digital Waveguide Mesh for one dynamic sound source.
 *
 * \author Delphine Devallez
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

#if !defined(__MESHDYN_H)
#define __MESHDYN_H_

#include <math.h>

const int NXMAX = 500;
const int NYMAX = 100;


class Mesh
{
public:
    Mesh();
	~Mesh();
	
	// Set the sampling rate in the mesh after downsampling
    void setSampRate(float ratio, float samprate);

    // Set the x and y dimensions of the mesh
    void setDim(float lenX, float lenY);
		
	// Set the listening position in the mesh
	void setPosList(float listPos);
	
	// Set the filters'coefficients
    void setFilterX(float Xb0, float Xb1, float Xa1);
	void setFilterY(float Yb0, float Yb1, float Ya1);	
	
    float computeSample(float in, float pos);


protected:
	void clearMesh();
	
	int length, width, pos_listener;
	float rate;
	float filterX[3];
	float filterY[3];
	float IN1[NXMAX][NYMAX];
	float IN2[NXMAX][NYMAX];
	float IN3[NXMAX][NYMAX];
	float IN4[NXMAX][NYMAX];
	float OUT1[NXMAX][NYMAX];
	float OUT2[NXMAX][NYMAX];
	float OUT3[NXMAX][NYMAX];
	float OUT4[NXMAX][NYMAX];
	float STATE1[NXMAX][NYMAX];
	float STATE2[NXMAX][NYMAX];
	float STATE3[NXMAX][NYMAX];
	float STATE4[NXMAX][NYMAX];
	float J[NXMAX][NYMAX];
};



#endif /* __MESHDYN_H */
