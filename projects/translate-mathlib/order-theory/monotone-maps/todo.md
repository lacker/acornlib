# Monotone, Antitone, and Embedded Maps

Goal: give order-preserving maps a reusable interface.

- [ ] Decide the exact preimage API for plain monotone maps; order-embedding interval preimages are in place
- [ ] Connect monotone sequences with current convergence theorems
- [ ] Refactor monotonicity proofs in analysis files to the shared interface

Status:

- `src/ordered_field.ac` now has generic strict and reverse-order scalar multiplication aliases for positive, negative, nonnegative, and nonpositive scalars; `src/real/real_field.ac` now keeps its Real-specific scalar monotonicity wrappers by calling the shared ordered-field API.
- `src/order_maps.ac` now defines `is_order_surjection`, projection lemmas, identity order surjection, and composition of order-preserving surjections.
- `src/order_maps.ac` now has strict-order preservation and reflection for order embeddings, interval image lemmas for order embeddings, and antitone interval image lemmas with reversed endpoints.
- `src/order_maps.ac` now has strict monotone/antitone composition variants, function-level injectivity for order embeddings, reversed-order reflection aliases, and binary `min`/`max` image bounds for monotone, antitone, and order-embedding maps.
- `src/order_maps.ac` now packages image/preimage pairs as interval membership equivalences for order embeddings and proves that order embeddings preserve clamping.
- `src/add_ordered_group.ac` and `src/ordered_group.ac` now expose fixed-translation maps as monotone strict order embeddings, with preservation and reflection lemmas for non-strict and strict comparisons. Additive negation is now a shared strict antitone API.
- `src/ordered_field.ac` now exposes right and left scalar multiplication maps, proves they are monotone for nonnegative scalars and antitone for nonpositive scalars, and adds direct `mul_le_mul_of_nonneg_*` / `mul_le_mul_of_nonpos_*` comparison lemmas.
