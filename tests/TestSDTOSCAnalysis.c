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

#define SDTOSC_ZEROX_TEST_BEGIN(ADDR, NARGS)                             \
  SDT_TEST_BEGIN()                                                       \
  SDTOSCArgumentList *args = SDTOSCArgumentList_new(NARGS);              \
  SDTOSCMessage *short_msg = SDTOSCMessage_new(                          \
      SDTOSCAddress_new(ADDR),                                           \
      SDTOSCArgumentList_new(((NARGS) > 1) ? (NARGS)-1 : 0));            \
  SDTOSCMessage *msg = SDTOSCMessage_new(SDTOSCAddress_new(ADDR), args); \
  SDTZeroCrossing *zx = SDTZeroCrossing_new(1024);                       \
  const char *key = "zx";

#define SDTOSC_ZEROX_TEST_END()  \
  SDTZeroCrossing_free(zx);      \
  SDTOSCMessage_free(msg);       \
  SDTOSCMessage_free(short_msg); \
  SDT_TEST_END()

void TestSDTOSCZeroCrossing_log(CuTest *tc) {
  SDTOSC_ZEROX_TEST_BEGIN("/zerox/log", 1)

  CuAssert(tc, "Fail on too few args", SDTOSCRoot(short_msg) != 0);

  CuAssert(tc, "Fail on uninitialized args", SDTOSCRoot(msg) != 0);

  SDTOSCArgumentList_setArgument(args, 0, SDTOSCArgument_newString(key));
  CuAssert(tc, "Fail on object not found", SDTOSCRoot(msg) != 0);

  SDT_registerZeroCrossing(zx, key);
  CuAssert(tc, "Succeed on object found", SDTOSCRoot(msg) == 0);

  SDT_unregisterZeroCrossing(key);
  SDTOSC_ZEROX_TEST_END()
}

void _TestSDTOSCZeroCrossing_save_load_inner(CuTest *tc, SDTZeroCrossing *zx,
                                             const char *fpath, const char *key,
                                             const SDTOSCMessage *short_msg,
                                             SDTOSCMessage *msg,
                                             SDTOSCArgumentList *args) {
  CuAssert(tc, "Fail on too few args", SDTOSCRoot(short_msg) != 0);
  CuAssert(tc, "Fail on uninitialized args", SDTOSCRoot(msg) != 0);

  SDTOSCArgumentList_setArgument(args, 0, SDTOSCArgument_newString(key));
  CuAssert(tc, "Fail on object not found", SDTOSCRoot(msg) != 0);

  SDT_registerZeroCrossing(zx, key);
  CuAssert(tc, "Fail on uninitialized filepath", SDTOSCRoot(msg) != 0);

  SDTOSCArgumentList_setArgument(args, 1, SDTOSCArgument_newString(fpath));
  CuAssert(tc, "Succeed", SDTOSCRoot(msg) == 0);
  SDT_unregisterZeroCrossing(key);
}

void _TestSDTOSCZeroCrossing_save(CuTest *tc, const char *fpath) {
  SDTOSC_ZEROX_TEST_BEGIN("/zerox/save", 2)
  _TestSDTOSCZeroCrossing_save_load_inner(tc, zx, fpath, key, short_msg, msg,
                                          args);
  SDTOSC_ZEROX_TEST_END()
}

void _TestSDTOSCZeroCrossing_load(CuTest *tc, const char *fpath) {
  SDTOSC_ZEROX_TEST_BEGIN("/zerox/load", 2)
  _TestSDTOSCZeroCrossing_save_load_inner(tc, zx, fpath, key, short_msg, msg,
                                          args);
  SDTOSC_ZEROX_TEST_END()
}

void TestSDTOSCZeroCrossing_save_load(CuTest *tc) {
  const char *fpath = "zerox_test.json";
  _TestSDTOSCZeroCrossing_save(tc, fpath);
  _TestSDTOSCZeroCrossing_load(tc, fpath);
  CuAssert(tc, "File deleted", remove(fpath) == 0);
}

void TestSDTOSCZeroCrossing_loads(CuTest *tc) {
  SDTOSC_ZEROX_TEST_BEGIN("/zerox/loads", 2)
  CuAssert(tc, "Fail on too few args", SDTOSCRoot(short_msg) != 0);
  CuAssert(tc, "Fail on uninitialized args", SDTOSCRoot(msg) != 0);

  SDTOSCArgumentList_setArgument(args, 0, SDTOSCArgument_newString(key));
  CuAssert(tc, "Fail on object not found", SDTOSCRoot(msg) != 0);

  SDT_registerZeroCrossing(zx, key);
  CuAssert(tc, "Fail on uninitialized filepath", SDTOSCRoot(msg) != 0);

  SDTOSCArgumentList_setArgument(args, 1,
                                 SDTOSCArgument_newString("not a json string"));
  CuAssert(tc, "Fail on invalid JSON string", SDTOSCRoot(msg) != 0);

  SDTOSCArgument_free(SDTOSCArgumentList_setArgument(
      args, 1, SDTOSCArgument_newString("{\"overlap\": 0.5}")));
  CuAssert(tc, "Succeed", SDTOSCRoot(msg) == 0);

  SDT_unregisterZeroCrossing(key);
  SDTOSC_ZEROX_TEST_END()
}

void TestSDTOSCZeroCrossing_setOverlap(CuTest *tc) {
  SDTOSC_ZEROX_TEST_BEGIN("/zerox/overlap", 2)
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
  SDTOSC_ZEROX_TEST_END()
}

void TestSDTOSCZeroCrossing_setSize(CuTest *tc) {
  SDTOSC_ZEROX_TEST_BEGIN("/zerox/size", 2)
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
  SDTOSC_ZEROX_TEST_END()
}

// ----------------------------------------------------------------------------
