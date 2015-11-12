module Main

import Unicode

prog : String
prog = "+ + * - /"

aType : Type
aType = if '/' ∈ (❃ prog)
            then ℝ
            else ℤ

main : ໒ ()
main = putStrLn $ "The program "
                  ⧺ prog
                  ⧺ " calculates the value "
                  ⧺ (show $ acc (❃ prog) 0)
 where acc : (List Char) → (aType) → (aType)
       acc [] m = m
       acc (x::xs) m = acc xs (
         case x of '+' => m + 1
                   '-' => m - 1
                   '*' => m ⋅ 2
                   '/' => m ÷ 2
                   _   => m)
