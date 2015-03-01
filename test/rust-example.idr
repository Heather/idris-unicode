module Main

import Control.Unicode

program : String
program = "+ + * - /"

main : IO ()
main = putStrLn $ "The program " 
                    ++ program 
                    ++ " calculates the value " 
                    ++ (show $ acc (unpack program) 0)
 where acc : (List Char) → Float → Float
       acc [] m = m
       acc (x::xs) m = acc xs $ case x of
                                 '+' => m + 1
                                 '-' => m - 1
                                 '*' => m * 2
                                 '/' => m / 2
                                 _   => m
