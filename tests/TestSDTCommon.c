/**
 * @file TestSDTCommon.c
 * @author Marco Tiraboschi (marco.tiraboschi@unimi.it)
 * @brief Test SDT/SDTCommon.h
 * @date 2023-05-18
 * 
 * @copyright Copyright (c) 2023
 */
#include "SDT/SDTCommon.h"
#include "SDTTestUtils.h"
#include "CuTest.h"

void TestSDT_setSampleRate(CuTest* tc)
{
  SDTRandomSequence *x = SDTRandomFloatSequence_new(1024, 1, 192000);
  FOR_RANDOM_ITER_LOG(x, f)
  {
    SDT_setSampleRate(f);
    CuAssertDblEquals(tc, f, SDT_sampleRate, 0.0);
  }
  SDTRandomSequence_free(x);
}

void TestSDT_setTimeStep(CuTest* tc)
{
  SDTRandomSequence *x = SDTRandomFloatSequence_new(1024, 1, 192000);
  FOR_RANDOM_ITER_LOG(x, f)
  {
    SDT_setSampleRate(f);
    CuAssertDblEquals(tc, 1.0 / f, SDT_timeStep, 0.0);
  }
  SDTRandomSequence_free(x);
}
