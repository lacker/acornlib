# Order Isomorphisms

Goal: make equivalent ordered structures interchangeable without ad hoc transport code.

Status:

- `src/order_iso.ac` now defines order-isomorphism pairs and bundled `OrderIso` values, with projection, extensionality, inverse-law, embedding, bijection, order-reflection, and identity-isomorphism lemmas.

- [ ] Add inverse and composition order isomorphisms
- [ ] Add coercions or wrappers for using order isomorphisms as functions
- [ ] Add transport lemmas for intervals and bounds under order isomorphisms
- [ ] Add transport of lattice structure across order isomorphisms
- [ ] Connect order isomorphisms with algebraic equivalences in ordered algebra
- [ ] Add order duality as a standard isomorphism pattern
- [ ] Support order isomorphisms for product and function spaces
- [ ] Refactor representative transport-heavy proofs to use the new API
