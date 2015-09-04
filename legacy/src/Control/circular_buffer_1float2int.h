/** \file circular_buffer_1float2int.h
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

#if !defined(_CIRCULAR_BUFFER_1FLOAT2INT_H_)
#define _CIRCULAR_BUFFER_1FLOAT2INT_H_


/**
 * Structure of a buffer
 * Holds parameters to be accessed from outside, internal (private) parameters
 * and the current state of the object.
 */
typedef struct
{
	float fvalue;
	int ivalue1;
	int ivalue2;
} t_peak;

typedef struct
{
	struct _circ_buff_1float2int_publ
	{
		int size; /**< Maximal number of peaks kept in buffer; is set at creation and NOT to be changed explicitly */
	} publ;

	struct _circ_buff_1float2int_priv
	{
		t_peak *p_begin; /**< Pointer to begin of buffer */
		t_peak *p_end; /**< Pointer to last element of buffer */
	} priv;

	struct _circ_buff_1float2int_sta
	{
		int height; /**< Actual height of buffer */
		t_peak *p_phase; /**< Actual pointer to bottom-entry of buffer */
		t_peak *p_top; /**< Actual pointer to top-entry of buffer */
		t_peak *p_second; /**< Actual pointer to the second (from top) entry of buffer */
	} state;
} t_circular_buffer_1float2int;



/* ******************************** */

/**
 * Returns the size of the buffer
 */
static int size_circ_buff_1float2int(t_circular_buffer_1float2int *p_obj)
{
	return (p_obj->publ.size);
}

/**
 * Returns the actual height of the buffer
 */
static int height_circ_buff_1float2int(t_circular_buffer_1float2int *p_obj)
{
	return (p_obj->state.height);
}


/* **************** bottom: **************** */

/**
 * Returns the bottom float value of the buffer
 */
static float bottom_fvalue_circ_buff_1float2int(t_circular_buffer_1float2int *p_obj)
{
	return (p_obj->state.p_phase->fvalue);
}


/**
 * Increments bottom ivalue1 of the buffer and returns that value
 */
static int inc_bottom_ivalue1_circ_buff_1float2int(t_circular_buffer_1float2int *p_obj, int steps)
{
	return(p_obj->state.p_phase->ivalue1 += steps);
}

/**
 * Returns the bottom ivalue1 of the buffer
 */
static int bottom_ivalue1_circ_buff_1float2int(t_circular_buffer_1float2int *p_obj)
{
	return (p_obj->state.p_phase->ivalue1);
}

/**
 * Returns the bottom ivalue2 of the buffer
 */
static int bottom_ivalue2_circ_buff_1float2int(t_circular_buffer_1float2int *p_obj)
{
	return (p_obj->state.p_phase->ivalue2);
}


/* **************** top: **************** */

/**
 * Sets the top ivalue2 of the buffer
 */
static void set_top_ivalue2_circ_buff_1float2int(t_circular_buffer_1float2int *p_obj, int ivalue2)
{
	p_obj->state.p_top->ivalue2 = ivalue2;
}

/**
 * Returns the top fvalue value of the buffer
 */
static float top_fvalue_circ_buff_1float2int(t_circular_buffer_1float2int *p_obj)
{
	return (p_obj->state.p_top->fvalue);
}

/**
 * Returns the top ivalue1 of the buffer
 */
static int top_ivalue1_circ_buff_1float2int(t_circular_buffer_1float2int *p_obj)
{
	return (p_obj->state.p_top->ivalue1);
}


/* **************** second: **************** */

/**
 * Returns the second (from the top) fvalue value of the buffer
 */
static float second_fvalue_circ_buff_1float2int(t_circular_buffer_1float2int *p_obj)
{
	return (p_obj->state.p_second->fvalue);
}

/**
 * Returns the second (from the top) ivalue2 of the buffer
 */
static int second_ivalue2_circ_buff_1float2int(t_circular_buffer_1float2int *p_obj)
{
	return (p_obj->state.p_second->ivalue2);
}



/* ******************************** */

/**
 * Increases the given pointer. Internal helper function, not to be called from outside!.
 */
static void inc_pointer_circ_buff_1float2int(t_circular_buffer_1float2int *p_obj, t_peak **pp_pointer)
{
	if (*pp_pointer == p_obj->priv.p_end)
	{
/*
#if (defined(_DEBUG_))
	      post("circ_buff_1float2int: pointer wraparound.");
#endif 
*/
		*pp_pointer = p_obj->priv.p_begin;
	}
	else
		++(*pp_pointer);
}

/**
 * Decreases the given pointer. Internal helper function, not to be called from outside!.
 */
static void dec_pointer_circ_buff_1float2int(t_circular_buffer_1float2int *p_obj, t_peak **pp_pointer)
{
	if (*pp_pointer == p_obj->priv.p_begin)
    {
#if (defined(_DEBUG_))
		post("circ_buff_1float2int: pointer wraparound.");
#endif
		*pp_pointer = p_obj->priv.p_end;
    }
	else
		--(*pp_pointer);
}


/* ******************************** */

/**
 * Deletes the top entry of the buffer
 *
 * \return Remaining height of the buffer.
 */
static int delete_top_circ_buff_1float2int(t_circular_buffer_1float2int *p_obj)
{
#if (defined(_DEBUG_))
	if (p_obj->state.height == 0)
    {
		return(0);
		post("circ_buff_1float2int: Already empty!");
    }
#endif

	dec_pointer_circ_buff_1float2int(p_obj, &(p_obj->state.p_top));
	dec_pointer_circ_buff_1float2int(p_obj, &(p_obj->state.p_second));

	return (--(p_obj->state.height));
}

/* ******************************** */

/**
 * Adds a new top entry to the buffer
 *
 * \return New height of the buffer.
 */
static int add_top_circ_buff_1float2int(t_circular_buffer_1float2int *p_obj, float fvalue, int ivalue1, int ivalue2)
{
#if (defined(_DEBUG_))
	if (p_obj->state.height == p_obj->publ.size)
    {
		return(p_obj->publ.size);
		post("circ_buff_1float2int: Buffer full!");
    }
#endif

	inc_pointer_circ_buff_1float2int(p_obj, &(p_obj->state.p_top));
	inc_pointer_circ_buff_1float2int(p_obj, &(p_obj->state.p_second));
	p_obj->state.p_top->fvalue = fvalue;
	p_obj->state.p_top->ivalue1 = ivalue1;
	p_obj->state.p_top->ivalue2 = ivalue2;

	return (++(p_obj->state.height));
}


/**
 * Deletes the bottom entry of the buffer
 */
static void delete_bottom_circ_buff_1float2int(t_circular_buffer_1float2int *p_obj)
{
#if (defined(_DEBUG_))
	if (p_obj->state.height == 0)
    {
		post("circ_buff_1float2int: Already empty!");
		exit(1);
    }
#endif

	--(p_obj->state.height);

	inc_pointer_circ_buff_1float2int(p_obj, &(p_obj->state.p_phase));
}



t_circular_buffer_1float2int* new_circ_buff_1float2int(int size);
int destroy_circ_buff_1float2int(t_circular_buffer_1float2int *p_obj);
void clear_circ_buff_1float2int(t_circular_buffer_1float2int *p_obj, float finit, int iinit1, int iinit2);

#endif /* _CIRCULAR_BUFFER_1FLOAT2INT_H_ */
