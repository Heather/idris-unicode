module Control.Unicode

-- non unicode custom syntax
syntax [test] "?" [t] ":" [e] = if test then t else e
syntax "for" {x} "in" [xs] [body] = forLoop xs (\x => body)

-- Basic
syntax [a] "→" [b] = a -> b
syntax [a] "∘" [b] = a . b

syntax "λ" {a} "→" [body] = \a => body
syntax "λ" {a}"," {b} "→" [body] = \a, b  => body
syntax "λ" {a}"," {b}"," {c} "→" [body] = \a, b, c  => body
syntax "λ" {a}"," {b}"," {c}"," {d} "→" [body] = \a, b, c, d  => body
syntax "λ" {a}"," {b}"," {c}"," {d}"," {e} "→" [body] = \a, b, c, d, e  => body
syntax "λ" {a}"," {b}"," {c}"," {d}"," {e}"," {f} "→" [body] = \a, b, c, d, e, f  => body
syntax "λ" {a}"," {b}"," {c}"," {d}"," {e}"," {f}"," {g} "→" [body] = \a, b, c, d, e, f, g  => body

syntax [a] "⧺" [b] = a ++ b
syntax [a] "∈" [b] = elem a b
syntax [a] "∋" [b] = elem b a
syntax [a] "∉" [b] = notElem a b
syntax [a] "∌" [b] = notElem b a
syntax [a] "‼" [b] = index' b a

-- Math operations
syntax [a] "×" [b] = a * b
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

-- Universal quantification ∀
{- syntax "∀" [a] [b] = (a : b) -- ??? -}

-- Existential quantification ∃
syntax "∃" [a] = Exists a

-- Complement (set theory)
syntax [xs] "∁" [ys] = xs \\ ys

-- Multiplication
syntax "∏" [xs] = foldl (*) 1 xs

-- Summation
syntax "∑" [xs] = foldl (+) 0 xs

-- Constants
syntax "π" = pi
syntax "ℤ" = Int
syntax "∅" = Void
