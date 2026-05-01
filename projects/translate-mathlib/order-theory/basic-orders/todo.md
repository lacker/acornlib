# Preorders, Partial Orders, and Linear Orders

Goal: stabilize the base order hierarchy so later order-theoretic and ordered-algebraic code can depend on one standard API.

- [ ] Audit remaining `Nat`, `Int`, `Rat`, and `Real` order theorem names and centralize the generic ones
- [ ] Decide whether Acornlib needs a `Preorder` layer below `PartialOrder`

Status:

- `src/order.ac` now has central partial-order equivalences for two-sided bounds, disequality as failure of a comparison, strict comparisons as non-equal non-strict comparisons, and equality/strict disjunction variants.
- Linear-order trichotomy-style case splits are expanded in `src/order_cases.ac`, including equality-first trichotomy variants, reordered strict/non-strict disjunctions, and equality as the case where neither strict comparison holds.
- Asymmetric characterizations `lt_iff_lte_not_lte_swap` and `gt_iff_lte_swap_not_lte` are in `src/order.ac`. Their conjunction order is `(not (...) and ...)` to avoid an `acorn check` printer ambiguity where `not P != q` parses incorrectly when regenerated.
- Unbundled order-data predicates and equality transport/extensionality lemmas now live in `src/order_relation.ac`, including strict-part and converse transport for partial-order and linear-order relations.
- The basic comparison audit now includes Mathlib-style implication aliases in `src/order.ac` and linear-order negation aliases in `src/order_cases.ac`.
- The central `src/order.ac` API now includes strict and non-strict `min`/`max` selector aliases plus lower-bound and upper-bound characterizations; `src/real/real_base.ac` imports its basic `min`/`max` facts from `order.ac`.
- The `order.ac` naming audit now includes central `le`/`ge` aliases for reflexivity, transitivity, antisymmetry, equality-to-bound lemmas, strict-to-nonstrict lemmas, negation lemmas, strict/equality decompositions, totality disjunctions, and failed-comparison consequences.
- The central `src/order.ac` API now includes `le`/`ge` aliases for equality substitution, mixed strict/non-strict transitivity, non-strict consequences of strict chains, flipped disequality hypotheses, and `not_eq` names for strict comparisons.
- `src/order_cases.ac` now has `le`/`ge` aliases for linear-order comparison-vs-negation equivalences.
- The central `src/order.ac` API now includes numeric-file-compatible aliases for strict irreflexivity, swapped strict-exclusion, mixed strict/non-strict transitivity, swapped totality disjunctions, strict `min`/`max` comparison facts, and `min`/`max` monotonicity in both `le` and `ge` forms.
