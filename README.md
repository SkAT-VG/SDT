SOUND DESIGN TOOLKIT: INSTALLATION INSTRUCTIONS
===============================================

MAC OS X
--------

### COMPILING FROM SOURCE

In a terminal, type the following commands:

	cd build/macosx
	make
	make install

By default, the Sound Design Toolkit is installed as a Max package in:

/Applications/Max 6.1/packages/SoundDesignToolkit

If you want to install in another directory, you can do so by appending
DSTDIR=<path> to the install command. For example, to install just for the
current user:

	cd build/macosx
	make
	make install DSTDIR=~/Documents/Max/packages
	
To clean the source directories after compilation:

	make clean
	
To uninstall:

	make uninstall
	
If you installed to a custom location, remember to give the correct
paths to the uninstall command. For the previous example:

	make uninstall DSTDIR=~/Documents/Max/packages

WINDOWS
-------

### COMPILING FROM SOURCE

To compile the Sound Design Toolkit under Windows, you need
a distribution of the GNU C Compiler and a UNIX style shell,
as provided in MinGW + MSYS (http://www.mingw.org, recommended)
or Cygwin (http://www.cygwin.com).

In your UNIX shell, type the following commands:

	cd build/windows
	make
	make install

Then copy the resulting SoundDesignToolkit folder into the
packages section of your Max installation.

