module Main

import Unicode

natToInt : (ℕ) → ℤ
natToInt Z = 0
natToInt (S k) = 1 + (natToInt k)

intToNat : (ℤ) → ℕ
in' : Bool → (ℕ) → (ℤ) → ℕ
in' True n i = n
in' False n i = S (intToNat (i-1))
intToNat n = in' (n <= 0) Z n

dn : (ℕ) → ℕ
dn n = intToNat $ (natToInt n) - 1

main : ໒ ()
main = let i : ℤ = 10
           n : ℕ = dn 5
           b = i > (natToInt n)
       in putStrLn $ ✪ b
