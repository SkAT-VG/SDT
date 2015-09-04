/** \file MeshDyn.cpp
 * C++ object implementing a bidimensional rectilinear
 * Digital Waveguide Mesh for one dynamic sound source.
 *
 * \author Federico Fontana and Stefania Serafin
 * (federico.fontana@uniud.it, sts@media.aau.dk)
 * Revision and flext porting: Delphine Devallez
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

#include "MeshDyn.h"
#include <math.h>


Mesh :: Mesh()
{
	rate = 22050.;
	length = 100;
	width = 7;
	pos_listener = 5;
	this->clearMesh();
}



Mesh :: ~Mesh()
{	 
}


void Mesh :: clearMesh()
{
  int i, j;
  for(i=0 ; i< NXMAX-1;  i++)
  {
	for(j=0 ; j< NYMAX-1;  j++)
	{
	      IN1[i][j] =  0.  ; 
	      IN2[i][j] =  0.  ;
	      IN3[i][j] =  0.  ;
	      IN4[i][j] =  0.  ;
	      OUT1[i][j] =  0.  ;
	      OUT2[i][j] =  0.  ;
	      OUT3[i][j] =  0. ;
	      OUT4[i][j] =  0.  ;
		  STATE1[i][j] =  0.  ;
	      STATE2[i][j] =  0.  ;
	      STATE3[i][j] =  0. ;
	      STATE4[i][j] =  0.  ;
	      J[i][j] =  0.  ;
	}
  }
}


void Mesh :: setSampRate(float ratio, float samprate){
  rate = samprate * ratio;
}

void Mesh :: setDim(float lenX, float lenY)
{
  length = (int)round(lenX / (sqrt(2)*343/rate));
  width = (int)round(lenY / (sqrt(2)*343/rate));
}

void Mesh :: setPosList(float listPos)
{
	pos_listener = (int)round(listPos / (sqrt(2)*343/rate));
}

void Mesh :: setFilterX(float Xb0, float Xb1, float Xa1)
{
  filterX[0] = Xb0;
  filterX[1] = Xb1;
  filterX[2] = Xa1;
}

void Mesh :: setFilterY(float Yb0, float Yb1, float Ya1)
{
  filterY[0] = Yb0;
  filterY[1] = Yb1;
  filterY[2] = Ya1;
}



float Mesh :: computeSample(float in, float pos)
{
  int xit,y;
  float b0,b1,a1, b0_end,b1_end,a1_end;
  int ximp, yimp;
  float outsamp;
  
  // walls
  b0 = filterY[0]; 
  b1 = filterY[1]; 
  a1 = filterY[2]; 
  
  // ends
  b0_end = filterX[0]; 
  b1_end = filterX[1]; 
  a1_end = filterX[2];
    
	  
	  ximp = pos_listener;
	  yimp = (int)(floor(width/2));
	  
	  IN3[ximp][yimp] = in;
      		  	  
      // ************ SCATTERING PASS (reflections) ***************

      for (y=0; y< width; y++)
	  {
			OUT1[0][y] = b0_end*IN1[0][y] + STATE1[0][y];
			STATE1[0][y] = b1_end*IN1[0][y] - a1_end*OUT1[0][y];
			OUT4[length-1][y] = b0_end*IN4[length-1][y] + STATE4[length-1][y];
			STATE4[length-1][y] = b1_end*IN4[length-1][y] - a1_end*OUT4[length-1][y];
      }

      for (xit=0; xit< length; xit++)
	  {
			OUT2[xit][0] = b0*IN2[xit][0] + STATE2[xit][0] ;
			STATE2[xit][0] = b1*IN2[xit][0] - a1*OUT2[xit][0] ;
			OUT3[xit][width-1] = b0*IN3[xit][width-1] + STATE3[xit][width-1] ;
			STATE3[xit][width-1] = b1*IN3[xit][width-1] - a1*OUT3[xit][width-1] ;
	  }

     
      // ************ SCATTERING PASS (transmission) ***************
	  for (xit=1; xit< length-1; xit++)
	  {
		for (y=1; y< width-1; y++)
		{
				J[xit][y] = .5 * (IN1[xit][y] + IN2[xit][y] +IN3[xit][y] + IN4[xit][y]);
				OUT1[xit][y] = J[xit][y] - IN1[xit][y] ;
				OUT2[xit][y] = J[xit][y] - IN2[xit][y] ;
				OUT3[xit][y] = J[xit][y] - IN3[xit][y] ;
				OUT4[xit][y] = J[xit][y] - IN4[xit][y] ;
		}
      }

      // ************ DELAY PASS ***************
	  for (xit=0; xit< length-1; xit++)
	  {
		for (y=1; y< width-1; y++)
		{
				IN1[xit][y] = OUT4[xit+1][y] ;
				IN4[xit+1][y] = OUT1[xit][y] ;
		}
      }

      for (xit=1; xit< length-1; xit++)
	  {
		for (y=0; y< width-1; y++)
		{
				IN2[xit][y] = OUT3[xit][y+1] ;
				IN3[xit][y+1] = OUT2[xit][y] ;
		}
      }
      
	  outsamp=(floor(pos)+1-pos)*J[(int)(floor(pos))][yimp] + (pos-floor(pos))*J[(int)(floor(pos)+1)][yimp];
	  return outsamp;
}




