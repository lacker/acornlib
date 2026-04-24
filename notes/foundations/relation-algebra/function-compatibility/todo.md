# Relation Compatibility Under Functions

Goal: make it easy to transport relations along functions and to state compatibility of functions with relational structure.

- [ ] [Surjective and bijective transport of relation properties](surjective-and-bijective-transport/todo.md)
- [ ] [Injective pullback followups for strict orders](injective-pullbacks/todo.md)
- [ ] [Audit order-theoretic uses of the transport API](order-theory-audit/todo.md)

Status:

- Closure transport is now in `src/relation.ac`: positive powers and transitive closure transport exactly under surjective pullback, while exact reflexive-transitive transport needs bijection because the zero-step equality case needs injectivity.
- The first order-theory downstream users now live in `src/order_relation.ac`.

## Current Focus

The active frontier is [surjective-and-bijective-transport](surjective-and-bijective-transport/todo.md).
