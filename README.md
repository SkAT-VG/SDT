# SOUND DESIGN TOOLKIT (SDT)


## Overview
The **Sound Design Toolkit** (**SDT**) is an open-source (GPLv3) framework for
ecologically-founded sound synthesis and design. Think of it as a virtual
Foley-box!
It can simulate various acoustic phenomena arising from solid interactions
(e.g., impacts, frictions), liquids (e.g., bubbles, splashes), gasses (e.g.,
explosions, blowing wind), and machines (e.g., combustion engines, DC motors).
The library consists of sound synthesis models, audio processing algorithms and
analysis routines.

The SDT is mainly aimed at research and education in *Sonic Interaction Design*
(SID), but it's been successfully used in musical contexts as well.

The SDT sound synthesis algorithms have been implemented according to three main
points:
1. auditory perceptual relevance;
2. cartoonification, i.e. simplification and exaggeration of the underlying
physics in order to increase both computational efficiency and perceptual
clarity;
3. parametric temporal control, which ensures appropriate, natural and
expressive articulations of sonic processes.


## Documentation
API documentation can be found online here:

https://skat-vg.github.io/SDT/


## Implementation
The core library (framework and API) is implemented in the C language, making it
suitable for developing interactive media such as games, audio and VR
applications.

In addition, the SDT algorithms are made available as ready-to-go externals and
patches for **Pure Data** and **Cycling '74 Max**. In particular a *package* is
provided for Max which offers an advanced front-end GUI, as well as examples
with presets and tutorials.


## Installation

### Max package
To install the provided Max *package* please refer to the `ReadMe.md` file in
the `MaxPackage` folder.

### Precompiled binaries
Precompiled binaries for Pure Data (Pd) on Mac OS, Windows and Linux, and Max on
Mac OS and Windows are available as release assets of this repository:

https://github.com/SkAT-VG/SDT/releases

Unpack the release .zip file, and copy the branch for your operating system and
target platform into the desired destination folder.

### Compiling from source code
Users may build Pd and Max externals (and the SDT Apple framework or the SDT
shared/dynamic library) on their machines. In that case, make sure to pull the
SDT git repository including the submodules under the '3rdparty' directory. If 
your git client doesn't do that automatically, enter the following git command:
```
	git submodule update --init --recursive
```
or check the equivalent option in the git preferences of your GUI client.

#### Mac OS
1. In a terminal, type the following commands to compile the software in all its
flavors (Max package, Pd library, Apple framework):
```
	cd build/macosx
	make
```
2. Install one or more products: The provided scripts will install the desired
product in the given destination ``<path>``, creating a ``SDT`` subfolder:
```
	make install_max DSTDIR=<path>
	make install_pd DSTDIR=<path>
	make install_core DSTDIR=<path>
```
3. To clean the source directories after compilation:
```
	make clean
```

#### Windows
To compile the SDT under Windows, you need a distribution of the GNU C Compiler
and a UNIX style shell, as provided in MinGW + MSYS (http://www.mingw.org,
recommended) or Cygwin (http://www.cygwin.com).

1. Once the compiler is installed, open its shell and issue the following
commands to compile the software in all its flavors (Max package, Pd library,
Shared DLL):
```
        cd build/win32 (or cd build/win64 for the x64 version)
        make
```
2. Install the desired products. The script will install the desired product in
the given destination ``<path>``, creating a ``SDT`` subfolder:
```
	make install_max DSTDIR=<path>
	make install_pd DSTDIR=<path> (only for 32 bit)
	make install_core DSTDIR=<path>
```
3. To clean the source directories after compilation:
```
        make clean
```

#### Linux
1. In a terminal, type the following commands:
```
	cd build/linux
	make
```
2. Install the SDT: By default, the building environment will install a shared
library in ``/usr/lib`` and a collection of PureData externals and patches in
``/usr/lib/pd/extras/SDT``.
Root privileges may be required to access the default install path. If you want
to change the install path, provide a ``PREFIX`` argument:
```       
	make install
	make install PREFIX=<path>
```
3. To clean the source directories after compilation:
```
	make clean
```


## Acknowledgements
The SDT was developed through the years with the contribution of the following
EU-projects:
 - 2001-2003 'SOb' http://www.soundobject.org/
 - 2006-2009 'CLOSED' http://closed.ircam.fr/
 - 2008-2011 'NIW' http://www.niwproject.eu/
 - 2014-2016 'SkAT-VG' http://www.skatvg.eu/


## Contact:
- Stefano Papetti (stefano.papetti@zhdk.ch)
- Stefano Delle Monache (s.dellemonache@tudelft.nl)
- Stefano Baldan (singintime@gmail.com)
