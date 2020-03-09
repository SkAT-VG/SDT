/** @file SDTMotor.h
@defgroup motor SDTMotor.h: Combustion engines
From a mechanical point of view, an internal combustion engine converts chemical energy
into kinetic energy by means of a series of controlled explosions.
From an acoustical point of view, the previously described setup is basically a set
of resonating pipes, excited by the explosions happening in the combustion chambers.
Resonances happening inside intake pipes, cylinders, exhaust collectors, exhaust pipe,
exhaust muffler and final outlet are simulated by means of digital waveguides,
whose inputs, lengths and feedback gains are controlled by a physical model
of the engine operation cycle representing the behavior of the engine block.
Four mechanical components are simulated: Piston motion, fuel ignition,
intake valves operation and exhaust valves operation.
The model provides also a simulation of exhaust backfiring, a phenomenon which occurs
especially in sports or muscle cars, where the very rich fuel mixture sometimes
doesn't burn completely in the cylinders and self ignites later
in the hotter parts of the exhaust system.
@{ */

#ifndef SDT_MOTOR_H
#define SDT_MOTOR_H

#ifdef __cplusplus
extern "C" {
#endif

/** @brief Opaque data structure representing a combustion engine object */
typedef struct SDTMotor SDTMotor;

/** @brief Object constructor.
@return Pointer to the new instance */
extern SDTMotor *SDTMotor_new(long maxDelay);

/** @brief Object destructor.
@param[in] x Pointer to the instance to destroy */
extern void SDTMotor_free(SDTMotor *x);

/** @brief Update filter coefficients.
Should be always called after setting the sampling rate with SDT_setSampleRate().
@param[in] x Pointer to a SDTMotor instance */
extern void SDTMotor_setFilters(SDTMotor *x, double damp, double dc);

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
The total volume of the engine is this value multiplied by the number of cylinders.
@param[in] f Cylinder volume, in cc */
extern void SDTMotor_setCylinderSize(SDTMotor *x, double f);

/** @brief Sets the compression ratio of the engine.
The compression ratio is computed dividing the cylinder volume at maximum expansion
(piston down) by its volume at maximum compression (piston up).
@param[in] f Compression ratio */
extern void SDTMotor_setCompressionRatio(SDTMotor *x, double f);

/** @brief Sets the width of the ignition pulse, compared to a full operation cycle.
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

/** @brief Signal processing routine.
Call this function at sample rate to synthesize the engine sound.
The output is written in an array of three doubles. The first value represents
the sound picked up at the intakes, from the front of the vehicle; the second
represents the engine vibrations, mostly heard inside the cabin; the third and last
output represents the sound coming from the exhaust outlet, towards the rear of the vehicle.
@param[out] outs Pointer to an array of three doubles, destination of the output */
extern void SDTMotor_dsp(SDTMotor *x, double *outs);

/** @} */

#ifdef __cplusplus
};
#endif

#endif
