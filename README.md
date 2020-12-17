[![Build status](https://github.com/SkAT-VG/SDT/workflows/build/badge.svg?branch=develop)](https://github.com/SkAT-VG/SDT/actions?query=workflow%3Abuild)
# SOUND DESIGN TOOLKIT (SDT)


## Overview
The **Sound Design Toolkit** (**SDT**) is an open-source (GPLv2) software
consisting in a library of ecologically-founded (e.g. physics-based) sound
synthesis models, audio processing algorithms and analysis routines.
It can be considered as a virtual Foley-box of sound synthesis algorithms, each
representing a specific sound-producing event.
The SDT is mainly aimed at research and education in *Sonic Interaction Design*
(SID), but it's been successfully used in musical contexts as well.

In addition to a programmer-oriented core framework and API -- implemented in
the C language, and suitable for developing interactive media such as games --
the SDT algorithms are made available as ready-to-go externals and patches for
**Cycling '74 Max** and **Pure Data**.
In particular a *package* is provided for Max which offers an advanced front-end
GUI, as well as examples with presets and tutorials.

The SDT algorithms have been implemented according to three main points:
1. auditory perceptual relevance;
2. cartoonification, i.e. simplification and exaggeration of the underlying
physics in order to increase both computational efficiency and perceptual
clarity;
3. parametric temporal control, which ensures appropriate, natural and
expressive articulations of sonic processes.

## Documentation
API documentation can be found online here:

https://skat-vg.github.io/SDT/

## Installation

### Max package
To install the provided Max *package* please refer to the `ReadMe.md` file in
the `MaxPackage` folder.

### Precompiled binaries for Pure Data
Precompiled binaries are available for PureData (Mac OS, Windows, Linux). Simply
download the universal SDT package from the official website:

http://www.soundobject.org/SDT

then unpack it and copy the branch for your operating system and platform into
the desired destination folder.

### Precompiled binaries
Precompiled binaries are available as release assets of this repository:

https://github.com/SkAT-VG/SDT/releases

### Compiling from source code

#### Mac OS
1. In a terminal, type the following commands to compile the software in all its
flavors (Max package, Pd library, Apple framework):
```
	cd build/macosx
	make
```
2. Install one or more products: The provided scripts will install the desired
product in the given destination ``\<path\>``, creating a ``SDT`` subfolder:
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
the given destination ``\<path\>``, creating a ``SDT`` subfolder:
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


## Contributors / Acknowledgements
The SDT was developed through the years with the contribution of the following
EU-projects:
 - 2001-2003 'SOb' http://www.soundobject.org/
 - 2006-2009 'CLOSED' http://closed.ircam.fr/
 - 2008-2011 'NIW' http://www.niwproject.eu/
 - 2014-2017 'SkAT-VG' http://www.skatvg.eu/

by the following people (either programmers or designers), in alphabetical
order:
- Federico Avanzini (federico.avanzini@di.unimi.it)
- Stefano Baldan (singintime@gmail.com)
- Nicola Bernardini
- Gianpaolo Borin
- Carlo Drioli (carlo.drioli@uniud.it)
- Stefano Delle Monache (s.dellemonache@tudelft.nl)
- Delphine Devallez
- Federico Fontana (federico.fontana@uniud.it)
- Laura Ottaviani
- Stefano Papetti (stefano.papetti@zhdk.ch)
- Pietro Polotti (pietro.polotti@conts.it)
- Matthias Rath
- Davide Rocchesso (davide.rocchesso@unipa.it)
- Stefania Serafin (sts@create.aau.dk)


## Contact:
- Stefano Papetti (stefano.papetti@zhdk.ch)
- Stefano Delle Monache (s.dellemonache@tudelft.nl)
- Stefano Baldan (singintime@gmail.com)
