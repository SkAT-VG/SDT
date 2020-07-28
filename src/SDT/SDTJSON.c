#include "SDTJSON.h"
#include "SDTSolids.h"
#include <unistd.h>
#include <stdio.h>
#include <string.h>
#include <libgen.h>
#include <sys/stat.h>

//-------------------------------------------------------------------------------------//

json_value *SDTResonator_toJSON(SDTResonator *x) {
  json_value *obj = json_object_new(0);
  json_value *f = json_array_new(0);
  json_value *d = json_array_new(0);
  json_value *w = json_array_new(0);
  json_value *g = json_array_new(0);

  for (int n = 0; n < SDTResonator_getNModes(x) ; ++n) {
    json_array_push(f, json_double_new(SDTResonator_getFrequency(x, n)));
    json_array_push(d, json_double_new(SDTResonator_getDecay(x, n)));
    json_array_push(w, json_double_new(SDTResonator_getWeight(x, n)));
  }

  for (int p = 0 ; p < SDTResonator_getNPickups(x); ++p) {
    json_value *gp = json_array_new(0);
    for (int n = 0 ; n < SDTResonator_getNModes(x); ++n)
      json_array_push(gp, json_double_new(SDTResonator_getGain(x, p, n)));
    json_array_push(g, gp);
  }

  json_object_push(obj, "nModes", json_integer_new(SDTResonator_getNModes(x)));
  json_object_push(obj, "nPickups", json_integer_new(SDTResonator_getNPickups(x)));
  json_object_push(obj, "activeModes", json_integer_new(SDTResonator_getActiveModes(x)));
  json_object_push(obj, "fragmentSize", json_double_new(SDTResonator_getFragmentSize(x)));
  json_object_push(obj, "freqs", f);
  json_object_push(obj, "decays", d);
  json_object_push(obj, "weights", w);
  json_object_push(obj, "gains", g);

  return obj;
}

SDTResonator *SDTResonator_fromJSON(const json_value *x) {
  if (!x || x->type != json_object)
    return 0;
  
  const json_value *v;
  unsigned int nModes, nPickups, activeModes;

  v = json_object_get_by_key(x, "nModes");
  nModes = (unsigned int) (v && (v->type == json_integer))? v->u.integer : 0;

  v = json_object_get_by_key(x, "nPickups");
  nPickups = (unsigned int) (v && (v->type == json_integer))? v->u.integer : 0;

  v = json_object_get_by_key(x, "activeModes");
  activeModes = (unsigned int) (v && (v->type == json_integer))? v->u.integer : 0;

  v = json_object_get_by_key(x, "fragmentSize");
  double fragmentSize = (v && (v->type == json_double))? v->u.dbl : 1;

  SDTResonator *res = SDTResonator_new(nModes, nPickups);
  SDTResonator_setActiveModes(res, activeModes);
  SDTResonator_setFragmentSize(res, fragmentSize);
  
  const json_value *f = json_object_get_by_key(x, "freqs");
  const json_value *d = json_object_get_by_key(x, "decays");
  const json_value *w = json_object_get_by_key(x, "weights");
  for (unsigned int m = 0 ; m < SDTResonator_getNModes(res) ; ++m) {
    SDTResonator_setFrequency(res, m, json_array_get_number(f, m, 0));
    SDTResonator_setDecay(res, m, json_array_get_number(d, m, 0));
    SDTResonator_setWeight(res, m, json_array_get_number(w, m, 0));
  }

  const json_value *g = json_object_get_by_key(x, "gains");
  if (g && g->type == json_array)
    for (unsigned int p = 0 ; (p < g->u.array.length) && (p < SDTResonator_getNPickups(res)) ; ++p) {
      const json_value *gp = g->u.array.values[p];
      if (gp && gp->type == json_array)
        for (unsigned int m = 0 ; m < SDTResonator_getNModes(res) ; ++m)
          SDTResonator_setGain(res, p, m, json_array_get_number(gp, m, 0));
    }


  return res;
}

//-------------------------------------------------------------------------------------//

json_value *SDTImpact_toJSON(const SDTInteractor *x, const char *key0, const char *key1) {
  json_value *obj = json_object_new(0);

  json_object_push(obj, "stiffness", json_double_new(SDTImpact_getStiffness(x)));
  json_object_push(obj, "dissipation", json_double_new(SDTImpact_getDissipation(x)));
  json_object_push(obj, "shape", json_double_new(SDTImpact_getShape(x)));
  json_object_push(obj, "key0", json_string_new(key0));
  json_object_push(obj, "key1", json_string_new(key1));
  json_object_push(obj, "contact0", json_integer_new(SDTInteractor_getFirstPoint(x)));
  json_object_push(obj, "contact1", json_integer_new(SDTInteractor_getSecondPoint(x)));

  return obj;
}

SDTInteractor *SDTImpact_fromJSON(const json_value *x) {
  SDTInteractor *inter = SDTImpact_new();
  const json_value *v;

  v = json_object_get_by_key(x, "stiffness");
  SDTImpact_setStiffness(inter, (v && (v->type == json_double))? v->u.dbl : 0);

  v = json_object_get_by_key(x, "dissipation");
  SDTImpact_setDissipation(inter, (v && (v->type == json_double))? v->u.dbl : 0);

  v = json_object_get_by_key(x, "shape");
  SDTImpact_setShape(inter, (v && (v->type == json_double))? v->u.dbl : 0);

  v = json_object_get_by_key(x, "key0");
  SDTInteractor_setFirstResonator(inter, (v && (v->type == json_string))? SDT_getResonator(v->u.string.ptr) : 0);

  v = json_object_get_by_key(x, "key1");
  SDTInteractor_setSecondResonator(inter, (v && (v->type == json_string))? SDT_getResonator(v->u.string.ptr) : 0);

  v = json_object_get_by_key(x, "contact0");
  SDTInteractor_setFirstPoint(inter, (v && (v->type == json_integer))? v->u.integer : 0);

  v = json_object_get_by_key(x, "contact1");
  SDTInteractor_setSecondPoint(inter, (v && (v->type == json_integer))? v->u.integer : 0);

  return inter;
}

//-------------------------------------------------------------------------------------//

json_value *SDTFriction_toJSON(const SDTInteractor *x, const char *key0, const char *key1) {
  json_value *obj = json_object_new(0);

  json_object_push(obj, "force", json_double_new(SDTFriction_getNormalForce(x)));
  json_object_push(obj, "stribeck", json_double_new(SDTFriction_getStribeckVelocity(x)));
  json_object_push(obj, "kStatic", json_double_new(SDTFriction_getStaticCoefficient(x)));
  json_object_push(obj, "kDynamic", json_double_new(SDTFriction_getDynamicCoefficient(x)));
  json_object_push(obj, "breakAway", json_double_new(SDTFriction_getBreakAway(x)));
  json_object_push(obj, "stiffness", json_double_new(SDTFriction_getStiffness(x)));
  json_object_push(obj, "dissipation", json_double_new(SDTFriction_getDissipation(x)));
  json_object_push(obj, "viscosity", json_double_new(SDTFriction_getViscosity(x)));
  json_object_push(obj, "noisiness", json_double_new(SDTFriction_getNoisiness(x)));
  json_object_push(obj, "key0", json_string_new(key0));
  json_object_push(obj, "key1", json_string_new(key1));
  json_object_push(obj, "contact0", json_integer_new(SDTInteractor_getFirstPoint(x)));
  json_object_push(obj, "contact1", json_integer_new(SDTInteractor_getSecondPoint(x)));

  return obj;
}

SDTInteractor *SDTFriction_fromJSON(const json_value *x) {
  SDTInteractor *inter = SDTFriction_new();
  const json_value *v;

  v = json_object_get_by_key(x, "force");
  SDTFriction_setNormalForce(inter, (v && (v->type == json_double))? v->u.dbl : 0);

  v = json_object_get_by_key(x, "stribeck");
  SDTFriction_setStribeckVelocity(inter, (v && (v->type == json_double))? v->u.dbl : 0);

  v = json_object_get_by_key(x, "kStatic");
  SDTFriction_setStaticCoefficient(inter, (v && (v->type == json_double))? v->u.dbl : 0);

  v = json_object_get_by_key(x, "kDynamic");
  SDTFriction_setDynamicCoefficient(inter, (v && (v->type == json_double))? v->u.dbl : 0);

  v = json_object_get_by_key(x, "breakAway");
  SDTFriction_setBreakAway(inter, (v && (v->type == json_double))? v->u.dbl : 0);

  v = json_object_get_by_key(x, "stiffness");
  SDTFriction_setStiffness(inter, (v && (v->type == json_double))? v->u.dbl : 0);

  v = json_object_get_by_key(x, "dissipation");
  SDTFriction_setDissipation(inter, (v && (v->type == json_double))? v->u.dbl : 0);

  v = json_object_get_by_key(x, "viscosity");
  SDTFriction_setViscosity(inter, (v && (v->type == json_double))? v->u.dbl : 0);

  v = json_object_get_by_key(x, "noisiness");
  SDTFriction_setNoisiness(inter, (v && (v->type == json_double))? v->u.dbl : 0);

  v = json_object_get_by_key(x, "key0");
  SDTInteractor_setFirstResonator(inter, (v && (v->type == json_string))? SDT_getResonator(v->u.string.ptr) : 0);

  v = json_object_get_by_key(x, "key1");
  SDTInteractor_setSecondResonator(inter, (v && (v->type == json_string))? SDT_getResonator(v->u.string.ptr) : 0);

  v = json_object_get_by_key(x, "contact0");
  SDTInteractor_setFirstPoint(inter, (v && (v->type == json_integer))? v->u.integer : 0);

  v = json_object_get_by_key(x, "contact1");
  SDTInteractor_setSecondPoint(inter, (v && (v->type == json_integer))? v->u.integer : 0);

  return inter;
}

//-------------------------------------------------------------------------------------//

json_serialize_opts sdt_json_opts() {
  json_serialize_opts opts;
  opts.mode = json_serialize_mode_multiline;
  opts.indent_size = 2;
  return opts;
}

long long file_size(const char *fpath) {
  char *s = malloc(sizeof(char) * (strlen(fpath) + 1));
  strcpy(s, fpath);
  struct stat buf;
  if (stat(s, &buf) == -1)
    return -1;

  free(s);
  return (long long) buf.st_size;
}

json_value *json_read(const char *fpath) {
  json_value *v = 0;
  int N = 0;
  FILE *fp;

  fp = fopen(fpath, "r");
  if(fp) {
    // Get size
    fseek(fp, 0, SEEK_END);
    N = ftell(fp);
    rewind(fp);

    char *s = (char *) malloc(sizeof(char) * (N + 1));
    s[N] = 0;
    N = fread(s, 1, N, fp);
    fclose(fp);

    // Delimit JSON string
    long int i_start = 0, i_stop = N;
    for (long int i = 0; i < N ; ++i)
      if (s[i] == '{') {
        i_start = i;
        break;
      }
    for (long int i = N - 1; i > 0 ; --i)
      if (s[i] == '}') {
        i_stop = i + 1;
        break;
      }

    v = json_parse((json_char *) s + i_start, i_stop - i_start);
    free(s);
  }
  return v;
}

int json_dump(json_value *x, const char *fpath) {
  char *s = malloc(json_measure_ex(x, sdt_json_opts()));
  json_serialize_ex(s, x, sdt_json_opts());

  FILE *f = fopen(fpath, "w");
  if (!f)
    return 1;

  fprintf(f, "%s", s);
  fclose(f);
  free(s);
  return 0;
}

const json_value *json_object_get_by_key(const json_value *x, const char *key) {
  if (!x || (x->type != json_object))
    return 0;
  for (unsigned int i = 0 ; i < x->u.object.length ; ++i)
    if (!strcmp(key, x->u.object.values[i].name))
      return x->u.object.values[i].value;
  return 0;
}

double json_array_get_number(const json_value *x, unsigned int idx, double dflt) {
  if (x && (x->type == json_array) && (idx < x->u.array.length)) {
    if (x->u.array.values[idx]->type == json_integer)
      return (double) x->u.array.values[idx]->u.integer;
    else if (x->u.array.values[idx]->type == json_double)
      return x->u.array.values[idx]->u.dbl;
  }
  return dflt;
}