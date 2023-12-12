#include "SDTOSCCommon.h"

/** @defgroup oscmethods OSC Methods
Implementation of OSC methods for SDT

\section ordinary_classes Ordinary classes
Most SDT classes can be controlled via OSC in the same way.
Their address space is defined by the following pattern:
\code{osc} /<class>/<method> \endcode

\subsection setter_methods Setter methods
Each class has a setter method for each of their attributes.
The method name for setter methods is the attribute name.
The arguments for the setter methods are:
\code{osc} /<class>/<attribute> <key> <value> \endcode
Please note that, for a SDT object to be controllable via OSC, it has to be
registered with a key. See the `SDT_register<class>()` method
of the class of interest for further details.

\subsection json_methods JSON methods
Each class also has methods for JSON serialization and deserialization.
- `log` logs the JSON description of an object to the configured
info-level stream
- `save` saves the JSON description of an object to a file
- `load` loads the JSON description of an object from a file
- `loads` loads the JSON description of an object from a string

The first argument is always the key of the object of interest.
The methods `save` and `load` also require a filepath as a
second argument. The method `loads` interprets any following
arguments as a JSON payload. \code{osc}
/<class>/log   <key>
/<class>/save  <key> <filepath>
/<class>/load  <key> <filepath>
/<class>/loads <key> <json>...
\endcode
\section special_classes Special classes
Some classes have a special behaviour, namely:
- resonators (@ref oscresonators) have array-valued attributes
- interactors (@ref OSCInteractors) are identified by two keys
- projects (@ref oscprojects) allow to handle multiple objects at once with JSON
@ingroup osc
@{ */

/** @} */

/** @defgroup osc Open Sound Control
Open Sound Control implementation for SDT
@{ */

/** @} */

/** @file SDTOSC.h
@defgroup osc_h SDTOSC.h: Open Sound Control
Open Sound Control root for SDT
@{ */

#ifndef SDT_OSC_H
#define SDT_OSC_H

#ifdef __cplusplus
extern "C" {
#endif

/** @defgroup oscroot SDTOSC
OSC root for SDT
@ingroup oscmethods
@{ */

/** @brief `/`

OSC root for SDT methods
@param [in] x OSC message
@return Zero on success, non-zero otherwise */
extern int SDTOSCRoot(const SDTOSCMessage* x);

/** @} */

#ifdef __cplusplus
};
#endif

#endif

/** @} */
