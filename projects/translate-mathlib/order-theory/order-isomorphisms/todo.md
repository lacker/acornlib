# Order Isomorphisms

Goal: make equivalent ordered structures interchangeable without ad hoc transport code.

Status:

- `src/order_iso.ac` now defines order-isomorphism pairs and bundled `OrderIso` values, with projection, extensionality, inverse-law, embedding, bijection, order-reflection, and identity-isomorphism lemmas.
- `src/order_iso.ac` now has inverse and composition order isomorphisms, strict and reverse-order projection lemmas, interval membership transport, and binary `min`/`max` transport.
- `src/order_iso.ac` now has image and preimage predicate wrappers plus lower-bound, upper-bound, interval-bound, bounded-below, bounded-above, and boundedness transport lemmas for order isomorphisms.
- `src/order_iso.ac` now has meet/join and inf/sup transport lemmas for `MeetSemilattice` and `JoinSemilattice`, including inverse-map versions.
- `src/order_iso.ac` now has `order_iso_apply` / `order_iso_unapply` function wrappers, identity/inverse/composition application laws, and wrapper comparison-reflection lemmas.

- [ ] Connect order isomorphisms with algebraic equivalences in ordered algebra
- [ ] Add order duality as a standard isomorphism pattern
- [ ] Support order isomorphisms for product and function spaces
- [ ] Refactor representative transport-heavy proofs to use the new API
