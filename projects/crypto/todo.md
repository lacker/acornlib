# Crypto

## Blockers

No current blockers.

## Shared number theory

- [ ] Prove Freshman's dream: for prime `p`,
      `(a + b).pow(p).congr_mod(a.pow(p) + b.pow(p), p)` via the binomial
      theorem and `prime_divides_binom`.
- [ ] Prove Fermat's little theorem: `a.pow(p).mod(p) = a.mod(p)` for prime
      `p`, by induction on `a` using Freshman's dream.

## RSA

- [ ] Define `nat_totient` (Euler's totient function) on `Nat`.
- [ ] Prove `totient(p) = p - 1` for prime `p`.
- [ ] Prove `totient(p * q) = (p - 1) * (q - 1)` for distinct primes `p`, `q`.
- [ ] Prove Euler's theorem: `gcd(a, n) = 1` implies `a.pow(totient(n)).mod(n) = 1`.
- [ ] Prove Chinese remainder theorem for two coprime moduli over `Nat` or `Int`.
- [ ] Uncomment and prove `rsa_correctness` in `src/crypto/rsa.ac`.
- [ ] Handle the `gcd(m, p*q) != 1` case in RSA correctness (uses CRT directly).

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
