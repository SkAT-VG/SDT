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

#ifdef __cplusplus
};
#endif

#endif

/** @} */