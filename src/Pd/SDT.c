#include <stdarg.h>
#include <stdio.h>
#include <string.h>

#include "SDT/SDTCommon.h"
#include "SDT/SDTCommonMacros.h"
#include "m_pd.h"

static t_class* SDT_class;

typedef struct _SDT {
  t_object obj;
} t_SDT;

void* SDT_new(t_symbol* s) {
  t_SDT* x = (t_SDT*)pd_new(SDT_class);
  return x;
}

void bouncing_tilde_setup(void);
void breaking_tilde_setup(void);
void bubble_tilde_setup(void);
void crumpling_tilde_setup(void);
void dcmotor_tilde_setup(void);
void demix_tilde_setup(void);
void envelope_tilde_setup(void);
void explosion_tilde_setup(void);
void fluidflow_tilde_setup(void);
void friction_tilde_setup(void);
void impact_tilde_setup(void);
void inertial_setup(void);
void modal_setup(void);
void motor_tilde_setup(void);
void myo_tilde_setup(void);
void pitch_tilde_setup(void);
void pitchshift_tilde_setup(void);
void reverb_tilde_setup(void);
void rolling_tilde_setup(void);
void scraping_tilde_setup(void);
void sdt_osc_setup(void);
void spectralfeats_tilde_setup(void);
void windcavity_tilde_setup(void);
void windflow_tilde_setup(void);
void windkarman_tilde_setup(void);
void zerox_tilde_setup(void);

static char _SDT_logBufferPd[MAXPDSTRING];

static int SDT_pdPost(const char* fmt, ...) {
  va_list args;
  va_start(args, fmt);
  int n = vsnprintf(_SDT_logBufferPd, sizeof(char) * MAXPDSTRING, fmt, args);
  va_end(args);
  int s_len = strlen(_SDT_logBufferPd);
  if (_SDT_logBufferPd[s_len - 1] == '\n') _SDT_logBufferPd[s_len - 1] = 0;
  post("%s", _SDT_logBufferPd);
  SDT_eprintf("%s\n", _SDT_logBufferPd);
  return n;
}

void SDT_setup() {
  SDT_class =
      class_new(gensym("SDT"), (t_newmethod)SDT_new, 0, sizeof(t_SDT), 0, 0);
  bouncing_tilde_setup();
  breaking_tilde_setup();
  bubble_tilde_setup();
  crumpling_tilde_setup();
  dcmotor_tilde_setup();
  demix_tilde_setup();
  envelope_tilde_setup();
  explosion_tilde_setup();
  fluidflow_tilde_setup();
  friction_tilde_setup();
  impact_tilde_setup();
  inertial_setup();
  modal_setup();
  motor_tilde_setup();
  myo_tilde_setup();
  pitch_tilde_setup();
  pitchshift_tilde_setup();
  reverb_tilde_setup();
  rolling_tilde_setup();
  scraping_tilde_setup();
  sdt_osc_setup();
  spectralfeats_tilde_setup();
  windcavity_tilde_setup();
  windflow_tilde_setup();
  windkarman_tilde_setup();
  zerox_tilde_setup();

  // Debug on standard error, everything else on Pd console
  SDT_setLogger(SDT_LOG_LEVEL_INFO, &SDT_pdPost, 1);
  SDT_setLogger(SDT_LOG_LEVEL_WARN, &SDT_pdPost, 1);
  SDT_setLogger(SDT_LOG_LEVEL_ERROR, &SDT_pdPost, 1);

  post("=== SDT - Sound Design Toolkit ===");
  post("SDT version %s, (C) 2001 - 2024", STRINGIFY(SDT_ver));
#ifdef SDT_PD_ver
  post("SDT for Pd version %s, (C) 2001 - 2024", STRINGIFY(SDT_PD_ver));
#endif
  post("Project SOb - http://soundobject.org");
  post("Project CLOSED - http://closed.ircam.fr");
  post("Project NIW - http://soundobject.org/niw");
  post("Project SkAT-VG - http://skatvg.eu");
  post("");
  post("Included externals:");
  post("bouncing~ breaking~ bubble~ crumpling~ dcmotor~ demix~ envelope~");
  post("explosion~ fluidflow~ friction~ impact~ inertial modal");
  post("motor~ myo~ pitch~ pitchshift~ reverb~ rolling~ sdtOSC");
  post("scraping~ spectralfeats~ windcavity~ windflow~ windkarman~ zerox~");
}
