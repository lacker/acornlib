# Well-Founded Orders

Goal: give order theory access to induction and recursion principles beyond the concrete naturals.

- [ ] Add well-founded induction
- [ ] Add recursion principles on well-founded relations
- [ ] Connect well-foundedness with `Nat`-based structural recursion
- [ ] Add descending-chain formulations of well-foundedness
- [ ] Add lexicographic and product well-founded constructions
- [ ] Add well-foundedness transfer lemmas across embeddings
- [ ] Support Noetherian-style arguments via well-foundedness
- [ ] Connect well-founded order tools to termination arguments in definitions
- [ ] Refactor one existing induction-heavy development to use the generalized API

Status:

- `src/well_founded.ac` defines `is_well_founded` via the minimal-element formulation, proves that well-founded relations are irreflexive, and proves that pullback along any function preserves well-foundedness.
