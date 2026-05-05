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
- `VectorSpace` is a thin convention: a `Module[F, V]` with `F: Field`, not a separate
  structure. Field-specific lemmas live in `src/vector_space.ac`.
- Linear maps: predicate-level only (`preserves_add`, `preserves_smul`, `is_linear_map`)
  in `src/module_hom.ac`, plus `trivial_linear_map`, `identity_fn_is_linear_map`,
  and composition lemmas. A bundled `ModuleHom[R, M, N]` structure was deferred due
  to an Acorn certificate-serialization bug with 3-typeclass-parameter structures
  (see root `## Blockers`).

## Implementation Tasks

- [ ] Add bundled `ModuleHom[R, M, N]` once the 3-typeclass-param structure bug is fixed,
      with extensionality, projections, identity, and composition.
- [ ] Add module quotient by a submodule.
- [ ] Extend packaged kernel/image submodule APIs only when downstream formalizations need additional lemmas.

Status:

- `src/submodule.ac` defines `submodule_zero_constraint`, `submodule_add_constraint`, `submodule_neg_constraint`, `submodule_smul_constraint`, `is_submodule`, and the bundled `Submodule[R, M]` structure, with extensionality and basic closure lemmas.
- Submodule intersections are represented by `submodule_intersection_contains`, with verified closure lemmas and a combined `submodule_intersection_is_submodule` theorem.
- Linear-map kernels and images are represented by `linear_map_kernel` and `linear_map_image`, with verified zero/add/neg/smul closure lemmas.
- `linear_map_kernel_submodule` and `linear_map_image_submodule` now package predicate-level kernels and images as `Submodule` values, using the full submodule outside the linear-map side condition.
- Packaged kernel/image submodules have verified carrier lemmas, linear-map membership lemmas, kernel introduction/elimination lemmas, image value/elimination lemmas, and subset-style universal properties.
