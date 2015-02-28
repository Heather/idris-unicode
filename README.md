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

``` idris
import public Control.Unicode

sck : (List Char) → (List (List Char)) → Bool
sck rl = ∀λ lc → isSuffixOf lc rl

pck : (List Char) → (List (List Char)) → Bool
pck rl = ∀λ lc → isPrefixOf lc rl

complete : String → String → String
complete a b =
    if len == 0 || sfgo || prgo
        then (a ++ "\n" ++ b)
        else if la ≡ lb
                then (a ++ scl ++ "\n" ++ b)
                else if la > lb then let rpl = pack $ with List replicate lb ' '
                                     in (a ++ scl ++ "\n" ++ rpl ++ "}\n" ++ b)
                                else (a ++ " {\n" ++ b)
  where
    prgo : Bool
    prgo = pck rl [ ['#']
                  ]
    sfgo : Bool    
    sfgo = sck rl [ ['\\'], [','], ['&']
                  , [':'], ['='], ['{']
                  , ['('], (unpack "/*}*/")
                  , [';']
                  ]
    scl : String
    scl = if sck rl [ (unpack "/*;*/") ]
                    then ""
                    else ";"
```
