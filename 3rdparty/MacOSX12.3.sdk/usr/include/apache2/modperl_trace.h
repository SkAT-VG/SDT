#ifndef MODPERL_TRACE_H
#define MODPERL_TRACE_H

/*
 * *********** WARNING **************
 * This file generated by ModPerl::Code/0.01
 * Any changes made here will be lost
 * ***********************************
 * 01: lib/ModPerl/Code.pm:740
 * 02: lib/ModPerl/Code.pm:766
 * 03: Makefile.PL:391
 * 04: Makefile.PL:102
 */

#define MP_VERSION_STRING "mod_perl/2.0.9"
#define MP_API_VERSION "2"
#define MP_TRACE_OPTS "acdefghimorst"

#ifdef MP_TRACE
#define MP_TRACE_any if (MP_debug_level) modperl_trace
#define MP_TRACE_any_do(exp) if (MP_debug_level) { \
exp; \
}
#else
#define MP_TRACE_any if (0) modperl_trace
#define MP_TRACE_any_do(exp)
#endif

#ifdef MP_TRACE
#define MP_TRACE_a if (MP_debug_level & 1) modperl_trace
#define MP_TRACE_a_do(exp) if (MP_debug_level & 1) { \
exp; \
}
#else
#define MP_TRACE_a if (0) modperl_trace
#define MP_TRACE_a_do(exp)
#endif
#ifdef MP_TRACE
#define MP_TRACE_c if (MP_debug_level & 2) modperl_trace
#define MP_TRACE_c_do(exp) if (MP_debug_level & 2) { \
exp; \
}
#else
#define MP_TRACE_c if (0) modperl_trace
#define MP_TRACE_c_do(exp)
#endif
#ifdef MP_TRACE
#define MP_TRACE_d if (MP_debug_level & 4) modperl_trace
#define MP_TRACE_d_do(exp) if (MP_debug_level & 4) { \
exp; \
}
#else
#define MP_TRACE_d if (0) modperl_trace
#define MP_TRACE_d_do(exp)
#endif
#ifdef MP_TRACE
#define MP_TRACE_e if (MP_debug_level & 8) modperl_trace
#define MP_TRACE_e_do(exp) if (MP_debug_level & 8) { \
exp; \
}
#else
#define MP_TRACE_e if (0) modperl_trace
#define MP_TRACE_e_do(exp)
#endif
#ifdef MP_TRACE
#define MP_TRACE_f if (MP_debug_level & 16) modperl_trace
#define MP_TRACE_f_do(exp) if (MP_debug_level & 16) { \
exp; \
}
#else
#define MP_TRACE_f if (0) modperl_trace
#define MP_TRACE_f_do(exp)
#endif
#ifdef MP_TRACE
#define MP_TRACE_g if (MP_debug_level & 32) modperl_trace
#define MP_TRACE_g_do(exp) if (MP_debug_level & 32) { \
exp; \
}
#else
#define MP_TRACE_g if (0) modperl_trace
#define MP_TRACE_g_do(exp)
#endif
#ifdef MP_TRACE
#define MP_TRACE_h if (MP_debug_level & 64) modperl_trace
#define MP_TRACE_h_do(exp) if (MP_debug_level & 64) { \
exp; \
}
#else
#define MP_TRACE_h if (0) modperl_trace
#define MP_TRACE_h_do(exp)
#endif
#ifdef MP_TRACE
#define MP_TRACE_i if (MP_debug_level & 128) modperl_trace
#define MP_TRACE_i_do(exp) if (MP_debug_level & 128) { \
exp; \
}
#else
#define MP_TRACE_i if (0) modperl_trace
#define MP_TRACE_i_do(exp)
#endif
#ifdef MP_TRACE
#define MP_TRACE_m if (MP_debug_level & 256) modperl_trace
#define MP_TRACE_m_do(exp) if (MP_debug_level & 256) { \
exp; \
}
#else
#define MP_TRACE_m if (0) modperl_trace
#define MP_TRACE_m_do(exp)
#endif
#ifdef MP_TRACE
#define MP_TRACE_o if (MP_debug_level & 512) modperl_trace
#define MP_TRACE_o_do(exp) if (MP_debug_level & 512) { \
exp; \
}
#else
#define MP_TRACE_o if (0) modperl_trace
#define MP_TRACE_o_do(exp)
#endif
#ifdef MP_TRACE
#define MP_TRACE_r if (MP_debug_level & 1024) modperl_trace
#define MP_TRACE_r_do(exp) if (MP_debug_level & 1024) { \
exp; \
}
#else
#define MP_TRACE_r if (0) modperl_trace
#define MP_TRACE_r_do(exp)
#endif
#ifdef MP_TRACE
#define MP_TRACE_s if (MP_debug_level & 2048) modperl_trace
#define MP_TRACE_s_do(exp) if (MP_debug_level & 2048) { \
exp; \
}
#else
#define MP_TRACE_s if (0) modperl_trace
#define MP_TRACE_s_do(exp)
#endif
#ifdef MP_TRACE
#define MP_TRACE_t if (MP_debug_level & 4096) modperl_trace
#define MP_TRACE_t_do(exp) if (MP_debug_level & 4096) { \
exp; \
}
#else
#define MP_TRACE_t if (0) modperl_trace
#define MP_TRACE_t_do(exp)
#endif
#define MP_TRACE_dump_flags() \
modperl_trace(NULL, "mod_perl trace flags dump:"); \
modperl_trace(NULL, " a %s (Apache API interaction)", (MP_debug_level & 1) ? "On " : "Off"); \
modperl_trace(NULL, " c %s (configuration for directive handlers)", (MP_debug_level & 2) ? "On " : "Off"); \
modperl_trace(NULL, " d %s (directive processing)", (MP_debug_level & 4) ? "On " : "Off"); \
modperl_trace(NULL, " e %s (environment variables)", (MP_debug_level & 8) ? "On " : "Off"); \
modperl_trace(NULL, " f %s (filters)", (MP_debug_level & 16) ? "On " : "Off"); \
modperl_trace(NULL, " g %s (globals management)", (MP_debug_level & 32) ? "On " : "Off"); \
modperl_trace(NULL, " h %s (handlers)", (MP_debug_level & 64) ? "On " : "Off"); \
modperl_trace(NULL, " i %s (interpreter pool management)", (MP_debug_level & 128) ? "On " : "Off"); \
modperl_trace(NULL, " m %s (memory allocations)", (MP_debug_level & 256) ? "On " : "Off"); \
modperl_trace(NULL, " o %s (I/O)", (MP_debug_level & 512) ? "On " : "Off"); \
modperl_trace(NULL, " r %s (Perl runtime interaction)", (MP_debug_level & 1024) ? "On " : "Off"); \
modperl_trace(NULL, " s %s (Perl sections)", (MP_debug_level & 2048) ? "On " : "Off"); \
modperl_trace(NULL, " t %s (benchmark-ish timings)", (MP_debug_level & 4096) ? "On " : "Off");
#endif /* MODPERL_TRACE_H */
