# idris-unicode
---------------

[There are several reasons why idris will not support unicode operators](https://github.com/idris-lang/Idris-dev/wiki/Unofficial-FAQ#will-there-be-support-for-unicode-characters-for-operators)

This project is to discover possible ways of using them in Idris <br/>
Contributions are very welcome!

``` idris
syntax [a] "→" [b] = a -> b
syntax [a] "∘" [b] = a . b

syntax "λ" {a} "→" [body] = \a => body
syntax "λ" {a}"," {b} "→" [body] = \a, b  => body
syntax "λ" {a}"," {b}"," {c} "→" [body] = \a, b, c  => body
syntax "λ" {a}"," {b}"," {c}"," {d} "→" [body] = \a, b, c, d  => body

syntax [a] "⧺" [b] = a ++ b
syntax [a] "∈" [b] = elem a b
syntax [a] "∉" [b] = notElem a b
syntax [a] "‼" [b] = index' a b

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

syntax "∀" [xs] = forall xs
syntax "∀λ" {a} "→" [body] = any (\a => body)

syntax "π" = pi

syntax "ℤ" = Int
```

``` idris
import Control.Unicode

hello : String → IO ()
hello = λ s → putStrLn $ "Hi " ++ s

hellonum : String → Int → IO ()
hellonum = λ t, n → hello $ t ++ (show n)

main : IO ()
main = do 
    when (¬ (4 ≤ 2)) $ hello "World"
    when ((2 × 2) ≡ 4) $ hellonum "Number " 1
    when (1 ≠ 2) $ hello "hello"
```
