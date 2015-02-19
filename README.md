# idris-unicode
---------------

[There are several reasons why idris will not support unicode operators](https://github.com/idris-lang/Idris-dev/wiki/Unofficial-FAQ#will-there-be-support-for-unicode-characters-for-operators)

This project is to discover possible ways of using them in Idris

``` idris
:let syntax [a] "→" [b] = a -> b
:let syntax λ {x} . [body] = \ x => body
```
