# Products, Opposites, and Units

Goal: support standard derived algebraic constructions that recur throughout Mathlib.

- [ ] Add bundled direct products of algebraic structures with standard instances after the generic `Pair[A, B]` typeclass receiver blocker is resolved
- [ ] Add pointwise algebraic structure on finite products of types
- [ ] Define opposite multiplication/order conventions where needed
- [ ] Connect monoid units to ring-specific unit lemmas
- [ ] Package the group of units as a `Group` instance once generic bundled instances are reliable
- [ ] Add bundled homomorphism transport lemmas for product structures once bundled products are available
- [ ] Connect units with invertibility lemmas in fields and rings
- [ ] Support finite-support product constructions where useful
- [ ] Refactor representative proofs to use product and unit APIs directly

Progress: `src/product_algebra.ac` now provides unbundled componentwise operations on binary products (`pair_add`, `pair_mul`, `pair_zero`, `pair_one`, `pair_neg`, `pair_inverse`) with coordinate projection lemmas and associativity, commutativity, identity, inverse, semiring distributivity, zero-absorption, map-zero/map-one, swap-transport, and inverse-transport laws for the corresponding algebraic hypotheses.

Progress: `src/units.ac` now provides bundled monoid units, the unbundled `is_monoid_unit` predicate, identity/product/inverse operations on units, projection lemmas, inverse uniqueness, identity laws, inverse laws, associativity, and inverse-of-product.
