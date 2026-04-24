# Order-Theory Audit For The Transport API

Goal: find the first order-theoretic theorem that should use the new transport lemmas instead of ad hoc relation reasoning.

- [ ] Audit `order.ac` for a theorem that should use bijective transport of reflexive/transitive/antisymmetric data
- [ ] Audit `ordered_group.ac` for a theorem that should use transport of order data rather than local relation steps
- [ ] Audit `add_ordered_group.ac` for a theorem that should use transport of order data rather than local relation steps
- [ ] Audit `nat/nat_base.ac` order proofs for a hidden reusable transport pattern
- [ ] Audit `rat/rat_base.ac` order proofs for a hidden reusable transport pattern
- [ ] Audit `int/lattice.ac` order proofs for a hidden reusable transport pattern
- [ ] Pick the strongest honest downstream consumer from those audits
- [ ] Refactor that theorem to use a transport lemma from `util.ac`
- [ ] Re-run the audit briefly to see whether the refactor exposes one more immediate follow-up
- [ ] Collapse this leaf once one real order-theory user is in place
