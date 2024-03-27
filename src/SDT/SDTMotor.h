#include "SDTCommonMacros.h"
#include "SDTJSON.h"

/** @file SDTMotor.h
@defgroup motor SDTMotor.h: Combustion engines
From a mechanical point of view, an internal combustion engine converts chemical
energy into kinetic energy by means of a series of controlled explosions. From
an acoustical point of view, the previously described setup is basically a set
of resonating pipes, excited by the explosions happening in the combustion
chambers. Resonances happening inside intake pipes, cylinders, exhaust
collectors, exhaust pipe, exhaust muffler and final outlet are simulated by
means of digital waveguides, whose inputs, lengths and feedback gains are
controlled by a physical model of the engine operation cycle representing the
behavior of the engine block. Four mechanical components are simulated: Piston
motion, fuel ignition, intake valves operation and exhaust valves operation. The
model provides also a simulation of exhaust backfiring, a phenomenon which
occurs especially in sports or muscle cars, where the very rich fuel mixture
sometimes doesn't burn completely in the cylinders and self ignites later in the
hotter parts of the exhaust system.
@{ */

#ifndef SDT_MOTOR_H
#define SDT_MOTOR_H

#ifdef __cplusplus
extern "C" {
#endif

/** @brief Opaque data structure representing a combustion engine object */
typedef struct SDTMotor SDTMotor;

#define SDT_MOTOR_MAXDELAY_DEFAULT 44100

/** @brief Object constructor.
@param[in] maxDelay Maximum delay time, in samples
@return Pointer to the new instance */
extern SDTMotor *SDTMotor_new(long maxDelay);

/** @brief Object destructor.
@param[in] x Pointer to the instance to destroy */
extern void SDTMotor_free(SDTMotor *x);

/** @brief Deep-copies a combustion engine model.
@param[in] dest Pointer to the instance to modify
@param[in] src Pointer to the instance to copy
@param[in] unsafe If false, do not perform any memory-related changes
@return Pointer to destination instance */
extern SDTMotor *SDTMotor_copy(SDTMotor *dest, const SDTMotor *src,
                               unsigned char unsafe);

/** @brief Registers a combustion engine model into the combustion engine models
list with a unique ID.
@param[in] x Motor instance to register
@param[in] key Unique ID assigned to the combustion engine model instance
@return Zero on success, otherwise one */
extern int SDT_registerMotor(SDTMotor *x, const char *key);

/** @brief Queries the combustion engine models list by its unique ID.
If a combustion engine model with the ID is present, a pointer to the
combustion engine model is returned. Otherwise, a NULL pointer is
returned.
@param[in] key Unique ID assigned to the combustion engine model instance
@return Motor instance pointer */
extern SDTMotor *SDT_getMotor(const char *key);

/** @brief Unregisters a combustion engine model from the combustion engine
models list. If a combustion engine model with the given ID is present, it is
unregistered from the list.
@param[in] key Unique ID of the combustion engine model instance to
unregister
@return Zero on success, otherwise one */
extern int SDT_unregisterMotor(const char *key);

/** @brief Gets the Revolutions Per Minute (RPM) of the engine.
@return RPM value */
extern double SDTMotor_getRpm(const SDTMotor *x);

/** @brief Gets the maximum delay time.
@return Maximum delay time, in samples */
extern long SDTMotor_getMaxDelay(const SDTMotor *x);

/** @brief Gets the cycle type.
@return Zero for four-stroke and non-zero for two-stroke */
extern double SDTMotor_getCycle(const SDTMotor *x);

/** @brief Gets the throttle load.
@return Throttle load */
extern double SDTMotor_getThrottle(const SDTMotor *x);

/** @brief Gets the number of cylinders in the engine block.
@return Number of cylinders */
extern int SDTMotor_getNCylinders(const SDTMotor *x);

/** @brief Gets the size of each single cylinder.
@return Cylinder volume, in cc */
extern double SDTMotor_getCylinderSize(const SDTMotor *x);

/** @brief Gets the compression ratio of the engine.
@return Compression ratio */
extern double SDTMotor_getCompressionRatio(const SDTMotor *x);

/** @brief Gets the width of the ignition pulse,
compared to a full operation cycle.
@return Ignition time */
extern double SDTMotor_getSparkTime(const SDTMotor *x);

/** @brief Gets the amount of irregularity in the operation cycle.
@return Cycle asymmetry */
extern double SDTMotor_getAsymmetry(const SDTMotor *x);

/** @brief Gets the amount of backfiring when the engine revs down.
@return Chance of backfiring [0,1] */
extern double SDTMotor_getBackfire(const SDTMotor *x);

/** @brief Gets the average length of the intake pipes.
@return Intake size, in m */
extern double SDTMotor_getIntakeSize(const SDTMotor *x);

/** @brief Gets the average length of the extractor pipes.
@return Extractor size, in m */
extern double SDTMotor_getExtractorSize(const SDTMotor *x);

/** @brief Gets the length of the main exhaust pipe.
@return Exhaust size, in m */
extern double SDTMotor_getExhaustSize(const SDTMotor *x);

/** @brief Gets the amount of expansion of the main exhaust pipe.
@return Exhaust expansion */
extern double SDTMotor_getExpansion(const SDTMotor *x);

/** @brief Gets the average length of the muffler chambers.
@return Muffler size, in m */
extern double SDTMotor_getMufflerSize(const SDTMotor *x);

/** @brief Gets the amount of energy dissipated by the muffler chambers.
@return Muffler feedback */
extern double SDTMotor_getMufflerFeedback(const SDTMotor *x);

/** @brief Gets the length of the exhaust outlet.
@return Outlet size, in m */
extern double SDTMotor_getOutletSize(const SDTMotor *x);

/** @brief Gets lowpass damping filter cutoff frequency.
@return Cutoff frequency, in hertz */
extern double SDTMotor_getDamp(const SDTMotor *x);

/** @brief Gets lowpass DC filter cutoff frequency.
@return Cutoff frequency, in hertz */
extern double SDTMotor_getDc(const SDTMotor *x);

/** @brief Represent an combustion engine model as a JSON object.
@param[in] x Pointer to the instance
@return JSON object */
extern json_value *SDTMotor_toJSON(const SDTMotor *x);

/** @brief Initialize an combustion engine model from a JSON object.
@param[in] x Pointer to the instance
@return JSON object */
extern SDTMotor *SDTMotor_fromJSON(const json_value *x);

/** @brief Set parameters of an combustion engine model from a JSON
object.
@param[in] x Pointer to the instance
@param[in] j JSON object
@param[in] unsafe If false, do not perform any memory-related changes
@return Pointer to destination instance */
extern SDTMotor *SDTMotor_setParams(SDTMotor *x, const json_value *j,
                                    unsigned char unsafe);

/** @brief Sets the maximum delay time.
@param[in] f Maximum delay time, in samples */
extern void SDTMotor_setMaxDelay(SDTMotor *x, long f);

/** @brief Sets the cycle type.
@param[in] f Zero for four-stroke and non-zero for two-stroke */
extern void SDTMotor_setCycle(SDTMotor *x, double f);

/** @brief Sets the Revolutions Per Minute (RPM) of the engine.
@param[in] f RPM value */
extern void SDTMotor_setRpm(SDTMotor *x, double f);

/** @brief Sets the throttle load.
@param[in] f Throttle load [0,1] */
extern void SDTMotor_setThrottle(SDTMotor *x, double f);

/** @brief Simulates the operation cycle of a four-stroke engine. */
extern void SDTMotor_setFourStroke(SDTMotor *x);

/** @brief Simulates the operation cycle of a two-stroke engine. */
extern void SDTMotor_setTwoStroke(SDTMotor *x);

/** @brief Sets the number of cylinders in the engine block.
@param[in] i Number of cylinders [1,12] */
extern void SDTMotor_setNCylinders(SDTMotor *x, int i);

/** @brief Sets the size of each single cylinder.
The total volume of the engine is this value multiplied by the number of
cylinders.
@param[in] f Cylinder volume, in cc */
extern void SDTMotor_setCylinderSize(SDTMotor *x, double f);

/** @brief Sets the compression ratio of the engine.
The compression ratio is computed dividing the cylinder volume at maximum
expansion (piston down) by its volume at maximum compression (piston up).
@param[in] f Compression ratio */
extern void SDTMotor_setCompressionRatio(SDTMotor *x, double f);

/** @brief Sets the width of the ignition pulse, compared to a full operation
cycle.
@param[in] f Ignition time [0,1] */
extern void SDTMotor_setSparkTime(SDTMotor *x, double f);

/** @brief Sets the amount of irregularity in the operation cycle.
@param[in] f Cycle asymmetry [0,1] */
extern void SDTMotor_setAsymmetry(SDTMotor *x, double f);

/** @brief Sets the amount of backfiring when the engine revs down.
@param[in] f Chance of backfiring [0,1] */
extern void SDTMotor_setBackfire(SDTMotor *x, double f);

/** @brief Sets the average length of the intake pipes.
@param[in] f Intake size, in m */
extern void SDTMotor_setIntakeSize(SDTMotor *x, double f);

/** @brief Sets the average length of the extractor pipes.
@param[in] f Extractor size, in m */
extern void SDTMotor_setExtractorSize(SDTMotor *x, double f);

/** @brief Sets the length of the main exhaust pipe.
@param[in] f Exhaust size, in m */
extern void SDTMotor_setExhaustSize(SDTMotor *x, double f);

/** @brief Sets the amount of expansion of the main exhaust pipe.
This is a feature commonly found in two-stroke engines, to avoid the passage
of fresh fuel mixture into the exhaust system.
@param[in] f Exhaust expansion [0,1] */
extern void SDTMotor_setExpansion(SDTMotor *x, double f);

/** @brief Sets the average length of the muffler chambers.
@param[in] f Muffler size, in m */
extern void SDTMotor_setMufflerSize(SDTMotor *x, double f);

/** @brief Sets the amount of energy dissipated by the muffler chambers.
@param[in] f Muffler feedback [0,1] */
extern void SDTMotor_setMufflerFeedback(SDTMotor *x, double f);

/** @brief Sets the length of the exhaust outlet.
@param[in] f Outlet size, in m */
extern void SDTMotor_setOutletSize(SDTMotor *x, double f);

/** @brief Sets lowpass damping filter cutoff frequency.
You should call #SDTMotor_update after this function.
@param[in] f Cutoff frequency, in hertz */
extern void SDTMotor_setDamp(SDTMotor *x, double f);

/** @brief Sets lowpass DC filter cutoff frequency.
You should call #SDTMotor_update after this function.
@param[in] f Cutoff frequency, in hertz */
extern void SDTMotor_setDc(SDTMotor *x, double f);

/** @brief Update filter coefficients.
Set all filter coefficients and update internal structure.
There is no need to call #SDTMotor_update separately.
@param[in] x Pointer to a SDTMotor instance */
extern void SDTMotor_setFilters(SDTMotor *x, double damp, double dc);

/** @brief Update filter coefficients.
Should be called after changing the sampling rate or any filter coefficient.
@param[in] x Pointer to a SDTMotor instance */
extern void SDTMotor_update(SDTMotor *x);

/** @brief Signal processing routine.
Call this function at sample rate to synthesize the engine sound.
The output is written in an array of three doubles. The first value represents
the sound picked up at the intakes, from the front of the vehicle; the second
represents the engine vibrations, mostly heard inside the cabin; the third and
last output represents the sound coming from the exhaust outlet, towards the
rear of the vehicle.
@param[out] outs Pointer to an array of three doubles, destination of the output
*/
extern void SDTMotor_dsp(SDTMotor *x, double *outs);

/** @} */

#ifdef __cplusplus
};
#endif

#endif
