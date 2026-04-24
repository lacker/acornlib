# Injective Pullbacks

Goal: capture the extra equalities and order-style transport theorems that become true when a pullback map is injective.

- [ ] Decide whether strict-order pullback lemmas should live here or in order theory
- [ ] Prove the clean strict-order pullback theorem if that decision stays here
- [ ] Revisit this leaf if future order-theory work needs strict-order pullback lemmas

Status:

- Equality pullback, antisymmetry transport, order-data transport, and reflexive-closure pullback are now in `src/util.ac`.
- The equality-pullback theorem is already used inside the reflexive-closure proof.
- A quick audit found no immediate hidden use in the current `order` / `ordered_group` / `add_ordered_group` / `subgroup` files.
