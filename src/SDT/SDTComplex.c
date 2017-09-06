#include <math.h>
#include <stdlib.h>
#include "SDTCommon.h"
#include "SDTComplex.h"

SDTComplex SDTComplex_car(double real, double imag) {
  SDTComplex x;
  
  x.r = real;
  x.i = imag;
  return x;
}

SDTComplex SDTComplex_exp(double phase) {
  SDTComplex x;
  
  x.r = cos(phase);
  x.i = sin(phase);
  return x;
}

double SDTComplex_abs(SDTComplex a) {
  double x;
  
  x = sqrt(a.r * a.r + a.i * a.i);
  return x;
}

double SDTComplex_angle(SDTComplex a) {
  double x;
  
  x = atan2(a.i, a.r);
  return x;
}

SDTComplex SDTComplex_conj(SDTComplex a) {
  SDTComplex x;
  
  x.r = a.r;
  x.i = -a.i;
  return x;
}

SDTComplex SDTComplex_add(SDTComplex a, SDTComplex b) {
  SDTComplex x;
  
  x.r = a.r + b.r;
  x.i = a.i + b.i;
  return x;
}

SDTComplex SDTComplex_sub(SDTComplex a, SDTComplex b) {
  SDTComplex x;
  
  x.r = a.r - b.r;
  x.i = a.i - b.i;
  return x;
}

SDTComplex SDTComplex_mult(SDTComplex a, SDTComplex b) {
  SDTComplex x;
  
  x.r = a.r * b.r - a.i * b.i;
  x.i = a.i * b.r + a.r * b.i;
  return x;
}

SDTComplex SDTComplex_div(SDTComplex a, SDTComplex b) {
  SDTComplex x;
  double d;
  
  d = b.r * b.r + b.i * b.i;
  x.r = (a.r * b.r + a.i * b.i) / d;
  x.i = (a.i * b.r - a.r * b.i) / d;
  return x;
}

SDTComplex SDTComplex_addReal(SDTComplex a, double b) {
  SDTComplex x;
  
  x.r = a.r + b;
  x.i = a.i;
  return x;
}

SDTComplex SDTComplex_subReal(SDTComplex a, double b) {
  SDTComplex x;
  
  x.r = a.r - b;
  x.i = a.i;
  return x;
}

SDTComplex SDTComplex_realSub(double a, SDTComplex b) {
  SDTComplex x;
  
  x.r = a - b.r;
  x.i = -b.i;
  return x;
}

SDTComplex SDTComplex_multReal(SDTComplex a, double b) {
  SDTComplex x;
  
  x.r = a.r * b;
  x.i = a.i * b;
  return x;
}

SDTComplex SDTComplex_divReal(SDTComplex a, double b) {
  SDTComplex x;
  double d;
  
  d = b * b;
  x.r = (a.r * b) / d;
  x.i = (a.i * b) / d;
  return x;
}

SDTComplex SDTComplex_realDiv(double a, SDTComplex b) {
  SDTComplex x;
  double d;
  
  d = b.r * b.r + b.i * b.i;
  x.r = (a * b.r) / d;
  x.i = (-a * b.i) / d;
  return x;
}
