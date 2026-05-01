# Relation Algebra

Goal: centralize the standard reasoning patterns about relations so later libraries can reuse them.

- [ ] [Closure operators such as reflexive and symmetric closure](closure-operators/todo.md)
- [ ] [Compatibility lemmas for relations under functions](function-compatibility/todo.md)

Status:

- The generic congruence API is now in `src/relation_transport.ac`, including unary and binary compatibility predicates, congruence predicates, and equality-pullback transport lemmas.
- Basic relation lattice algebra is now in `src/relation_basic.ac`: relation union, equality by mutual inclusion, commutativity/associativity/idempotence, monotonicity, absorption, distributivity, converse-over-union, and union preservation for reflexivity, irreflexivity, symmetry, and totality.
- The remaining branches here are definition-heavy and currently deferred.
