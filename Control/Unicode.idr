module Control.Unicode

syntax [a] "→" [b] = a -> b
syntax [a] "∘" [b] = a . b

syntax "λ" {a} "→" [body] = \a => body
syntax "λ" {a}"," {b} "→" [body] = \a, b  => body
syntax "λ" {a}"," {b}"," {c} "→" [body] = \a, b, c  => body
syntax "λ" {a}"," {b}"," {c}"," {d} "→" [body] = \a, b, c, d  => body

syntax [a] "⧺" [b] = a ++ b
syntax [a] "∈" [b] = elem a b
syntax [a] "∉" [b] = notElem a b
syntax [a] "‼" [b] = index' b a

syntax [a] "×" [b] = a * b -- deprecated
syntax [a] "⋅" [b] = a * b
syntax [a] "÷" [b] = a / b
syntax [a] "≡" [b] = a == b
syntax [a] "≠" [b] = a /= b
syntax [a] "≢" [b] = a /= b
syntax [a] "≤" [b] = a <= b
syntax [a] "≮" [b] = a > b
syntax [a] "≥" [b] = a >= b
syntax [a] "≯" [b] = a < b

syntax "¬" [a] = not a
syntax [a] "∧" [b] = a && b
syntax [a] "∨" [b] = a || b

syntax "∀" [xs] = any xs --TODO: forall
syntax "∀λ" {a} "→" [body] = any (\a => body)

syntax "π" = pi

syntax "ℤ" = Int
