# Algebraic Subobjects

Goal: make subgroup-like constructions uniform across the algebraic hierarchy.

- [ ] Finish subobject lattice work: valid union/closure APIs and eventual lattice structures after design choices settle
- [ ] Add finite-generation predicates for ideals and modules after their bundled APIs settle
- [ ] Refactor existing finite subgroup and finite set code toward the shared subobject conventions

Status:

- `src/add_subgroup.ac` now supports closure from subsets, with generator inclusion, least-property, monotonicity, idempotence, and empty/universal closure lemmas.
- `src/subring.ac` now supports closure from subsets, with generator inclusion, least-property, monotonicity, idempotence, and universal closure lemmas.
- `src/subsemigroup.ac`, `src/submonoid.ac`, `src/subgroup.ac`, `src/add_submonoid.ac`, `src/add_subgroup.ac`, and `src/subring.ac` now define finite-generation predicates from finite generating sets.
- `src/subsemigroup.ac`, `src/submonoid.ac`, and `src/subgroup.ac` now have commutativity, associativity, and idempotence laws for intersections.
- `src/subsemigroup.ac`, `src/submonoid.ac`, `src/subgroup.ac`, and `src/add_subgroup.ac` now have mutual-inclusion extensionality and intersection-with-top/bottom simplification lemmas.
- `src/add_submonoid.ac` now defines bundled additive submonoids with zero/addition constraints, extensionality, intersections, inclusion order, and zero/full submonoids.
- `src/subring.ac` now defines bundled subrings with operation constraints, extensionality, intersections, inclusion order, full subrings, and additive subgroup/multiplicative submonoid bridges.
- `src/add_submonoid.ac` now supports inverse images under bundled additive monoid homomorphisms.
- `src/add_submonoid.ac` now supports closure from subsets, with generator inclusion, least-property, monotonicity, idempotence, and empty/universal closure lemmas.
- `src/subsemigroup.ac`, `src/submonoid.ac`, and `src/subgroup.ac` now support closure from subsets, with generator inclusion, least-property, monotonicity, idempotence, and empty/universal closure lemmas.
- `src/subgroup.ac`, `src/add_subgroup.ac`, and `src/submonoid.ac` now have stronger membership/closure lemmas for inverse/negation equivalences, products/sums of three, powers, identity/full membership characterizations, and kernel membership directions.
- `src/submodule.ac` now has an underlying-set attribute, inclusion order lemmas, zero/full submodules, and closure from subsets with generator inclusion, least-property, and underlying-set idempotence lemmas.
- `src/submodule.ac` now has closure carrier, monotonicity, equality, idempotence, empty-set, and universal-set aliases; `src/add_submonoid.ac` now has zero/full membership boolean aliases.
- `src/submodule.ac` now has additive subgroup and additive submonoid bridge aliases; `src/subring.ac` now has pointwise membership aliases for its additive subgroup and multiplicative submonoid bridges.
- Bundled subobjects now have underlying-set membership equivalences, subset-as-underlying-set equivalences, and set-subset-as-underlying-set equivalences across subsemigroups, submonoids, subgroups, additive submonoids, additive subgroups, subrings, and submodules; `src/submodule.ac` also has additional extensionality, intersection, carrier, and additive-closure helper lemmas.
- Underlying-set coercion APIs now include reverse-orientation membership aliases, implication lemmas for bundled containment versus underlying set containment, and implication lemmas for set containment versus underlying set containment across subsemigroups, submonoids, subgroups, additive submonoids, additive subgroups, subrings, and submodules; full/empty membership boolean aliases were added where they were still missing.
- Preimage APIs now include monotonicity, intersection preservation, and full-subobject preservation for submonoids, subgroups, additive submonoids, additive subgroups, and subrings; `src/add_submonoid.ac` also has the additive monoid homomorphism kernel API.
- Bridge APIs now include adjacent forgetful views from submonoids to subsemigroups, subgroups to submonoids, and additive subgroups to additive submonoids, plus reverse membership and underlying-set aliases for those views and the existing subring/submodule additive and multiplicative views.
- `src/submodule.ac` now has raw common-membership meet laws for submodule intersections: commutativity, associativity directions, idempotence, lower-bound characterization, and zero/full membership simplification aliases.
- `src/submodule.ac` now has a bundled `intersection` operation for same-carrier submodules, with membership, lower-bound, greatest-lower-bound, and idempotence lemmas.
