# Algebraic Quotients

Goal: build group, ring, and module quotient APIs on top of the foundational `Quotient` / `QuotientOver` family, starting from kernel-of-homomorphism congruences.

- [ ] Build the lifted `+` and `-` operations on `QuotientOver[G]` and prove their projection compatibility lemmas using the existing `quotient_over_binary_op` and `quotient_over_unary_op` infrastructure
- [ ] Define a normal subgroup API and the general group quotient `G/N`
- [ ] Introduce a dedicated `RingHom[R, S]` struct so the ring kernel bridges no longer need a paired `AddGroupHom`/`MonoidHom` with an equality side condition
- [ ] Lift `+`, `-`, and `*` through the kernel quotient as actual operations (deferred: a typeclass instance on `Quotient[A]` is blocked because the operation depends on `qrel`, which is value-level rather than type-level; a per-`qrel` `quotient_over_binary_op` lift already exists in `src/equivalence.ac` and is the path forward)

Status:

- `add_monoid_hom_kernel_respects_add` and `add_monoid_hom_kernel_is_add_congruence` in `src/quotient_algebra.ac` give the additive monoid bridge.
- `add_group_hom_kernel_respects_add`, `add_group_hom_kernel_respects_neg`, and `add_group_hom_kernel_is_add_congruence` in `src/quotient_algebra.ac` give the additive group bridge.
- `monoid_hom_kernel_respects_mul` and `monoid_hom_kernel_is_mul_congruence` give the multiplicative monoid bridge.
- `group_hom_kernel_respects_mul`, `group_hom_kernel_respects_inverse`, and `group_hom_kernel_is_mul_congruence` give the multiplicative group bridge.
- `ring_hom_kernel_respects_add`, `ring_hom_kernel_respects_mul`, `ring_hom_kernel_is_add_congruence`, `ring_hom_kernel_is_mul_congruence`, and `ring_hom_kernel_is_ring_congruence` give the ring bridge, taking a paired `AddGroupHom[R, S]` and `MonoidHom[R, S]` with `f.hom = g.hom` as the side condition. `is_ring_hom` and `is_ring_congruence` are defined in `src/quotient_algebra.ac`.
- `linear_map_kernel_respects_add`, `linear_map_kernel_smul_step`, and `linear_map_kernel_is_add_congruence` give the module-hom (R-linear map) bridge in predicate form (using `is_linear_map(src, dst, f)`), capturing both the additive congruence and the per-scalar smul preservation that makes the kernel a submodule.
- All kernel bridges take struct-form homomorphisms (`AddGroupHom`, `MonoidHom`, `GroupHom`) so the existing `_add` / `_mul` / `_neg` / `_inv` / `_zero` / `_one` lemmas apply directly. A predicate-level form was attempted first but the identity-derivation proofs timed out under default search; the struct path is the durable choice.
- `src/add_subgroup.ac` defines `AddSubgroup[G: AddGroup]` (via `add_zero_constraint`, `add_closure_constraint`, `neg_constraint`, `add_subgroup_constraint`), the closure lemmas `add_subgroup_contains_zero` / `_add` / `_neg` / `_sub`, the relation `add_subgroup_rel(h, a, b) := h.contains(a - b)`, equivalence proofs (`_is_reflexive` / `_is_symmetric` / `_is_transitive` / `_is_equivalence`), and the constraint-satisfying `add_subgroup_quotient_relation` together with `add_subgroup_quotient_relation_rel`. The transitivity proof needed an explicit `is_transitive(...) = forall(...)` unfolding step to fit within the search budget.
- For `AddCommGroup`, `add_subgroup_rel_add_step`, `add_subgroup_rel_respects_add`, and `add_subgroup_rel_is_add_congruence` in `src/add_subgroup.ac` show the subgroup quotient relation is an additive congruence; the helper `add_sub_distrib` packages the regrouping `(a + b) - (a' + b') = (a - a') + (b - b')`.
- Negation is a quotient unary operation on the subgroup quotient relation: `add_neg_sub`, `add_subgroup_rel_neg_step`, `add_subgroup_rel_respects_neg`, `add_subgroup_quotient_relation_respects_neg`, and `add_subgroup_quotient_relation_respects_add` (the latter rephrasing the additive congruence as `quotient_binary_respects` so it plugs straight into `quotient_over_binary_op_projection`).
