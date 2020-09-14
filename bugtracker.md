# SDT
## Myoelastic
`SDTMyoelastic_new` has an unused `bufSize` argument
## Demix
Header `SDTDemix.h` is included only if `SDT_EFFECTS_H` is not defined. So, it is mutually exclusive with `SDTEffects.h` (***fixed***)
## Biquad
`SDTBiquad_free` doesn't seem to free all allocated memory (***fixed***)
## Delay
Something seems wrong in `SDTDelay_setDelay` (see comment below)
```
void SDTDelay_setDelay(SDTDelay *x, double f) {
  double d;
  
  f = SDT_fclip(f, 0.618, x->size);
  x->delay = f - 0.618;
  d = f - x->delay; // = f - (f - 0.618) = 0.618 // <- is this intended?
  x->feedback = (1.0 - d) / (1.0 + d) // = 0.382 / 1.618 ≈ 0.236;
}
```
# MAX
## lowpass~
The filter in the object is defined through `SDTBiquad_butterworthHP`. This makes it an high-pass filter.
# PD
## lowpass~
Missing
