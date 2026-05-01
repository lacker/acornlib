# Relation Algebra

Goal: centralize the standard reasoning patterns about relations so later libraries can reuse them.

- [ ] [Closure operators such as reflexive and symmetric closure](closure-operators/todo.md)

Status:

- The generic congruence API is now in `src/relation_transport.ac`, including unary and binary compatibility predicates, congruence predicates, and equality-pullback transport lemmas.
- Basic relation lattice algebra is now in `src/relation_basic.ac`: relation union, equality by mutual inclusion, commutativity/associativity/idempotence, monotonicity, absorption, distributivity, converse-over-union, and union preservation for reflexivity, irreflexivity, symmetry, and totality.
- One-sided intersection preservation lemmas now cover antisymmetry, irreflexivity, and asymmetry; one-sided union preservation lemmas now cover reflexivity and totality. Converse preservation of antisymmetry is now in `src/relation_basic.ac` as `relation_converse_is_antisymmetric` and used from `src/order_relation.ac`.
- Function-compatibility transport is now complete in code: surjective/bijective pushforward and pullback lemmas live in `src/relation_transport.ac` (`relation_pushforward_is_reflexive_of_surjective`, `relation_pushforward_is_symmetric`, `relation_pushforward_is_transitive_of_injective`, `relation_pushforward_is_equivalence_of_bijection`, `function_pushforward_respects_equivalence_of_bijection`), and strict-order pullback lemmas live in `src/order_relation.ac` (`lt_pullback_is_irreflexive`, `lt_pullback_is_asymmetric`, `lt_pullback_is_strict_order_data_of_bijection_map`, and `gt_*` counterparts).
- The remaining branch here is a definition question and currently deferred.
