#include "m_pd.h"
#include "SDT/SDTCommon.h"

static t_class* SDT_class;

typedef struct _SDT {
  t_object obj;
} t_SDT;

void* SDT_new(t_symbol* s) {
  t_SDT *x = (t_SDT *)pd_new(SDT_class);
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
void modaltracker_tilde_setup(void);
void motor_tilde_setup(void);
void myo_tilde_setup(void);
void pitch_tilde_setup(void);
void pitchshift_tilde_setup(void);
void reverb_tilde_setup(void);
void rolling_tilde_setup(void);
void scraping_tilde_setup(void);
void spectralfeats_tilde_setup(void);
void windcavity_tilde_setup(void);
void windflow_tilde_setup(void);
void windkarman_tilde_setup(void);
void zerox_tilde_setup(void);

void SDT_setup() {
  SDT_class = class_new(gensym("SDT"), (t_newmethod)SDT_new, 0, sizeof(t_SDT), 0,0);
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
  modaltracker_tilde_setup();
  motor_tilde_setup();
  myo_tilde_setup();
  pitch_tilde_setup();
  pitchshift_tilde_setup();
  reverb_tilde_setup();
  rolling_tilde_setup();
  scraping_tilde_setup();
  spectralfeats_tilde_setup();
  windcavity_tilde_setup();
  windflow_tilde_setup();
  windkarman_tilde_setup();
  zerox_tilde_setup();
  
  post("=== SDT - Sound Design Toolkit ===");
  post("Version %s, (C) 2001 - 2018", SDT_ver_str);
  post("Project SOb - http://soundobject.org");
  post("Project CLOSED - http://closed.ircam.fr");
  post("Project NIW - http://soundobject.org/niw");
  post("Project SkAT-VG - http://skatvg.eu");
  post("");
  post("Included externals:");
  post("bouncing~ breaking~ bubble~ crumpling~ dcmotor~ demix~ envelope~");
  post("explosion~ fluidflow~ friction~ impact~ inertial modal");
  post("modaltracker~ motor~ myo~ pitch~ pitchshift~ reverb~ rolling~");
  post("scraping~ spectralfeats~ windcavity~ windflow~ windkarman~ zerox~");
}
