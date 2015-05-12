SOUND DESIGN TOOLKIT: INSTALLATION INSTRUCTIONS
===============================================

MAC OS X
--------

### COMPILING FROM SOURCE

In a terminal, type the following commands:

	cd build/macosx
	make
	make install

By default, the SDT framework is installed in ~/Library/Frameworks
and the Max externals/patches in ~/Library/SoundDesignToolkit/Max6.
If you want to install in another directory rather than in your home,
you can do so by appending PREFIX=<path> to the install command.
Similarly, if you want to change the location of externals and patches,
append SDTPATH=<path> to the install command.

For example, to install the framework in /Library/Frameworks and the
rest of the SDT under /Applications/SDT, type the following commands:

	cd build/macosx
	make
	make install PREFIX= SDTPATH=Applications/SDT
	
To clean the source directories after compilation:

	make clean
	
To uninstall:

	make uninstall
	
If you installed to a custom location, remember to give the correct
paths to the uninstall command. For the previous example:

	make uninstall PREFIX= SDTPATH=Applications/SDT

WINDOWS
-------

### COMPILING FROM SOURCE

To compile the Sound Design Toolkit under Windows, you need
a distribution of the GNU C Compiler and a UNIX style shell,
as provided in MinGW + MSYS (http://www.mingw.org) or Cygwin
(http://www.cygwin.com).

In your UNIX shell, type the following commands:

	cd build/windows
	make
	make install

For options and other commands, please refer to the Mac OS X section.