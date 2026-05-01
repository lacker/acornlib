# Order Operations and Intervals

Goal: make elementwise order manipulation routine rather than bespoke.

- [ ] Audit downstream `min`/`max` users for remaining bespoke one-off lemmas
- [ ] Decide the exact interval preimage API for plain monotone maps; order-embedding interval preimages are in place
- [ ] Add `clamp`-style constructions where useful
- [ ] Connect list minima/maxima to order-theoretic interval language
- [ ] Refactor existing interval-like proofs to use the shared API

Status:

- `src/order_cases.ac` now includes `>=` and `>` oriented aliases for the existing `min`/`max` lower-bound and upper-bound characterizations.
- `src/order.ac` now has central `min`/`max` commutativity aliases, associativity variants, right-commutativity, absorption variants, and two-sided plus one-sided monotonicity lemmas.
- `src/order.ac` now has central `le`/`ge` aliases for `min`/`max` endpoint bounds, selector iff lemmas, bound characterizations, one-sided strict constructors, and one-sided non-strict constructors.
- `src/order_interval.ac` now has endpoint consequences, endpoint membership, interval-subset, interval-bound monotonicity, and bounded-below / bounded-above projection lemmas.
- `src/order_interval.ac` now has endpoint iff/nonmembership facts, interval emptiness and nonemptiness facts, same-shape interval subset aliases, and boundedness facts for closed, open, and half-open intervals.
