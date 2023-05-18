/**
 * @file TestSDTCommon.c
 * @author Marco Tiraboschi (marco.tiraboschi@unimi.it)
 * @brief Test SDT/SDTCommon.h
 * @date 2023-05-18
 * 
 * @copyright Copyright (c) 2023
 */
#include "SDT/SDTCommon.h"
#include "CuTest.h"

void TestSDT_setSampleRate(CuTest* tc)
{
  int sr = 44100;
  SDT_setSampleRate(sr);
	CuAssertDblEquals(tc, sr, SDT_sampleRate, 0.0);
}
