module Lib
    ( entryPoint
    ) where

import Tweets (runTweets)
import TwoSum (runTwoSum)

main :: IO ()
main = putStrLn "Running Tweet Question" 
  >> runTweets 
  >> putStrLn "Running Two Sums Question"
  >> runTwoSum
  >> putStrLn "end"



entryPoint = main
