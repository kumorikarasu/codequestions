module Lib
    ( entryPoint
    ) where

import Tweets (runTweets)
import TwoSum (runTwoSum)
import Parking (runParking)

main :: IO ()
main = do
     putStrLn "Running Tweet Question" 
     runTweets 
     putStrLn "Running Two Sums Question"
     runTwoSum
     putStrLn ""
     putStrLn "Running Parking Question"
     runParking



entryPoint = main
