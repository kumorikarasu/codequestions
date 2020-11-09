module Helpers where

import Data.List


-- Helper function
count :: String -> ([String] -> Int)
count x = length . filter (\z -> z==x)

beginsWith :: Char -> [Char] -> Bool
beginsWith l (c:_) = c == l
beginsWith l _ = False

showTuple :: (String, Int) -> String
showTuple (t, i) = "" ++ t ++ ":" ++ show i
