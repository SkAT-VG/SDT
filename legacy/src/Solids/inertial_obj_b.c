/** \file inertial_obj_b.c
 * Implementation of an inertial mass. This is the special case of a modal 
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

#include "inertial_obj_b.h"

/**
 * Creation of a new instance of the inertial resonator.
 * Remember that each created instance should later be destroyed correctly by calling destroy_inertial_object_b.
 *
 * \return Pointer to created instance if succesful, else NULL.
 *
 * \todo Success of "new_matrix" should be controlled.
 */
t_inertial_object_b *new_inertial_object_b()
{
  t_inertial_object_b *p_obj;

  if (!(p_obj = (t_inertial_object_b *) calloc(1, sizeof(t_inertial_object_b))))
    {
      post("Something wrong with creation of inertial object.");
      return(0);
    }

  p_obj->publ.p_K = new_matrix(2, 1);

  return(p_obj);
}


/**
 * Destruction of a instance of the inertial resonator.
 *
 * \return 0, if successful, else !0.
 *
 * \todo Success of "destroy_matrix" and "freebytes" should be controlled.
 */
int destroy_inertial_object_b(t_inertial_object_b *p_obj)
{
  destroy_matrix(p_obj->publ.p_K);

  //freebytes(p_obj, sizeof(t_inertial_object_b));
  free(p_obj);

  return 0;
}
