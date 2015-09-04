-------------------------------------------------------------------------------
Sound Design Toolkit (SDT)

Developed with the contribution of the following EU-projects:
2001-2003 'SOb' http://www.soundobject.org/
2006-2009 'CLOSED' http://closed.ircam.fr
2008-2011 'NIW' http://www.niwproject.eu/

See the included file AUTHORS.txt for a comprehensive list of authors.

Contacts: 
stefano.papetti@zhdk.ch
stefano.dellemonache@gmail.com
-------------------------------------------------------------------------------

BUILD and INSTALL INSTRUCTIONS

===============================================================================
BUILD

In order to compile the SDT externals for Pd and Max, it is first necessary to 
install flext (download instructions can be found here: 
http://puredata.info/Members/thomas/flext/ Please refer to the files readme.txt
and build.txt in your flext directory for detailed instructions on how to 
install it). In particular, once flext has been installed, an automatic build 
procedure can be started by invoking the build scripts included with the SDT.

MacOSX and Linux:
-----------------
The shell script 'build_SDT.sh' (courtesy of flext's author Thomas Grill) allows 
to compile all the externals with one single command. 
First it is necessary to edit the file and modify the definition of FLEXTPATH
according to the location of your flext installation.
Now you are ready to build the SDT externals: open a terminal session, get 
inside the SDT 'src/' directory and type:

	sh build_SDT.sh SYSTEM
	
where SYSTEM is either the string 'max' or 'pd'.

Windows:
-----------------
The batch file 'build_SDT.bat' allows to compile all the externals with one 
single command. 
First it is necessary to edit the file and modify the definition of FLEXTPATH
according to the the location of your flext installation.
Now you are ready to build the SDT externals: open a command prompt window 
(e.g., if using MS Visual Studio, then open its command prompt), get inside 
the SDT 'src/' directory and type:
	
	build_SDT.bat SYSTEM COMPILER
	
where SYSTEM is either the string 'max' or 'pd', and COMPILER is either 
'msvc' (for Visual Studio), 'cygwin' or 'mingw' (currently, support for the 
last two compilers is broken).

-----------------
Once the build procedure has ended, you'll find the compiled externals inside 
the directory named 'SYSTEM-COMPILER/' (where COMPILER is always 'gcc' under 
MacOSX and Linux).

-----------------
NOTICE 1: the external [particles_sim~] only works in Max. Therefore, you won't
be able to compile it for Pd.

NOTICE 2: at the time of writing, under Windows the current version of 
[mesh2D_static~] and [mesh2D_dynamic~] can be built only with gcc (cygwin or 
mingw).


===============================================================================
INSTALLATION

Using the scripts described above it is also possible to install (copy) the SDT
externals into a particular directory set in the flext config files (located in
your flext installation under 'buildsys/', e.g. for Max under MacOSX the config 
file is named 'config-mac-max-gcc.txt'). By default the installation directory 
is (a subdirectory) inside pd's or Max's predefined externals directory, but 
one can edit the config file and change the path at one's pleasure.

MacOSX and Linux:
-----------------
To install the SDT externals type:
	
	sudo sh build_SDT.sh SYSTEM install
	
where SYSTEM is either the string 'max' or 'pd'.

Windows:
-----------------
To install the SDT externals type:
	
	build_SDT.bat SYSTEM COMPILER install
	
where SYSTEM is either the string 'max' or 'pd', and COMPILER is either 
'msvc' (for Visual Studio), 'cygwin' or 'mingw' (currently, support for the 
last two compilers is broken).


===============================================================================
MORE DETAILS (most probably you can skip these...)

To each external corresponds a .txt file with prefix 'SDT_' which contains 
instructions for flext's own build system.
In flext-based distributions, the default name for this kind of file is 
'package.txt' so that, when invoking the build batch-file, you don't have to 
specify its name. However, since SDT is made up of many externals which often 
share the same source files, we opted for putting all shared sources together, 
providing a file 'SDT_NameOfExternal.txt' for each external. 

Hence, when directly invoking flext's build system (i.e., not using the 
provided automatic procedure described above) it is necessary to append the 
instruction '"PKGINFO=SDT_NameOfExternal.txt"' (including quotation marks) at
the end of the build command.

For example, to build the external [impact_2modalb~] with MS Visual Studio 
under Windows, open Visual Studio's command prompt, get inside the SDT 'src/' 
directory and type:

	path_to_your_flext_installation/build max msvc "PKGINFO=SDT_impact_2modalb~.txt"

Then you'll find the compiled external inside the directory 'max-msvc'.


Stefano Papetti (stefano.papetti@zhdk.ch)
									