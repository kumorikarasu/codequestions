module GroupPeople (runGroup) where

import Data.List
import Data.Function
import Helpers

runGroup :: IO ()
runGroup = do
  putStrLn "Input: [1,3,3,3,4,4,4,4,1,1]"
  putStrLn $ show $ (splitGroups . groupPeople) [1,3,3,3,4,4,4,4,1,1]


groupPeople :: [Int] -> [[(Int, Integer)]]
groupPeople people = groupBy ((==) `on` fst) $ sortBy (compare `on` fst) (zip people [1..])
  

splitGroups :: [[(Int, Integer)]] -> [[Integer]]
splitGroups groups = 
  groups >>= (\xs -> map2 (\y -> snd y) (splitEvery (fst $ head xs) xs))

splitEvery :: Int -> [a] -> [[a]] 
splitEvery _ [] = []
splitEvery n xs = y : splitEvery n ys
  where (y,ys) = splitAt n xs

map2 :: (a -> b) -> [[a]] -> [[b]]
map2 = map . map


