#ifndef SDT_GASES_H
#define SDT_GASES_H

/**
@defgroup turbulence Wind and gas turbulence

Physical models to simulate wooshes, wind gusts and howls, helicopter rotors and so on.
A gas flowing in a more or less constant direction usually doesn't make any sound by itself,
its pressure variations being too slow to fall into the audible range.
Nevertheless, objects obstructing the air flow are likely to cause turbulence
at much higher frequencies, and therefore they do make sounds.
Heavily inspired by the work of Andy Farnell in his book "Designing Sound", these models
render chaotic turbulences through filtered random noise. 

@{
*/

/**
@defgroup windflow Turbulence against solid objects

One of the possible sources of turbulence is the impact on a large solid surface.
In this case, turbulence is generated due to the impact of the air molecules on the surface
and to their random change of direction caused by the irregularities of the surface itself.
The resulting sound is modeled through a bandpass-filtered white noise generator.
The center frequency and bandwidth of the filter are empirically set to fixed values, while
the resulting output is modulated in amplitude according to the velocity of the air flow.

@{
*/
typedef struct SDTWindFlow SDTWindFlow;

/**
Object constructor

Instantiates a SDTWindFlow object instance.

@return Pointer to the allocated memory
*/
extern SDTWindFlow *SDTWindFlow_new();

/**
Object destructor

Frees the allocated memory for a SDTWindFlow object instance.

@param[in] x Pointer to a SDTWindFlow instance
*/
extern void SDTWindFlow_free(SDTWindFlow *x);

/**
Update filter coefficients

Should be always called after setting the sampling rate with SDT_setSampleRate().

@param[in] x Pointer to a SDTWindFlow instance
*/
extern void SDTWindFlow_setFilters(SDTWindFlow *x);

/**
Sets the velocity of the wind

@param[in] x Pointer to a SDTWindFlow instance
@param[in] f Wind velocity [0,1]
*/
void SDTWindFlow_setWindSpeed(SDTWindFlow *x, double f);

/**
Sound processing routine

@param[in] x Pointer to a SDTWindFlow instance
*/
extern double SDTWindFlow_dsp(SDTWindFlow *x);

/**
@}
*/

/**
@defgroup windcavity Turbulence through hollow cavities

Hollow objects such as pipes, valves, tunnels and doorways
force the air moving inside them to oscillate at their resonant frequencies,
which depend on the size and shape of the cavity itself.
Different modes of resonance can be excited, in a more or less noticeable way,
depending on the speed of the air flowing inside the tube.
For each mode of resonance there is an optimal speed,
which makes the air inside the tube resonate the most.
As the speed increases, resonance gets weaker and weaker
until it breaks up into the next harmonic.
Sound waves trapped in a cylindrical cavity can be effectively simulated using
a simple comb filter, namely a delay line with feedback.
The different excitation of the various harmonics is modeled by a resonant bandpass filter
with a high Q factor, therefore with a narrow band and a high resonance.

@{
*/
typedef struct SDTWindCavity SDTWindCavity;

/**
Object constructor

Instantiates a SDTWindCavity object instance.

@param[in] maxDelay Size of the comb filter buffer, in samples.
@return Pointer to the allocated memory
*/
extern SDTWindCavity *SDTWindCavity_new(int maxDelay);
extern void SDTWindCavity_free(SDTWindCavity *x);
extern void SDTWindCavity_setLength(SDTWindCavity *x, double f);
extern void SDTWindCavity_setDiameter(SDTWindCavity *x, double f);
extern void SDTWindCavity_setWindSpeed(SDTWindCavity *x, double f);
extern void SDTWindCavity_updateGeometry(SDTWindCavity *x);
extern void SDTWindCavity_updateResonance(SDTWindCavity *x);
extern double SDTWindCavity_dsp(SDTWindCavity *x);

/**
@}
*/

/**
@defgroup windkarman Turbulence across thin objects
An air flow hitting a thin object, such as a tree branch or a suspended wire,
produces a singing or howling sound caused by a phenomenon known as Karman vortex street.
This particular kind of turbulence is a repeating pattern of swirling vortices
caused by the unsteady separation of flow of a fluid around the object. 
Karman vortex streets are modeled by white noise, passing through a bandpass filter
with narrow bandwidth and high resonance.

@{
*/

typedef struct SDTWindKarman SDTWindKarman;

/**
Object constructor

Instantiates a SDTWindKarman object instance.

@return Pointer to the allocated memory
*/
extern SDTWindKarman *SDTWindKarman_new();
extern void SDTWindKarman_free(SDTWindKarman *x);
extern void SDTWindKarman_setDiameter(SDTWindKarman *x, double f);
extern void SDTWindKarman_setWindSpeed(SDTWindKarman *x, double f);
extern void SDTWindKarman_updateResonance(SDTWindKarman *x);
extern double SDTWindKarman_dsp(SDTWindKarman *x);

/**
@}
*/

/**
@}
*/

/**
@defgroup explosions Supersonic explosions

Powerful explosions, as well as objects travelling at supersonic speed
such as rifle bullets or cracking whip tails, create shock waves,
namely a sudden peak in pressure followed by a negative expansion tail.
Although being highly impulsive events, explosions also generate turbulence and other
kinds of chaotic scattering which yield complex acoustic textures
and have a direct effect on the resulting sound.
The SDT explosion model uses a Friedlander waveform to render the impulsive part,
and a Feedback Delay Network reverb to simulate scattering.

@{
*/
typedef struct SDTExplosion SDTExplosion;

extern SDTExplosion *SDTExplosion_new(long maxScatter, long maxDelay);
extern void SDTExplosion_free(SDTExplosion *x);
extern void SDTExplosion_setBlastTime(SDTExplosion *x, double f);
extern void SDTExplosion_setScatterTime(SDTExplosion *x, double f);
extern void SDTExplosion_setDispersion(SDTExplosion *x, double f);
extern void SDTExplosion_setDistance(SDTExplosion *x, double f);
extern void SDTExplosion_setWaveSpeed(SDTExplosion *x, double f);
extern void SDTExplosion_setWindSpeed(SDTExplosion *x, double f);
extern void SDTExplosion_update(SDTExplosion *x);
extern void SDTExplosion_dsp(SDTExplosion *x, double *outs);

/**
@}
*/

#endif
