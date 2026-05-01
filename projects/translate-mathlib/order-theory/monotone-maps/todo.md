# Monotone, Antitone, and Embedded Maps

Goal: give order-preserving maps a reusable interface.

- [ ] Decide the exact preimage API for plain monotone maps; order-embedding interval preimages are in place
- [ ] Add monotonicity APIs for common algebraic operations
- [ ] Connect monotone sequences with current convergence theorems
- [ ] Refactor monotonicity proofs in analysis files to the shared interface

Status:

- `src/order_maps.ac` now defines `is_order_surjection`, projection lemmas, identity order surjection, and composition of order-preserving surjections.
- `src/order_maps.ac` now has strict-order preservation and reflection for order embeddings, interval image lemmas for order embeddings, and antitone interval image lemmas with reversed endpoints.
- `src/order_maps.ac` now has strict monotone/antitone composition variants, function-level injectivity for order embeddings, reversed-order reflection aliases, and binary `min`/`max` image bounds for monotone, antitone, and order-embedding maps.
- `src/order_maps.ac` now packages image/preimage pairs as interval membership equivalences for order embeddings and proves that order embeddings preserve clamping.
