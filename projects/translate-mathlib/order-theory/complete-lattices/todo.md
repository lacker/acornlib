# Complete Lattices

Goal: support arbitrary suprema and infima, not just binary ones.

- [ ] Continue downstream-driven unbundled set complete-lattice wrappers beyond the current indexed reindexing, list, range, monotone-range, distributivity, preimage, and image-over-supremum API
- [ ] Revisit list/range complement and distributivity facts only after the invalid strict-check certificate issue is isolated
- [ ] Decide the minimal general `CompleteLattice` typeclass shape after more unbundled users exist
- [ ] Add general `sup`, `inf`, `sSup`, and `sInf` APIs once the receiver design is stable
- [ ] Prove the standard order characterizations of arbitrary suprema and infima for the general API
- [ ] Add monotonicity lemmas for general `sSup` and `sInf`
- [ ] Add complete lattice APIs for predicates and bundled instances where the typeclass receiver supports them
- [ ] Support complete sublattices and closure operators
- [ ] Add least and greatest fixed point infrastructure based on completeness
- [ ] Connect complete lattices to topology and measure-theoretic constructions
- [ ] Record which downstream libraries should be migrated once this exists

Status:

- `src/set_lattice.ac` now has unbundled set-family `set_sSup` / `set_sInf` wrappers over indexed union/intersection, with membership characterizations, least-upper-bound and greatest-lower-bound universal properties, and monotonicity lemmas.
- `src/set_lattice.ac` now has indexed set-family empty/universal characterizations, complement duality, complete distributivity of binary infimum over family supremum, and complete distributivity of binary supremum over family infimum.
- `src/set_lattice.ac` now has finite-family `set_list_sSup` / `set_list_sInf` and bounded natural-family `set_range_sSup` / `set_range_sInf` wrappers, with membership, universal-property, monotonicity, empty/successor range, and comparison-to-full-family lemmas.
- `src/set_lattice.ac` now has bounded natural-family complement duality and bound-monotonicity wrappers for `set_range_sSup` / `set_range_sInf`.
- `src/set_lattice.ac` now has constant empty/universal family helpers and indexed-family bottom/top wrapper lemmas for `set_sSup` and `set_sInf`.
- `src/set_lattice.ac` now has indexed-family extensionality wrappers, right-sided distributivity of binary set infimum/supremum over family supremum/infimum, and bounded monotone-family simplification plus sequential union/intersection bridge lemmas for `set_range_sSup` and `set_range_sInf`.
- `src/set_lattice.ac` now has preimage transport wrappers for indexed, list-indexed, and bounded natural-family set suprema and infima.
- `src/set_lattice.ac` now has preimage universal-property wrappers characterizing upper bounds of preimage suprema and lower bounds of preimage infima for indexed, list-indexed, and bounded natural families.
- `src/set_lattice.ac` now has image transport wrappers for binary set suprema and indexed, list-indexed, and bounded natural-family set suprema, plus target-subset characterizations through preimages.
- `src/set_lattice.ac` now has image transport subset wrappers for indexed, list-indexed, and bounded natural-family set infima.
- `src/set_lattice.ac` now has indexed-family cofinal refinement inclusions and equalities, exact-occurrence inclusion and equality wrappers, and reindexing inclusions plus equality wrappers for section-backed, surjective, and bijective reindexing maps.
- `src/set_lattice.ac` now has constant-family `set_sSup` / `set_sInf` wrappers, including inhabited-index equalities.
- A direct `Set[K]: PartialOrder` / `Lattice` instance attempt was avoided: Acorn currently rejects same-shape generic `Set[K]` typeclass receiver use while rendering `LTE.lte[Set[K]](...)`. The verified unbundled API keeps set complete-lattice facts usable without committing to an unstable instance design.
