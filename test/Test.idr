module Main

import Control.Unicode

hello : String → IO ()
hello = λ s → putStrLn $ "Hi " ++ s

hellonum : String → Int → IO ()
hellonum = λ t, n → hello $ t ++ (show n)

sck : String → (List (List Char)) → Bool
sck rl = ∀λ lc → isSuffixOf lc $ unpack rl

main : IO ()
main = do 
    when (sck "The end;" [[';']]) $ hellonum "Number " 1
    when (¬ (4 ≤ 2)) $ hello "World"
    when ((2 × 2) ≡ 4) $ hellonum "Number " 2
    when (1 ≠ 2) $ hello "There"
