#include "m_pd.h"
#include "SDT/SDTCommon.h"
#include "SDT/SDTFilters.h"
#ifdef NT
#pragma warning( disable : 4244 )
#pragma warning( disable : 4305 )
#endif

static t_class *envelope_class;

typedef struct _envelope {
  t_object obj;
  SDTEnvelope *envelope;
  t_float f;
  t_outlet *out0;
} t_envelope;

void envelope_attack(t_envelope *x, t_float f) {
  SDTEnvelope_setAttack(x->envelope, f);
}

void envelope_release(t_envelope *x, t_float f) {
  SDTEnvelope_setRelease(x->envelope, f);
}

t_int *envelope_perform(t_int *w) {
  t_envelope *x = (t_envelope *)(w[1]);
  t_float *in = (t_float *)(w[2]);
  t_float *out = (t_float *)(w[3]);
  int n = (int)w[4];
  
  while (n--) {
    *out++ = (float)SDTEnvelope_dsp(x->envelope, *in++);
  }
  return w + 5;
}

void envelope_dsp(t_envelope *x, t_signal **sp) {
  SDT_setSampleRate(sp[0]->s_sr);
  dsp_add(envelope_perform, 4, x, sp[0]->s_vec, sp[1]->s_vec, sp[0]->s_n);
}

void *envelope_new(t_symbol *s, long argc, t_atom *argv) {
  t_envelope *x = (t_envelope *)pd_new(envelope_class);
  x->out0 = outlet_new(&x->obj, gensym("signal"));
  x->envelope = SDTEnvelope_new();
  return (x);
}

void envelope_free(t_envelope *x) {
  outlet_free(x->out0);
  SDTEnvelope_free(x->envelope);
}

void envelope_tilde_setup(void) {	
  envelope_class = class_new(gensym("envelope~"), (t_newmethod)envelope_new, (t_method)envelope_free, sizeof(t_envelope), CLASS_DEFAULT, A_GIMME, 0);
  CLASS_MAINSIGNALIN(envelope_class, t_envelope, f);
  class_addmethod(envelope_class, (t_method)envelope_attack, gensym("attack"), A_FLOAT, 0);
  class_addmethod(envelope_class, (t_method)envelope_release, gensym("release"), A_FLOAT, 0);
  class_addmethod(envelope_class, (t_method)envelope_dsp, gensym("dsp"), 0);
}