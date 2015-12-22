SOUND DESIGN TOOLKIT: INSTALLATION INSTRUCTIONS
===============================================

MAC OS X
--------

### COMPILING FROM SOURCE

In a terminal, type the following commands:

	cd build/macosx
	make clean
	make
	make install DSTDIR=<installation_path>
	
To clean the source directories after compilation:

	make clean
	
To uninstall:

	make uninstall DSTDIR=<installation_path>
	

WINDOWS
-------

### COMPILING FROM SOURCE

To compile the Sound Design Toolkit under Windows, you need
a distribution of the GNU C Compiler and a UNIX style shell,
as provided in MinGW + MSYS (http://www.mingw.org, recommended)
or Cygwin (http://www.cygwin.com).

In your UNIX shell, type the following commands:

	cd build/macosx
	make clean
	make
	make install DSTDIR=<installation_path>
	
To clean the source directories after compilation:

	make clean
	
To uninstall:

	make uninstall DSTDIR=<installation_path>

