# Relation Compatibility Under Functions

Goal: make it easy to transport relations along functions and to state compatibility of functions with relational structure.

- [ ] [Surjective and bijective transport of relation properties](surjective-and-bijective-transport/todo.md)
- [ ] [Injective pullback followups for strict orders](injective-pullbacks/todo.md)

Status:

- Closure transport is now in `src/relation.ac`: positive powers and transitive closure transport exactly under surjective pullback, while exact reflexive-transitive transport needs bijection because the zero-step equality case needs injectivity.
- The first order-theory downstream users now live in `src/order_relation.ac`.
- The completed order-theory audit produced shared-API users in `src/add_ordered_group.ac`, `src/rat/rat_base.ac`, and `src/int/lattice.ac`.

## Current Focus

The remaining items here are design-heavy and currently deferred.
