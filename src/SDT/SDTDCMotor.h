#include "SDTCommonMacros.h"
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

#define SDT_DCMOTOR_MAXSIZE_DEFAULT 48000

/** @brief Object constructor.
@param[in] maxSize Buffer length of the internal comb filter, in samples
@return Pointer to the new instance */
extern SDTDCMotor *SDTDCMotor_new(long maxSize);

/** @brief Object destructor.
@param[in] x Pointer to the instance to destroy */
extern void SDTDCMotor_free(SDTDCMotor *x);

/** @brief Deep-copies an electric motor synthesis model.
@param[in] dest Pointer to the instance to modify
@param[in] src Pointer to the instance to copy
@param[in] unsafe If false, do not perform any memory-related changes
@return Pointer to destination instance */
extern SDTDCMotor *SDTDCMotor_copy(SDTDCMotor *dest, const SDTDCMotor *src,
                                   unsigned char unsafe);

/** @brief Update inner filters. Call this function whenever you change the SDT
sample rate or one or more frequency parameters of this structure
@param[in] x Pointer to the instance to update */
extern void SDTDCMotor_update(SDTDCMotor *x);

/** @brief Registers an electric motor synthesis model into the electric motor
synthesis models list with a unique ID.
@param[in] x DCMotor instance to register
@param[in] key Unique ID assigned to the electric motor synthesis model instance
@return Zero on success, otherwise one */
extern int SDT_registerDCMotor(SDTDCMotor *x, const char *key);

/** @brief Queries the electric motor synthesis models list by its unique ID.
If an electric motor synthesis model with the ID is present, a pointer to the
electric motor synthesis model is returned. Otherwise, a NULL pointer is
returned.
@param[in] key Unique ID assigned to the electric motor synthesis model instance
@return DCMotor instance pointer */
extern SDTDCMotor *SDT_getDCMotor(const char *key);

/** @brief Unregisters an electric motor synthesis model from the electric motor
synthesis models list. If an electric motor synthesis model with the given ID is
present, it is unregistered from the list.
@param[in] key Unique ID of the electric motor synthesis model instance to
unregister
@return Zero on success, otherwise one */
extern int SDT_unregisterDCMotor(const char *key);

/** @brief Gets the buffer length of the internal comb filter.
@return Buffer length of the internal comb filter, in samples */
extern long SDTDCMotor_getMaxSize(const SDTDCMotor *x);

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

/** @brief Sets the amount of resonance caused by the chassis.
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

/** @brief Represent an electric motor synthesis model as a JSON object.
@param[in] x Pointer to the instance
@return JSON object */
extern json_value *SDTDCMotor_toJSON(const SDTDCMotor *x);

/** @brief Initialize an electric motor synthesis model from a JSON object.
@param[in] x Pointer to the instance
@return JSON object */
extern SDTDCMotor *SDTDCMotor_fromJSON(const json_value *x);

/** @brief Set parameters of an electric motor synthesis model from a JSON
object.
@param[in] x Pointer to the instance
@param[in] j JSON object
@param[in] unsafe If false, do not perform any memory-related changes
@return Pointer to destination instance */
extern SDTDCMotor *SDTDCMotor_setParams(SDTDCMotor *x, const json_value *j,
                                        unsigned char unsafe);

/** @brief Sets the filter coefficients. Call this function whenever the sample
rate changes
@param[in] x Pointer to the instance to update */
extern void SDTDCMotor_update(SDTDCMotor *x);

/** @brief Sets the buffer length of the internal comb filter.
This function allocates memory and should not be called inside a DSP cycle.
@param[in] f Buffer length of the internal comb filter, in samples */
extern void SDTDCMotor_setMaxSize(SDTDCMotor *x, long f);

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
The maximum chassis size depends on the buffer length defined at construction
time and on the current sampling rate.
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

#ifdef __cplusplus
};
#endif

#endif

/** @} */