#ifndef SDT_DCMOTOR_H
#define SDT_DCMOTOR_H

/**
@defgroup dcmotor Electric motors

Electric motors exploit magnetic induction to convert electric energy into mechanical energy.
The simplest arrangement is the DC brushed motor, composed by a stator with magnets
of opposite polarity and a rotor with induction coils. Electric contacts (brushes)
power the coils, inducing a magnetic field. Coils get pushed away from one of the magnets
and drawn toward the other, causing rotation. A commutator ring is used to invert the polarity
of the coils, allowing the process to repeat.
An ideal electric motor should be perfectly silent. In practice, however, rotors are never
perfectly balanced and generate pitched tones depending on their revolutions per minute (RPM).
Moreover, contacts between the brushes and the commutator ring cause friction noise,
as it does the gearing system transmittimg the mechanical energy to the engine load.
Finally, rotation causes air movement and therefore turbulence noise, sometimes increased
by the presence of a cooling fan attached to the rotor.
The pitched tone of the rotor is obtained through additive synthesis, summing a fixed number
of harmonic partials. Frequency modulation simulates the unevenness in the rotation caused
by attached loads. Brush noise is obtained using this waveform as an envelope for
bandpass-filtered white noise. Gear noise is modeled like rotor noise, with each partial
frequency multiplied by the gear ratio. A comb filter models the resonances of the closed
chassis in which rotor, gears and brushes are usually contained. Aerodynamic turbulence
caused by the spinning parts (rotor, cooling fan) is synthesized with bandpass-filtered
white noise.

@{
*/

typedef struct SDTDCMotor SDTDCMotor;

extern SDTDCMotor *SDTDCMotor_new(long maxSize);
extern void SDTDCMotor_free(SDTDCMotor *x);
extern void SDTDCMotor_setFilters(SDTDCMotor *x);
extern void SDTDCMotor_setRpm(SDTDCMotor *x, double f);
extern void SDTDCMotor_setLoad(SDTDCMotor *x, double f);
extern void SDTDCMotor_setCoils(SDTDCMotor *x, long l);
extern void SDTDCMotor_setSize(SDTDCMotor *x, double f);
extern void SDTDCMotor_setReson(SDTDCMotor *x, double f);
extern void SDTDCMotor_setGearRatio(SDTDCMotor *x, double f);
extern void SDTDCMotor_setHarshness(SDTDCMotor *x, double f);
extern void SDTDCMotor_setRotorGain(SDTDCMotor *x, double f);
extern void SDTDCMotor_setGearGain(SDTDCMotor *x, double f);
extern void SDTDCMotor_setBrushGain(SDTDCMotor *x, double f);
extern void SDTDCMotor_setAirGain(SDTDCMotor *x, double f);
extern double SDTDCMotor_dsp(SDTDCMotor *x);

/**
@}
*/

#endif
