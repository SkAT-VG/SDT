# SOUND DESIGN TOOLKIT (SDT)


## Overview
The **Sound Design Toolkit** (**SDT**) is an open-source (GPLv3) framework for
ecologically founded sound synthesis and design. Think of it as a virtual
Foley-box!
It can simulate various acoustic phenomena arising from solid interactions
(e.g. collision, rubbing, rolling, scraping), liquids (e.g. dripping, streaming
water), gasses (e.g. explosions, blowing wind), and machines (e.g. combustion
engines, electric motors).
The library consists of physically informed sound synthesis models, audio
processing algorithms and analysis routines.

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
patches for **Cycling '74 Max** and **Pure Data** (Pd). In particular, a
*package* is provided for Max which offers an advanced front-end GUI, as well as
examples with presets and tutorials.


## Installation

### Downloadable ready-made products:
A Max *package* (Mac OS and Windows) and a Pd *library* (Mac OS, Windows and
Linux) which include patches and precompiled externals, as well as the SDT
shared core library / Apple framework are provided as release assets of this
repository at: https://github.com/SkAT-VG/SDT/releases
Unpack the appropriate .zip file for your operating system and target platform
into the desired destination folder.
Linux users will need to copy the shared core library `libSDT.so` to `/usr/lib` (root privileges may be required).

### Compiling from source code
Users may as well build a Max *package*, Pd *library*, shared core library /
Apple framework on their machines. In that case, make sure to pull the SDT git
repository including the submodules under the `3rdparty` directory. If your
git client doesn't do that automatically, enter the following git command:
```
	git submodule update --init --recursive
```
or check the equivalent option in the git preferences of your GUI client.

#### Mac OS
1. In a terminal, type the following commands to compile the software in all its
flavors (Max *package*, Pd *library*, Apple framework):
```
	cd build/macosx
	make
```
2. Install one or more products: The provided scripts will install the selected
products in the given destination `<path>`, creating a `SDT` subfolder:
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
commands to compile the software in all its flavors (Max *package*, Pd
*library*, shared DLL):
```
	cd build/win32 (or cd build/win64 for the x64 version)
	make
```
2. Install one or more products. The provided scripts will install the selected
products in the given destination `<path>`, in a subfolder (`SDT` for Pd or DLL
and `Sound Design Toolkit` for Max):
```
	make install_max DSTDIR=<path>
	make install_pd DSTDIR=<path> (only for 32 bit)
	make install_core DSTDIR=<path>
```
3. To clean the source directories after compilation:
```
	make clean
```
4. To uninstall one or more products, run the corresponding command.
Please provide the same `<path>` specified at installation (the parent
folder of the SDT folder)
```
	make uninstall_max DSTDIR=<path>
	make uninstall_pd DSTDIR=<path> (only for 32 bit)
	make uninstall_core DSTDIR=<path>
```

#### Linux
1. In a terminal, type the following commands:
```
	cd build/linux
	make
```
2. Install one or more products. By default, the building environment will
install the SDT shared core library in `/usr` and the Pd *library* in
`/usr/lib/pd/extras`. Root privileges may be required to access the
default install path.
If you want to change the install path, provide a `DSTDIR` argument:
```
	make install_pd DSTDIR=<path>
	make install_core DSTDIR=<path>
```
3. To clean the source directories after compilation:
```
	make clean
```
4. To uninstall one or more products, run the corresponding command. Root
privileges may be required to access the default install path. If you
installed SDT under a custom path, please provide a `DSTDIR` argument:
```
	make uninstall_pd DSTDIR=<path>
	make uninstall_core DSTDIR=<path>
```

## Acknowledgements
The SDT was developed through the years with the contribution of the following
EU-projects:
 - 2001-2003 'SOb' http://www.soundobject.org/
 - 2006-2009 'CLOSED' http://closed.ircam.fr/
 - 2008-2011 'NIW' http://www.soundobject.org/niw/
 - 2014-2016 'SkAT-VG' http://www.skatvg.eu/


## Contact:
SoundDesignToolkit@gmail.com
https://www.facebook.com/SDT.Max.Pd
