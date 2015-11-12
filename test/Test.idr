module Main

import Unicode

-- for intersect
import Data.List

-- for unfold
import Data.CoList

%default total

--data CPT = ℝ ⊔ ℤ

hello : String → ໒ ()
hello = λ s → putStrLn $ "Hi " ⧺ s

hellonum : String → Int → ໒ ()
hellonum = λ t, n → hello $ t ⧺ (✪ n)

sck : String → (List (List Char)) → Bool
sck rl = any (λ lc → isSuffixOf lc (❃ rl))

lst1 : List Int
lst1 = [1, 2, 3]

lst2 : List Int
lst2 = [2]

main : ໒ ()
main = do
    (sck "The end;" [[';']]) ⁂ hellonum "Number " 1
    (¬ (4 ≤ 2)) ⁂ hello "World"
    ((2 × 2) ≡ 4) ⁂ hellonum "Number " 2
    (1 ≠ 2) ⁂ hello "There"

    putStrLn $ "mpl: " ⧺ (✪ (∏ lst1))
    putStrLn $ "sum: " ⧺ (✪ (∑ lst1))
    putStrLn $ "intersect: " ⧺ (✪ (lst1 ∩ lst2))
    putStrLn $ "union: " ⧺ (✪ (lst1 ∪ lst2))

    putStrLn $ "unfoldr: " ⧺ (with CoList show
        ( unfoldr
            (λ b → if b ≡ 0 then Nothing
                            else Just (b, b - 1)
            ) $ the Int 10
        )
    )

    putStrLn $ "unfoldr: " ⧺ (✪
        ( unfoldr
            (λ b → if b ≡ 0 then Nothing
                                 else Just (b, b + 1)
            ) $ the Nat 10
        )
    )
