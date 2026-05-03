# Divisibility, GCD, and LCM on Nat and Int

Goal: round out the divisibility/gcd/lcm API on `Nat` and `Int` so later number-theory and ring-theory work can lean on it without local patching.

- [ ] Add `Nat.lcm` with the divisibility-based universal-property lemmas (`a.divides(a.lcm(b))`, `b.divides(a.lcm(b))`, `lcm` divides any common multiple)
- [ ] Prove `gcd(a, b) * lcm(a, b) = a * b` for `Nat`
- [ ] Add `lcm_comm`, `lcm_assoc`, `lcm_zero_left`, `lcm_zero_right`, `lcm_one_left`, `lcm_one_right` for `Nat`
- [ ] Add coprime preservation under multiplication: `coprime(a, b) and coprime(a, c) implies coprime(a, b * c)`
- [ ] Prove Bezout's identity on `Nat`: existence of `x, y` (as `Int` or as a signed-pair encoding) with `gcd(a, b) = a*x + b*y`
- [ ] Lift `divides` to `Int`: define `int_divides`, prove reflexivity/transitivity/antisymmetry-up-to-sign
- [ ] Define `Int.gcd` via the absolute value of the `Nat` gcd of `|a|`, `|b|`; prove the universal property and basic identities
- [ ] Define `Int.lcm` analogously and prove `gcd * lcm = |a * b|` on `Int`
- [ ] Add coprime predicate on `Int` and the matching Euclid's lemma
- [ ] Prove `divides` interacts correctly with addition/subtraction on `Int` (`a | b` and `a | c` implies `a | (b + c)`, `a | (b - c)`)

Notes:

- `src/nat/nat_gcd.ac` already has the Euclidean algorithm, gcd uniqueness, gcd commutativity, gcd distribution over multiplication, and Euclid's lemma for primes (`gcd_of_prime`). The coprime predicate, `coprime_comm`, `coprime_one_left`/`_right`, and Euclid's lemma `coprime_divides_of_divides_mul` live in `src/nat/nat_coprime.ac`. Build the lcm and Bezout pieces in a new `src/nat/nat_lcm.ac` next to it; appending to `nat_gcd.ac` perturbs the cache for a few flaky cached proofs there, so prefer new files.
- The `Int` divisibility/gcd layer should live next to `src/int/basic_multiplication.ac` (e.g. `src/int/int_divisibility.ac` and `src/int/int_gcd.ac`) and reuse the `Nat` lemmas via the absolute value bridge.
- Bezout on `Nat` is the natural cutover point to `Int`: state it with `Int` coefficients to avoid a signed-`Nat` workaround.
