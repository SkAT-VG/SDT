-------------------------------------------------------------------------------
Sound Design Toolkit (SDT) for Max 6

Developed with the contribution of the following EU-projects:
2001-2003 'SOb' http://www.soundobject.org/
2006-2009 'CLOSED' http://closed.ircam.fr
2008-2011 'NIW' http://www.niw.soundobject.org

See the included file AUTHORS.txt for a comprehensive list of authors.

Contacts: 
stefano.papetti@zhdk.ch
stefano.dellemonache@gmail.com
-------------------------------------------------------------------------------

Installation:
	1) In "SDT_externals/" there are 2 zip files respectively containing the externals for mac and 
	win, and a subdirectory "SDT_common_abstractions/" which contains all the common abstractions 
	used in the SDT.
		1A) Copy the whole directory "SDT_externals/" to "Max6/Cycling '74/";
		1B) Get inside the copied directory and delete the zip file which is not for your OS (e.g., 
		delete the win-related file if you are on a mac);
		1C) unzip the compressed file for your OS inside "SDT_externals/";

	2) Copy the directory "SDT_help/" to "Max6/Cycling '74/";
	
	3) Copy the file SDT-objectlist.txt from "SDT_init/" to "Max6/Cycling '74/init/";

	4) Copy the file SDT_overview.maxpat from "SDT_extras/" to "Max6/patches/extras/";

	5) Set your Max search path to "\SDT_patches" (subfolders option activated).

Usage:
	Get inside "SDT_patches/" and open SoundDesignToolkit.maxpat

Note:
	The SDT makes use of a few third party externals, which are listed in the included files 
	credits_3rdparty_mac.txt and credits_3rdparty_win.txt