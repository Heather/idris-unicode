module Main

import Control.Unicode

prog : String
prog = "+ + * - /"

aType : Type
aType = if '/' ∈ (unpack prog)
            then Float
            else Int

main : IO ()
main = putStrLn $ "The program "
                    ⧺ prog
                    ⧺ " calculates the value "
                    ⧺ (show $ acc (unpack prog) 0)
 where acc : (List Char) → (aType) → (aType)
       acc [] m = m
       acc (x::xs) m = acc xs $ case x of
                                 '+' => m + 1
                                 '-' => m - 1
                                 '*' => m ⋅ 2
                                 '/' => m ÷ 2
                                 _   => m
