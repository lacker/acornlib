# Crypto

## Blockers

No current blockers.

## RSA

The headline `rsa_correctness` is proven directly from Fermat's little theorem
and the existing CRT (`nat_congr_combine_coprime`), so the totient/Euler
roadmap below is no longer required for RSA itself. It remains useful for
the textbook formulation and as a stepping stone toward later cryptographic
content.

- [ ] Define `nat_totient` (Euler's totient function) on `Nat`.
- [ ] Prove `totient(p) = p - 1` for prime `p`.
- [ ] Prove `totient(p * q) = (p - 1) * (q - 1)` for distinct primes `p`, `q`.
- [ ] Prove Euler's theorem: `gcd(a, n) = 1` implies `a.pow(totient(n)).mod(n) = 1`.

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
