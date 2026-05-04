# Algebraic Subobjects

Goal: make subgroup-like constructions uniform across the algebraic hierarchy.

- [ ] Add membership, coercion, and extensionality lemmas for subobjects
- [ ] Add closure/generation operations from subsets
- [ ] Support intersections, unions where valid, and lattices of subobjects
- [ ] Add finite-generation predicates for subobjects
- [ ] Refactor existing finite subgroup and finite set code toward the shared subobject conventions

Status:

- `src/subsemigroup.ac`, `src/submonoid.ac`, and `src/subgroup.ac` now have commutativity, associativity, and idempotence laws for intersections.
- `src/subsemigroup.ac`, `src/submonoid.ac`, `src/subgroup.ac`, and `src/add_subgroup.ac` now have mutual-inclusion extensionality and intersection-with-top/bottom simplification lemmas.
- `src/add_submonoid.ac` now defines bundled additive submonoids with zero/addition constraints, extensionality, intersections, inclusion order, and zero/full submonoids.
- `src/subring.ac` now defines bundled subrings with operation constraints, extensionality, intersections, inclusion order, full subrings, and additive subgroup/multiplicative submonoid bridges.
- `src/add_submonoid.ac` now supports inverse images under bundled additive monoid homomorphisms.
- `src/add_submonoid.ac` now supports closure from subsets, with generator inclusion, least-property, monotonicity, idempotence, and empty/universal closure lemmas.
- `src/subgroup.ac`, `src/add_subgroup.ac`, and `src/submonoid.ac` now have stronger membership/closure lemmas for inverse/negation equivalences, products/sums of three, powers, identity/full membership characterizations, and kernel membership directions.
