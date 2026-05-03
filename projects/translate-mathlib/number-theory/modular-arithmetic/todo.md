# Modular Arithmetic and Congruences

Goal: build a lightweight congruence-relation API on `Nat` and `Int` that downstream consumers can use without pulling in the full `Zmod[n]` quotient machinery.

- [ ] Backward direction of the Nat-Int congruence bridge: `int_mod_rel(n, Int.from_nat(a), Int.from_nat(b))` implies `a.congr_mod(b, n)`
- [ ] Prove the congruence-class lift lemmas needed to apply algebraic structure (`Zmod[n]` already exists; this layer is the unbundled predicate API)
- [ ] Prove modular inverse existence on `Nat`: if `gcd(a, n) = 1` and `n > 1` then there exists `b: Nat` with `(a * b).mod(n) = 1`
- [ ] Add Chinese remainder theorem statement and proof for two coprime moduli
- [ ] Add CRT generalisation to a finite list of pairwise coprime moduli
- [ ] Mirror the Nat congruence API on `Int` reusing the existing `int_mod_rel` from `src/zmod.ac`

Notes:

- `src/nat/nat_congruence.ac` defines `Nat.congr_mod(self, b, n) := self.mod(n) = b.mod(n)` and proves the equivalence axioms (`congr_mod_refl`, `congr_mod_symm`, `congr_mod_trans`), the round-trip `mod_congr_mod_self`, the supporting `mul_geq_when_pos`, `mod_unique` (quotient-remainder uniqueness), `mod_lt`, `mod_add_mul` (adding a multiple of n leaves mod unchanged), `mod_add_eq` (mod distributes over addition componentwise), and the addition congruence `congr_mod_add`. Multiplication preservation goes through the asymmetric helpers `mod_mul_left_eq` and `mod_mul_right_eq` (each substitutes one factor at a time and applies `mod_add_mul`), composed into `mod_mul_eq` and the user-facing `congr_mod_mul`.
- The forward direction of the Nat-to-Int bridge lives in `src/nat/nat_congr_int.ac` as `nat_congr_mod_imp_int_mod_rel`, with helper `mul_from_nat`. It maps `Nat.congr_mod` into the existing `int_mod_rel` from `src/zmod.ac`, so any consumer with a Nat congruence fact can reuse the heavy `Zmod[n]` quotient infrastructure on the Int side. The backward direction needs `n | (Int.from_nat(a) - Int.from_nat(b))` to imply `a.mod(n) = b.mod(n)`, which requires either an Int-side mod uniqueness argument or a direct lift; deferred for now.
- `nat_coprime_iff_int_coprime` in `src/int/int_divisibility.ac` bridges `Nat.coprime` and `Int.coprime`, so modular-inverse arguments stated on either side can use the other side's lemmas without a manual rewrap.
- `src/zmod.ac` already defines `int_mod_rel(n, a, b) := Int.from_nat(n).divides(a - b)` and proves it is an equivalence congruent with addition, multiplication, and negation. The new `Nat.congr_mod` should be value-compatible with this `Int` predicate so the eventual `Zmod[n]` ring instance can be reused without rewrap.
- Definitional choice: prefer `a.mod(n) = b.mod(n)` over the divisibility-based form on `Nat`, because subtraction on `Nat` truncates and would force ad-hoc case splits. The divisibility form is the natural one on `Int` and already exists.
- For genericity: package each congruence lemma so it can later be re-stated as a typeclass axiom on a generic congruence-equipped commutative semiring; do not wire any of this through `Zmod[n]` itself. Consumers who want algebraic structure should keep going through `Zmod[n]`; consumers who only want `≡` reasoning use this layer.
