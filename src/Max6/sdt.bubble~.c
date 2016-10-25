#include "ext.h"
#include "ext_obex.h"
#include "z_dsp.h"
#include "SDT/SDTCommon.h"
#include "SDT/SDTLiquids.h"

typedef struct _bubble {
	t_pxobject ob;
	SDTBubble *bubble;
    double radius, riseFactor;
} t_bubble;

static t_class *bubble_class = NULL;

void *bubble_new(t_symbol *s, short argc, t_atom *argv) {
	t_bubble *x = (t_bubble *)object_alloc(bubble_class);

	if (x) {
		dsp_setup((t_pxobject *)x, 0);
		outlet_new(x, "signal");
		x->bubble = SDTBubble_new();
		attr_args_process(x, argc, argv); 
	}
	return (x);
}

void bubble_free(t_bubble *x)  {
	dsp_free((t_pxobject *)x);
    SDTBubble_free(x->bubble);
}

void bubble_assist(t_bubble *x, void *b, long m, long a, char *s) {
	if (m == ASSIST_INLET) {
        sprintf(s, "(bang): Triggers a bubble\n"
                   "Object attributes and messages (see help patch)");
	} 
	else {
	    sprintf(s, "(signal): Output sound");
	}
}

void bubble_bang(t_bubble *x) {
    SDTBubble_setRadius(x->bubble, 0.001 * x->radius);
    SDTBubble_setRiseFactor(x->bubble, x->riseFactor);
    SDTBubble_update(x->bubble);
    SDTBubble_normAmp(x->bubble);
}

t_int *bubble_perform(t_int *w) {
	t_bubble *x = (t_bubble *)(w[1]);
	t_float *outL = (t_float *)(w[2]);
	int n = (int)w[3];
	
	while (n--)
		*outL++ = SDTBubble_dsp(x->bubble);
		
	return w + 4;
}

void bubble_perform64(t_bubble *x, t_object *dsp64, double **ins, long numins,
                      double **outs, long numouts, long sampleframes,
                      long flags, void *userparam) {
	t_double *outL = outs[0];
	int n = sampleframes;
	
	while (n--)
		*outL++ = SDTBubble_dsp(x->bubble);
}

void bubble_dsp(t_bubble *x, t_signal **sp, short *count) {
	SDT_setSampleRate(sp[0]->s_sr);
	SDTBubble_setDepth(x->bubble, 1.0);
	dsp_add(bubble_perform, 3, x, sp[1]->s_vec, sp[0]->s_n);
}

void bubble_dsp64(t_bubble *x, t_object *dsp64, short *count,
                  double samplerate, long maxvectorsize, long flags) {
	SDT_setSampleRate(samplerate);
	SDTBubble_setDepth(x->bubble, 1.0);
	object_method(dsp64, gensym("dsp_add64"), x, bubble_perform64, 0, NULL);
}

int C74_EXPORT main(void) {	
	t_class *c = class_new("sdt.bubble~", (method)bubble_new, (method)bubble_free,
	                       (long)sizeof(t_bubble), 0L, A_GIMME, 0);
	
	
	class_addmethod(c, (method)bubble_bang, "bang", 0);
	class_addmethod(c, (method)bubble_dsp, "dsp", A_CANT, 0);
	class_addmethod(c, (method)bubble_dsp64, "dsp64", A_CANT, 0);
	class_addmethod(c, (method)bubble_assist, "assist", A_CANT, 0);
	
	CLASS_ATTR_DOUBLE(c, "radius", 0, t_bubble, radius);
    CLASS_ATTR_DOUBLE(c, "riseFactor", 0, t_bubble, riseFactor);
	
	CLASS_ATTR_FILTER_CLIP(c, "radius", 0.15, 150.0);
    CLASS_ATTR_FILTER_CLIP(c, "riseFactor", 0.0, 3.0);
	
	CLASS_ATTR_ORDER(c, "radius", 0, "1");
	CLASS_ATTR_ORDER(c, "riseFactor", 0, "2");
	
	class_dspinit(c);
	class_register(CLASS_BOX, c);
	bubble_class = c;

	return 0;
}