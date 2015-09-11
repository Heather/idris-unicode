module Main

import Unicode

natToInt : (ℕ) → ℤ
natToInt O = 0
natToInt (S k) = 1 + (natToInt k)

main : ໒ ()
main = let i : ℤ = 10
           n : ℕ = 5
           b = i > (natToInt n)
       in putStrLn $ ✪ b
