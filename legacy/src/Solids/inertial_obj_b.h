/** \file inertial_obj_b.h
 * Definition of an inertial mass. This is the special case of a modal 
 * resonator with one undamped resonant mode of frequency 0 and an impedance of
 *  "something like 1/inertia"(an exact formulation will follow). 
 * For the general theoretical background of modal synthesis please refer to 
 * Adrien (reference [2] SOb book).
 * The algorithm is achieved through discretization by bilinear transformation:
 * that's what the "_b" in the name stands for.
 *
 * \author Matthias Rath
 * Revision: Stefano Papetti (stefano.papetti@zhdk.ch)
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

#if !defined(_INERTIAL_OBJ_B_H_)
#define _INERTIAL_OBJ_B_H_

#include "solids.h"
#include "matrix_calc.h"

#define MINMASS 1e-3 /**< Minimal allowed mass of the inertial object. */

/**
 * Structure of an inertial resonator object
 * Holds parameters to be accessed from outside, internal (private) parameters
 * and the current state of the object.
 */
typedef struct
{
  /**
   * "Public" attributes, to be set or read from outside
   */
  struct _inertobjb_publ
  {	
    float inertia; /**< Inertia of the object */ //N.B. punctual mass
					//N.B. 1 non damped mode with freq 0 (t_e = infinity)
    t_matrix *p_K; /**< Pointer to the K-matrix of the object */ //1 K-matrix -> 1 interaction point
  } publ; /**< Instance of the substructure */					

  /**
   * Container for parameters of each mode
   */
  struct _inertobjb_priv
  {
    double a12; //see p.144 -> a11, a21, a22 are 0 or 1 (see later)
    double b1;
    double b2;
  } priv; /**< Instance of the substructure */

  /**
   * State variables of a mode
   */
  struct _inertobjb_sta
  {
    double displ; /**< Displacement of point-mass */
    double velo; /**< Velocity of point-mass */

    double last_force; /**< Last force applied to mode */
  } state; /**< Instance of the substructure */
} t_inertial_object_b;



/**
 * Setting of public attributes, i.e. inertia
 *
 * \note Negative masses are suppressed.
 * \note For efficiency this should be declared as inline
 */
static void set_publ_inertobjb(t_inertial_object_b *p_obj, float inertia)
{
  if (inertia < MINMASS)
    {
      inertia = MINMASS;
      post("inertial_obj_b: inertia <= 0 ?!! ...is set to minimum.");
    }

  p_obj->publ.inertia = inertia;
}


/**
 * Returns the inertia of the object
 *
 * \note For efficiency this should be declared as inline
 */
static float inertia_inertobjb(t_inertial_object_b *p_obj)
{
  return(p_obj->publ.inertia);
}


///**	
// * Setting of point-mass displacement
// *
// * \note For efficiency this should be declared as inline
// */
//static void set_displ_inertobjb(t_inertial_object_b *p_obj, double displ)
//{
//  p_obj->state.displ = displ;
//}


///**	
// * Setting of point-mass velocity
// *
// * \note For efficiency this should be declared as inline
// */
//static void set_velo_inertobjb(t_inertial_object_b *p_obj, double velo)
//{
//  p_obj->state.velo = velo;
//}


///**	
// * Setting of point-mass displacement and velocity
// *
// * \note For efficiency this should be declared as inline
// */
//static void set_displvelo_inertobjb(t_inertial_object_b *p_obj, double displ, double velo)
//{
//  p_obj->state.displ = displ;
//  p_obj->state.velo = velo;
//}


/**
 * Setting of object state, i.e. displacement, velocity and the last applied force
 *
 * \note For efficiency this should be declared as inline
 */
static void set_state_inertobjb(t_inertial_object_b *p_obj, double displ, double velo, double last_force)
{
  p_obj->state.displ = displ;
  p_obj->state.velo = velo;
  p_obj->state.last_force = last_force;

#if (defined(_DEBUG_))
	post("inertial_obj_b: set displ = %.15f", displ);
	post("inertial_obj_b: set velo = %.15f", velo);
	post("inertial_obj_b: set last_force = %.15f", last_force);
#endif
}


/**
 * Computation of internal parameters from the public attributes
 *
 * \note For efficiency this should be declared as inline
 */
static void set_privateprops_inertobjb(t_inertial_object_b *p_obj, float samprate /**< Current sample-rate */)
{
  float ss = samprate*samprate;

  p_obj->priv.a12 = 1. / samprate;	//a12 = 1/samprate // freq=0 and t_e=infinity -> delta=samprate² -> a12=samprate/samprate²
  /*
  p_obj->priv.a11 = 1.;	//1 - 0 = 1
  p_obj->priv.a21 = 0.;	//-samprate * 0 = 0
  p_obj->priv.a22 = 1.;	//(2*samprate²/samprate²) - 1 = 1
  */

  p_obj->publ.p_K->p_entry[0][0] = p_obj->priv.b1 = .25 / (ss * p_obj->publ.inertia); // K[0,0] = b1 = 1/(4 * samprate² * m)  see pp.144 and 166
  p_obj->publ.p_K->p_entry[1][0] = p_obj->priv.b2 = .5 / (samprate * p_obj->publ.inertia); // K[1,0] = b2 = (2 * samprate) / (4 * samprate² * m)
//N.B. K-matrix = [b1, b2]

#if (defined(_DEBUG_))
	post("inertial_obj_b: K-matrix set to [0,0]=%.10f, [1,0]=%.10f", entry_matrix(p_obj->publ.p_K, 0, 0), entry_matrix(p_obj->publ.p_K, 1, 0));
#endif
  /*
    post("private props set! a12 = %f.", p_obj->priv.a12);
  */
}


/**
 * "Internal" update of the state of the modal object, ignoring current input force
 *
 */
static void start_cycle_inertobjb(t_inertial_object_b *p_obj)
{
  p_obj->state.displ = p_obj->state.displ + p_obj->priv.a12 * p_obj->state.velo
					   + p_obj->priv.b1 * p_obj->state.last_force; //x(n) = a11 * x(n-1) + a12 * v(n-1) + b1 * y(n-1) = x(n-1) + a12 * v(n-1) + b1 * last_force
  p_obj->state.velo = p_obj->state.velo
					  + p_obj->priv.b2 * p_obj->state.last_force; //v(n) = a21 * x(n-1) + a22 * v(n-1) + b2 * y(n-1) = v(n-1) + b2 * last_force

  p_obj->state.last_force = 0.; //??? there should be 'PENTIUM_BUG'
}


/**
 * Application of an external force
 *
 */
static void apply_force_inertobjb(t_inertial_object_b *p_obj, double force)
{
  p_obj->state.displ += p_obj->priv.b1 * force; //x(n) = x(n) + b1 * force = a11 * x(n-1) + a12 * v(n-1) + b1 * [y(n) - y(n-1)] see p.144
  p_obj->state.velo += p_obj->priv.b2 * force; //v(n) = v(n) + b2 * force = a21 * x(n-1) + a22 * v(n-1) + b2 * [y(n) - y(n-1)] 

  p_obj->state.last_force = force; // last_force = y(n)
}


/**
 * Returns the displacement of the object
 *
 * \note For efficiency this should be declared as inline
 */
static double displ_inertobjb(t_inertial_object_b *p_obj)
{
#if (defined(_DEBUG_))
	post("inertial_obj_b: returned displ = %.15f", p_obj->state.displ);
#endif
  return(p_obj->state.displ);
}


/**
 * Returns the velocity of the object
 *
 * \note For efficiency this should be declared as inline
 */
static double velo_inertobjb(t_inertial_object_b *p_obj)
{
#if (defined(_DEBUG_))
	post("inertial_obj_b: returned velo = %.15f", p_obj->state.velo);
#endif
  return(p_obj->state.velo);
}


///**	
// * Returns displacement and velocity of the object in the special structure (defined in "pd_modules.h" in the TOP directory)
// *
// * \note For efficiency this should be declared as inline
// */
//static t_displ_velo pickup_inertobjb(t_inertial_object_b *p_obj)
//{
//  t_displ_velo w;
//
//  w.displ = p_obj->state.displ;
//  w.velo = p_obj->state.velo;
//
//  return(w);
//}


/**
 * Returns a pointer to the K-matrix of the object
 *
 * \note For efficiency this should be declared as inline
 */
static t_matrix* p_K_inertobjb(t_inertial_object_b *p_obj)
{
  return(p_obj->publ.p_K);
}


/* Prototypes */
t_inertial_object_b *new_inertial_object_b(void);
int destroy_inertial_object_b(t_inertial_object_b *p_obj);

#endif /* !defined(_INERTIAL_OBJ_B_H_) */
