module Main

import Unicode

prog : String
prog = "+ + * - /"

AType : Type
AType = if '/' ∈ (❃ prog)
            then ℝ
            else ℤ

main : ໒ ()
main = putStrLn $ "The program "
                  ⧺ prog
                  ⧺ " calculates the value "
                  ⧺ (show $ acc (❃ prog) 0)
 where acc : (List Char) → (AType) → (AType)
       acc [] m = m
       acc (x::xs) m = acc xs (
         case x of '+' => m + 1
                   '-' => m - 1
                   '*' => m ⋅ 2
                   '/' => m ÷ 2
                   _   => m)
