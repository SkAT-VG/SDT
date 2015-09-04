/** \file circular_buffer_1float2int.c
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

#include "circular_buffer_1float2int.h"

/**
 * Creation of a new instance of the circular buffer object.
 * Remember that each created instance should later be destroyed correctly by calling destroy_circ_buff.
 *
 * \return Pointer to created instance.
 *
 * \todo
 */
t_circular_buffer_1float2int* new_circ_buff_1float2int(int size)
{
	t_circular_buffer_1float2int *p_obj;
	int i;

	if (size <= 2)
	{
		post("circular_buffer_object: Size <= 2!?!");
		return ((void *)0);	//era NULL.  per evitare di includere stdlib.h ho sostituito il valore corrispondente
	}

	if (!(p_obj = (t_circular_buffer_1float2int *) calloc(1, sizeof(t_circular_buffer_1float2int))))
		return ((void *)0);	//era NULL. per evitare di includere stdlib.h ho sostituito il valore corrispondente

	p_obj->publ.size = size;

	p_obj->state.p_phase = p_obj->priv.p_begin = (t_peak *) calloc(size, sizeof(t_peak));
 
	/* p_obj->state.p_bottom2 = p_obj->priv.p_begin + 1; */
	p_obj->state.p_top = p_obj->priv.p_end = p_obj->priv.p_begin + (size-1);
	p_obj->state.p_second= p_obj->priv.p_begin + (size-2);

	post("circular_buffer_1float2int: Object created of size %d.", size_circ_buff_1float2int(p_obj));

	return (p_obj);
}

/**
 * Destruction of an instance of the circular buffer object.
 *
 * \return 0, if successful, else !0.
 *
 * \todo Success of "freebytes" should be controlled.
 */
int destroy_circ_buff_1float2int(t_circular_buffer_1float2int *p_obj)
{
	freebytes(p_obj->priv.p_begin, p_obj->publ.size * sizeof(t_peak));

	freebytes(p_obj, sizeof(t_circular_buffer_1float2int));

	return (0);
}

/**
 * Fill whole buffer with init values.
 *
 * \todo
 */
void clear_circ_buff_1float2int(t_circular_buffer_1float2int *p_obj, float finit, int iinit1, int iinit2)
{
	int i;
	t_peak *p_pos = p_obj->priv.p_begin;

	for (i=0; i<p_obj->publ.size; i++)
	{
		p_pos->fvalue = finit;
		p_pos->ivalue1 = iinit1;
		p_pos->ivalue2 = iinit2;
		++p_pos;
	}

	p_obj->state.height = p_obj->publ.size;
	p_obj->state.p_phase = p_obj->priv.p_begin;
	/*  p_obj->state.p_bottom2 = p_obj->priv.p_begin + 1; */
	p_obj->state.p_top = p_obj->priv.p_end;
	p_obj->state.p_second= p_obj->priv.p_begin + (p_obj->publ.size-2);
}
