# SDT source code
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
# MAX externals
## Bubble
The max external `sdt.bubble~` takes its radius in mm, while the C API and the Pd external expects the radius in meters.
