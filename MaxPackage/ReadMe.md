# Sound Design Toolkit (SDT): package for Max


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


## Minimum system requirements
- Cycling '74 Max 7.
- Mac: OS X 10.7 (for Max 7) or 10.11.6 (for Max 8).
- Windows: Windows 7 or above.


## Installation
If you downloaded the SDT Max *package* available as release assets of the main
repository at https://github.com/SkAT-VG/SDT/releases, you need to perform a few
steps to install it:
1. Copy the `MaxPackage` folder to your Max packages folder. This is usually
found in your user folder, under Documents/Max # (where # is your Max version).
2. Rename it as `SoundDesignToolkit`.


## Implementation
In addition to this Max *package*, the SDT also comes in different flavors:
**C library** and **API** (suited to programmers of interactive media), and
**Pure Data** externals and patches for Mac, Windows and Linux.
For more details please refer to the universal SDT distribution, available at
https://github.com/SkAT-VG/SDT


## Authors / Acknowledgements
The Sound Design Toolkit package for Max was developed by:
Stefano Delle Monache, Stefano Baldan, Stefano Papetti, and Marco Tiraboschi.

The SDT library was developed through the years with the contribution of the
following EU-projects:
 - 2001-2003 'SOb' http://www.soundobject.org/
 - 2006-2009 'CLOSED' http://closed.ircam.fr/
 - 2008-2011 'NIW' http://www.soundobject.org/niw/
 - 2014-2016 'SkAT-VG' http://www.skatvg.eu/


## Contact:
SoundDesignToolkit@gmail.com
https://www.facebook.com/SDT.Max.Pd
