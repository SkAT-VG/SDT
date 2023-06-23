/**
 * @file TestSDTAnalysis.c
 * @author Marco Tiraboschi (marco.tiraboschi@unimi.it)
 * @brief Test SDT/SDTAnalysis.h
 * @date 2023-05-18
 *
 * @copyright Copyright (c) 2023
 */
#include <math.h>
#include "CuTest.h"
#include "SDT/SDTAnalysis.h"
#include "SDTTestUtils.h"

// --- Zero Crossing ----------------------------------------------------------

void TestSDTZeroCrossing_setOverlap(CuTest *tc) {
  SDT_TEST_BEGIN()
  SDTZeroCrossing *zx = SDTZeroCrossing_new(1024);
  SDTRandomSequence *olaps = SDTRandomSequence_newFloat(1024, 0, 0.999);
  FOR_RANDOM_ITER_FLOAT (olaps, f) {
    SDTZeroCrossing_setOverlap(zx, f);
    CuAssertDblEquals(tc, f, SDTZeroCrossing_getOverlap(zx), 0.001);
  }
  SDTZeroCrossing_free(zx);
  SDTRandomSequence_free(olaps);
  SDT_TEST_END()
}

void TestSDTZeroCrossing_setSize(CuTest *tc) {
  SDT_TEST_BEGIN()
  SDTZeroCrossing *zx = SDTZeroCrossing_new(1024);
  SDTRandomSequence *sizes = SDTRandomSequence_newLog(1024, 1, 1 << 15);
  FOR_RANDOM_ITER_FLOAT (sizes, s) {
    SDTZeroCrossing_setSize(zx, (int)s);
    CuAssertIntEquals(tc, (int)s, SDTZeroCrossing_getSize(zx));
  }
  SDTZeroCrossing_free(zx);
  SDTRandomSequence_free(sizes);
  SDT_TEST_END()
}

void TestSDTZeroCrossing_dsp_whiteNoise(CuTest *tc) {
  SDT_TEST_BEGIN()
  SDTZeroCrossing *zx = SDTZeroCrossing_new(1024);
  SDTRandomSequence *sizes = SDTRandomSequence_newLog(32, 1, 1 << 15);
  SDTRandomSequence *olaps = SDTRandomSequence_newFloat(0, 0, 0.99);
  SDTRandomSequence *values = SDTRandomSequence_newFloat(0, -1, 1);
  double out;
  int i;
  FOR_RANDOM_ITER_FLOAT (sizes, s) {
    SDTZeroCrossing_setSize(zx, (int)s);
    SDTZeroCrossing_setOverlap(zx, SDTRandomSequence_nextFloat(olaps));
    for (i = 0; i < 1 << 14; ++i)
      SDTZeroCrossing_dsp(zx, &out, SDTRandomSequence_nextFloat(values));
  }
  SDTZeroCrossing_free(zx);
  SDTRandomSequence_free(sizes);
  SDTRandomSequence_free(olaps);
  SDTRandomSequence_free(values);
  SDT_TEST_END()
}

// ----------------------------------------------------------------------------
