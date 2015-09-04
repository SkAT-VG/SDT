/** \file matrix_calc.c
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

#include "matrix_calc.h"

t_matrix *new_matrix(int lines, int rows)
{
  t_matrix *p_matrix;
  int i;

  if (!(p_matrix = (t_matrix *) calloc(1, sizeof(t_matrix))))
    {
      post("Something wrong with creation of matrix");
      return(0);
    }

  if ((lines<=0) | (rows<=0))
    {
      post("lines/rows <= 0 ?!!");
      return(0);
    }
  p_matrix->lines = lines;
  p_matrix->rows = rows;
  if (!(p_matrix->p_entry = (double **) calloc(lines, sizeof(double *))))
    post("Error while allocating memory for matrix.");
  for (i=0; i<lines; i++)
    if (!(p_matrix->p_entry[i] = (double *) calloc(rows, sizeof(double))))
      post("Error while allocating memory for matrix.");

  return(p_matrix);
}

int destroy_matrix(t_matrix *p_matrix)
{
  int i;

  for (i=0; i<p_matrix->lines; i++)
    /*freebytes(p_matrix->p_entry[i], p_matrix->rows * sizeof(double));
  freebytes(p_matrix->p_entry, p_matrix->lines * sizeof(double *));
  freebytes(p_matrix, sizeof(t_matrix));*/
	free(p_matrix->p_entry[i]);
  free(p_matrix->p_entry);
  free(p_matrix);

  return(0);
}

int scalarmult_matrix(double f, t_matrix *p_matrix, t_matrix *p_result)
{
  int i, j;

  if ((p_result->lines != p_matrix->lines) |
      (p_result->rows != p_matrix->rows))
    {
      post("dimension of matrices do not fit!");
      return(666);
    }

  for (i=0; i<p_matrix->lines; i++)
    for (j=0; j<p_matrix->rows; j++)
      p_result->p_entry[i][j] = f * p_matrix->p_entry[i][j];

  return(0);
}

int add_matrix(t_matrix *p_matrix1, t_matrix *p_matrix2, t_matrix *p_result)
{
  int i, j;

  if ((p_matrix2->lines != p_matrix1->lines) |
      (p_matrix2->rows != p_matrix1->rows) |
      (p_result->lines != p_matrix1->lines) |
      (p_result->rows != p_matrix1->rows))
    {
      post("dimension of matrices do not fit!");
      return(666);
    }

  for (i=0; i<p_matrix1->lines; i++)
    for (j=0; j<p_matrix1->rows; j++)
      p_result->p_entry[i][j] = p_matrix1->p_entry[i][j] + p_matrix2->p_entry[i][j];

  return(0);
}

int multiply_matrix(t_matrix *p_matrix1, t_matrix *p_matrix2, t_matrix *p_result)
{
  int i, j, k;

  if ((p_matrix1->rows != p_matrix2->lines) | (p_matrix1->lines != p_result->lines) | (p_matrix2->rows != p_result->rows))
    {
      post("dimension of matrices do not fit!");
      return(666);
    }

  for (i=0; i<p_matrix1->lines; i++)
    for (j=0; j<p_matrix2->rows; j++)
      {
		p_result->p_entry[i][j] = 0.;
		for (k=0; k<p_matrix1->rows; k++)
		  p_result->p_entry[i][j] += p_matrix1->p_entry[i][k] * p_matrix2->p_entry[k][j];
      }

  return(0);
}

int transpose_matrix(t_matrix *p_matrix1, t_matrix *p_matrix2)
{
  int i, j;
  double buffer;

  if ((p_matrix1->rows != p_matrix2->lines) | (p_matrix1->lines != p_matrix2->rows))
    {
      post("dimension of matrices do not fit!");
      return(666);
    }

  if (p_matrix1 == p_matrix2)
    {
      for (i=0; i<p_matrix1->lines; i++)
		for (j=i+1; j<p_matrix1->rows; j++)
		{
			buffer = p_matrix1->p_entry[i][j];
			p_matrix1->p_entry[i][j] = p_matrix1->p_entry[j][i];
			p_matrix1->p_entry[j][i] = buffer;
		}
    }
  else
    for (i=0; i<p_matrix1->lines; i++)
      for (j=0; j<p_matrix1->rows; j++)
		p_matrix2->p_entry[j][i] = p_matrix1->p_entry[i][j];

  return(0);
}

int xproduct_matrix(t_matrix *p_matrix1, t_matrix *p_matrix2, t_matrix *p_result)
{
  if ((p_matrix1 == p_result) | (p_matrix2 == p_result))
    {
      post("in-/out-matrix identical!");
      return(666);
    }
  if ((p_matrix1->rows != 1) | (p_matrix1->lines != 3) |
      (p_matrix2->rows != 1) | (p_matrix2->lines != 3) |
      (p_result->rows != 1) | (p_result->lines != 3))
    {
      post("dimension of matrices do not fit!");
      return(666);
    }
  p_result->p_entry[0][0] = p_matrix1->p_entry[2][0] * p_matrix2->p_entry[1][0] - p_matrix1->p_entry[1][0] * p_matrix2->p_entry[2][0];
  p_result->p_entry[1][0] = p_matrix1->p_entry[0][0] * p_matrix2->p_entry[2][0] - p_matrix1->p_entry[2][0] * p_matrix2->p_entry[0][0];
  p_result->p_entry[2][0] = p_matrix1->p_entry[1][0] * p_matrix2->p_entry[0][0] - p_matrix1->p_entry[0][0] * p_matrix2->p_entry[1][0];

  return(0);
}
