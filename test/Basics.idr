module Main

import Unicode

natToInt : (ℕ) → ℤ
natToInt O = 0
natToInt (S k) = 1 + (natToInt k)

main : ໒ ()
main = do
  let i : ℤ = 10
  let n : ℕ = 5
  let b = i > (natToInt n)
  putStrLn $ ✪ b
