module TwoSum (runTwoSum) where

import Data.List

{-
 Given an array of integers nums and an integer target, return pairs of the two numbers such that they add up to target.

 You may assume that each input would have exactly one solution, and you may not use the same element twice.

 You can return the answer in any order.
 -}

runTwoSum :: IO ()
runTwoSum = do
              putStrLn $ "twoSum 9 in [2,7,11,15] = " ++ show (twoSum 9 [2,7,11,15]) ++ " indicies at " ++ show (twoSumElements 9 [2,7,11,15])
              putStrLn $ "twoSum 6 in [3,2,4] = " ++ show (twoSum 6 [3,2,4]) ++ "indicies at " ++ show (twoSumElements 6 [3,2,4])
              putStrLn $ "twoSum 6 in [3,3] = " ++ show (twoSum 6 [3,3]) ++ "indicies at " ++ show (twoSumElements 6 [3,3])
              putStrLn $ "twoSum 1 in [-3,-2,3,4] = " ++ show (twoSum 1 [-3,-2,3,4]) ++ "indicies at " ++ show (twoSumElements 1 [-3,-2,3,4])

-- Gets all pairs of numbers that add up to the target
twoSum :: Int -> [Int] -> [(Int, Int)]
twoSum target nums = ts nums target
  where ts (x:xs) t = concat [filt x xs, ts xs t]
        ts [] _     = []
        filt x      = map (\y -> (x,y)) . filter (\y -> x+y == target)

-- Gets the index of the array of the pairs that match
findElementIndexes :: ([(Int, Int)] -> [Int] ->  [(Maybe Int, Maybe Int)])
findElementIndexes ts xs = map (\t -> (elemIndex (fst t) xs, elemIndex (snd t) xs)) ts

-- Combines twoSum and findElementIndexes
-- TODO: Find a way to combine them without having to apply numbs twice
twoSumElements :: Int -> [Int] -> [(Maybe Int, Maybe Int)]
twoSumElements target numbs = (findElementIndexes . twoSum target) numbs numbs


