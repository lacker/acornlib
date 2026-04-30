# Preorders, Partial Orders, and Linear Orders

Goal: stabilize the base order hierarchy so later order-theoretic and ordered-algebraic code can depend on one standard API.

- [ ] Add a `Preorder` layer if Acornlib needs one below `PartialOrder`
- [ ] Complete the `LinearOrder` case-split API for trichotomy-style arguments
  - Note: asymmetric characterizations `lt_iff_lte_not_lte_swap` and `gt_iff_lte_swap_not_lte` (PartialOrder analogues of Mathlib's `lt_iff_le_not_le`) are added in `order.ac`. Conjunction order is `(not (...) and ...)` rather than `(... and not (...))` to dodge an `acorn check` printer ambiguity where `not P != q` parses incorrectly when regenerated.
- [ ] Add extensionality-style lemmas for order structures whose data is only `<=`
  - Note: `lte_and_gte_imp_eq`, `eq_of_forall_lte_iff`, and `eq_of_forall_lte_iff_swap` added in `order.ac` for PartialOrder. The biconditional `(a = b) = (a <= b and a >= b)` was attempted but triggered a "shallow explosion" in the prover; left as the implication-form lemma. Remaining: a LinearOrder variant determined by `<` profile rather than `<=`.
- [ ] Add transport lemmas for inheriting order structure across definitional equalities
- [ ] Unify the order APIs for `Nat`, `Int`, `Rat`, and `Real`
- [ ] Audit theorems in `order.ac` for gaps, naming inconsistencies, and missing symmetric variants
- [ ] Refactor one downstream file to use only the central basic-order API
