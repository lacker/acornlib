# Number Theory

Goal: push beyond the current arithmetic core into the standard theories that Mathlib treats as number theory.

- [ ] [Prime numbers and unique factorization](primes-and-factorization/todo.md)
- [ ] Support arithmetic and multiplicative functions
- [ ] Add continued fractions and their approximation theory
- [ ] Develop quadratic residues and quadratic reciprocity
- [ ] Add Pell equations and related Diophantine techniques
- [ ] Support valuations and valuation-theoretic number theory
- [ ] Build infrastructure for Bernoulli numbers and classical arithmetic sequences
- [ ] Add analytic-number-theory preliminaries where they naturally fit

Status:

- The divisibility/gcd/lcm branch is complete. `Nat.gcd`, `Nat.lcm`, `Nat.coprime`, Bezout on `Nat`, and the matching `Int.divides`/`Int.gcd`/`Int.lcm`/`Int.coprime` APIs all live under `src/nat/` and `src/int/` (`nat_gcd.ac`, `nat_coprime.ac`, `nat_lcm.ac`, `nat_bezout.ac`, `int_divisibility.ac`, `int_lcm.ac`, `int_gcd_extra.ac`). `Nat.lcm` is defined via the equation `gcd * lcm = a * b` so a future `GCDMonoid`-style typeclass can lift the same characterisation.
- The modular-arithmetic and congruences branch is complete. The lightweight `Nat.congr_mod` / `Int.congr_mod` predicates with full equivalence/addition/multiplication/power preservation live in `src/nat/nat_congruence.ac` and `src/int/int_congruence.ac`. Bridges to the existing `Zmod[n]` infrastructure (`int_mod_rel` from `src/zmod.ac`) are in `src/nat/nat_congr_int.ac`. Modular inverse (`int_modular_inverse_exists`, `nat_modular_inverse_exists`) lives in `src/nat/nat_modular_inverse.ac`. Two-modulus, three-modulus, and `List`-indexed CRT (`nat_crt_two_moduli`, `nat_crt_three_moduli`, `nat_crt_list`) plus uniqueness are in `src/nat/nat_crt.ac` and `src/nat/nat_crt_list.ac`. The Int-to-Nat residue extraction `int_has_nat_residue` lives in `src/int/int_residue.ac`. `Nat` is now a `CommSemigroup`/`CommMonoid` instance and a generic `list_product` helper is added in `src/list/list_product.ac`.
