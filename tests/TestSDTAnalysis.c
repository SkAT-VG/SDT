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
  _TEST_SDT_HASHMAP(ZeroCrossing, 1)
  SDT_TEST_END()
}

// ----------------------------------------------------------------------------

// --- Myoelastic -------------------------------------------------------------

static void _TestSDTMyoelastic_setFrequency(
    CuTest *tc, void (*set_fn)(SDTMyoelastic *, double),
    double (*get_fn)(const SDTMyoelastic *)) {
  SDTMyoelastic *myo = SDTMyoelastic_new();
  SDTRandomSequence *freqs = SDTRandomSequence_newLog(1024, 1.01, 20000);
  FOR_RANDOM_ITER_FLOAT (freqs, f) {
    set_fn(myo, 1 / f);
    CuAssertDblEquals_Msg(tc, "Lower limit: 1.0", 1.0, get_fn(myo), 0);
    SDTMyoelastic_update(myo);
    set_fn(myo, f);
    CuAssertDblEquals(tc, f, get_fn(myo), 0);
    SDTMyoelastic_update(myo);
  }
  SDTMyoelastic_free(myo);
  SDTRandomSequence_free(freqs);
}

void TestSDTMyoelastic_setDcFrequency(CuTest *tc) {
  SDT_TEST_BEGIN()
  _TestSDTMyoelastic_setFrequency(tc, &SDTMyoelastic_setDcFrequency,
                                  &SDTMyoelastic_getDcFrequency);
  SDT_TEST_END()
}

void TestSDTMyoelastic_setLowFrequency(CuTest *tc) {
  SDT_TEST_BEGIN()
  _TestSDTMyoelastic_setFrequency(tc, &SDTMyoelastic_setLowFrequency,
                                  &SDTMyoelastic_getLowFrequency);
  SDT_TEST_END()
}

void TestSDTMyoelastic_setHighFrequency(CuTest *tc) {
  SDT_TEST_BEGIN()
  _TestSDTMyoelastic_setFrequency(tc, &SDTMyoelastic_setHighFrequency,
                                  &SDTMyoelastic_getHighFrequency);
  SDT_TEST_END()
}

void TestSDTMyoelastic_setThreshold(CuTest *tc) {
  SDT_TEST_BEGIN()
  SDTMyoelastic *myo = SDTMyoelastic_new();
  SDTRandomSequence *ths = SDTRandomSequence_newFloat(1024, 0, 1);
  FOR_RANDOM_ITER_FLOAT (ths, f) {
    SDTMyoelastic_setThreshold(myo, f);
    CuAssertDblEquals(tc, f, SDTMyoelastic_getThreshold(myo), 0);
  }
  SDTMyoelastic_free(myo);
  SDTRandomSequence_free(ths);
  SDT_TEST_END()
}

void TestSDTMyoelastic_dsp_whiteNoise(CuTest *tc) {
  SDT_TEST_BEGIN()
  SDTMyoelastic *myo = SDTMyoelastic_new();
  SDTRandomSequence *srs = SDTRandomSequence_newLog(32, 10, 20000);
  SDTRandomSequence *dcfreqs = SDTRandomSequence_newLog(0, 1, 20000);
  SDTRandomSequence *lofreqs = SDTRandomSequence_newLog(0, 1, 20000);
  SDTRandomSequence *hifreqs = SDTRandomSequence_newLog(0, 1, 20000);
  SDTRandomSequence *ths = SDTRandomSequence_newFloat(0, 0, 1);
  SDTRandomSequence *values = SDTRandomSequence_newFloat(0, -1, 1);
  double out[4] = {0.0, 0.0, 0.0};
  int i;
  FOR_RANDOM_ITER_FLOAT (srs, sr) {
    SDTMyoelastic_setDcFrequency(myo, SDTRandomSequence_nextFloat(dcfreqs));
    SDTMyoelastic_setLowFrequency(myo, SDTRandomSequence_nextFloat(lofreqs));
    SDTMyoelastic_setHighFrequency(myo, SDTRandomSequence_nextFloat(hifreqs));
    SDTMyoelastic_setThreshold(myo, SDTRandomSequence_nextFloat(ths));
    SDT_setSampleRate((int)sr);
    SDTMyoelastic_update(myo);
    for (i = 0; i < 1 << 14; ++i) {
      SDTMyoelastic_dsp(myo, out, SDTRandomSequence_nextFloat(values));
      // If x is nan, then x != x
      CuAssert(tc, "Slow amount >= 0.0", out[0] != out[0] || out[0] >= 0.0);
      CuAssert(tc, "Slow amount <= 1.0", out[0] != out[0] || out[0] <= 1.0);
      CuAssert(tc, "Slow freq >= 0.0", out[1] != out[1] || out[1] >= 0.0);
      CuAssert(tc, "Slow freq <= sr/2", out[1] != out[1] || out[1] * 2 <= sr);
      CuAssert(tc, "Fast amount >= 0.0", out[2] != out[2] || out[2] >= 0.0);
      CuAssert(tc, "Fast amount <= 1.0", out[2] != out[2] || out[2] <= 1.0);
      CuAssert(tc, "Fast freq >= 0.0", out[3] != out[3] || out[3] >= 0.0);
      CuAssert(tc, "Fast freq <= sr/2", out[3] != out[3] || out[3] * 2 <= sr);
    }
  }
  SDTMyoelastic_free(myo);
  SDTRandomSequence_free(dcfreqs);
  SDTRandomSequence_free(lofreqs);
  SDTRandomSequence_free(hifreqs);
  SDTRandomSequence_free(ths);
  SDTRandomSequence_free(values);
  SDTRandomSequence_free(srs);
  SDT_TEST_END()
}

void TestSDTMyoelastic_copy(CuTest *tc) {
  SDT_TEST_BEGIN()
  SDTMyoelastic *myo, *myo_ = SDTMyoelastic_new();
  SDTRandomSequence *srs = SDTRandomSequence_newLog(32, 10, 20000);
  SDTRandomSequence *dcfreqs = SDTRandomSequence_newLog(0, 1, 20000);
  SDTRandomSequence *lofreqs = SDTRandomSequence_newLog(0, 1, 20000);
  SDTRandomSequence *hifreqs = SDTRandomSequence_newLog(0, 1, 20000);
  SDTRandomSequence *ths = SDTRandomSequence_newFloat(0, 0, 1);
  double dcf, lof, hif, th;
  FOR_RANDOM_ITER_FLOAT (srs, sr) {
    // Set myo
    myo = SDTMyoelastic_new();
    SDTMyoelastic_setDcFrequency(myo,
                                 dcf = SDTRandomSequence_nextFloat(dcfreqs));
    SDTMyoelastic_setLowFrequency(myo,
                                  lof = SDTRandomSequence_nextFloat(lofreqs));
    SDTMyoelastic_setHighFrequency(myo,
                                   hif = SDTRandomSequence_nextFloat(hifreqs));
    SDTMyoelastic_setThreshold(myo, th = SDTRandomSequence_nextFloat(ths));
    // Copy to myo_
    SDTMyoelastic_update(myo);
    SDT_setSampleRate((int)sr);
    SDTMyoelastic_copy(myo_, myo, 0);
    SDTMyoelastic_free(myo);
    SDTMyoelastic_update(myo_);
    CuAssertDblEquals_Msg(tc, "Check Dc Frequency", dcf,
                          SDTMyoelastic_getDcFrequency(myo_), 0);
    CuAssertDblEquals_Msg(tc, "Check Low Frequency", lof,
                          SDTMyoelastic_getLowFrequency(myo_), 0);
    CuAssertDblEquals_Msg(tc, "Check High Frequency", hif,
                          SDTMyoelastic_getHighFrequency(myo_), 0);
    CuAssertDblEquals_Msg(tc, "Check Threshold", th,
                          SDTMyoelastic_getThreshold(myo_), 0);
  }
  SDTMyoelastic_free(myo_);
  SDTRandomSequence_free(dcfreqs);
  SDTRandomSequence_free(lofreqs);
  SDTRandomSequence_free(hifreqs);
  SDTRandomSequence_free(ths);
  SDTRandomSequence_free(srs);
  SDT_TEST_END()
}

void TestSDTMyoelastic_hashmap(CuTest *tc) {
  SDT_TEST_BEGIN()
  _TEST_SDT_HASHMAP(Myoelastic, )
  SDT_TEST_END()
}

// ----------------------------------------------------------------------------

// --- SpectralFeats ----------------------------------------------------------

// TODO

// ----------------------------------------------------------------------------

// --- Pitch ------------------------------------------------------------------

// TODO

// ----------------------------------------------------------------------------
