# Morphism Classes and Homomorphism Extensionality

Goal: make structure-preserving maps a first-class part of the algebraic hierarchy instead of scattered ad hoc records.

- [x] Add bundled semiring homomorphisms (SemiringHom: preserves + and *, identities; sits below RingHom in the hierarchy)
- [x] Add bundled additive commutative monoid/group homomorphisms reusing the existing AddMonoidHom and AddGroupHom infrastructure
- [x] Relate RingHom to AddGroupHom and MonoidHom: derive instances or provide bridges in both directions
- [ ] Add theorem libraries for image-like constructions once a stable image API is available
- [ ] Unify notation and field names across bundled morphism structures after the coercion convention is settled

Status:

- `src/submonoid.ac`, `src/subgroup.ac`, `src/add_subgroup.ac`, and `src/subring.ac` now have preimage constructions for bundled homomorphisms; the monoid, group, and additive group cases also expose kernel subobjects.
- `src/add_comm_monoid.ac` and `src/add_comm_group.ac` now have bundled homomorphism wrappers reusing the existing additive monoid/group homomorphism infrastructure.
- `src/ring_hom.ac` now bridges `RingHom` to `AddGroupHom`, `MonoidHom`, and `SemiringHom`, and has the predicate-level reverse bridge from compatible additive and multiplicative homomorphisms.
- `src/quotient_algebra.ac` now uses bundled `RingHom` directly for ring-kernel congruence lemmas instead of paired additive/multiplicative homomorphisms.
- Remaining items are deferred from the active execution frontier: image-like theorem libraries need a stable image API, and notation unification is a design cleanup.
