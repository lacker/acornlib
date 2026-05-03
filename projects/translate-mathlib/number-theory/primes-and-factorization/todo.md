# Prime Numbers and Unique Factorization

Goal: round out the prime-number API on `Nat` and `Int` and add prime factorisation (as a list of primes) with the fundamental theorem of arithmetic.

- [ ] Prove uniqueness side of the fundamental theorem: any two prime-factorisation lists for `n` are permutations of each other
- [ ] Define `count_prime_factor(p, n)` (the multiplicity of prime `p` in the factorisation of `n`)
- [ ] Prove `count_prime_factor` is multiplicative: `count_prime_factor(p, a * b) = count_prime_factor(p, a) + count_prime_factor(p, b)` for nonzero `a, b`
- [ ] Use `count_prime_factor` to give an alternative form of the fundamental theorem and a clean GCD/LCM characterisation (`gcd(a, b) = product of p^min(v_p(a), v_p(b))`, etc.)
- [ ] Bridge `Int.is_prime` (already in `src/int/lattice.ac`) and `Nat.is_prime` to share lemmas
- [ ] Add primality tests: `is_prime_below(n)` (true if `n` is prime and below some bound) and a `forall_below(n, is_prime)`-style helper used by sieves

Notes:

- `src/nat/nat_base.ac` already has `is_prime`, `is_composite`, `has_prime_divisor`, the infinitude theorem `exists_infinite_primes`, and Euclid's lemma form `gcd_of_prime`. `Nat.coprime` and `coprime_divides_of_divides_mul` (the modern Euclid's lemma) live in `src/nat/nat_coprime.ac`.
- `src/int/lattice.ac` defines `Int.is_prime(a) := abs(a).is_prime` and proves `gcd_of_prime` and `euclids_lemma_prime` for `Int`.
- For the fundamental theorem: prefer the **list-of-primes** representation as the primary one (matches `nat_crt_list` / `list_product` shape and works with the existing `pairwise_coprime` and `product[Nat]` infrastructure); derive `count_prime_factor` from it. The multiset-via-`v_p(n)` view is the natural alternative form once divisibility lattices are needed.
- For genericity: keep prime factorisation in a new file `src/nat/nat_factorisation.ac` so the heavy structural-induction lemmas don't inflate `nat_base.ac`'s cache footprint. The downstream `Int` prime API can layer on top via the absolute-value bridge.
- `src/nat/nat_factorisation.ac` is now in place with `prime_factor_dichotomy`, `prime_divisor_is_one_or_self`, `coprime_of_distinct_primes`, the `all_prime` predicate with structural lemmas (`all_prime_nil`, `all_prime_cons_intro`), `prime_factorisation_exists` (every positive Nat is the product of some list of primes, by strong induction), the named function `prime_factorisation(n)` (a satisfy-witness with the empty-list placeholder for n = 0), the user-facing `prime_factorisation_product`, `prime_factorisation_all_prime`, `prime_factorisation_zero` accessors, plus the no-shared-prime-factor characterisation: `coprime_imp_no_shared_prime_factor` (forward direction), `not_coprime_imp_shared_prime_factor` (backward direction with cases for both-zero and gcd > 1), and the user-facing biconditional `coprime_iff_no_shared_prime_factor`. The strong-induction body needed `let h: Bool = q < k implies f(q); h` to make the prover instantiate the `true_below` hypothesis at the recursive call site.
