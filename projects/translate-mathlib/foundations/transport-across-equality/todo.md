# Transport Across Equality and Equivalence

Goal: support moving data and theorems across definitional boundaries in a controlled way.

- [ ] Extend subobject transport from set and finite-set images to quotient-related data after the quotient API choice is settled

Status:

- Relation property transport in `src/relation_basic.ac` now uses the shared binary-function equality transport API.
- Type-level equality is not currently exposed as a value-level equality form: `acorn verify - --read-only` reports that type parameters are not values in equality expressions.
