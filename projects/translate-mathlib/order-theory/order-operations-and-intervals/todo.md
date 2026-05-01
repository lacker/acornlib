# Order Operations and Intervals

Goal: make elementwise order manipulation routine rather than bespoke.

- [ ] Complete the API for `min` and `max`
- [ ] Add lemmas for `min`/`max` associativity, commutativity, and idempotence
- [ ] Decide the exact interval preimage API for plain monotone maps; order-embedding interval preimages are in place
- [ ] Add `clamp`-style constructions where useful
- [ ] Connect list minima/maxima to order-theoretic interval language
- [ ] Refactor existing interval-like proofs to use the shared API

Status:

- `src/order_cases.ac` now includes `>=` and `>` oriented aliases for the existing `min`/`max` lower-bound and upper-bound characterizations.
