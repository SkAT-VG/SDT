#ifndef SDT_COMMON_H
#define SDT_COMMON_H

/**
@defgroup common Common SDT definitions, variables and functions
@{
*/

/** @brief SDT version number */
#define SDT_ver          071
/** @brief SDT version string */
#define SDT_ver_str     "071"
/** @brief Value of Pi */
#define SDT_PI           3.141592653589793
/** @brief Value of 2 * Pi */
#define SDT_TWOPI        6.283185307179586
/** @brief Euler number */
#define SDT_EULER        2.718281828459045
/** @brief Square root of 2 */
#define SDT_SQRT2        1.4142135623730951
/** @brief Mach 1, speed of sound in air under normal atmospheric conditions (m/s) */
#define SDT_MACH1      340.29
/** @brief Earth gravity (N/Kg) */
#define SDT_EARTH        9.81
/** @brief One millionth, small value often used instead of 0 to avoid division errors */
#define SDT_MICRO        0.000001

/** @brief Sampling frequency (Hz) */
extern double SDT_sampleRate;
/** @brief Sampling period (s) */
extern double SDT_timeStep;

/**
@brief Sets the sample rate.

@param[in] sampleRate Sample rate (Hz).
*/
extern void SDT_setSampleRate(double sampleRate);

/**
@brief Clips an integer value.

Limits the range of an integer value between a given lower bound and upper bound.

@param[in] x Integer value to clip
@param[in] min Lower limit
@param[in] max Upper limit

@return Clipped integer value 
*/
extern long SDT_clip(long x, long min, long max);

/**
@brief Exponential random number generator.

Generates random numbers, following an exponential distribution.

@param[in] lambda Rate of the exponential distribution.

@return Randomly generated value [0.0, +inf]
*/
extern double SDT_expRand(double lambda);

/**
@brief Clips a floating point value.

Limits the range of a floating point value between a given lower bound and upper bound.

@param[in] x Floating point value to clip
@param[in] min Lower limit
@param[in] max Upper limit

@return Clipped floating point value 
*/
extern double SDT_fclip(double x, double min, double max);

/**
@brief Uniform random number generator.

Generates random numbers, following a uniform distribution.

@return Randomly generated value [0.0, 1.0]
*/
extern double SDT_frand();

/**
@brief Computes earth gravity force.

Computes the earth gravity force acting on an object of a given mass.

@param[in] mass Mass of the object (Kg)

@return Earth gravity force (N)
*/
extern double SDT_gravity(double mass);


extern double SDT_groundDecay(double grain, double velocity);

/**
@brief Applies a Hanning window to a chunk of samples.

Applies a Hanning window to a chunk of samples.

@param[in,out] samples to window
@param[n] window size
*/
extern void SDT_hanning(double *sig, int n);

/**
@brief Computes kinetic energy.

Computes the kinetic energy of an object, given its mass and velocity.

@param[in] mass Mass of the object (Kg)
@param[in] velocity Velocity of the object (m/s)

@return Kinetic energy (J)
*/
extern double SDT_kinetic(double mass, double velocity);

/**
@brief Rescales a value of known range into the [0.0, 1.0] interval.

Rescales a value of known range into the [0.0, 1.0] interval.

@param[in] x Value to normalize
@param[in] min Lower bound
@param[in] max Upper bound

@return Value rescaled from [min, max] to [0.0, 1.0]
*/
extern double SDT_normalize(double x, double min, double max);

/**
@brief Implements the 4th order Runge-Kutta numerical approximation scheme

Implements the 4th order Runge-Kutta numerical approximation scheme

@param[in] x Object to be updated
@param[in] argc Number of variables in the object state
@param[in,out] argv Updates of the state
@param[in] f Function pointer to the update rule
*/
void SDT_RK4(void *x, int argc, double *argv, void (*f)(void*, double *));

/**
@brief Time needed to travel the given distance at Mach 1.

Computes the amount of time, in samples, needed by a sound wave propagating in air
to travel a given distance. Particularly useful to set the delay times of comb filters
and/or digital waveguides representing hollow cavities.

@param[in] length Distance (m)

@return Amount of samples to travel the distance at Mach 1
*/
extern double SDT_samplesInAir(double length);

/**
@brief Rescales a value from a source range to a target range.

Rescales a value from a source range to a target range.

@param[in] x Value to rescale
@param[in] srcMin Lower bound of source value
@param[in] srcMax Upper bound of source value
@param[in] dstMin Lower bound of rescaled value
@param[in] dstMax Upper bound of rescaled value
@param[in] gamma Gamma factor

@return Valued rescaled from [srcMin, srcMax] to [dstMin, dstMax] with gamma factor \c gamma
*/
extern double SDT_scale(double x, double srcMin, double srcMax,
                        double dstMin, double dstMax, double gamma);

/**
@brief Computes the signum function.

Computes the signum function.

@param[in] x

@return Amount of samples to travel the distance at Mach 1
*/
extern int SDT_signum(double x);

/**
@}
*/

#endif
