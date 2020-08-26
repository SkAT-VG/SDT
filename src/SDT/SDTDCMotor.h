#include "SDTJSON.h"

/** @file SDTDCMotor.h
@defgroup dcmotor SDTDCMotor.h: Electric motors
Physically informed model for the synthesis of electric motor sounds.

Electric motors exploit magnetic induction to convert electric energy
into mechanical energy. An ideal electric motor should be perfectly silent.
In practice, however, rotors are never perfectly balanced
and generate pitched tones depending on their revolutions per minute (RPM).
Moreover, contacts between parts cause friction noise.
Finally, rotation causes air movement and therefore turbulence noise,
sometimes increased by the presence of a cooling fan attached to the rotor.

The pitched tone of the rotor is obtained through additive synthesis,
summing a fixed number of harmonic partials. Frequency modulation 
simulates the unevenness in the rotation caused by attached loads.
Resonances modes of the chassis are modeled through a comb filter.
Aerodynamic turbulence caused by the spinning parts is synthesized
with bandpass-filtered white noise, exactly like in the gas model.
@{
*/

#ifndef SDT_DCMOTOR_H
#define SDT_DCMOTOR_H

#ifdef __cplusplus
extern "C" {
#endif

/** @brief Opaque data structure for the electric motor synthesis model. */
typedef struct SDTDCMotor SDTDCMotor;

/** @brief Object constructor.
@param[in] maxSize Buffer length of the internal comb filter, in samples
@return Pointer to the new instance */
extern SDTDCMotor *SDTDCMotor_new(long maxSize);

/** @brief Object destructor.
@param[in] x Pointer to the instance to destroy */
extern void SDTDCMotor_free(SDTDCMotor *x);

/** @brief Gets the Revolutions Per Minute (RPM) of the engine rotor.
@return Engine RPM */
extern double SDTDCMotor_getRpm(const SDTDCMotor *x);

/** @brief Gets the mechanical stress on the rotor.
@return Engine load */
extern double SDTDCMotor_getLoad(const SDTDCMotor *x);

/** @brief Gets the number of coils on the rotor.
@return Number of coils on the rotor */
extern long SDTDCMotor_getCoils(const SDTDCMotor *x);

/** @brief Gets the size of the chassis.
@return Chassis length, in m */
extern double SDTDCMotor_getSize(const SDTDCMotor *x);

/** @brief Gets the amount of resonance caused by the chassis.
@return Chassis resonance */
extern double SDTDCMotor_getReson(const SDTDCMotor *x);

/** @brief Gets the gear ratio of the engine.
@return Gear ratio */
extern double SDTDCMotor_getGearRatio(const SDTDCMotor *x);

/** @brief Gets the harshness of the engine sound.
@return Harshness */
extern double SDTDCMotor_getHarshness(const SDTDCMotor *x);

/** @brief Gets the sound volume coming from the rotor.
@return Rotor gain */
extern double SDTDCMotor_getRotorGain(const SDTDCMotor *x);

/** @brief Gets the sound volume coming from the gears.
@return Gear gain */
extern double SDTDCMotor_getGearGain(const SDTDCMotor *x);

/** @brief Gets the sound volume coming from the commutator ring and brushes.
@return Brush gain */
extern double SDTDCMotor_getBrushGain(const SDTDCMotor *x);

/** @brief Gets the sound volume of the air turbulence caused by rotation.
@return Air gain */
extern double SDTDCMotor_getAirGain(const SDTDCMotor *x);

/** @brief Sets the filter coefficients.
Call this function whenever the sample rate changes */
extern void SDTDCMotor_setFilters(SDTDCMotor *x);

/** @brief Sets the Revolutions Per Minute (RPM) of the engine rotor.
@param[in] f Engine RPM */
extern void SDTDCMotor_setRpm(SDTDCMotor *x, double f);

/** @brief Sets the mechanical stress on the rotor.
@param[in] f Engine load [0, 1] */
extern void SDTDCMotor_setLoad(SDTDCMotor *x, double f);

/** @brief Sets the number of coils on the rotor.
@param[in] l Number of coils on the rotor */
extern void SDTDCMotor_setCoils(SDTDCMotor *x, long l);

/** @brief Sets the size of the chassis.
The maximum chassis size depends on the buffer length defined at construction time
and on the current sampling rate.
@param[in] f Chassis length, in m */
extern void SDTDCMotor_setSize(SDTDCMotor *x, double f);

/** @brief Sets the amount of resonance caused by the chassis.
@param[in] f Chassis resonance [0, 1] */
extern void SDTDCMotor_setReson(SDTDCMotor *x, double f);

/** @brief Sets the gear ratio of the engine.
@param[in] f Gear ratio */
extern void SDTDCMotor_setGearRatio(SDTDCMotor *x, double f);

/** @brief Sets the harshness of the engine sound.
@param[in] f Harshness [0, 1] */
extern void SDTDCMotor_setHarshness(SDTDCMotor *x, double f);

/** @brief Sets the sound volume coming from the rotor.
@param[in] f Rotor gain [0, 1] */
extern void SDTDCMotor_setRotorGain(SDTDCMotor *x, double f);

/** @brief Sets the sound volume coming from the gears.
@param[in] f Gear gain [0, 1] */
extern void SDTDCMotor_setGearGain(SDTDCMotor *x, double f);

/** @brief Sets the sound volume coming from the commutator ring and brushes.
@param[in] f Brush gain [0, 1] */
extern void SDTDCMotor_setBrushGain(SDTDCMotor *x, double f);

/** @brief Sets the sound volume of the air turbulence caused by rotation.
@param[in] f Air gain [0, 1] */
extern void SDTDCMotor_setAirGain(SDTDCMotor *x, double f);

/** @brief Signal processing routine.
Call this function at sample rate to synthesize an electric motor sound.
@return Computed audio sample */
extern double SDTDCMotor_dsp(SDTDCMotor *x);

/** @brief Registers an electric motor into the electric motors list with a unique ID.
@param[in] x DCMotor instance to register
@param[in] key Unique ID assigned to the electric motor instance */
extern int SDT_registerDCMotor(SDTDCMotor *x, char *key);

/** @brief Queries the electric motors list by its unique ID.
If an electric motor with the ID is present, a pointer to the electric motor is returned.
Otherwise, a NULL pointer is returned.
@param[in] key Unique ID assigned to the DCMotor instance
@return DCMotor instance pointer */
extern SDTDCMotor *SDT_getDCMotor(const char *key);

/** @brief Unregisters an electric motor from the electric motors list.
If an electric motor with the given ID is present, it is unregistered from the list.
@param[in] key Unique ID of the DCMotor instance to unregister */
extern int SDT_unregisterDCMotor(char *key);

/** @defgroup json_dcmotor JSON
JSON functions for SDT DCMotors
@{ */

/** @brief Convert an SDTDCMotor object in a JSON object
@param[in] x Pointer to the SDTDCMotor
@return Pointer to the JSON object. Memory must be freed with json_builder_free */
extern json_value *SDTDCMotor_toJSON(const SDTDCMotor *x);

/** @brief Load a SDTDCMotor object from a JSON object
@param[in] x Pointer to the JSON object
@return Pointer to the SDTDCMotor, or 0 on failure. Memory must be freed with ::SDTDCMotor_free */
extern SDTDCMotor *SDTDCMotor_fromJSON(const json_value *x);

/** @} */

#ifdef __cplusplus
};
#endif

#endif

/** @} */