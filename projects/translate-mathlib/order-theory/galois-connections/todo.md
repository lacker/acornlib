# Galois Connections, Insertions, and Coinsertions

Goal: support the adjoint-order patterns that appear in lattice theory and closure constructions.

- [ ] Support lifted lattice structure from a Galois insertion
- [ ] Identify first downstream uses once the API exists

Status:

- `src/galois_connection.ac` now defines Galois connections, insertions, coinsertions, induced closure/kernel operators, adjunction-direction lemmas, monotonicity of adjoints and composites, unit/counit inequalities, idempotence, and exact insertion/coinsertion laws.
- `src/galois_connection.ac` now connects induced closure/kernel maps to generic closure and kernel operator predicates, proves insertion/coinsertion embedding and surjection facts, and characterizes fixed closed/kernel-stable elements.
- `src/set.ac` now records the set/image-preimage example in the unbundled `Set` inclusion style: subset-monotone set maps, set closure/kernel operators, a set-specific Galois connection predicate, direct image and inverse image maps, the image/preimage adjunction, and closure/kernel operator packaging for image-preimage closure and preimage-image kernel.
