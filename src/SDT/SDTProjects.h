#include "SDTJSON.h"

/** @file SDTProjects.h
@defgroup sdt_projects SDTProjects.h: SDT Projects
Functions for SDT Projects
@{
*/

#ifndef SDT_PROJECTS_H
#define SDT_PROJECTS_H

/** @brief Convert to a JSON object the information about a SDT project
@param[in] argc Number of arguments
@param[in] argv Array of keys of the objects in the project
@return The project JSON object. Must be freed with json_builder_free */
extern json_value *SDTProject_toJSON(int argc, const char **argv);

/** @brief Load information about a SDT project from a JSON object
@param[in] prj The project JSON object
@param[in] unsafe If false, do not perform any memory-related changes
@return Zero on success, non-zero otherwise */
extern int SDTProject_fromJSON(const json_value *prj, unsigned char unsafe);

/** @brief Call macro for all types, except interactors
@param[in] FOO Macro */
#define _SDT_CALL_FOR_ALL_TYPES(FOO)   \
  FOO(Bouncing, bouncing, );           \
  FOO(Breaking, breaking, );           \
  FOO(Bubble, bubble, );               \
  FOO(Crumpling, crumpling, );         \
  FOO(DCMotor, dcmotor, update);       \
  FOO(Demix, demix, );                 \
  FOO(Envelope, envelope, update);     \
  FOO(Explosion, explosion, );         \
  FOO(Motor, motor, update);           \
  FOO(Myoelastic, myo, update);        \
  FOO(Pitch, pitch, );                 \
  FOO(PitchShift, pitchshift, );       \
  FOO(Resonator, resonator, update);   \
  FOO(Reverb, reverb, update);         \
  FOO(Rolling, rolling, );             \
  FOO(Scraping, scraping, );           \
  FOO(SpectralFeats, spectralfeats, ); \
  FOO(WindCavity, windcavity, );       \
  FOO(WindFlow, windflow, update);     \
  FOO(WindKarman, windkarman, );       \
  FOO(ZeroCrossing, zerox, );

#endif

/** @} */
