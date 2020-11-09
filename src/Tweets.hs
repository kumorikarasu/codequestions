module Tweets (runTweets) where

import Data.List (nub)
import Control.Monad (liftM)
import System.IO (readFile)
import Helpers


{-
Given a file of "tweets" parse each hastag and return the number of instances of each hashtag.
Assumption: Hashtags will not have any special characters
 
file "tweets" is as follows
"one two #three"
"four five #six"
"one #three #three"
"seven eight #nine"
"#six #seven #eight"

unlines :: [String] -> String
nub - make list distinct 
-}

runTweets :: IO ()
runTweets = do 
              tweets <- (liftM lines) . readFile $ "test/tweets"
              putStrLn . unlines . nub . map showTuple . countTags . parseTweets $ tweets

-- (>>=) is implemented as (join . map) for the list monad
parseTweets :: [String] -> [String]
parseTweets tweets = tweets >>= \x -> filter (beginsWith '#') $ words x

countTags :: [String] -> [(String, Int)]
countTags tags = map (\tag -> (tag, count tag tags)) tags

