# Divisibility, GCD, and LCM on Nat and Int

Goal: round out the divisibility/gcd/lcm API on `Nat` and `Int` so later number-theory and ring-theory work can lean on it without local patching.

- [ ] Add `Nat.lcm` with the divisibility-based universal-property lemmas (`a.divides(a.lcm(b))`, `b.divides(a.lcm(b))`, `lcm` divides any common multiple)
- [ ] Prove `gcd(a, b) * lcm(a, b) = a * b` for `Nat`
- [ ] Add `lcm_comm`, `lcm_assoc`, `lcm_zero_left`, `lcm_zero_right`, `lcm_one_left`, `lcm_one_right` for `Nat`
- [ ] Define `Int.gcd` via the absolute value of the `Nat` gcd of `|a|`, `|b|`; prove the universal property and basic identities
- [ ] Define `Int.lcm` analogously and prove `gcd * lcm = |a * b|` on `Int`

Notes:

- `src/nat/nat_gcd.ac` already has the Euclidean algorithm, gcd uniqueness, gcd commutativity, gcd distribution over multiplication, and Euclid's lemma for primes (`gcd_of_prime`). The coprime predicate, `coprime_comm`, `coprime_one_left`/`_right`, `coprime_mul`, and Euclid's lemma `coprime_divides_of_divides_mul` live in `src/nat/nat_coprime.ac`. Build the lcm and Bezout pieces in a new `src/nat/nat_lcm.ac` next to it; appending to `nat_gcd.ac` perturbs the cache for a few flaky cached proofs there, so prefer new files.
- `Int.divides` and `Int.gcd` are already defined in `src/int/lattice.ac` (transitivity, gcd_div_left/right, divides_gcd, euclids_lemma all present). The reflexivity, antisymmetry-up-to-sign, additive closure (`int_divides_add`/`_sub`), sign-flip lemmas (`int_neg_divides`, `int_divides_neg`), and the `Int.coprime` predicate with `int_coprime_comm`, `int_coprime_one_left`/`_right`, and `int_coprime_divides_of_divides_mul` (Euclid's lemma in coprime form) live in `src/int/int_divisibility.ac`. The `Int.gcd` work is therefore narrower than originally written — only the universal-property packaging and identities still need filling in beyond what `lattice.ac` already proves.
- Bezout on `Nat` lives in `src/nat/nat_bezout.ac` as `nat_bezout`, packaged with `Int` coefficients via the existing `spans_gcd` in `src/int/lattice.ac`.
