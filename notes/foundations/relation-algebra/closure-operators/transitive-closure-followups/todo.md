# Transitive Closure Followups

Goal: strengthen the powers-based transitive-closure API now that the core definitions and transitivity theorems are in place.

- [ ] Prove monotonicity of `relation_power` in the base relation
- [ ] Prove monotonicity of `relation_refl_trans_closure`
- [ ] Prove monotonicity of `relation_trans_closure`
- [ ] Prove reflexive-transitive closure is the smallest reflexive transitive relation containing the base relation
- [ ] Prove transitive closure is the smallest transitive relation containing the base relation
- [ ] Relate `relation_trans_closure` to `relation_refl_trans_closure` plus nontrivial length
- [ ] Add converse compatibility lemmas for relation powers and closures
- [ ] Add a first downstream refactor that uses `relation_trans_closure`
- [ ] Decide when to add explicit finite-path / walk objects on top of this API
- [ ] Collapse this leaf once the universal-property lemmas and one downstream use are in place
