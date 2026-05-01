# Lattices

Goal: provide finite-infimum and finite-supremum structure for ordered objects.

- [ ] Add concrete distributive lattice instances for `Real` and later ordered structures
- [ ] Add remaining Mathlib-style lattice theorem aliases
- [ ] Support lattices arising from sets, ideals, and subobjects
- [ ] Add finite meet/join constructions over lists or finite families
- [ ] Refactor `min`/`max`-based proofs toward lattice language where appropriate

Status:

- `src/lattice.ac` now has theorem wrappers for the left distributivity laws, right-sided distributivity lemmas, left-sided absorption variants, one-sided monotonicity lemmas, and basic meet/join equality iff aliases.
- `Nat`, `Int`, and `Rat` now instantiate `DistribLattice` using their `min` and `max` operations; the remaining concrete ordered-number instance is `Real`, whose local `min_lte_left`/`min_lte_right` names require a separate placement/refactor to avoid import-name conflicts.
