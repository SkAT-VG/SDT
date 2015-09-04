/** \file mesh2D_static.cpp
 * flext-based external for Pd and Max  implementing a bidimensional rectilinear
 * Digital Waveguide Mesh for multiple static sound sources.
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
 
// IMPORTANT: enable attribute processing (specify before inclusion of flext headers!)
// #define FLEXT_ATTRIBUTES 1 //TODO

// include flext header
#include <flext.h>

// check for appropriate flext version
#if !defined(FLEXT_VERSION) || (FLEXT_VERSION < 501)
#error You need at least flext version 0.5.1
#endif

#include "../SDT.h"


/* ---------------- mesh2D_static~ ----------------- */
extern "C" {
#include "common.h"
#include "config.h"
#include "samplerate.h"
}

#include <cstdlib> //TODO just for exit()
#include "MeshStat.h"

#define external_name "mesh2D_static~\0"

// A flext dsp external ("tilde object") inherits from the class mesh2D_static
class mesh2D_static:
	public flext_dsp
{
	FLEXT_HEADER(mesh2D_static, flext_dsp)

	public:
		// constructor with variable argument list
		// initial values are set by attributes at creation time (see help file)
		mesh2D_static(int nsources);//CONSTRUCTOR
		~mesh2D_static(); //DESTRUCTOR
			
	protected:
	//FUNCTIONS PROTOTYPES
		float samprate;
		int arg;
			
	//METHODS PROTOTYPES
		// here we declare the virtual DSP function
		virtual void m_signal(int n, float *const *in, float *const *out);	
		
	private:
		Mesh* m_mesh; // holds the mesh object
		SRC_STATE	*src_state;
		SRC_DATA	src_data;
		int			error;
		float m_ratio;
				
		// for every registered method a callback has to be declared
		FLEXT_CALLBACK_F(setSampRate)
		FLEXT_CALLBACK_FF(setDim)
		FLEXT_CALLBACK_V(setPosSources)
        FLEXT_CALLBACK_F(setPosList)
		FLEXT_CALLBACK_FFF(setFilterX)
		FLEXT_CALLBACK_FFF(setFilterY)
		
		// Now setParams can get declared and defined here.
		void setSampRate(float ratio){
			m_mesh->setSampRate(ratio, samprate);
			m_ratio = ratio;
		}
		
		void setDim(float lenX, float lenY){
			m_mesh->setDim(lenX, lenY);
		}
		
		void setPosSources(int argc, t_atom *argv){
			int i;
			float *sourPos = new float[argc];
			for (i=0; i< argc; i++){
				sourPos[i] = GetAFloat(argv[i]);
			}
			m_mesh->setPosSources(sourPos);
			delete(sourPos);
		}
		
		void setPosList(float listPos){
			m_mesh->setPosList(listPos);
		}
		
		void setFilterX(float Xb0, float Xb1, float Xa1){
			m_mesh->setFilterX(Xb0, Xb1, Xa1);
		}
		
		void setFilterY(float Yb0, float Yb1, float Ya1){
			m_mesh->setFilterY(Yb0, Yb1, Ya1);
		}

		
}; // end of class declaration for mesh2D_static
	
	
// instantiate the class
FLEXT_NEW_DSP_1("mesh2D_static~",mesh2D_static,int)


// ---- CONSTRUCTOR ----
mesh2D_static::mesh2D_static(int nsources):
	arg(nsources)
{
	int i;

    //SDT heading: output to console
    post("%s", DASH_LINE);
    SDT_TEXTHEAD
    
    //external description
    post("   %s: Spatialization (2D rectiliner mesh) for multiple static sound sources.", external_name);
    post("   Version: %s", SDT_ver_str);
    post("   Authors: Federico Fontana, Stefania Serafin");
	post("   Revision and flext porting: Delphine Devallez");
    post("%s", DASH_LINE);
	
	samprate = Samplerate();	//Reads host's sample rate but doesn't follow it
								//-> the external needs to be re-created if sample rate changes during the session
	
	// --- define inlets and outlets ---
	for (i=0 ; i<arg ; i++)
	{
		AddInSignal("audio in");
	}
	AddInFloat("Downsampling ratio");
	AddInList("Length and width of the mesh, im meters");
	AddInList("Positions of the sound sources in the tube");
	AddInFloat("Listening position in the tube");
	AddInList("filterX coefficients");
	AddInList("filterY coefficients");
	AddOutSignal("audio out");
	
	FLEXT_ADDMETHOD(arg,setSampRate);
	FLEXT_ADDMETHOD(arg+1,setDim);
	FLEXT_ADDMETHOD(arg+2,setPosSources);
	FLEXT_ADDMETHOD(arg+3,setPosList);
	FLEXT_ADDMETHOD(arg+4,setFilterX);
	FLEXT_ADDMETHOD(arg+5,setFilterY);
		
	m_mesh = new Mesh(arg);
	if ((src_state = src_new(SRC_LINEAR, 1, &error)) == NULL)
	{	post ("\n\nError : src_new() failed : %s.\n\n", src_strerror (error)) ;
		exit (1) ;
		} 
	
	// We're done constructing:
	post("%s: External initialization completed.", external_name);
}// end of constructor


// ---- DESTRUCTOR ----
mesh2D_static::~mesh2D_static()
{
	src_state = src_delete (src_state) ;
	if ( m_mesh != NULL )
		delete m_mesh;
}



// ---- METHOD SPACE ----
void mesh2D_static::m_signal(int n, float *const *in, float *const *out)
{
	int			i,j,k;
	const int	N			= (const int)n;
	float **	ins			= new float* [arg];	// ins holds the signal vectors from the arg inlets
	for (k=0;k<arg;k++){
		ins[k] = in[k];
		}
	float *		outs		= out[0];			// outs holds the signal vector at the one signal outlet we have.
	float *		input		= new float[arg];
	int			bufsize_down = (int)((float)N*m_ratio);
	float **	out_down	= new float* [arg];
	for (k=0;k<arg;k++){
		out_down[k]			= new float[bufsize_down];
		}
	float *		out_comp	= new float[bufsize_down];
	
				
	// downsampling
	for (k=0;k<arg;k++)
	{
		for (i=0,j=0;i<bufsize_down;i++,j+=(int)(1./m_ratio))
		{
			out_down[k][i] = ins[k][j];
		}
	}
	
	
	// compute sample in the mesh	
	for (i=0 ; i<bufsize_down ; i++)
	{
		for (k=0;k<arg;k++)
		{
			input[k] = out_down[k][i];
		}
		out_comp[i] = m_mesh->computeSample(input);
	}
	
		
	
	// upsampling
	src_data.input_frames = bufsize_down ;
	src_data.data_in = out_comp ;
	src_data.src_ratio = (double)(1./m_ratio);
	src_data.data_out = outs ;
	src_data.output_frames = N ;  
	
	if ((error = src_process(src_state, &src_data)))
	{	post("\n\nLine %d : %s\n", src_strerror (error)) ;
		exit (1) ;
	}
		
	delete(out_comp);
	delete(input);
	for (k=0;k<arg;k++)
	{
		delete(out_down[k]);
	}
	delete(out_down);
	delete(ins);
} // end m_signal






















