module Main

import Control.Unicode

-- for intersect
import Data.List

hello : String → IO ()
hello = λ s → putStrLn $ "Hi " ⧺ s

hellonum : String → Int → IO ()
hellonum = λ t, n → hello $ t ⧺ (show n)

sck : String → (List (List Char)) → Bool
sck rl = any (\lc => isSuffixOf lc (unpack rl))

-- An expensive function.
qib : Nat → Nat
qib       Z   = 1
qib    (S Z)  = 2
qib (S (S n)) = qib n * qib (S n)

-- An equality whose size reflects the size of numbers.
data equals : Nat -> Nat -> Type where
    eqZ : Z `equals` Z
    eqS : m `equals` n -> S m `equals` S n

eq_refl : {n : Nat} -> n `equals` n
eq_refl {n = Z}   = eqZ
eq_refl {n = S n} = eqS eq_refl

-- Here, the proof is very expensive to compute.
-- We add a recursive argument to prevent Idris from inlining the function.
f : (r, n : Nat) -> Subset Nat (\k => qib n `equals` qib k)
f  Z    n = Element n eq_refl
f (S r) n = f r n

-- A (contrived) relation, just to have something to show.
data represents : Nat -> Nat -> Type where
  axiom : (n : Nat) -> qib n `represents` n

-- Here, the witness is very expensive to compute.
-- We add a recursive argument to prevent Idris from inlining the function.
g : (r, n : Nat) -> ∃ (\k : Nat => k `represents` n)
g  Z    n = Evidence (qib n) (axiom n)
g (S r) n = g r n

fmt : qib n `represents` n -> String
fmt (axiom n) = "axiom " ⧺ show n

lst1 : List Int
lst1 = [1, 2, 3]

lst2 : List Int
lst2 = [2]

fsm : Int -> Int -> Int
fsm a b = a + b

main : IO ()
main = do 
    when (sck "The end;" [[';']]) $ hellonum "Number " 1
    when (¬ (4 ≤ 2)) $ hello "World"
    when ((2 × 2) ≡ 4) $ hellonum "Number " 2
    when (1 ≠ 2) $ hello "There"
    n <- map (const (the Nat 10000)) (putStrLn "*oink*")
    putStrLn . show $ getWitness (f 4 n)
    putStrLn . fmt  $ getProof   (g 4 n)
    putStrLn $ "mpl: " ++ (show (∏ lst1))
    putStrLn $ "sum: " ++ (show (∑ lst1))
    putStrLn $ "intersect: " ++ (show (lst1 ∩ lst2))
