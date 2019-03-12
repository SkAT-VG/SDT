/** @file SDTComplex.h
@defgroup complex SDTComplex.h: Handling complex numbers
This module contains data structures and functions to perform
basic operations with complex numbers.
@{ */

#ifndef SDT_COMPLEX_H
#define SDT_COMPLEX_H

#ifdef __cplusplus
extern "C" {
#endif

/** @brief Data structure containing the real and imaginary part of a complex number. */
typedef struct SDTComplex {
  double r, i;
} SDTComplex;

/** @brief Returns a complex number with the given real and imaginary parts.
@param[in] real Real part
@param[in] imag Imaginary part
@return Complex number */
extern SDTComplex SDTComplex_car(double real, double imag);

/** @brief Returns a complex exponential with base e and given phase.
@param[in] phase Phase
@return Complex exponential */
extern SDTComplex SDTComplex_exp(double phase);

/** @brief Returns the absolute value (magnitude) of a complex number.
@param[in] a Input value
@return Absolute value of input */
extern double SDTComplex_abs(SDTComplex a);

/** @brief Returns the angle (phase) of a complex number.
@param[in] a Input value
@return Angle of input */
extern double SDTComplex_angle(SDTComplex a);

/** @brief Returns the complex conjugate of a complex number.
@param[in] a Input value
@return Complex conjugate of input */
extern SDTComplex SDTComplex_conj(SDTComplex a);

/** @brief Returns the sum of two complex numbers.
@param[in] a First operand
@param[in] b Second operand
@return a plus b */
extern SDTComplex SDTComplex_add(SDTComplex a, SDTComplex b);

/** @brief Returns the difference of two complex numbers.
@param[in] a First operand
@param[in] b Second operand
@return a minus b */
extern SDTComplex SDTComplex_sub(SDTComplex a, SDTComplex b);

/** @brief Returns the multiplication between two complex numbers.
@param[in] a First operand
@param[in] b Second operand
@return a times b */
extern SDTComplex SDTComplex_mult(SDTComplex a, SDTComplex b);

/** @brief Returns the division between two complex numbers.
@param[in] a First operand
@param[in] b Second operand
@return a divided by b */
extern SDTComplex SDTComplex_div(SDTComplex a, SDTComplex b);

/** @brief Returns the sum of a complex number and a real number.
@param[in] a Complex operand
@param[in] b Real operand
@return a plus b */
extern SDTComplex SDTComplex_addReal(SDTComplex a, double b);

/** @brief Returns the difference of a complex number and a real number.
@param[in] a Complex operand
@param[in] b Real operand
@return a minus b */
extern SDTComplex SDTComplex_subReal(SDTComplex a, double b);

/** @brief Returns the difference of a real number and a complex number.
@param[in] a Real operand
@param[in] b Complex operand
@return a minus b */
extern SDTComplex SDTComplex_realSub(double a, SDTComplex b);

/** @brief Returns the multiplication between a complex number and a real number.
@param[in] a Complex operand
@param[in] b Real operand
@return a times b */
extern SDTComplex SDTComplex_multReal(SDTComplex a, double b);

/** @brief Returns the division between a complex number and a real number.
@param[in] a Complex operand
@param[in] b Real operand
@return a divided by b */
extern SDTComplex SDTComplex_divReal(SDTComplex a, double b);

/** @brief Returns the division between a real number and a complex number.
@param[in] a Real operand
@param[in] b Complex operand
@return a divided by b */
extern SDTComplex SDTComplex_realDiv(double a, SDTComplex b);

#ifdef __cplusplus
};
#endif

#endif

/** @} */
