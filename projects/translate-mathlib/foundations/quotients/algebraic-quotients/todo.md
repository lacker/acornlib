# Algebraic Quotients

Goal: build group, ring, and module quotient APIs on top of the foundational `Quotient` / `QuotientOver` family, starting from kernel-of-homomorphism congruences.

- [ ] Bridge `AddGroupHom` kernels to additive congruences and lift `+`/`-` through the quotient
- [ ] Bridge `MonoidHom` and `GroupHom` kernels to multiplicative congruences and lift the operation
- [ ] Combine additive and multiplicative kernels for ring homomorphisms
- [ ] Lift module structure through a module-hom kernel
- [ ] Define a foundational additive subgroup API and the quotient-by-additive-subgroup construction
- [ ] Define a normal subgroup API and the general group quotient `G/N`

Status:

- `is_add_monoid_hom_kernel_is_add_congruence` and `add_monoid_hom_kernel_lift_preserves_add` in `src/quotient_algebra.ac` give the additive monoid version.
