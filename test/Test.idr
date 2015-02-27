module Main

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
