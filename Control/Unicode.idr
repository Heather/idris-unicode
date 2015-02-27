module Control.Unicode

syntax [a] "→" [b] = a -> b

syntax "λ" {a} "→" [body] = \a => body
syntax "λ" {a}"," {b} "→" [body] = \a, b  => body
syntax "λ" {a}"," {b}"," {c} "→" [body] = \a, b, c  => body
syntax "λ" {a}"," {b}"," {c}"," {d} "→" [body] = \a, b, c, d  => body

syntax [a] "×" [b] = a * b
syntax [a] "≡" [b] = a == b
syntax [a] "≠" [b] = a /= b
syntax [a] "≤" [b] = a <= b
syntax [a] "≥" [b] = a >= b

syntax "¬" [a] = not a

syntax "∀" [xs] = any xs
syntax "∀λ" {a} "→" [body] = any (\a => body)
