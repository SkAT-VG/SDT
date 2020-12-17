Ordinary Classes
================
Most SDT classes can be controlled via OSC in the same way.
Their address space is defined by the following pattern::

    /<class>/<method>

Setter methods
--------------
They have `setter` methods for all their attributes.
The method name for setter methods is the attribute name.
The arguments for the setter methods are:

* ``key``: the instance key
* ``value``: the attribute value

::

  /<class>/<attribute> <key> <value>

Please note that, for a SDT object to be controllable via OSC,
its ``key`` parameter must be set

JSON methods
------------
They also have `utility` methods for JSON I/O, namely:

* ``log``: log the JSON description of an object
* ``save``: save the JSON description of an object to a file
* ``load``: load an object from a JSON file

They all take the object ``key`` as a first argument.
The methods ``save`` and ``load`` also require a ``filepath`` as a second argument

::

  /<class>/log <key>
  /<class>/save <key> <filepath>
  /<class>/load <key> <filepath>

Classes
-------
.. toctree::
	:maxdepth: 1

	ordinary_classes