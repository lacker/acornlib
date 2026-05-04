# Crypto

## Blockers

No current blockers.

## RSA

The headline `rsa_correctness` is proven directly from Fermat's little theorem
and the existing CRT (`nat_congr_combine_coprime`); the items below are not
required for it. They support the textbook formulation and downstream
cryptographic content.

`src/nat/nat_totient.ac` already contains:
- `nat_totient` with `totient(p) = p - 1` and
  `totient(p * q) = (p - 1) * (q - 1)` for distinct primes.
- `count_multiples`, `count_not_coprime_to`, `coprime_partition`,
  and the inclusion-exclusion identity `ie_pq_pred`.

`src/nat/nat_coprime.ac` contains `coprime_mul_iff`.

- [ ] Prove totient is multiplicative on coprime arguments
      (`nat_totient(m * n) = nat_totient(m) * nat_totient(n)` when
      `m.coprime(n)`) — generalises `totient_pq` via the CRT-induced
      bijection between `[0, mn)` and `[0, m) x [0, n)`.
- [ ] Prove Euler's theorem: `gcd(a, n) = 1` implies
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
