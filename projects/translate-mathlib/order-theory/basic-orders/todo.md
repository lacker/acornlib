# Preorders, Partial Orders, and Linear Orders

Goal: stabilize the base order hierarchy so later order-theoretic and ordered-algebraic code can depend on one standard API.

- [ ] Add a `Preorder` layer if Acornlib needs one below `PartialOrder`
- [ ] Add theorem names and rewrite lemmas that make `not <=` and `not <` reasoning uniform
- [ ] Complete the `LinearOrder` case-split API for trichotomy-style arguments
- [ ] Add extensionality-style lemmas for order structures whose data is only `<=`
- [ ] Add transport lemmas for inheriting order structure across definitional equalities
- [ ] Unify the order APIs for `Nat`, `Int`, `Rat`, and `Real`
- [ ] Audit theorems in `order.ac` for gaps, naming inconsistencies, and missing symmetric variants
- [ ] Refactor one downstream file to use only the central basic-order API
