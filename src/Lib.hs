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
     putStrLn "\nRunning Parking Question"
     runParking
     putStrLn "\nRunning Steps Question"
     putStrLn (show $ calcSteps 123)
     putStrLn "\nRunning Sort String By Array"
     putStrLn $ sortByArray "codeleet" [4,5,6,7,0,2,1,3]


entryPoint = main
