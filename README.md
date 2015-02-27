# idris-unicode
---------------

[There are several reasons why idris will not support unicode operators](https://github.com/idris-lang/Idris-dev/wiki/Unofficial-FAQ#will-there-be-support-for-unicode-characters-for-operators)

This project is to discover possible ways of using them in Idris

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
