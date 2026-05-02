# Lattices

Goal: provide finite-infimum and finite-supremum structure for ordered objects.

- [ ] Support lattice APIs for ideals and subobjects
- [ ] Refactor `min`/`max`-based proofs toward lattice language where appropriate

Status:

- `src/set_lattice.ac` now provides an unbundled lattice-style API for sets: binary `set_inf`/`set_sup`, membership characterizations, lower/upper-bound universal properties, commutativity, associativity, idempotence, empty/universal identities, absorption, and distributivity.
- `src/lattice.ac` now has theorem wrappers for the left distributivity laws, right-sided distributivity lemmas, left-sided absorption variants, one-sided monotonicity lemmas, basic meet/join equality iff aliases, equality consequences, commutation and reversed-associativity lemmas, and Mathlib-style `inf`/`sup` theorem aliases.
- `Nat`, `Int`, `Rat`, and `Real` now instantiate `DistribLattice` using their `min` and `max` operations.
- `src/list/list_lattice.ac` now has non-empty list meet/join constructions, list lower/upper bound predicates, pointwise element-bound theorems, and universal-property characterizations of list meet/join as greatest lower bounds and least upper bounds.
