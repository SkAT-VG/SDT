/** \file SDTStructs.c
 * Utility data structures and methods. 
 *
 * \author Stefano Baldan (stefanobaldan@iuav.it)
 *
 * This file is part of the 'Sound Design Toolkit' (SDT)
 * Developed with the contribution of the following EU-projects:
 * 2001-2003 'SOb' http://www.soundobject.org/
 * 2006-2009 'CLOSED' http://closed.ircam.fr/
 * 2008-2011 'NIW' http://www.niwproject.eu/
 * 2014-2017 'SkAT-VG http://www.skatvg.eu/
 *
 * Contacts: 
 * 	stefano.papetti@zhdk.ch
 * 	stefano.dellemonache@gmail.com
 *  stefanobaldan@iuav.it
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
 *  Stefano Baldan (stefanobaldan@iuav.it)
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

#include <math.h>
#include <stdlib.h>
#include <string.h>
#include "SDTCommon.h"
#include "SDTStructs.h"

typedef struct SDTItem {
  char *key;
  void *value;
  struct SDTItem *prev, *next;
} SDTItem;

static SDTItem *SDTItem_new(char *key, void *value) {
  SDTItem *x;
  
  x = (SDTItem *)malloc(sizeof(SDTItem));
  x->key = (char *)malloc(strlen(key) + 1);
  strcpy(x->key, key);
  x->value = value;
  x->prev = NULL;
  x->next = NULL;
  return x;
}

static void SDTItem_free(SDTItem *x) {
  if (x->next) x->next->prev = x->prev;
  if (x->prev) x->prev->next = x->next;
  free(x->key);
  free(x);
}

//-------------------------------------------------------------------------------------//

struct SDTHashmap {
  SDTItem **bins;
  int size;
};

int SDTHashmap_hash(SDTHashmap *x, char *key) {
  unsigned long h;
  int i;
  
  h = 0;
  for (i = 0; i < strlen(key); i++) {
    h = h * 31 + key[i];
  }
  return h % x->size;
}

SDTItem *SDTHashmap_lookup(SDTItem *item, char *key) {
  while (item) {
    if (strcmp(item->key, key) == 0) break;
    item = item->next;
  }
  return item;
}

SDTHashmap *SDTHashmap_new(int size) {
  SDTHashmap *x;
  int i;
  
  x = (SDTHashmap *)malloc(sizeof(SDTHashmap));
  x->bins = (SDTItem **)malloc(size * sizeof(SDTItem *));
  for (i = 0; i < size; i++) {
    x->bins[i] = NULL;
  }
  x->size = size;
  return x;
}

void SDTHashmap_free(SDTHashmap *x) {
  SDTHashmap_clear(x);
  free(x->bins);
  free(x);
}

void *SDTHashmap_get(SDTHashmap *x, char *key) {
  SDTItem *item;
  int i;
  
  i = SDTHashmap_hash(x, key);
  item = SDTHashmap_lookup(x->bins[i], key);
  return item ? item->value : NULL;
}

int SDTHashmap_put(SDTHashmap *x, char *key, void *value) {
  SDTItem *item;
  int i;
  
  i = SDTHashmap_hash(x, key);
  item = SDTHashmap_lookup(x->bins[i], key);
  if (item) return 1;
  item = SDTItem_new(key, value);
  if (x->bins[i]) {
    item->next = x->bins[i];
    x->bins[i]->prev = item;
  }
  x->bins[i] = item;
  return 0;
}

int SDTHashmap_del(SDTHashmap *x, char *key) {
  SDTItem *item;
  int i;
  
  i = SDTHashmap_hash(x, key);
  item = SDTHashmap_lookup(x->bins[i], key);
  if (!item) return 1;
  if (item == x->bins[i]) x->bins[i] = item->next;
  SDTItem_free(item);
  return 0;
}

void SDTHashmap_clear(SDTHashmap *x) {
  SDTItem *item, *next;
  int i;
  
  for (i = 0; i < x->size; i++) {
    item = x->bins[i];
    while (item) {
      next = item->next;
      free(item->key);
      free(item);
      item = next;
    }
    x->bins[i] = NULL;
  }
}
