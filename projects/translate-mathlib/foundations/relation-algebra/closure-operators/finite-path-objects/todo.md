# Finite-Path / Walk Objects

Goal: decide whether explicit finite paths should exist on top of `relation_power`, and if so choose the smallest durable API.

- [ ] Decide whether this layer should exist now or wait until graph-theoretic users actually need it
- [ ] Decide whether the API should stay homogeneous-only for relations `T -> T -> Bool`
- [ ] Decide whether a path object should include zero-length paths or whether nonempty walks should be primitive
- [ ] Decide whether the primitive should be defined directly from `relation_power` or given an independent witness representation
- [ ] Decide whether the witness should be length-indexed or sequence-based
- [ ] Decide what the minimal introduction theorem should be for one-step paths
- [ ] Decide what the minimal theorem should be connecting paths to `relation_refl_trans_closure`
- [ ] Decide what the minimal theorem should be connecting nonempty paths to `relation_trans_closure`
- [ ] Decide whether concatenation should be primitive or derived from the closure API
- [ ] Decide the first downstream consumer once the definition is fixed

Current options:

- Defer explicit paths entirely and keep `relation_power` as the only finite-reachability layer for now.
- Add a thin length-indexed path witness that is definitionally close to `relation_power`.
- Add a richer sequence/list-based walk object and prove it equivalent to `relation_power`.
