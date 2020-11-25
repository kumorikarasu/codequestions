module Helpers where

import Data.List
import Data.Function (on)


{-Number of Steps to Reduce a Number to Zero -}
calcSteps :: Int -> Int
calcSteps num = calc num 0
  where 
    calc :: Int -> Int -> Int
    calc n a
      | n == 0 = a
      | n `rem` 2 == 0 = calc (n `div` 2) (a+1)
      | n `rem` 2 == 1 = calc (n-1) (a+1)

{- Sort string by array -}
sortByArray :: String -> [Int] -> String
sortByArray str xs =
  map fst $ sortBy (compare `on` snd) $ zip str xs


-- Helper function
count :: String -> ([String] -> Int)
count x = length . filter (\z -> z==x)

beginsWith :: Char -> [Char] -> Bool
beginsWith l (c:_) = c == l
beginsWith l _ = False

showTuple :: Show a => Show b => (a, b) -> String
showTuple (t, i) = "" ++ show t ++ ":" ++ show i

pairToList :: (a, a) -> [a]
pairToList (x,y) = [x,y]
