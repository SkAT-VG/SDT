/** @mainpage
* The 'Sound Design Toolkit' (SDT) is an open-source (GPLv3) framework for
* ecologically founded sound synthesis and design. Think of it as a virtual
* Foley-box!
* It can simulate various acoustic phenomena arising from solid interactions
* (e.g. collision, rubbing, rolling, scraping), liquids (e.g. dripping,
* streaming water), gasses (e.g. explosions, blowing wind), and machines (e.g.
* combustion engines, electric motors).
* The library consists of physically informed sound synthesis models, audio
* processing algorithms and analysis routines.
*
* The SDT is mainly aimed at research and education in 'Sonic Interaction Design'
* (SID), but it's been successfully used in musical contexts as well.
*
* The SDT sound synthesis algorithms have been implemented according to three
* main points:
* 1. auditory perceptual relevance;
* 2. cartoonification, i.e. simplification and exaggeration of the underlying
* physics in order to increase both computational efficiency and perceptual
* clarity;
* 3. parametric temporal control, which ensures appropriate, natural and
* expressive articulations of sonic processes.
*
* Developed with the contribution of the following EU-projects:
*    2001-2003 'SOb' http://www.soundobject.org/
*    2006-2009 'CLOSED' http://closed.ircam.fr/
*    2008-2011 'NIW' http://www.soundobject.org/niw/
*    2014-2016 'SkAT-VG' http://www.skatvg.eu/
*
* Authors and contributors (either programmers or designers) in alphabetical
* order:
*    Federico Avanzini (federico.avanzini@di.unimi.it)
*    Stefano Baldan (singintime@gmail.com)
*    Nicola Bernardini
*    Gianpaolo Borin
*    Carlo Drioli (carlo.drioli@uniud.it)
*    Stefano Delle Monache (s.dellemonache@tudelft.nl)
*    Delphine Devallez
*    Federico Fontana (federico.fontana@uniud.it)
*    Laura Ottaviani
*    Stefano Papetti (stefano.papetti@zhdk.ch)
*    Pietro Polotti (pietro.polotti@conts.it)
*    Matthias Rath
*    Davide Rocchesso (davide.rocchesso@unipa.it)
*    Stefania Serafin (sts@create.aau.dk)
*    Marco Tiraboschi (marco.tiraboschi@unimi.it)
*
* Contact: SoundDesignToolkit@gmail.com
*
* This file is part of the Sound Design Toolkit (SDT).
*
* The SDT is free software: you can redistribute it and/or modify
* it under the terms of the GNU General Public License as published by
* the Free Software Foundation, either version 3 of the License, or
* (at your option) any later version.
*
* The SDT is distributed in the hope that it will be useful,
* but WITHOUT ANY WARRANTY; without even the implied warranty of
* MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
* GNU General Public License for more details.
*
* You should have received a copy of the GNU General Public License
* along with the SDT.  If not, see <https://www.gnu.org/licenses/>.
*
* The official SDT distribution contains copy of the GNU General Public License
* in the file COPYING.txt
*****************************************************************************/

/** @file SDTCommon.h
@defgroup common SDTCommon.h: Common variables and functions
Macros, variables and functions commonly used by all the SDT objects.
SDTCommon.h should always be included when using other SDT modules.
@{ */

#ifndef SDT_COMMON_H
#define SDT_COMMON_H

/** @brief SDT version number */
#define SDT_ver          081
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

/** @brief Returns the index of the maximum value in an array of data
@param[in] x Pointer to the data array
@param[in] n Length of the data array
@param[out] maxOut If not null, writes the maximum value to the pointed variable
@return Index of the maximum value in the array */
extern unsigned int SDT_argMax(double *x, unsigned int n, double *maxOut);

/** @brief Returns the index of the minimum value in an array of data
@param[in] x Pointer to the data array
@param[in] n Length of the data array
@param[out] minOut If not null, writes the maximum value to the pointed variable
@return Index of the minimum value in the array */
extern unsigned int SDT_argMin(double *x, unsigned int n, double *minOut);

/** @brief Returns the arithmetic mean of an array of values
@param[in] x Pointer to the data array
@param[in] n Length of the data array
@return Arithmetic mean of the array */
extern double SDT_average(double *x, unsigned int n);

/** @brief Reverses the bit order of an unsigned integer of given bit length.
@param[in] u Input value
@param[in] bits Number of bits to reverse
@return Unsigned integer with reversed bits */
extern unsigned int SDT_bitReverse(unsigned int u, unsigned int bits);

/** @brief Applies a Blackman window to a chunk of samples.
Applies a Blackman window to a chunk of samples.
@param[in,out] sig samples to window
@param[in] n window size */
extern void SDT_blackman(double *sig, int n);

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

/** @brief Checks if the selected value is the minimum among its neighbors.
@param[in] x Array of data
@param[in] i Index of the selected value
@param[in] radius Number of neighbors to check, for each direction
@return 1 if the selected value is less than its left neighbors, and less than or equal to its right neighbors. 0 otherwise */
extern int SDT_isHole(double *x, unsigned int i, unsigned int radius);

/** @brief Checks if the selected value is the maximum among its neighbors.
@param[in] x Array of data
@param[in] i Index of the selected value
@param[in] radius Number of neighbors to check, for each direction
@return 1 if the selected value is greater than its left neighbors, and greater than or equal to its right neighbors. 0 otherwise */
extern int SDT_isPeak(double *x, unsigned int i, unsigned int radius);

/** @brief Computes kinetic energy.
Computes the kinetic energy of an object, given its mass and velocity.
@param[in] mass Mass of the object (Kg)
@param[in] velocity Velocity of the object (m/s)
@return Kinetic energy (J) */
extern double SDT_kinetic(double mass, double velocity);

/** @brief Returns the maximum value in an array of data.
@param[in] x Pointer to the data array
@param[in] n Length of the data array
@return Maximum value in the array */
extern double SDT_max(double *x, unsigned int n);

/** @brief Returns the minimum value in an array of data.
@param[in] x Pointer to the data array
@param[in] n Length of the data array
@return Minimum value in the array */
extern double SDT_min(double *x, unsigned int n);

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

/** @brief Inverse function for SDT_samplesInAir
@param[in] samples Amount of samples to travel the distance at Mach 1
@return Distance (m) */
extern double SDT_samplesInAir_inv(double samples);

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

/** @brief Returns the arithmetic mean of an array of values weighted by the weights array
@param[in] values Pointer to the data array
@param[in] weights Pointer to the weights array
@param[in] n Length of the arrays
@return Arithmetic mean of the values array weighted by the weights array */
extern double SDT_weightedAverage(double *values, double *weights, unsigned int n);
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
