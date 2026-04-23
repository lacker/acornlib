# Relation Closure Operators

Goal: add standard relation closures in a way that later algebra and order libraries can reuse.

- [ ] [Transitive-closure followups](transitive-closure-followups/todo.md)

The reflexive and symmetric closure API is in `src/util.ac`, and the first transitive / reflexive-transitive closure API is now in `src/relation.ac` using homogeneous Nat-indexed relation powers. The remaining work in this branch is to add the universal-property, monotonicity, and downstream-usage lemmas around that chosen representation.
