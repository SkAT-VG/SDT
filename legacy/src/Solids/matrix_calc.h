/** \file matrix_calc.h
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

#if !defined(_MATRIX_CALC_H_)
#define _MATRIX_CALC_H_



/**********************************/
typedef struct _matrix
{
  int lines;
  int rows;

  double **p_entry;
} t_matrix;
/**********************************/

static int set_entry_matrix(t_matrix *p_matrix, int line, int row, double value)
{
  if ((line>p_matrix->lines) | (row>p_matrix->rows))
    {
      post("nonexistent entry!");
      return(666);
    }
  p_matrix->p_entry[line][row] = value;

  return(0);
}

static double entry_matrix(t_matrix *p_matrix, int line, int row)
{
  if ((line>=p_matrix->lines) | (row>=p_matrix->rows) | (line<0) | (row<0))
    {
      post("nonexistent entry!");
      return(0.);
    }

  return(p_matrix->p_entry[line][row]);
}

t_matrix *new_matrix(int lines, int rows);
int destroy_matrix(t_matrix *p_matrix);

int scalarmult_matrix(double f, t_matrix *p_matrix, t_matrix *p_result);
int add_matrix(t_matrix *p_matrix1, t_matrix *p_matrix2, t_matrix *p_result);
int multiply_matrix(t_matrix *p_matrix1, t_matrix *p_matrix2, t_matrix *p_result);
int transpose_matrix(t_matrix *p_matrix1, t_matrix *p_matrix2);
int xproduct_matrix(t_matrix *p_matrix1, t_matrix *p_matrix2, t_matrix *p_result);

#endif /* _MATRIX_CALC_H_ */
