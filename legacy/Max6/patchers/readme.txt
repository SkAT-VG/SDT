-------------------------------------------------------------------------------
Sound Design Toolkit (SDT) for Max 5

Developed with the contribution of the following EU-projects:
2001-2003 'SOb' http://www.soundobject.org/
2006-2009 'CLOSED' http://closed.ircam.fr
2008-2011 'NIW' http://www.niwproject.eu/

See the included file AUTHORS.txt for a comprehensive list of authors.

Contacts: 
stefano.papetti@zhdk.ch
stefano.dellemonache@gmail.com
-------------------------------------------------------------------------------

MAIN SDT INTERFACE (SoundDesignToolkit.maxpat)
============================
Credits: Stefano Delle Monache (stefano.dellemonache@gmail.com)

The main interface provides access to the full potential of the models, adding 
an advanced user interface and powerful features like sequencing, MIDI and OSC 
control, mixing, presets management.

The main patch gives access to different windows, each of which is provided 
with a "read me" subpatch. Please refer to them for more details of each 
window's functionalities.
More in detail, for each model the following structures are provided:
    * Sound model manager: here multiple instances of each model can be added, 
	removed or restored.
	MIDI/OSC control patches can be loaded.
	Volume controls and recording tools are grouped in a separated window.

    * The interface for each sound model is organized into a high and a low 
	level. The latter is accessible via the high-level interface. 
	For each sound model, a number of presets are available and timbral 
	exploration is facilitated by the possibility of interpolating 
	different parameters presets.

    * MIDI/OSC control and connectivity: the parameters made available within 
	the high-level interface of the sound model can be controlled via MIDI/OSC.
	A one-to-one and one-to-many mapping is provided, with the possibility to 
	edit, save and update the mapping for each parameter.
	

Stefano Papetti (stefano.papetti@zhdk.ch) and Pietro Polotti (polotti@iuav.it)
