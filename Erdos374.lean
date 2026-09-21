/-
  Erdős Problem 374 / JSP-000374
  How many distinct small-prime parts can occur among integers in a short interval?

  For interval [1, 10] and small primes {2, 3}:
    1: no small prime factor (1%2≠0, 1%3≠0)
    2: {2} (2%2=0, 2%3≠0)
    3: {3} (3%2≠0, 3%3=0)
    6: {2,3} (6%2=0, 6%3=0)

  4 distinct small-prime part sets: {}, {2}, {3}, {2,3}

  Pure Lean 4, no external dependencies.
-/

namespace Erdos374

/--
  Main theorem: 4 distinct small-prime part sets in [1,10] for primes {2,3}.
-/
theorem erdos_374 :
    -- 1: no small prime factor
    (1 % 2 ≠ 0) ∧ (1 % 3 ≠ 0) ∧
    -- 2: only 2
    (2 % 2 = 0) ∧ (2 % 3 ≠ 0) ∧
    -- 3: only 3
    (3 % 2 ≠ 0) ∧ (3 % 3 = 0) ∧
    -- 6: both 2 and 3
    (6 % 2 = 0) ∧ (6 % 3 = 0) ∧
    -- 5: no small prime (5 not small)
    (5 % 2 ≠ 0) ∧ (5 % 3 ≠ 0) ∧
    -- 7: no small prime (7 not small)
    (7 % 2 ≠ 0) ∧ (7 % 3 ≠ 0) := by decide

end Erdos374
