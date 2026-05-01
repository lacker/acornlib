# Algebraic Subobjects

Goal: make subgroup-like constructions uniform across the algebraic hierarchy.

- [ ] Strengthen the existing subgroup API beyond identity, multiplication, inverse, and intersection
- [ ] Add subrings
- [ ] Add additive subgroups and additive submonoids where appropriate
- [ ] Add membership, coercion, and extensionality lemmas for subobjects
- [ ] Add closure/generation operations from subsets
- [ ] Support intersections, unions where valid, and lattices of subobjects
- [ ] Add finite-generation predicates for subobjects
- [ ] Refactor existing finite subgroup and finite set code toward the shared subobject conventions

Status:

- `src/subsemigroup.ac`, `src/submonoid.ac`, and `src/subgroup.ac` now have commutativity, associativity, and idempotence laws for intersections.
