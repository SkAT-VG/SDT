/** @file SDTTestUtils.h
@defgroup test_utils SDTTestUtils.h: Utilities for tests
@{ */

#ifndef SDT_TESTUTILS_H
#define SDT_TESTUTILS_H

#ifdef __cplusplus
extern "C" {
#endif

/** @brief Opaque data structure for random number sequences. */
typedef struct SDTRandomSequence SDTRandomSequence;

/** @brief Object constructor.
@param[in] n Number of numbers in the sequence
@param[in] min Minimum random number admissible
@param[in] max Maximum random number admissible
@return Pointer to the new instance */
extern SDTRandomSequence *SDTRandomIntSequence_new(unsigned int n, int min, int max);

/** @brief Object constructor.
@param[in] n Number of numbers in the sequence
@param[in] min Minimum random number admissible
@param[in] max Maximum random number admissible
@return Pointer to the new instance */
extern SDTRandomSequence *SDTRandomFloatSequence_new(unsigned int n, float min, float max);

/** @brief Object destructor.
@param[in] x Pointer to the instance to destroy */
extern void SDTRandomSequence_free(SDTRandomSequence *x);

/** @brief Check if random sequence is over.
@param[in] x Pointer to the SDTRandomSequence instance
@return If the sequence is done 1, otherwise 0 */
extern unsigned char SDTRandomSequence_done(SDTRandomSequence *x);

/** @brief Get sequence index.
@param[in] x Pointer to the SDTRandomSequence instance
@return The sequence index */
extern unsigned int SDTRandomSequence_index(SDTRandomSequence *x);

/** @brief Set seed for the first element.
@param[in] x Pointer to the SDTRandomSequence instance
@param[in] b Base seed */
extern void SDTRandom_setBase(SDTRandomSequence *x, unsigned int b);

/** @brief Start random sequence of integers.
@param[in] x Pointer to the SDTRandomSequence instance
@return First random integer */
extern int SDTRandomIntSequence_start(SDTRandomSequence *x);

/** @brief Get next value in the random sequence of integers.
@param[in] x Pointer to the SDTRandomSequence instance
@return Next random integer */
extern int SDTRandomIntSequence_next(SDTRandomSequence *x);

/** @brief Start random sequence of floats.
@param[in] x Pointer to the SDTRandomSequence instance
@return First random float */
extern float SDTRandomFloatSequence_start(SDTRandomSequence *x);

/** @brief Get next value in the random sequence of floats.
@param[in] x Pointer to the SDTRandomSequence instance
@return Next random float */
extern float SDTRandomFloatSequence_next(SDTRandomSequence *x);

/** @brief Start random sequence of log-distributed floats.
@param[in] x Pointer to the SDTRandomSequence instance
@return First random float */
extern float SDTRandomFloatSequence_startLog(SDTRandomSequence *x);

/** @brief Get next value in the random sequence of log-distributed floats.
@param[in] x Pointer to the SDTRandomSequence instance
@return Next random float */
extern float SDTRandomFloatSequence_nextLog(SDTRandomSequence *x);

#ifdef __cplusplus
};
#endif

#endif

/** @} */
