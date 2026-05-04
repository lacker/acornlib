# Crypto

## Blockers

No current blockers.

## RSA

The headline `rsa_correctness` is proven directly from Fermat's little theorem
and the existing CRT (`nat_congr_combine_coprime`); the items below are not
required for it. They support the textbook formulation and downstream
cryptographic content.

`src/nat/nat_totient.ac` contains:
- `nat_totient` with `totient(p) = p - 1`,
  `totient(p * q) = (p - 1) * (q - 1)` for distinct primes, and
  `totient(p^(n.suc)) = p^(n.suc) - p^n` for any prime power, plus the
  factored form `totient(p^(n.suc)) = (p - 1) * p^n`
  (`totient_p_pow`, `totient_p_pow_factored`, plus the convenience
  corollary `totient_pp`).
- `coprime_pow_iff`: `k.coprime(p^(n.suc)) = k.coprime(p)` for prime `p`.
- `count_multiples`, `count_not_coprime_to`, `coprime_partition`,
  and the inclusion-exclusion identity `ie_pq_pred`.
- `coprime_residues(n)`: list of coprime residues in `[0, n)` with
  `coprime_residues_length` (= `nat_totient(n)`), the forward results
  `coprime_residues_all_coprime` and `coprime_residues_all_below`, and
  the membership characterization
  `coprime_residues_contains_iff`: `contains(x) iff x < n and x.coprime(n)`.
  Foundation for the eventual product/permutation argument behind a
  general Euler proof.
- `euler_pq`: Euler's theorem at `p * q` for distinct primes.

`src/nat/nat_fermat.ac` contains `fermat_euler`: Euler's theorem at a
prime, derived from Fermat's little theorem by canceling `m`.

`src/nat/nat_modular_inverse.ac` contains `cancel_coprime` (modular
cancellation by a coprime factor).

`src/nat/nat_coprime.ac` contains `coprime_mul_iff`.

- [ ] Prove totient is multiplicative on coprime arguments
      (`nat_totient(m * n) = nat_totient(m) * nat_totient(n)` when
      `m.coprime(n)`) — generalises `totient_pq` via the CRT-induced
      bijection between `[0, mn)` and `[0, m) x [0, n)`.
- [ ] Generalise `euler_pq` to arbitrary moduli: `gcd(a, n) = 1` implies
      `a.pow(nat_totient(n)).mod(n) = 1`. Standard route: multiplication
      by `a` permutes the units in `Z/n`, take the product and cancel.

## DSA

- [ ] Prove existence of an order-`q` element `g` in `(Z/p)*` when `q | p - 1`.
- [ ] Prove `g.pow(k * q + r).mod(p) = g.pow(r).mod(p)` for an order-`q` `g`.
- [ ] Prove the DSA verification identity: for `s = kinv * (h + x*r) mod q`
      and `w = sinv mod q`, `(g^{h*w} * y^{r*w}) mod p mod q = r`.
- [ ] Uncomment and prove `dsa_correctness` in `src/crypto/dsa.ac`.

## ECDSA

- [ ] Provide a `CyclicGroup` typeclass with prime-order axiom (or reuse one).
- [ ] Prove `g.pow(a).pow(b) = g.pow(a * b)` follows from existing `pow_mul`.
- [ ] Prove `g.pow(k.mod(n)) = g.pow(k)` for `g` of order `n`.
- [ ] Define an elliptic curve point group and provide an `XCoord` instance.
- [ ] Uncomment and prove `ecdsa_correctness` in `src/crypto/ecdsa.ac`.
