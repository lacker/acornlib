# Number Theory

Goal: push beyond the current arithmetic core into the standard theories that Mathlib treats as number theory.

- [ ] Add modular arithmetic and congruence APIs
- [ ] Develop prime numbers and unique factorization in the integers
- [ ] Support arithmetic and multiplicative functions
- [ ] Add continued fractions and their approximation theory
- [ ] Develop quadratic residues and quadratic reciprocity
- [ ] Add Pell equations and related Diophantine techniques
- [ ] Support valuations and valuation-theoretic number theory
- [ ] Build infrastructure for Bernoulli numbers and classical arithmetic sequences
- [ ] Add analytic-number-theory preliminaries where they naturally fit

Status:

- The divisibility/gcd/lcm branch is complete. `Nat.gcd`, `Nat.lcm`, `Nat.coprime`, Bezout on `Nat`, and the matching `Int.divides`/`Int.gcd`/`Int.lcm`/`Int.coprime` APIs all live under `src/nat/` and `src/int/` (`nat_gcd.ac`, `nat_coprime.ac`, `nat_lcm.ac`, `nat_bezout.ac`, `int_divisibility.ac`, `int_lcm.ac`, `int_gcd_extra.ac`). `Nat.lcm` is defined via the equation `gcd * lcm = a * b` so a future `GCDMonoid`-style typeclass can lift the same characterisation.
