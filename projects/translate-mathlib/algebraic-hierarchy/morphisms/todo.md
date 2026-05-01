# Morphism Classes and Homomorphism Extensionality

Goal: make structure-preserving maps a first-class part of the algebraic hierarchy instead of scattered ad hoc records.

- [ ] Add bundled ring homomorphisms (RingHom: preserves both + and *, builds on AddGroupHom and MonoidHom)
- [ ] Add bundled semiring homomorphisms (SemiringHom: preserves + and *, identities; sits below RingHom in the hierarchy)
- [ ] Add bundled additive commutative monoid/group homomorphisms reusing the existing AddMonoidHom and AddGroupHom infrastructure
- [ ] Add theorem libraries for kernel-like and image-like constructions once subobjects are available
- [ ] Unify notation and field names across bundled morphism structures (consider a shared coercion convention)
- [ ] Refactor one existing algebra file to use the shared morphism API
