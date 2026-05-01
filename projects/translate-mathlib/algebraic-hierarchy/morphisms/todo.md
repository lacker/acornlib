# Morphism Classes and Homomorphism Extensionality

Goal: make structure-preserving maps a first-class part of the algebraic hierarchy instead of scattered ad hoc records.

- [ ] Add theorem libraries for kernel-like and image-like constructions once subobjects are available
- [ ] Unify notation and field names across bundled morphism structures (consider a shared coercion convention)
- [ ] Refactor one existing algebra file to use the shared morphism API

Status:

- `src/semiring/base.ac` now has `SemiringHom`, preservation lemmas, function-equality transport, identity, and composition.
- `src/ring.ac` now has `RingHom`, preservation lemmas, function-equality transport, identity, and composition.
- `src/add_comm_monoid.ac` and `src/add_comm_group.ac` now have bundled homomorphism wrappers reusing the existing additive monoid/group homomorphism infrastructure.
