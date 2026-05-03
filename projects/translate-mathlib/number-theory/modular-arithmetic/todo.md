# Modular Arithmetic and Congruences

Goal: build a lightweight congruence-relation API on `Nat` and `Int` that downstream consumers can use without pulling in the full `Zmod[n]` quotient machinery.

- [ ] Prove congruence is preserved under addition on `Nat`
- [ ] Prove congruence is preserved under multiplication on `Nat`
- [ ] Add congruence-form of mod-distributes lemma `(a + b).mod(n) = ((a.mod(n)) + b).mod(n)`
- [ ] Bridge `Nat` congruence to `Int.divides(Int.from_nat(n), Int.from_nat(a) - Int.from_nat(b))` (matching the existing `int_mod_rel` in `src/zmod.ac`)
- [ ] Prove the congruence-class lift lemmas needed to apply algebraic structure (`Zmod[n]` already exists; this layer is the unbundled predicate API)
- [ ] Prove modular inverse existence on `Nat`: if `gcd(a, n) = 1` and `n > 1` then there exists `b: Nat` with `(a * b).mod(n) = 1`
- [ ] Add Chinese remainder theorem statement and proof for two coprime moduli
- [ ] Add CRT generalisation to a finite list of pairwise coprime moduli
- [ ] Mirror the Nat congruence API on `Int` reusing the existing `int_mod_rel` from `src/zmod.ac`

Notes:

- `src/nat/nat_congruence.ac` defines `Nat.congr_mod(self, b, n) := self.mod(n) = b.mod(n)` and proves the equivalence axioms (`congr_mod_refl`, `congr_mod_symm`, `congr_mod_trans`) plus the round-trip `mod_congr_mod_self` identity.
- `nat_coprime_iff_int_coprime` in `src/int/int_divisibility.ac` bridges `Nat.coprime` and `Int.coprime`, so modular-inverse arguments stated on either side can use the other side's lemmas without a manual rewrap.
- `src/zmod.ac` already defines `int_mod_rel(n, a, b) := Int.from_nat(n).divides(a - b)` and proves it is an equivalence congruent with addition, multiplication, and negation. The new `Nat.congr_mod` should be value-compatible with this `Int` predicate so the eventual `Zmod[n]` ring instance can be reused without rewrap.
- Definitional choice: prefer `a.mod(n) = b.mod(n)` over the divisibility-based form on `Nat`, because subtraction on `Nat` truncates and would force ad-hoc case splits. The divisibility form is the natural one on `Int` and already exists.
- For genericity: package each congruence lemma so it can later be re-stated as a typeclass axiom on a generic congruence-equipped commutative semiring; do not wire any of this through `Zmod[n]` itself. Consumers who want algebraic structure should keep going through `Zmod[n]`; consumers who only want `≡` reasoning use this layer.
