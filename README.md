# SOUND DESIGN TOOLKIT (SDT) <!-- omit in toc -->
## Table of Contents <!-- omit in toc -->
- [Overview](#overview)
- [Documentation](#documentation)
- [Implementation](#implementation)
- [Installation](#installation)
	- [Downloadable ready-made products](#downloadable-ready-made-products)
	- [Compiling from Source](#compiling-from-source)
		- [Dependencies (Windows)](#dependencies-windows)
		- [Dependencies (MacOS)](#dependencies-macos)
		- [Dependencies (Linux)](#dependencies-linux)
		- [Instructions](#instructions)
- [Acknowledgements](#acknowledgements)
- [Contacts](#contacts)

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
1. cartoonification, i.e. simplification and exaggeration of the underlying
physics in order to increase both computational efficiency and perceptual
clarity;
1. parametric temporal control, which ensures appropriate, natural and
expressive articulations of sonic processes.

## Documentation
API documentation can be found online here:
https://skat-vg.github.io/SDT

## Implementation
The core library (framework and API) is implemented in the C language, making it
suitable for developing interactive media such as games, audio and VR
applications.

In addition, the SDT algorithms are made available as ready-to-go externals and
patches for **Cycling '74 Max** and **Pure Data** (Pd). In particular, a
*package* is provided for Max which offers an advanced front-end GUI, as well as
examples with presets and tutorials.

Instructions for developers are collected in [`DEVELOPERS.md`](DEVELOPERS.md).

## Installation
### Downloadable ready-made products
A Max *package* (Mac OS and Windows) and a Pd *library* (Mac OS, Windows and
Linux) which include patches and precompiled externals, as well as the SDT
shared core library / Apple framework are provided as release assets of this
repository at: https://github.com/SkAT-VG/SDT/releases
Unpack the appropriate .zip file for your operating system and target platform
into the desired destination folder.

### Compiling from Source
Users may as well build on their machines the Max *package*, Pd *library*, and shared core library or Apple framework.

Before moving on to the instructions, you should [install Git](https://git-scm.com/book/en/v2/Getting-Started-Installing-Git) and clone this repository.
Make sure to pull the SDT repository **including the submodules**.
If you are cloning from the command-line interface, we suggest running `git clone` with the following options to speed up the download: the option `--recurse-submodules` will check out all submodules, while `--filter=blob:none` and `--also-filter-submodules` will avoid downloading unneeded blobs (but may not be supported in older `git` versions).

Especially on **Windows** systems, avoid cloning the MacOSX SDKs to avoid invalid path errors. Consider using this command on **Linux** systems too, since that submodule won't be needed.
```bash
git clone --recurse-submodules=":(exclude)3rdparty/MacOSX-SDKs" \
	--filter=blob:none --also-filter-submodules \
	git@github.com:SkAT-VG/SDT.git
```
On **MacOS** systems, you should clone all submodules.
```bash
git clone --recurse-submodules \
	--filter=blob:none --also-filter-submodules \
	git@github.com:SkAT-VG/SDT.git
```

If you are using a git client that doesn't check-out submodules automatically, enter the following git command:
```bash
git submodule update --init --recursive
```
or enable the equivalent option in the git preferences of your GUI client.

#### Dependencies (Windows)
To compile the SDT under Windows, you need a distribution of the GNU C Compiler, 
Make, and a UNIX style shell, as provided in MinGW + MSYS (https://www.msys2.org, recommended) or Cygwin (http://www.cygwin.com).
We use `i686-w64-mingw32-gcc` for 32-bit systems and `x86_64-w64-mingw32-gcc` for 64-bit systems.

#### Dependencies (MacOS)
To compile the SDT under MacOS, you need a distribution of the Clang C Compiler (https://clang.llvm.org) and Make (https://www.gnu.org/software/make).

The `Makefile` will build fat binaries compatible with both `x86_64` and `arm64` (Apple Silicon), so you will need a Clang C Compiler version that supports `arm64`: we use version `12.0.0`.
We are building against version `11.0` of the MacOSX SDK (included in this repository as a submodule).

#### Dependencies (Linux)
To compile the SDT under Linux, you need a distribution of the GNU C Compiler (https://gcc.gnu.org) and Make (https://www.gnu.org/software/make).

#### Instructions
1. In a terminal, type the following command to compile all the software for your operating system: Make should be able to correctly detect your OS.

	```bash
	make -j8
	```
	If Make doesn't correctly detect your OS, or if you are cross-compiling, you can specify the target OS manually

	```bash
	make -j8 TARGET=<target>
	```
	Supported targets are: `linux`, `win32`, `win64`, `macosx`.  
	We suggest using the `-j<N>` option to run `N` compile jobs in parallel.
1. Install one or more pieces of software. Make will install the selected products in the given destination `<path>`, creating a `SDT` subfolder:

	```bash
	make install_max  TARGET=<target> DSTDIR=<path>
	```
	```bash
	make install_pd   TARGET=<target> DSTDIR=<path>
	```
	```bash
	make install_core TARGET=<target> DSTDIR=<path>
	```
1. To clean the build directories after installation:
	```bash
	make clean TARGET=<target>
	```
1. To uninstall one or more products, run the corresponding command:

	```bash
	make uninstall_max  TARGET=<target> DSTDIR=<path>
	```
	```bash
	make uninstall_pd   TARGET=<target> DSTDIR=<path>
	```
	```bash
	make uninstall_core TARGET=<target> DSTDIR=<path>
	```
	Please, provide the same arguments you provided for installation.

## Acknowledgements
The SDT was developed through the years with the contribution of the following
EU-projects:
 - 2001-2003 'SOb' http://www.soundobject.org/
 - 2006-2009 'CLOSED' http://closed.ircam.fr/
 - 2008-2011 'NIW' http://www.soundobject.org/niw/
 - 2014-2016 'SkAT-VG' http://www.skatvg.eu/

## Contacts
SoundDesignToolkit@gmail.com  
https://www.facebook.com/SDT.Max.Pd
