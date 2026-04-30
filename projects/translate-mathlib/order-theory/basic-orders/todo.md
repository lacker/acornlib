# Preorders, Partial Orders, and Linear Orders

Goal: stabilize the base order hierarchy so later order-theoretic and ordered-algebraic code can depend on one standard API.

- [ ] Add a `Preorder` layer if Acornlib needs one below `PartialOrder`
- [ ] Add extensionality-style lemmas for order structures whose data is only `<=`
- [ ] Add transport lemmas for inheriting order structure across definitional equalities
- [ ] Unify the order APIs for `Nat`, `Int`, `Rat`, and `Real`
- [ ] Audit theorems in `order.ac` for gaps, naming inconsistencies, and missing symmetric variants
- [ ] Refactor one downstream file to use only the central basic-order API

Status:

- Linear-order trichotomy-style case splits are expanded in `src/order_cases.ac`, including equality-first trichotomy variants, reordered strict/non-strict disjunctions, and equality as the case where neither strict comparison holds.
- Asymmetric characterizations `lt_iff_lte_not_lte_swap` and `gt_iff_lte_swap_not_lte` are in `src/order.ac`. Their conjunction order is `(not (...) and ...)` to avoid an `acorn check` printer ambiguity where `not P != q` parses incorrectly when regenerated.
