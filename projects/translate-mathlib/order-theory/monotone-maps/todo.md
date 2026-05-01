# Monotone, Antitone, and Embedded Maps

Goal: give order-preserving maps a reusable interface.

- [ ] Decide the exact preimage API for plain monotone maps; order-embedding interval preimages are in place
- [ ] Add monotonicity APIs for common algebraic operations
- [ ] Connect monotone sequences with current convergence theorems
- [ ] Refactor monotonicity proofs in analysis files to the shared interface

Status:

- `src/order_maps.ac` now defines `is_order_surjection`, projection lemmas, identity order surjection, and composition of order-preserving surjections.
