# Generic Set Image

Goal: replace local one-off image predicates with a reusable generic set-image API.

- [ ] Add a theorem that `set_image(empty_set, f)` is empty
- [ ] Add a theorem for the image of a singleton
- [ ] Add image monotonicity under subset
- [ ] Add a witness-extraction helper from image membership
- [ ] Refactor `seq_image` in `real/supremum.ac` to use the generic definition
- [ ] Refactor `function_image` in `real/supremum.ac` to use the generic definition
- [ ] Collapse this branch once local image definitions are removed or thin wrappers
