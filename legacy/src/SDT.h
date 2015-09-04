/** \file SDT.h
 * Usefyl shared stuff
 * e.g. SDT version number, headings to appear in Pd or Max consoles, etc.
 *
 * \author Stefano Papetti (stefano.papetti@zhdk.ch)
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

#if !defined(_SDT_H_)
#define _SDT_H_
#endif

//version numbers
#define SDT_ver 062
#define SDT_ver_str "062"

#define SDT_TEXTHEAD \
    post("SDT: 'Sound Design Toolkit'"); \
    post("   Contacts: stefano.dellemonache@gmail.com, stefano.papetti@zhdk.ch"); \
    post("   Distributed under the GNU GPL license (see included GPL.txt)"); \
    post(" "); \
    post("Loaded SDT external:");
//    post("Developed with the contribution of the following EU-projects:"); \
//    post("    2001-2003 'SOb' http://www.soundobject.org/"); \
//    post("    2006-2009 'CLOSED' http://closed.ircam.fr/"); \
//    post("    2008-2011 'NIW' http://www.niwproject.eu/"); \
//    post(""); \
//    post("Authors (programmers and designers):"); \
//    post("    Federico Avanzini, Nicola Bernardini, Gianpaolo Borin, Carlo Drioli"); \
//    post("    Stefano Delle Monache, Delphine Devallez, Federico Fontana,"); \
//    post("    Laura Ottaviani, Stefano Papetti, Pietro Polotti, Matthias Rath,"); \
//    post("    Davide Rocchesso, Stefania Serafin."); \



//headings
#define DASH_LINE "--------------------------------------------------------------------------"

//#define SDT_name "SDT: 'Sound Design Toolkit'"
//
//// #define _SDT_FUND_ //comment this to avoid outputting the lines below
//#define SDT_fund1 "Developed with the contribution of the following EU-projects:"
//#define SDT_fund2 "    2001-2003 'SOb' http://www.soundobject.org/"
//#define SDT_fund3 "    2006-2009 'CLOSED' http://closed.ircam.fr"
//#define SDT_fund4 "    2008-2011 'NIW' http://www.niwproject.eu/"
//
//// #define _SDT_AUTH_ //comment this to avoid outputting the lines below
//#define SDT_auth1 "Authors (programmers and designers):"
//#define SDT_auth2 "    Federico Avanzini, Nicola Bernardini, Gianpaolo Borin, Carlo Drioli"
//#define SDT_auth3 "    Stefano Delle Monache, Delphine Devallez, Federico Fontana,"
//#define SDT_auth4 "    Laura Ottaviani, Stefano Papetti, Pietro Polotti, Matthias Rath,"
//#define SDT_auth5 "    Davide Rocchesso, Stefania Serafin."
//
//#define _SDT_CONT_ //comment this to avoid outputting the lines below
//#define SDT_cont1 "Contacts: stefano.dellemonache@gmail.com, stefano.papetti@zhdk.ch"
//
//#define SDT_lic "Distributed under the GNU GPL license (see included GPL.txt)"
