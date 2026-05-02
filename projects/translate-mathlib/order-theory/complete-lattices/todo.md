# Complete Lattices

Goal: support arbitrary suprema and infima, not just binary ones.

- [ ] Define complete lattices
- [ ] Add `sup`, `inf`, `sSup`, and `sInf` APIs
- [ ] Prove the standard order characterizations of arbitrary suprema and infima
- [ ] Add monotonicity lemmas for `sSup` and `sInf`
- [ ] Add complete lattice APIs for predicates and bundled instances where the typeclass receiver supports them
- [ ] Support complete sublattices and closure operators
- [ ] Add least and greatest fixed point infrastructure based on completeness
- [ ] Connect complete lattices to topology and measure-theoretic constructions
- [ ] Add convenient finite-family specializations of complete-lattice theorems
- [ ] Record which downstream libraries should be migrated once this exists

Status:

- `src/set_lattice.ac` now has unbundled set-family `set_sSup` / `set_sInf` wrappers over indexed union/intersection, with membership characterizations, least-upper-bound and greatest-lower-bound universal properties, and monotonicity lemmas.
- A direct `Set[K]: PartialOrder` / `Lattice` instance attempt was avoided: Acorn currently rejects same-shape generic `Set[K]` typeclass receiver use while rendering `LTE.lte[Set[K]](...)`. The verified unbundled API keeps set complete-lattice facts usable without committing to an unstable instance design.
