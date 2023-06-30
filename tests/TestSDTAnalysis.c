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
    CuAssertDblEquals(tc, f, SDTZeroCrossing_getOverlap(zx), 0.005);
  }
  SDTZeroCrossing_free(zx);
  SDTRandomSequence_free(olaps);
  SDT_TEST_END()
}

void TestSDTZeroCrossing_setSize(CuTest *tc) {
  SDT_TEST_BEGIN()
  SDTZeroCrossing *zx = SDTZeroCrossing_new(1024);
  SDTRandomSequence *sizes = SDTRandomSequence_newLog(1024, 1 << 8, 1 << 15);
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
  SDTRandomSequence *sizes = SDTRandomSequence_newLog(32, 1 << 8, 1 << 15);
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

void TestSDTZeroCrossing_copy(CuTest *tc) {
  SDT_TEST_BEGIN()
  SDTZeroCrossing *zx, *zx_ = SDTZeroCrossing_new(1);
  SDTZeroCrossing_setOverlap(zx_, 0.0);
  SDTRandomSequence *sizes = SDTRandomSequence_newLog(32, 1 << 8, 1 << 15);
  SDTRandomSequence *olaps = SDTRandomSequence_newFloat(0, 0, 0.99);
  SDTRandomSequence *values = SDTRandomSequence_newFloat(0, -1, 1);
  double f;
  FOR_RANDOM_ITER_FLOAT (sizes, s) {
    // Set zx
    zx = SDTZeroCrossing_new((int)s);
    SDTZeroCrossing_setOverlap(zx, SDTRandomSequence_nextFloat(olaps));
    f = SDTZeroCrossing_getOverlap(zx);
    // Copy to zx_
    SDTZeroCrossing_copy(zx_, zx, 1);
    SDTZeroCrossing_free(zx);
    CuAssertIntEquals(tc, (int)s, SDTZeroCrossing_getSize(zx_));
    CuAssertDblEquals(tc, f, SDTZeroCrossing_getOverlap(zx_), 0.005);
  }
  SDTZeroCrossing_free(zx_);
  SDTRandomSequence_free(sizes);
  SDTRandomSequence_free(olaps);
  SDTRandomSequence_free(values);
  SDT_TEST_END()
}

void TestSDTZeroCrossing_hashmap(CuTest *tc) {
  SDT_TEST_BEGIN()
  SDTZeroCrossing *zx0 = SDTZeroCrossing_new(1);
  SDTZeroCrossing *zx1 = SDTZeroCrossing_new(1);
  const char *key0 = "zx0";
  const char *key1 = "zx1";

  // No registered
  CuAssertPointerEquals(tc, NULL, SDT_getZeroCrossing(key0));
  CuAssertPointerEquals(tc, NULL, SDT_getZeroCrossing(key1));
  CuAssertPointerEquals(tc, NULL, SDT_getZeroCrossing("missing"));

  // Register 0
  CuAssertIntEquals(tc, 0, SDT_registerZeroCrossing(zx0, key0));
  CuAssertPointerEquals(tc, zx0, SDT_getZeroCrossing(key0));
  CuAssertPointerEquals(tc, NULL, SDT_getZeroCrossing(key1));
  CuAssertPointerEquals(tc, NULL, SDT_getZeroCrossing("missing"));

  // Re-register 0 (will print a warning)
  CuAssertIntEquals(tc, 1, SDT_registerZeroCrossing(zx0, key0));

  // Register 1
  CuAssertIntEquals(tc, 0, SDT_registerZeroCrossing(zx1, key1));
  CuAssertPointerEquals(tc, zx0, SDT_getZeroCrossing(key0));
  CuAssertPointerEquals(tc, zx1, SDT_getZeroCrossing(key1));
  CuAssertPointerEquals(tc, NULL, SDT_getZeroCrossing("missing"));

  // Unregister missing
  CuAssertIntEquals(tc, 1, SDT_unregisterZeroCrossing("missing"));

  // Unregister 0
  CuAssertIntEquals(tc, 0, SDT_unregisterZeroCrossing(key0));
  CuAssertPointerEquals(tc, NULL, SDT_getZeroCrossing(key0));
  CuAssertPointerEquals(tc, zx1, SDT_getZeroCrossing(key1));
  CuAssertPointerEquals(tc, NULL, SDT_getZeroCrossing("missing"));

  // Unregister 1
  CuAssertIntEquals(tc, 0, SDT_unregisterZeroCrossing(key1));
  CuAssertPointerEquals(tc, NULL, SDT_getZeroCrossing(key0));
  CuAssertPointerEquals(tc, NULL, SDT_getZeroCrossing(key1));
  CuAssertPointerEquals(tc, NULL, SDT_getZeroCrossing("missing"));

  // Unregister missing on empty hashmap
  CuAssertIntEquals(tc, 1, SDT_unregisterZeroCrossing("missing"));

  SDTZeroCrossing_free(zx0);
  SDTZeroCrossing_free(zx1);
  SDT_TEST_END()
}

// ----------------------------------------------------------------------------
