# Downstream Refactors

Goal: move one more external file onto the shared `order_relation` and `order_cases` APIs so the order-relations branch has a real downstream user beyond its own core module.

- [ ] Audit `ordered_group.ac` for strict-comparison case splits that can use `order_cases`
- [ ] Audit `add_ordered_group.ac` for comparison packaging that can use `order_relation` or `order_cases`
- [ ] Audit `rat/rat_base.ac` for trichotomy or negation rewrites that can use `order_cases`
- [ ] Audit `int/lattice.ac` for cancellation or absolute-value proofs that can use `order_cases`
- [ ] Audit `order_relation.ac` again for any remaining `eq_or_lt` or `eq_or_gt` splits
- [ ] Find one theorem outside `order_cases.ac` that simplifies with `lte_min_iff` or `max_lte_iff`
- [ ] Find one theorem outside `order_cases.ac` that simplifies with `lt_min_iff` or `lt_max_iff`
- [ ] Refactor at least one external file to import `order_cases`
- [ ] Re-audit naming once the first external downstream user lands
- [ ] Collapse this leaf once one external downstream user is in place
