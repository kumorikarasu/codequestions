module Lib
    ( entryPoint
    ) where

import Tweets (runTweets)
import TwoSum (runTwoSum)
import Parking (runParking)
import Helpers

main :: IO ()
main = do
     putStrLn "Running Tweet Question" 
     runTweets 
     putStrLn "Running Two Sums Question"
     runTwoSum
     putStrLn ""
     putStrLn "Running Parking Question"
     runParking
     putStrLn "Running Steps Question"
     putStrLn (show $ calcSteps 123)


entryPoint = main
