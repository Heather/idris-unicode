module Unicode
-- this module contains very weak stuff
-- just use Control.Unicode instead of this

import public Control.Unicode

syntax "♬" [a] = Eff a
syntax "໒" [a] = IO a

syntax [a] "⁂" [b] = when a b

syntax "ൠ" [a] = putStr a
syntax "❤" [a] = putStrLn a
syntax "✪" [a] = show a

syntax "፨" [a] = unpack a
syntax "◉" [a] = pack a

syntax [a] "∰" [b] = map a b
syntax "❂" [a] = return a

{-
random symbols to add..

♒❉✇※⁇✺❃✼✂ℚℒ∶≅≛≜≣⋙⋘≪≫➾➢∫∞µ
-}
