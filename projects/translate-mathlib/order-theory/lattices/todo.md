# Lattices

Goal: provide finite-infimum and finite-supremum structure for ordered objects.

- [ ] Decide the same-carrier API for bundled `Submodule` meet/inclusion before adding a submodule lattice operation
- [ ] Audit remaining downstream `list_order` and interval users for concrete migrations to the shared lattice/list-infimum API

Status:

- `src/set_lattice.ac` now provides an unbundled lattice-style API for sets: binary `set_inf`/`set_sup`, membership characterizations, lower/upper-bound universal properties, commutativity, associativity, idempotence, empty/universal identities, absorption, and distributivity.
- `src/lattice.ac` now has theorem wrappers for the left distributivity laws, right-sided distributivity lemmas, left-sided absorption variants, one-sided monotonicity lemmas, basic meet/join equality iff aliases, equality consequences, commutation and reversed-associativity lemmas, and Mathlib-style `inf`/`sup` theorem aliases.
- `Nat`, `Int`, `Rat`, and `Real` now instantiate `DistribLattice` using their `min` and `max` operations.
- `src/list/list_lattice.ac` now has non-empty list meet/join constructions, list lower/upper bound predicates, pointwise element-bound theorems, and universal-property characterizations of list meet/join as greatest lower bounds and least upper bounds.
- `src/list/list_lattice.ac` now also has tail projection lemmas, lower/upper-bound aliases, non-empty concatenation fold laws for list meet/join, append-singleton fold laws, and projection inequalities for concatenation and append. These are exported through `src/list/default.ac`.
- `src/list/list_lattice.ac` now has list lower/upper bound split lemmas for cons and concatenation, monotonicity of list bounds, singleton/nonempty bound witnesses, and iff-style meet/join bounds for concatenation and append. These are exported through `src/list/default.ac`.
- `src/list/list_lattice.ac` now exposes `list_inf` / `list_sup` aliases over non-empty list meet/join, with exported singleton, cons, pair, concatenation, append, projection, and universal-property lemmas.
- `src/subgroup.ac` now has an unbundled inclusion order for subgroups, with reflexivity, transitivity, intersection lower-bound projections, and the greatest-lower-bound characterization for subgroup intersection. A bundled `PartialOrder`/`MeetSemilattice` instance was avoided because parameterized typeclass instances for `Subgroup[G]` currently hit an Acorn elaborator panic.
- `src/subsemigroup.ac` and `src/submonoid.ac` now have matching unbundled inclusion orders, intersection lower-bound projections, greatest-lower-bound characterizations for intersections, and bottom/top containment lemmas for their canonical empty/identity/full subobjects.
- `src/add_subgroup.ac` now has additive subgroup extensionality, intersection as an additive subgroup, unbundled inclusion order, greatest-lower-bound characterization for intersections, and canonical zero/full additive subgroup containment lemmas.
- `src/ideal.ac` now has an unbundled ideal lattice API: mutual-inclusion equality, meet/intersection GLB iff, commutativity, associativity, idempotence, absorption under inclusion, zero/unit meet identities, join/sum LUB iff, commutativity, associativity, idempotence, absorption under inclusion, and zero/unit join identities.
- `src/list/list_order.ac` now has iff bridges between list lower/upper/interval bounds and the corresponding membership-predicate bounds from `order_interval`.
