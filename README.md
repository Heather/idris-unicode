idris-unicode
-------------

[![tip for next commit](http://prime4commit.com/projects/282.svg)](http://prime4commit.com/projects/282)

[There are several reasons why idris will not support unicode operators](https://github.com/idris-lang/Idris-dev/wiki/Unofficial-FAQ#will-there-be-support-for-unicode-characters-for-operators)

This project is to discover possible ways of using them in Idris <br/>
Contributions are very welcome!

There is a lot of things to do... And a lot of impossible things.
=================================================================

``` idris
module Control.Unicode

-- non unicode custom syntax
syntax [test] "?" [t] ":" [e] = if test then t else e

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

syntax "√" [a] = sqrt a
--syntax "∛" [a] = sqrt a ???
syntax "∜" [a] = sqrt $ sqrt a

syntax "¬" [a] = not a
syntax [a] "∧" [b] = a && b
syntax [a] "∨" [b] = a || b

-- Intersection, request Data.List
syntax [a] "∩" [b] = intersect a b

-- Union
syntax [a] "∪" [b] = union a b

-- Universal quantification ∀
{- syntax "∀" [a] [b] = (a : b) -- ??? -}

-- Existential quantification ∃
syntax "∃" [a] = Exists a

-- Complement (set theory)
syntax [xs] "∁" [ys] = xs \\ ys

-- Multiplication
syntax "∏" [xs] = foldl (*) 1 xs

-- comonad-transformers
-- Data.Functor.Coproduct
-- syntax "∐" ...

-- Summation
syntax "∑" [xs] = foldl (+) 0 xs

-- Constants
syntax "π" = pi
syntax "ℤ" = Int
syntax "∅" = Void

```
