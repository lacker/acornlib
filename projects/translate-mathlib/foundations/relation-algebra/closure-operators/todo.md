# Relation Closure Operators

Goal: add standard relation closures in a way that later algebra and order libraries can reuse.

- [ ] [Finite-path / walk objects on top of relation powers](finite-path-objects/todo.md)

The reflexive and symmetric closure API is in `src/util.ac`, and the first transitive / reflexive-transitive closure API is now in `src/relation.ac` using homogeneous Nat-indexed relation powers. The universal-property and monotonicity lemmas are in place, and `src/nat/nat_gcd.ac` is the first downstream use. The remaining work in this branch is a definition question about whether explicit path / walk objects should sit on top of the powers-based API.
