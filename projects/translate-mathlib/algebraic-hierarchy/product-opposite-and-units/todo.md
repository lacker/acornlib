# Products, Opposites, and Units

Goal: support standard derived algebraic constructions that recur throughout Mathlib.

- [ ] Add bundled direct products of algebraic structures with standard instances after the generic `Pair[A, B]` typeclass receiver blocker is resolved
- [ ] Add pointwise algebraic structure on finite products of types, building on the shared function-level pointwise API
- [ ] Define opposite order conventions where needed
- [ ] Package the group of units as a `Group` instance once generic bundled instances are reliable
- [ ] Add bundled homomorphism transport lemmas for product structures once bundled products are available
- [ ] Support finite-support product constructions where useful
- [ ] Refactor representative proofs to use product and unit APIs directly

Progress: `src/product_algebra.ac` now provides unbundled componentwise operations on binary products (`pair_add`, `pair_mul`, `pair_zero`, `pair_one`, `pair_neg`, `pair_inverse`) with coordinate projection lemmas and associativity, commutativity, identity, inverse, semiring distributivity, zero-absorption, map-zero/map-one, swap-transport, and inverse-transport laws for the corresponding algebraic hypotheses.

Progress: `src/units.ac` now provides bundled monoid units, the unbundled `is_monoid_unit` predicate, identity/product/inverse operations on units, projection lemmas, inverse uniqueness, identity laws, inverse laws, associativity, inverse-of-product, ring cancellation/zero-kernel lemmas for multiplication by a unit value, and field-specific nonzero/unit/inverse characterizations.

Progress: `src/opposite_algebra.ac` now provides unbundled opposite multiplication with associativity, commutativity, monoid identity, group inverse, semiring zero/distributivity, and homomorphism preservation lemmas.

Progress: `src/function_algebra.ac` now provides shared pointwise operations on functions (`pointwise_add`, `pointwise_mul`, `pointwise_zero`, `pointwise_one`, `pointwise_neg`, `pointwise_inverse`) with application, associativity, commutativity, identity, inverse, semiring distributivity, and zero-absorption laws.

Progress: `src/function_product_algebra.ac` now specializes the shared function-level pointwise API to binary products of function spaces, with evaluation, coordinate, associativity, commutativity, identity, inverse, semiring distributivity, and zero-absorption laws. Higher-arity finite products and bundled product instances remain deferred until generic bundled instances are reliable.
