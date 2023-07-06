/**
 * @file TestSDTOSCAnalysis.c
 * @author Marco Tiraboschi (marco.tiraboschi@unimi.it)
 * @brief Test SDT/SDTOSCAnalysis.h
 * @date 2023-06-29
 *
 * @copyright Copyright (c) 2023
 */
#include "CuTest.h"
#include "SDT/SDTOSC.h"
#include "SDT/SDTOSCAnalysis.h"
#include "SDTTestUtils.h"
#include "stdio.h"

// --- Zero Crossing ----------------------------------------------------------

void TestSDTOSCZeroCrossing_log(CuTest *tc) {
  _TEST_SDTOSC_log(ZeroCrossing, zerox, 1024)
}

void TestSDTOSCZeroCrossing_save_load(CuTest *tc) {
  _TEST_SDTOSC_save_and_load(ZeroCrossing, zerox, 1024)
}

void TestSDTOSCZeroCrossing_loads(CuTest *tc) {
  _TEST_SDTOSC_loads(ZeroCrossing, zerox, "{\"overlap\": 0.5}", 1024)
}

void TestSDTOSCZeroCrossing_setOverlap(CuTest *tc) {
  SDTOSC_TEST_BEGIN("/zerox/overlap", 2, ZeroCrossing, zx, 1024)
  CuAssert(tc, "Fail on too few args", SDTOSCRoot(short_msg) != 0);
  CuAssert(tc, "Fail on uninitialized args", SDTOSCRoot(msg) != 0);

  SDTOSCArgumentList_setArgument(args, 0, SDTOSCArgument_newString(key));
  CuAssert(tc, "Fail on object not found", SDTOSCRoot(msg) != 0);

  SDT_registerZeroCrossing(zx, key);
  CuAssert(tc, "Fail on uninitialized overlap", SDTOSCRoot(msg) != 0);

  SDTRandomSequence *olaps = SDTRandomSequence_newFloat(16, 0, 0.999);
  SDTOSCArgument *a;
  FOR_RANDOM_ITER_FLOAT (olaps, f) {
    a = SDTOSCArgumentList_setArgument(args, 1, SDTOSCArgument_newFloat(f));
    if (a) SDTOSCArgument_free(a);
    SDTOSCRoot(msg);
    CuAssertDblEquals(tc, f, SDTZeroCrossing_getOverlap(zx), 0.005);
  }
  SDTRandomSequence_free(olaps);
  SDT_unregisterZeroCrossing(key);
  SDTOSC_TEST_END(ZeroCrossing, zx)
}

void TestSDTOSCZeroCrossing_setSize(CuTest *tc) {
  SDTOSC_TEST_BEGIN("/zerox/size", 2, ZeroCrossing, zx, 1024)
  CuAssert(tc, "Fail on too few args", SDTOSCRoot(short_msg) != 0);
  CuAssert(tc, "Fail on uninitialized args", SDTOSCRoot(msg) != 0);

  SDTOSCArgumentList_setArgument(args, 0, SDTOSCArgument_newString(key));
  CuAssert(tc, "Fail on object not size", SDTOSCRoot(msg) != 0);

  SDT_registerZeroCrossing(zx, key);
  CuAssert(tc, "Fail on uninitialized overlap", SDTOSCRoot(msg) != 0);

  SDTRandomSequence *sizes = SDTRandomSequence_newLog(16, 1 << 8, 1 << 15);
  SDTOSCArgument *a;
  FOR_RANDOM_ITER_FLOAT (sizes, s) {
    a = SDTOSCArgumentList_setArgument(args, 1,
                                       SDTOSCArgument_newFloat((int)s));
    if (a) SDTOSCArgument_free(a);
    SDTOSCRoot(msg);
    CuAssertDblEquals(tc, (int)s, SDTZeroCrossing_getSize(zx), 0.005);
  }
  SDTRandomSequence_free(sizes);
  SDT_unregisterZeroCrossing(key);
  SDTOSC_TEST_END(ZeroCrossing, zx)
}

// ----------------------------------------------------------------------------

// --- Myoelastic -------------------------------------------------------------

void TestSDTOSCMyoelastic_log(CuTest *tc) {
  _TEST_SDTOSC_log(Myoelastic, myo, )
}

void TestSDTOSCMyoelastic_save_load(CuTest *tc) {
  _TEST_SDTOSC_save_and_load(Myoelastic, myo, )
}

void TestSDTOSCMyoelastic_loads(CuTest *tc) {
  _TEST_SDTOSC_loads(Myoelastic, myo,
                     "{\"dcFrequency\": 2, \"lowFrequency\": 5,"
                     " \"highFrequency\": 100, \"threshold\": 0.005}", )
}

// ----------------------------------------------------------------------------
