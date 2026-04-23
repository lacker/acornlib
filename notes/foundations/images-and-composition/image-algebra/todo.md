# Image Algebra

Goal: make image manipulation follow the standard set-theoretic laws instead of requiring local witness arguments.

- [ ] Decide whether `image_of_range` should be recast in terms of generic `set_image`
- [ ] If so, add the set-level helper for the finite initial segment `{n | n < m}`
- [ ] Refactor `image_range_suc_eq_union` onto `set_image_union` if the generic recast is adopted
- [ ] Audit for a live nested-image proof that can use `set_image_compose`
- [ ] Refactor the first such nested-image proof onto `set_image_compose`
- [ ] Decide whether direct image-of-complement laws belong here or under injectivity/surjectivity
- [ ] Collapse this branch once the basic image laws are in place
