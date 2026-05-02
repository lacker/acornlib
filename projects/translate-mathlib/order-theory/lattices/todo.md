# Lattices

Goal: provide finite-infimum and finite-supremum structure for ordered objects.

- [ ] Decide the same-carrier API for bundled `Submodule` meet/inclusion before adding a submodule lattice operation
- [ ] Add lattice APIs for ideals once ideal definitions exist
- [ ] Refactor `min`/`max`-based proofs toward lattice language where appropriate

Status:

- `src/set_lattice.ac` now provides an unbundled lattice-style API for sets: binary `set_inf`/`set_sup`, membership characterizations, lower/upper-bound universal properties, commutativity, associativity, idempotence, empty/universal identities, absorption, and distributivity.
- `src/lattice.ac` now has theorem wrappers for the left distributivity laws, right-sided distributivity lemmas, left-sided absorption variants, one-sided monotonicity lemmas, basic meet/join equality iff aliases, equality consequences, commutation and reversed-associativity lemmas, and Mathlib-style `inf`/`sup` theorem aliases.
- `Nat`, `Int`, `Rat`, and `Real` now instantiate `DistribLattice` using their `min` and `max` operations.
- `src/list/list_lattice.ac` now has non-empty list meet/join constructions, list lower/upper bound predicates, pointwise element-bound theorems, and universal-property characterizations of list meet/join as greatest lower bounds and least upper bounds.
- `src/subgroup.ac` now has an unbundled inclusion order for subgroups, with reflexivity, transitivity, intersection lower-bound projections, and the greatest-lower-bound characterization for subgroup intersection. A bundled `PartialOrder`/`MeetSemilattice` instance was avoided because parameterized typeclass instances for `Subgroup[G]` currently hit an Acorn elaborator panic.
- `src/subsemigroup.ac` and `src/submonoid.ac` now have matching unbundled inclusion orders, intersection lower-bound projections, greatest-lower-bound characterizations for intersections, and bottom/top containment lemmas for their canonical empty/identity/full subobjects.
- `src/add_subgroup.ac` now has additive subgroup extensionality, intersection as an additive subgroup, unbundled inclusion order, greatest-lower-bound characterization for intersections, and canonical zero/full additive subgroup containment lemmas.
