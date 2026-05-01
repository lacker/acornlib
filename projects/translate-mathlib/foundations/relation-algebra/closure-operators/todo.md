# Relation Closure Operators

Goal: add standard relation closures in a way that later algebra and order libraries can reuse.

- [ ] [Finite-path / walk objects on top of relation powers](finite-path-objects/todo.md)

The reflexive, symmetric, transitive, reflexive-transitive, and equivalence closure APIs are in `src/relation_basic.ac` and `src/relation.ac`. All five closures have subset, universal-property, monotonicity, fixed-point, and idempotence laws (e.g. `relation_reflexive_closure_idempotent`, `relation_symmetric_closure_idempotent`, `relation_trans_closure_idempotent`, `relation_refl_trans_closure_idempotent`, `relation_equivalence_closure_idempotent`, plus the matching `_eq_self_of_*`, `_monotone`, and `_subset_of_*` lemmas). `relation_refl_trans_closure_is_symmetric` records that the reflexive-transitive closure preserves symmetry, which underlies `relation_equivalence_closure_is_equivalence`. `src/nat/nat_gcd.ac` is the first downstream use. The remaining work in this branch is a definition question about whether explicit path / walk objects should sit on top of the powers-based API.
