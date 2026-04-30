# Modules and Vector Spaces

Goal: introduce a usable Module/VectorSpace API that later linear-algebra
work (linear maps, bases, matrices, etc.) can build on.

## Settled Design

- Encoding: bundled `Module[R: Ring, M: AddCommGroup]` structure with `smul: R -> M -> M`
  field, mirroring the `GroupHom[G, H]` two-parameter pattern. The four axioms are split
  into named sub-predicates (`module_smul_add_left_constraint`, `..._add_right_constraint`,
  `..._assoc_constraint`, `..._one_constraint`) combined by `is_module_action`.
- Spelling: `m.smul(r, x)` (typeclass `*` cannot be heterogeneous over two type
  parameters in Acorn).
- `VectorSpace` will be a thin `Module[F, V]` instance with `F: Field`, not a separate
  structure.

## Implementation Tasks

- [ ] Define `VectorSpace` as a `Module` over a `Field`.
- [ ] Add module homomorphisms (linear maps) bundled like `GroupHom`.
- [ ] Add identity and composition of linear maps.
