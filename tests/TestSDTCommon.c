/**
 * @file TestSDTCommon.c
 * @author Marco Tiraboschi (marco.tiraboschi@unimi.it)
 * @brief Test SDT/SDTCommon.h
 * @date 2023-05-18
 *
 * @copyright Copyright (c) 2023
 */
#include <math.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "CuTest.h"
#include "SDT/SDTCommon.h"
#include "SDTTestUtils.h"

void TestSDT_log(CuTest *tc) {
  SDT_TEST_BEGIN()
  SDT_LOG(VERBOSE, "Hello verbose!\n");
  SDT_LOG(DEBUG, "Hello debug!\n");
  SDT_LOG(INFO, "Hello info!\n");
  SDT_LOG(WARN, "Hello warn!\n");
  SDT_LOG(ERROR, "Hello error!\n");
  SDT_TEST_END()
}

void TestSDT_setSampleRate(CuTest *tc) {
  SDT_TEST_BEGIN()
  SDTRandomSequence *x = SDTRandomSequence_newLog(1024, 1, 192000);
  FOR_RANDOM_ITER_FLOAT (x, f) {
    SDT_setSampleRate(f);
    CuAssertDblEquals(tc, f, SDT_sampleRate, 0.0);
  }
  SDTRandomSequence_free(x);
  SDT_TEST_END()
}

void TestSDT_setTimeStep(CuTest *tc) {
  SDT_TEST_BEGIN()
  SDTRandomSequence *x = SDTRandomSequence_newLog(1024, 1, 192000);
  FOR_RANDOM_ITER_FLOAT (x, f) {
    SDT_setSampleRate(f);
    CuAssertDblEquals(tc, 1.0 / f, SDT_timeStep, 0.0);
  }
  SDTRandomSequence_free(x);
  SDT_TEST_END()
}

void _TestHelper__SDT_argExtremum(
    CuTest *tc, unsigned int (*find_func)(double *, unsigned int, double *),
    double (*get_func)(double *, unsigned int), int gt) {
  const unsigned int max_size = 16;
  unsigned int i_m;
  double m, a[max_size];
  SDTRandomSequence *sizes = SDTRandomSequence_newInt(512, 1, max_size);
  SDTRandomSequence *values = SDTRandomSequence_newFloat(0, 0, 1);
  FOR_RANDOM_ITER_INT (sizes, s) {
    for (unsigned int i = 0; i < s; ++i)
      a[i] = SDTRandomSequence_nextFloat(values);
    i_m = find_func(a, s, &m);
    CuAssertDblEquals_Msg(tc, "Check index and value match", a[i_m], m, 0.0);
    CuAssertDblEquals_Msg(tc, "Check find_func and get_func match",
                          get_func(a, s), m, 0.0);
    FOR_RANDOM_ITER_FLOAT (values, v)
      CuAssert(tc, "Check comparison with other values",
               (gt) ? m >= v : m <= v);
  }
  SDTRandomSequence_free(sizes);
  SDTRandomSequence_free(values);
}

void TestSDT_argMax(CuTest *tc) {
  SDT_TEST_BEGIN()
  _TestHelper__SDT_argExtremum(tc, &SDT_argMax, &SDT_max, 1.0);
  SDT_TEST_END()
}

void TestSDT_argMin(CuTest *tc) {
  SDT_TEST_BEGIN()
  _TestHelper__SDT_argExtremum(tc, &SDT_argMin, &SDT_min, 0.0);
  SDT_TEST_END()
}

void TestSDT_average(CuTest *tc) {
  SDT_TEST_BEGIN()
  const unsigned int max_size = 16;
  double m, sr, a[max_size];
  unsigned int base = 1, i;
  SDTRandomSequence *sizes = SDTRandomSequence_newInt(512, 1, max_size);
  SDTRandomSequence *values = SDTRandomSequence_newFloat(0, 0, 1);
  FOR_RANDOM_ITER_INT (sizes, s) {
    SDTRandomSequence_setBase(values, base);
    for (i = 0; i < s; ++i) a[i] = (double)SDTRandomSequence_nextFloat(values);
    m = SDT_average(a, s);
    // Check sum of residuals is zero
    sr = m * s;
    for (i = 0; i < s; ++i) sr -= a[i];
    CuAssertDblEquals(tc, 0.0, sr, 0.000000001);
    base += s;
  }
  SDTRandomSequence_free(sizes);
  SDTRandomSequence_free(values);
  SDT_TEST_END()
}

void TestSDT_bitReverse(CuTest *tc) {
  SDT_TEST_BEGIN()
  unsigned int max;
  for (unsigned int n_bits = 1; n_bits < 32; ++n_bits) {
    max = 1 << n_bits;
    SDTRandomSequence *x =
        SDTRandomSequence_newInt((n_bits < 6) ? max : n_bits * 9, 0, max - 1);
    FOR_RANDOM_ITER_INT (x, i)
      CuAssertIntEquals(
          tc, i,
          SDT_bitReverse(SDT_bitReverse((unsigned int)i, n_bits), n_bits));
    SDTRandomSequence_free(x);
  }
  SDT_TEST_END()
}

void TestSDT_blackman(CuTest *tc) {
  SDT_TEST_BEGIN()
  const unsigned int max_size = 1024;
  unsigned int i;
  double a[max_size], tol = 0.000000000000001;
  for (unsigned int s = 3; s < max_size; ++s) {
    SDT_ones(a, s);
    SDT_blackman(a, s);
    for (i = 0; i < s / 2; ++i) {
      CuAssertDblEquals_Msg(tc, "Check symmetry", a[i], a[s - i - 1], 0.0);
      CuAssert(tc, "Check positive (with tolerance)", -tol <= a[i]);
      CuAssert(tc, "Check below one (with tolerance)", a[i] <= 1 + tol);
    }
  }
  SDT_TEST_END()
}

void TestSDT_clip(CuTest *tc) {
  SDT_TEST_BEGIN()
  long b, y;
  SDTRandomSequence *s_a = SDTRandomSequence_newInt(16, -128, 128);
  SDTRandomSequence *s_d = SDTRandomSequence_newInt(16, 1, 128);
  SDTRandomSequence *s_x = SDTRandomSequence_newInt(128, -256, 256);
  FOR_RANDOM_ITER_INT (s_a, a)
    FOR_RANDOM_ITER_INT (s_d, d) {
      b = a + d;
      FOR_RANDOM_ITER_INT (s_x, x) {
        y = SDT_clip(x, a, b);
        CuAssert(tc, "Check lower limit", y >= a);
        CuAssert(tc, "Check upper limit", y <= b);
      }
    }
  SDTRandomSequence_free(s_a);
  SDTRandomSequence_free(s_d);
  SDTRandomSequence_free(s_x);
  SDT_TEST_END()
}

void TestSDT_expRand(CuTest *tc) {
  SDT_TEST_BEGIN()
  unsigned int size = 1 << 20;
  double m;
  SDTRandomSequence *x = SDTRandomSequence_newLog(2, 0.125, 8.0);
  SDTRandomSequence *z;
  FOR_RANDOM_ITER_FLOAT (x, rate) {
    m = 0.0f;
    z = SDTRandomSequence_newExp(size, 0.0f, rate);
    FOR_RANDOM_ITER_FLOAT (z, a) {
      CuAssert(tc, "Check one-side", a >= 0.0f);
      m += a / size;
    }
    free(z);
    CuAssertDblEquals_Msg(tc, "Check average", 1.0 / rate, m, 0.05 / rate);
  }
  SDTRandomSequence_free(x);
  SDT_TEST_END()
}

void TestSDT_fclip(CuTest *tc) {
  SDT_TEST_BEGIN()
  double b, y;
  SDTRandomSequence *s_a = SDTRandomSequence_newFloat(16, -128, 128);
  SDTRandomSequence *s_d = SDTRandomSequence_newFloat(16, 1, 128);
  SDTRandomSequence *s_x = SDTRandomSequence_newFloat(128, -256, 256);
  FOR_RANDOM_ITER_FLOAT (s_a, a)
    FOR_RANDOM_ITER_FLOAT (s_d, d) {
      b = a + d;
      FOR_RANDOM_ITER_FLOAT (s_x, x) {
        y = SDT_fclip(x, a, b);
        CuAssert(tc, "Check lower limit", y >= a);
        CuAssert(tc, "Check upper limit", y <= b);
      }
    }
  SDTRandomSequence_free(s_a);
  SDTRandomSequence_free(s_d);
  SDTRandomSequence_free(s_x);
  SDT_TEST_END()
}

void TestSDT_frand(CuTest *tc) {
  SDT_TEST_BEGIN()
  unsigned int size = 1 << 20, b = 1, c;
  double m;
  SDTRandomSequence *x = SDTRandomSequence_newFloat(size, 0, 1);
  for (unsigned int t = 0; t < 2; ++t) {
    SDTRandomSequence_setBase(x, b);
    m = 0.0f;
    c = 0;
    FOR_RANDOM_ITER_FLOAT (x, a) {
      CuAssert(tc, "Check positive", a >= 0);
      CuAssert(tc, "Check below 1", a <= 1);
      c += (a > 0.5) ? 1 : 0;
      m += a / size;
    }
    CuAssertDblEquals_Msg(tc, "Check average", 0.5, m, 0.01);
    CuAssertDblEquals_Msg(tc, "Check CDF(0.5)", 0.5, ((double)c) / size, 0.025);
    b += size;
  }
  SDTRandomSequence_free(x);
  SDT_TEST_END()
}

void TestSDT_gaussian1D(CuTest *tc) {
  SDT_TEST_BEGIN()
  SDTRandomSequence *x = SDTRandomSequence_newExp(0, 0.05, 1);
  const unsigned int max_size = 1024;
  unsigned int i;
  double a[max_size], sigma, sum;
  SDTRandomSequence_startFloat(x);
  for (unsigned int s = 3; s < max_size; ++s) {
    sigma = SDTRandomSequence_nextFloat(x);
    sum = 0;
    SDT_ones(a, s);
    SDT_gaussian1D(a, sigma, s);
    for (i = 0; i < s; ++i) {
      if (i < s / 2) {
        CuAssertDblEquals_Msg(tc, "Check symmetry", a[i], a[s - i - 1], 0.0);
        CuAssert(tc, "Check positive", 0 <= a[i]);
      }
      sum += a[i];
    }
    CuAssertDblEquals_Msg(tc, "Check simplex", 1.0, sum, 0.000000001);
  }
  SDTRandomSequence_free(x);
  SDT_TEST_END()
}

void TestSDT_gravity(CuTest *tc) {
  SDT_TEST_BEGIN()
  SDTRandomSequence *x = SDTRandomSequence_newExp(1024, 0, 0.1);
  FOR_RANDOM_ITER_FLOAT (x, f)
    CuAssertDblEquals_Msg(tc, "Check inverse formula", f,
                          SDT_gravity(f) / SDT_EARTH, 0.000000001);
  SDTRandomSequence_free(x);
  SDT_TEST_END()
}

void TestSDT_hanning(CuTest *tc) {
  SDT_TEST_BEGIN()
  const unsigned int max_size = 1024;
  unsigned int i;
  double a[max_size], tol = 0.000000000000001;
  for (unsigned int s = 3; s < max_size; ++s) {
    SDT_ones(a, s);
    SDT_hanning(a, s);
    for (i = 0; i < s / 2; ++i) {
      CuAssertDblEquals_Msg(tc, "Check symmetry", a[i], a[s - i - 1], 0.0);
      CuAssert(tc, "Check positive (with tolerance)", -tol <= a[i]);
      CuAssert(tc, "Check below one (with tolerance)", a[i] <= 1 + tol);
    }
  }
  SDT_TEST_END()
}

void TestSDT_haar__SDT_ihaar(CuTest *tc) {
  SDT_TEST_BEGIN()
  const unsigned int max_size = 1024;
  unsigned int i;
  SDTRandomSequence *sizes = SDTRandomSequence_newInt(8, 8, max_size);
  SDTRandomSequence *values = SDTRandomSequence_newFloat(0, -1, 1);
  double x[max_size], y[max_size], tol = 0.000000001;
  char msg[32], fmt[] = "Check inverse [%i/%i]";
  FOR_RANDOM_ITER_INT (sizes, s) {
    for (i = 0; i < s; ++i) x[i] = SDTRandomSequence_nextFloat(values);
    memcpy(y, x, s * sizeof(double));
    SDT_haar(y, s);
    SDT_ihaar(y, s);
    for (i = 0; i < s; ++i) {
      sprintf(msg, fmt, i, s);
      CuAssertDblEquals_Msg(tc, msg, x[i], y[i], tol);
    }
  }
  SDTRandomSequence_free(sizes);
  SDTRandomSequence_free(values);
  SDT_TEST_END()
}

void _TestHelper__SDT_isExtremum(CuTest *tc, double baseval, double peakval,
                                 int (*check_func)(double *, unsigned int,
                                                   unsigned int)) {
  unsigned int size = 1024, i, j, t, r_i, n, left, right;
  int r[size];
  double a[size];
  char msg[128], *msg2;
  char fmt[] =
      "Check radius=%i (%i/%i) is %srespected %i <- %i -> %i [%f <- %f -> %f]";
  unsigned int (*find_func)(double *, unsigned int, double *);
  if (peakval > baseval) {
    find_func = &SDT_argMax;
    msg2 = "Check location with SDT_argMax()";
  } else {
    find_func = &SDT_argMin;
    msg2 = "Check location with SDT_argMin()";
  }

  SDTRandomSequence *radii = SDTRandomSequence_newInt(0, 1, (size - 1) / 2);
  for (i = 0; i < 64; ++i) {
    // Generate extrema
    a[0] = peakval;
    for (j = 1, t = 1 + (r[n = 0] = SDTRandomSequence_nextInt(radii)); j < size;
         ++j) {
      if (j == t) {
        // SDT_DEBUG_LOGA(" |-> Reached target: %i\n", t);
        r[++n] = SDTRandomSequence_nextInt(radii);
        a[j] = peakval;
        t += 1 + ((r[n] > r[n - 1]) ? r[n] : r[n - 1]);
        // SDT_DEBUG_LOGA(" |      Next target: %i\n", t);
      } else {
        a[j] = baseval;
      }
    }
    // Check extrema
    for (t = 1 + r[r_i = 0]; r_i < (n - 1) && t < size;
         ++r_i, t += 1 + ((r[r_i] > r[r_i - 1]) ? r[r_i] : r[r_i - 1])) {
      left = t - r[r_i];
      right = t + r[r_i];
      a[left - 1] += peakval - baseval;
      a[right + 1] += peakval - baseval;
      // SDT_DEBUG_LOGA("%s\n", msg2);
      CuAssertIntEquals_Msg(tc, msg2, r[r_i],
                            find_func(a + left, 2 * r[r_i] + 1, 0));
      sprintf(msg, fmt, r[r_i], r_i + 1, n, "", left, t, right, a[left], a[t],
              a[right]);
      // SDT_DEBUG_LOGA("%s\n", msg);
      CuAssert(tc, msg, check_func(a, t, r[r_i]));
      sprintf(msg, fmt, r[r_i] + 1, r_i + 1, n, "not ", left - 1, t, right + 1,
              a[left - 1], a[t], a[right + 1]);
      // SDT_DEBUG_LOGA("%s\n", msg);
      CuAssert(tc, msg, !check_func(a, t, r[r_i] + 1));
      a[left - 1] -= peakval - baseval;
      a[right + 1] -= peakval - baseval;
    }
  }
  SDTRandomSequence_free(radii);
}

void TestSDT_isVerbose(CuTest *tc) {
  SDT_TEST_BEGIN()
  CuAssertIntEquals_Msg(tc, "Check same verbose flag between test and library",
                        SDT_VERBOSE_IF_ELSE(1, 0), SDT_isVerbose());
  SDT_TEST_END()
}

void TestSDT_isHole(CuTest *tc) {
  SDT_TEST_BEGIN()
  _TestHelper__SDT_isExtremum(tc, 0.0, -1.0, &SDT_isHole);
  SDT_TEST_END()
}

void TestSDT_isPeak(CuTest *tc) {
  SDT_TEST_BEGIN()
  _TestHelper__SDT_isExtremum(tc, 0.0, 1.0, &SDT_isPeak);
  SDT_TEST_END()
}

void TestSDT_kinetic(CuTest *tc) {
  SDT_TEST_BEGIN()
  unsigned int n_cases = 1024;
  double v, k, e1, e2, rtol = 0.000000001, tol;
  SDTRandomSequence *masses = SDTRandomSequence_newExp(n_cases, 0, 1);
  SDTRandomSequence *velocities = SDTRandomSequence_newExp(0, 0, 1);
  SDTRandomSequence *multipliers = SDTRandomSequence_newExp(0, 0, 1);
  SDTRandomSequence_setBase(velocities, 2 * n_cases);
  SDTRandomSequence_setBase(multipliers, 4 * n_cases);
  FOR_RANDOM_ITER_FLOAT (masses, m) {
    v = SDTRandomSequence_nextFloat(velocities);
    k = SDTRandomSequence_nextFloat(multipliers);
    tol = rtol * (e1 = k * SDT_kinetic(m, v));
    e2 = SDT_kinetic(k * m, v);
    CuAssertDblEquals_Msg(tc, "Check linear dependency on mass", e1, e2, tol);
    e1 *= k;
    tol *= k;
    e2 = SDT_kinetic(k * k * m, v);
    CuAssertDblEquals_Msg(tc, "Check quadratic dependency on velocity", e1, e2,
                          tol);
  }
  SDTRandomSequence_free(masses);
  SDTRandomSequence_free(velocities);
  SDTRandomSequence_free(multipliers);
  SDT_TEST_END()
}

void TestSDT_nextPow2(CuTest *tc) {
  SDT_TEST_BEGIN()
  SDTRandomSequence *nums = SDTRandomSequence_newLog(1 << 3, 1, 1 << 20);
  unsigned int b, n;
  char msg[64], fmt[] = "Check %ser bound: %i %s %i";
  FOR_RANDOM_ITER_FLOAT (nums, f) {
    n = (unsigned int)f;
    b = SDT_nextPow2(n);
    sprintf(msg, fmt, "upp", n, "<=", b);
    CuAssert(tc, msg, n <= b);
    b >>= 1;
    sprintf(msg, fmt, "low", n, ">", b);
    CuAssert(tc, msg, n > b);
  }
  SDTRandomSequence_free(nums);
  SDT_TEST_END()
}

void TestSDT_normalize(CuTest *tc) {
  SDT_TEST_BEGIN()
  const unsigned int max_size = 16;
  const int left = -16, right = 16;
  unsigned int i;
  double a[max_size], x_min_1, x_min_2, x_max_1, x_max_2;
  SDTRandomSequence *sizes = SDTRandomSequence_newInt(8, 2, max_size);
  SDTRandomSequence *values = SDTRandomSequence_newFloat(0, left, right);
  char msg[64], fmt[] = "%s: %f";
  FOR_RANDOM_ITER_INT (sizes, s) {
    for (i = 0; i < s; ++i) a[i] = SDTRandomSequence_nextFloat(values);
    x_min_1 = SDT_min(a, s);
    x_max_1 = SDT_max(a, s);
    for (i = 0; i < s; ++i) a[i] = SDT_normalize(a[i], left, right);

    x_min_2 = SDT_min(a, s);
    sprintf(msg, fmt, "Minimum", x_min_2);
    CuAssert(tc, msg, x_min_2 >= 0);
    CuAssertDblEquals_Msg(tc, "Minimum consistency",
                          (x_min_1 - left) / (right - left), x_min_2, 0.0);
    x_max_2 = SDT_max(a, s);
    sprintf(msg, fmt, "Maximum", x_max_2);
    CuAssert(tc, msg, x_max_2 <= 1);
    CuAssertDblEquals_Msg(tc, "Maximum consistency",
                          (x_max_1 - left) / (right - left), x_max_2, 0.0);
  }
  SDTRandomSequence_free(sizes);
  SDTRandomSequence_free(values);
  SDT_TEST_END()
}

void TestSDT_normalizeWindow(CuTest *tc) {
  SDT_TEST_BEGIN()
  const unsigned int max_size = 128;
  double a[max_size];
  SDTRandomSequence *sizes = SDTRandomSequence_newInt(8, 2, max_size);
  SDTRandomSequence *values = SDTRandomSequence_newFloat(0, -16, 16);
  FOR_RANDOM_ITER_INT (sizes, s) {
    for (unsigned int i = 0; i < s; ++i)
      a[i] = SDTRandomSequence_nextFloat(values);
    SDT_normalizeWindow(a, s);
    CuAssertDblEquals_Msg(tc, "Check sum", 1.0, SDT_average(a, s) * s,
                          0.000000001);
  }
  SDTRandomSequence_free(sizes);
  SDTRandomSequence_free(values);
  SDT_TEST_END()
}

void _TestHelper__SDT_fill(CuTest *tc, void (*fill_func)(double *, int),
                           float target_value, float random_min,
                           float random_max, float tol) {
  const unsigned int max_size = 1024;
  unsigned int i;
  double a[max_size];
  SDTRandomSequence *sizes = SDTRandomSequence_newInt(8, 2, max_size);
  SDTRandomSequence *values =
      SDTRandomSequence_newFloat(0, random_min, random_max);
  FOR_RANDOM_ITER_INT (sizes, s) {
    for (i = 0; i < s; ++i) {
      a[i] = SDTRandomSequence_nextFloat(values);
      CuAssert(tc, "Check not one", a[i] != target_value);
    }
    fill_func(a, s);
    for (i = 0; i < s; ++i)
      CuAssertDblEquals_Msg(tc, "Check target value", target_value, a[i], tol);
  }
  SDTRandomSequence_free(values);
  SDTRandomSequence_free(sizes);
}

void TestSDT_ones(CuTest *tc) {
  SDT_TEST_BEGIN()
  _TestHelper__SDT_fill(tc, &SDT_ones, 1.0, -1.0, 0.0, 0.0);
  SDT_TEST_END()
}

void TestSDT_rank(CuTest *tc) {
  SDT_TEST_BEGIN()
  unsigned int size = 1024, i, j, s, step;
  int ranks[size];
  double dranks[size];
  SDTRandomSequence *steps = SDTRandomSequence_newInt(0, 1, size);
  for (unsigned int t = 0; t < 8; ++t) {
    // Generate random permutation of naturals
    for (i = 0; i < size; ++i) ranks[i] = -1;
    for (i = 0, j = 0; i < size; ++i) {
      step = SDTRandomSequence_nextInt(steps);
      for (s = 0; s < step; j = (j + 1) % size, s += (ranks[j] < 0) ? 1 : 0)
        ;
      ranks[j] = i;
    }
    for (i = 0; i < size; ++i) {
      dranks[i] = (double)ranks[i];
      s = 0;
      for (j = 0; j < size; ++j)
        if (ranks[j] == i) s++;
      CuAssertIntEquals_Msg(tc, "Check one index per rank", 1, s);
    }
    for (i = 0; i < size; ++i)
      CuAssertDblEquals_Msg(tc, "Check rank function", (double)i,
                            SDT_rank(dranks, size, i), 0.0);
  }
  SDTRandomSequence_free(steps);
  SDT_TEST_END()
}

void TestSDT_removeDC(CuTest *tc) {
  SDT_TEST_BEGIN()
  const unsigned int max_size = 1024;
  double a[max_size], avg, tol = 0.000000001;
  SDTRandomSequence *sizes = SDTRandomSequence_newInt(32, 2, max_size);
  SDTRandomSequence *avgs = SDTRandomSequence_newExp(0, 0, 0.5);
  SDTRandomSequence *values = SDTRandomSequence_newExp(0, 0, 1);
  FOR_RANDOM_ITER_INT (sizes, s) {
    avg = 1 / SDTRandomSequence_nextFloat(avgs);
    for (unsigned int i = 0; i < s; ++i)
      a[i] = SDTRandomSequence_nextFloat(values) * avg;
    CuAssert(tc, "Check non-zero DC", SDT_average(a, s) > tol);
    SDT_removeDC(a, s);
    CuAssertDblEquals_Msg(tc, "Check zero DC", 0.0, SDT_average(a, s), tol);
  }
  SDTRandomSequence_free(sizes);
  SDTRandomSequence_free(avgs);
  SDTRandomSequence_free(values);
  SDT_TEST_END()
}

void TestSDT_roi(CuTest *tc) {
  SDT_TEST_BEGIN()
  // Just check no errors
  const unsigned int max_size = 1024;
  SDTRandomSequence *sizes = SDTRandomSequence_newInt(32, 2, max_size);
  SDTRandomSequence *radii = SDTRandomSequence_newInt(0, 1, 8);
  SDTRandomSequence *values = SDTRandomSequence_newFloat(0, 0, 1);
  double a[max_size];
  int p[max_size], b[max_size];
  FOR_RANDOM_ITER_INT (sizes, s) {
    memset((void *)b, 0, sizeof(int) * max_size);
    memset((void *)p, 0, sizeof(int) * max_size);
    for (unsigned int i = 0; i < s; ++i)
      a[i] = SDTRandomSequence_nextFloat(values);
    SDT_roi(a, p, b, SDTRandomSequence_nextInt(radii), s);
  }
  SDTRandomSequence_free(radii);
  SDTRandomSequence_free(values);
  SDTRandomSequence_free(sizes);
  SDT_TEST_END()
}

void TestSDT_samplesInAir__SDT_samplesInAir_inv(CuTest *tc) {
  SDT_TEST_BEGIN()
  SDTRandomSequence *values = SDTRandomSequence_newExp(1024, 0, 0.1);
  SDTRandomSequence *multipliers = SDTRandomSequence_newExp(0, 0, 1);
  double v, k, s;
  FOR_RANDOM_ITER_FLOAT (values, f) {
    v = f;
    k = SDTRandomSequence_nextFloat(multipliers);
    s = SDT_samplesInAir(v);
    CuAssertDblEquals_Msg(tc, "Check linear dependency", k * s,
                          SDT_samplesInAir(k * v), 0.000000001);
    CuAssertDblEquals_Msg(tc, "Check inverse", v, SDT_samplesInAir_inv(s),
                          0.000000001);
  }
  SDTRandomSequence_free(values);
  SDTRandomSequence_free(multipliers);
  SDT_TEST_END()
}

void TestSDT_scale(CuTest *tc) {
  SDT_TEST_BEGIN()
  SDTRandomSequence *values = SDTRandomSequence_newFloat(0, 0, 1);
  double x, y, srcMin, srcMax, dstMin, dstMax, gamma;
  for (unsigned int t = 0; t < 32; ++t) {
    gamma = SDTRandomSequence_nextFloat(values);
    srcMin = SDTRandomSequence_nextFloat(values);
    srcMax = SDTRandomSequence_nextFloat(values);
    dstMin = SDTRandomSequence_nextFloat(values);
    dstMax = SDTRandomSequence_nextFloat(values);
    if (srcMax < srcMin) {
      srcMax += srcMin;
      srcMin = srcMax - srcMin;
      srcMax = srcMax - srcMin;
    }
    if (dstMax < dstMin) {
      dstMax += dstMin;
      dstMin = dstMax - dstMin;
      dstMax = dstMax - dstMin;
    }
    CuAssert(tc, "Check srcMin < srcMax", srcMin < srcMax);
    CuAssert(tc, "Check dstMin < dstMax", dstMin < dstMax);
    for (unsigned int i = 0; i < 1024; ++i) {
      x = SDTRandomSequence_nextFloat(values) * (srcMax - srcMin) + srcMin;
      y = SDT_scale(x, srcMin, srcMax, dstMin, dstMax, gamma);
      CuAssert(tc, "Check y <= dstMax", y <= dstMax);
      CuAssert(tc, "Check y >= dstMin", y >= dstMin);
    }
  }
  SDTRandomSequence_free(values);
  SDT_TEST_END()
}

void TestSDT_signum(CuTest *tc) {
  SDT_TEST_BEGIN()
  SDTRandomSequence *values = SDTRandomSequence_newFloat(1024, -1, 1);
  SDTRandomSequence *evalues = SDTRandomSequence_newExp(0, 0, 0.1);
  FOR_RANDOM_ITER_FLOAT (values, v) {
    v *= SDTRandomSequence_nextFloat(evalues);
    CuAssertIntEquals_Msg(tc, "Check consistency", (v > 0) ? 1 : -1,
                          SDT_signum(v));
  }
  SDTRandomSequence_free(values);
  SDTRandomSequence_free(evalues);
  SDT_TEST_END()
}

void TestSDT_sinc__SDT_truePeakPos__SDT_truePeakValue(CuTest *tc) {
  SDT_TEST_BEGIN()
  const unsigned int max_size = 1024;
  unsigned int i;
  double a[max_size], w, p;
  SDTRandomSequence *freqs = SDTRandomSequence_newLog(0, 0.001, 0.1);
  for (unsigned int s = max_size / 4; s < max_size; ++s) {
    SDT_ones(a, s);
    w = SDTRandomSequence_nextFloat(freqs);
    SDT_sinc(a, w, s);
    for (i = 0; i < s / 2; ++i) {
      CuAssertDblEquals_Msg(tc, "Check symmetry", a[i], a[s - i - 1], 0.0);
      CuAssert(tc, "Check above -1 (with tolerance)", a[i] >= -1);
      CuAssert(tc, "Check below +1 (with tolerance)", a[i] <= 1);
    }
    i = SDT_argMax(a, s, 0);
    CuAssertIntEquals_Msg(tc, "Peak in the middle (int)", (s + 1) / 2 - 1, i);
    p = SDT_truePeakPos(a, i);
    CuAssertDblEquals_Msg(tc, "Peak in the middle ", (s - 1.0) / 2.0, p,
                          0.000000001);
    p = SDT_truePeakValue(a, i);
    CuAssertDblEquals_Msg(tc, "Peak is 1", 1.0, p, 0.125);
  }
  SDTRandomSequence_free(freqs);
  SDT_TEST_END()
}

void TestSDT_weightedAverage(CuTest *tc) {
  SDT_TEST_BEGIN()
  const unsigned int n_cases = 512;
  const double tol = 0.000000001;
  unsigned int i, c;
  double k;
  SDTRandomSequence *multipliers = SDTRandomSequence_newFloat(0, 0, 1);

  unsigned int n = 3;
  double values[] = {1.0, 2.0, 3.0};
  double weights[] = {0.5, 0.3, 0.2};
  double truth = 1.7, k_weights[n];
  for (c = 0; c < n_cases; ++c) {
    k = SDTRandomSequence_nextFloat(multipliers);
    for (i = 0; i < n; ++i) k_weights[i] = k * weights[i];
    CuAssertDblEquals_Msg(tc, "Test happy path", truth,
                          SDT_weightedAverage(values, k_weights, n), tol);
  }

  double emptyValues[] = {};
  double emptyWeights[] = {};
  CuAssertDblEquals_Msg(tc, "Test edge case: empty arrays", 0.0,
                        SDT_weightedAverage(emptyValues, emptyWeights, 0), 0.0);

  for (c = 0; c < n_cases; ++c) {
    k = SDTRandomSequence_nextFloat(multipliers);
    for (i = 0; i < n; ++i) {
      k_weights[i] = k * weights[i];
      CuAssertDblEquals_Msg(
          tc, "Test edge case: single value and weight", values[i],
          SDT_weightedAverage(values + i, k_weights + i, 1), tol);
    }
  }

  for (i = 0; i < n; ++i) k_weights[i] = 0.0;
  CuAssertDblEquals_Msg(tc, "Test edge case: all weights are zero", 0.0,
                        SDT_weightedAverage(values, k_weights, n), 0.0);

  double zeroValues[] = {0.0, 0.0, 0.0};
  for (c = 0; c < n_cases; ++c) {
    k = SDTRandomSequence_nextFloat(multipliers);
    for (i = 0; i < n; ++i) k_weights[i] = k * weights[i];
    CuAssertDblEquals_Msg(tc, "Test edge case: all values are zero", 0.0,
                          SDT_weightedAverage(zeroValues, k_weights, n), 0.0);
  }

  CuAssertDblEquals_Msg(tc, "Test edge case: n is zero", 0.0,
                        SDT_weightedAverage(values, weights, 0), 0.0);

  SDTRandomSequence_free(multipliers);
  SDT_TEST_END()
}

void TestSDT_wrap(CuTest *tc) {
  SDT_TEST_BEGIN()
  double w;
  SDTRandomSequence *values =
      SDTRandomSequence_newFloat(2048, -SDT_TWOPI, SDT_TWOPI);
  // Check random values
  FOR_RANDOM_ITER_FLOAT (values, f) {
    w = SDT_wrap(f);
    CuAssert(tc, "Check >= -pi", w >= -SDT_PI);
    CuAssert(tc, "Check < -pi", w < SDT_PI);
    CuAssertDblEquals_Msg(tc, "Check difference is a multiple of 2pi", 0.0,
                          fmod(fabs(w - f), SDT_TWOPI), 0.0);
    if (-SDT_PI < f && f < SDT_PI) {
      CuAssertDblEquals_Msg(tc, "Check equals if already in bounds", f, w, 0.0);
    }
  }
  SDTRandomSequence_free(values);

  // Check specific values
  CuAssertDblEquals_Msg(tc, "Check -2pi", SDT_wrap(-SDT_TWOPI), 0.0, 0.0);
  CuAssertDblEquals_Msg(tc, "Check -pi", SDT_wrap(-SDT_PI), -SDT_PI, 0.0);
  CuAssertDblEquals_Msg(tc, "Check zero", SDT_wrap(0.0), 0.0, 0.0);
  CuAssertDblEquals_Msg(tc, "Check pi", SDT_wrap(SDT_PI), -SDT_PI, 0.0);
  CuAssertDblEquals_Msg(tc, "Check 2pi", SDT_wrap(SDT_TWOPI), 0.0, 0.0);
  SDT_TEST_END()
}

void TestSDT_zeros(CuTest *tc) {
  SDT_TEST_BEGIN()
  _TestHelper__SDT_fill(tc, &SDT_zeros, 0.0, 0.5, 1.0, 0.0);
  SDT_TEST_END()
}
