# Surjective And Bijective Transport

Goal: package the new surjective reflection lemmas and connect them to bijective transport of relation properties.

- [ ] Decide whether codomain-side pushforward notation is needed or whether these transport theorems are enough for now
- [ ] Add pushforward lemmas along surjective functions if that API is chosen
- [ ] Connect any future pushforward API back to `respects_equivalence`
- [ ] Collapse this leaf once one downstream use is in place and the pushforward question is settled

Status:

- The surjective `iff` theorems for reflexive, symmetric, transitive, and equivalence relations are now in `src/util.ac`.
- Bijective transport now also packages antisymmetry and reflexive/transitive/antisymmetric order data.
- `function_respects_pullback` is the base connection from the transport API back to `respects_equivalence`.
- `src/set.ac` is now the first downstream user via `equivalence_class_respects_equivalence`.
