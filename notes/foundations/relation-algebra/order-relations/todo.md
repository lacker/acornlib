# Order Relations

Goal: make order relations first-class citizens of the relation-algebra library, especially for converse, closure, and linear-order case splits.

- [ ] [Use the shared order-relation and order-cases APIs in downstream files](downstream-refactors/todo.md)
- [ ] Collapse this branch once one more external downstream user lands

Status:

- Relation-property packaging for `<=`, `>=`, `<`, and `>` now lives in `src/order_relation.ac`.
- Converse and pullback theorems specialized to order relations now live in `src/order_relation.ac`.
- The linear-order case-split and min/max API now lives in `src/order_cases.ac`.
- `src/order_relation.ac` is now the first internal downstream user of the `order_cases` API.

## Current Focus

The active frontier is [downstream-refactors](downstream-refactors/todo.md).
