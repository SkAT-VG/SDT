SOUND DESIGN TOOLKIT: INSTALLATION INSTRUCTIONS
===============================================

PRECOMPILED BINARIES
--------------------

Precompiled binaries are available for Max and PureData, running on Mac OS X and Windows.
Simply download the universal SDT package for from the official website:

http://www.soundobject.org/SDT

then unpack it and copy the branch for your operating system and platform into the desired
destination folder.

COMPILING FROM SOURCE
---------------------

**MAC OS X**

1. In a terminal, type the following commands to compile the software in all its flavors
(Max package, Pd library, Apple framework):

        cd build/macosx
        make

2. Install one or more products. The script will install the desired product in the given
<path>, creating a SDT subfolder:

        make install_max DSTDIR=<path>
        make install_pd DSTDIR=<path>
        make install_core DSTDIR=<path>

3. To clean the source directories after compilation:

        make clean
	
**WINDOWS**

To compile the Sound Design Toolkit under Windows, you need a distribution of the
GNU C Compiler and a UNIX style shell, as provided in MinGW + MSYS 
(http://www.mingw.org, recommended) or Cygwin (http://www.cygwin.com).

1. Once the compilation environment is installed, open its shell and issue the following
commands to compile the software in all its flavors (Max package, Pd library, Shared DLL):

        cd build/win32 (or cd build/win64 for the x64 version)
        make

2. Install the desired products. The script will install the desired product in the given
<path>, creating a SDT subfolder:

        make install_max DSTDIR=<path>
        make install_pd DSTDIR=<path> (only for 32 bit)
        make install_core DSTDIR=<path>

3. To clean the source directories after compilation:

        make clean
	
**LINUX**

1. In a terminal, type the following commands to build the SDT:

        cd build/linux
        make
        
2. Install the SDT. By default, the building environment will install a shared library in
/usr/lib and a collection of PureData externals and patches in /usr/lib/pd/extras/SDT.
Root privileges may be required to access the default install path. If you want to change
the install path, provide a PREFIX argument:
        
        make install
        make install PREFIX=<path>
	
3. To clean the source directories after compilation:

        make clean
