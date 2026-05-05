# Complete Lattices

Goal: support arbitrary suprema and infima, not just binary ones.

- [ ] Continue the unbundled set complete-lattice API with list/range empty, universal, complement, and distributivity facts
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
- A direct `Set[K]: PartialOrder` / `Lattice` instance attempt was avoided: Acorn currently rejects same-shape generic `Set[K]` typeclass receiver use while rendering `LTE.lte[Set[K]](...)`. The verified unbundled API keeps set complete-lattice facts usable without committing to an unstable instance design.
