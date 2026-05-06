# Products, Opposites, and Units

Goal: support standard derived algebraic constructions that recur throughout Mathlib.

- [ ] Add bundled direct products of algebraic structures with standard instances
- [ ] Add pointwise algebraic structure on finite products of types
- [ ] Define opposite multiplication/order conventions where needed
- [ ] Add units of monoids and rings
- [ ] Add the group of units and its basic API
- [ ] Add product-level transport lemmas between products and bundled structures
- [ ] Connect units with invertibility lemmas in fields and rings
- [ ] Support finite-support product constructions where useful
- [ ] Refactor representative proofs to use product and unit APIs directly

Progress: `src/product_algebra.ac` now provides unbundled componentwise operations on binary products (`pair_add`, `pair_mul`, `pair_zero`, `pair_one`, `pair_neg`, `pair_inverse`) with coordinate projection lemmas and associativity, commutativity, identity, and inverse laws for the corresponding algebraic hypotheses.
