# Congruence Core Definition

Goal: settle the minimal generic notion of congruence before writing reusable algebra code on top of it.

- [ ] Decide whether the primitive compatibility predicates should be unary-only and binary-only or generalized to `n`-ary operations later
- [ ] Decide whether the first generic API should talk about one operation at a time or a bundled family of operations
- [ ] Decide whether the foundational predicate should be named around “compatibility” or directly around “congruence”
- [ ] Decide whether `is_congruence` should require equivalence immediately or whether raw operation compatibility should exist separately
- [ ] Decide how kernel relations of homomorphisms should fit into the first API
- [ ] Record the first concrete signatures for unary and binary compatibility predicates
- [ ] Record the first concrete signature for the bundled congruence predicate
- [ ] Check that the chosen signatures will support groups, rings, and quotient-style later work without ad hoc wrappers
- [ ] Narrow the first implementation leaf after the definition is chosen
- [ ] Remove this branch once the definition choice has been recorded in the parent notes
