/** @mainpage
 * The 'Sound Design Toolkit' (SDT) is a framework a for education and research
 * in Sonic Interaction Design. It includes a collection of physically informed models,
 * post-processing algorithms and sound analysis routines for interactive sound synthesis.
 * It can be considered as a virtual Foley box of sound synthesis algorithms,
 * each representing a specific sound-producing event.
 *
 * Developed with the contribution of the following EU-projects:
 * 2001-2003 'SOb' http://www.soundobject.org/
 * 2006-2009 'CLOSED' http://closed.ircam.fr/
 * 2008-2011 'NIW' http://www.niwproject.eu/
 * 2014-2017 'SkAT-VG' http://www.skatvg.eu/
 *
 * Contacts: 
 * 	stefano.papetti@zhdk.ch
 * 	stefano.dellemonache@gmail.com
 *  stefanobaldan@iuav.it
 *
 * Complete list of authors (either programmers or designers):
 * 	Federico Avanzini (avanzini@dei.unipd.it)
 *	Nicola Bernardini (nicb@sme-ccppd.org)
 *	Gianpaolo Borin (gianpaolo.borin@tin.it)
 *	Carlo Drioli (carlo.drioli@univr.it)
 *	Stefano Delle Monache (stefano.dellemonache@gmail.com)
 *	Delphine Devallez
 *	Federico Fontana (federico.fontana@uniud.it)
 *	Laura Ottaviani
 *	Stefano Papetti (stefano.papetti@zhdk.ch)
 *	Pietro Polotti (pietro.polotti@univr.it)
 *	Matthias Rath
 *	Davide Rocchesso (roc@iuav.it)
 *	Stefania Serafin (sts@media.aau.dk)
 *  Stefano Baldan (stefanobaldan@iuav.it)
 *
 * The SDT is free software; you can redistribute it and/or
 * modify it under the terms of the GNU General Public License
 * as published by the Free Software Foundation; either version 2
 * of the License, or (at your option) any later version.
 *
 * The SDT is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with the SDT; if not, write to the Free Software
 * Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301, USA.
 *****************************************************************************/

/** @file SDTCommon.h
@defgroup common SDTCommon.h: Common variables and functions
Macros, variables and functions commonly used by all the SDT objects.
SDTCommon.h should always be included when using other SDT modules.
@{ */

#ifndef SDT_COMMON_H
#define SDT_COMMON_H

/** @brief SDT version number */
#define SDT_ver          078
/** @brief SDT version string */
#define SDT_ver_str     "078"
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
/** @brief Gain factor roughly corresponding to a -90dB attenuation */
#define SDT_QUIET         0.00003

#ifdef __cplusplus
extern "C" {
#endif

/** @brief Sampling frequency (Hz) */
extern double SDT_sampleRate;

/** @brief Sampling period (s) */
extern double SDT_timeStep;

/** @brief Sets the sample rate.
@param[in] sampleRate Sample rate (Hz). */
extern void SDT_setSampleRate(double sampleRate);

/** @brief Applies a Blackman window to a chunk of samples.
Applies a Blackman window to a chunk of samples.
@param[in,out] sig samples to window
@param[in] n window size */
extern void SDT_blackman(double *sig, int n);

/** @brief Reverses the bit order of an unsigned integer of given bit length.
@param[in] u Input value
@param[in] bits Number of bits to reverse
@return Unsigned integer with reversed bits */
extern unsigned int SDT_bitReverse(unsigned int u, unsigned int bits);

/** @brief Clips an integer value.
Limits the range of an integer value between a given lower bound and upper bound.
@param[in] x Integer value to clip
@param[in] min Lower limit
@param[in] max Upper limit
@return Clipped integer value */
extern long SDT_clip(long x, long min, long max);

/** @brief Exponential random number generator.
Generates random numbers, following an exponential distribution.
@param[in] lambda Rate of the exponential distribution.
@return Randomly generated value [0.0, +inf] */
extern double SDT_expRand(double lambda);

/** @brief Clips a floating point value.
Limits the range of a floating point value between a given lower bound and upper bound.
@param[in] x Floating point value to clip
@param[in] min Lower limit
@param[in] max Upper limit
@return Clipped floating point value */
extern double SDT_fclip(double x, double min, double max);

/** @brief Uniform random number generator.
Generates random numbers, following a uniform distribution.
@return Randomly generated value [0.0, 1.0] */
extern double SDT_frand();

/** @brief One-dimensional Gaussian kernel.
One-dimensional Gaussian kernel. The Gaussian function is computed in the [-1,1] interval
with 0 mean and the given standard deviation. The output is normalized so that the sum of
all samples is equal to 1.
@param[out] x pointer to the kernel samples
@param[in] sigma standard deviation of the Gaussian function
@param[in] n kernel size */
extern void SDT_gaussian1D(double *x, double sigma, int n);

/** @brief Computes earth gravity force.
Computes the earth gravity force acting on an object of a given mass.
@param[in] mass Mass of the object (Kg)
@return Earth gravity force (N) */
extern double SDT_gravity(double mass);

/** @brief Applies a Hanning window to a chunk of samples.
Applies a Hanning window to a chunk of samples.
@param[in,out] sig samples to window
@param[in] n window size */
extern void SDT_hanning(double *sig, int n);

/** @brief Computes a direct Haar Wavelet Transform of the incoming signal (in place).
@param[in,out] sig incoming signals
@param[in] n window size */ 
extern void SDT_haar(double *sig, long n);

/** @brief Computes an inverse Haar Wavelet Transform of the incoming signal (in place).
@param[in,out] sig incoming signals
@param[in] n window size */ 
extern void SDT_ihaar(double *sig, long n);

/** @brief Computes kinetic energy.
Computes the kinetic energy of an object, given its mass and velocity.
@param[in] mass Mass of the object (Kg)
@param[in] velocity Velocity of the object (m/s)
@return Kinetic energy (J) */
extern double SDT_kinetic(double mass, double velocity);

/** @brief Returns the smallest power of 2 greater or equal than u.
@param[in] u Input value
@return Smallest power of 2 greater or equal than u */
extern unsigned int SDT_nextPow2(unsigned int u);

/** @brief Rescales a value of known range into the [0.0, 1.0] interval.
Rescales a value of known range into the [0.0, 1.0] interval.
@param[in] x Value to normalize
@param[in] min Lower bound
@param[in] max Upper bound
@return Value rescaled from [min, max] to [0.0, 1.0] */
extern double SDT_normalize(double x, double min, double max);

/** @brief Normalizes samples in a window so that their sum is equal to 1.
@param[in,out] sig window to normalize
@param[in] n window size */
extern void SDT_normalizeWindow(double *sig, int n);

/** @brief Fills a buffer with ones.
Fills a buffer with ones.
@param[in,out] sig pointer to the buffer
@param[in] n buffer size */
extern void SDT_ones(double *sig, int n);

/** @brief Finds the kth smallest value in the input array.
Finds the kth smallest value in the input array.
@param[in] x input array
@param[in] n array size
@param[in] k item rank
@return kth smallest value in the array */
extern double SDT_rank(double *x, int n, int k);

/** @brief Removes the global average from samples in a window.
@param[in,out] sig window to remove the average from
@param[in] n window size */
extern void SDT_removeDC(double *sig, int n);

/** @brief Finds regions of influence (local maxima and minima) in a buffer.
Finds regions of influence (local maxima and minima) in a buffer.
@param[in] sig pointer to the buffer
@param[out] peaks indexes of the local maxima in the buffer
@param[out] bounds indexes of the local minima in the buffer
@param[i] d samples have to be greater than d neighbors to the left and to the right to be considered local maxima
@param[in] n buffer size */
extern int SDT_roi(double *sig, int *peaks, int *bounds, int d, int n);

/** @brief Time needed to travel the given distance at Mach 1.
Computes the amount of time, in samples, needed by a sound wave propagating in air
to travel a given distance. Particularly useful to set the delay times of comb filters
and/or digital waveguides representing hollow cavities.
@param[in] length Distance (m)
@return Amount of samples to travel the distance at Mach 1 */
extern double SDT_samplesInAir(double length);

/** @brief Rescales a value from a source range to a target range.
Rescales a value from a source range to a target range.
@param[in] x Value to rescale
@param[in] srcMin Lower bound of source value
@param[in] srcMax Upper bound of source value
@param[in] dstMin Lower bound of rescaled value
@param[in] dstMax Upper bound of rescaled value
@param[in] gamma Gamma factor
@return Value rescaled from [srcMin, srcMax] to [dstMin, dstMax] with gamma factor \c gamma */
extern double SDT_scale(double x, double srcMin, double srcMax,
                        double dstMin, double dstMax, double gamma);

/** @brief Computes the signum function.
Computes the signum function.
@param[in] x Input value
@return Signum of x */
extern int SDT_signum(double x);

/** @brief Applies a sinc window (sin(wt)/(wt)) to a chunk of samples.
Applies a sinc window (sin(wt)/(wt)) to a chunk of samples.
@param[in,out] sig samples to window
@param[in] w sinc parameter
@param[in] n window size */
extern void SDT_sinc(double *sig, double w, int n);

/** @brief Performs quadratic interpolation to estimate the true position of a peak.
Performs quadratic interpolation to estimate the true position of a peak.
@param[in] sig signal buffer
@param[in] peak index of a local maximum
@return true peak position */
extern double SDT_truePeakPos(double *sig, int peak);

/** @brief Performs quadratic interpolation to estimate the true amplitude value of a peak.
Performs quadratic interpolation to estimate the true amplitude value of a peak.
@param[in] sig signal buffer
@param[in] peak index of a local maximum
@return true peak value */
extern double SDT_truePeakValue(double *sig, int peak);

/** @brief Wraps a phase in the range -pi/pi.
Wraps a phase in the range -pi/pi.
@param[x] unwrapped phase
return wrapped phase */
extern double SDT_wrap(double x);

/** @brief Fills a buffer with zeros.
Fills a buffer with zeros.
@param[in,out] sig pointer to the buffer
@param[in] n buffer size */
extern void SDT_zeros(double *sig, int n);

#ifdef __cplusplus
};
#endif

#endif

/** @} */
