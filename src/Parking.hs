module Parking (runParking) where

import Control.Monad.Trans.State
import Control.Monad.Trans.Class
import Control.Monad.IO.Class

{-
 - Design a parking system for a parking lot.
 - The parking lot has three kinds of parking spaces: big, medium, and small, with a fixed number of slots for each size.
 -
 - StateT Monad isn't neccessary to do this, but I wanted to use this as a reason to learn it better
 -}

data ParkingGarage = ParkingGarage { small :: Int, medium :: Int, big :: Int } deriving (Show)
defaultGarage = ParkingGarage 0 0 0

runParking :: IO ()
runParking = runStateT main defaultGarage >> return ()
  where
    main :: StateT ParkingGarage IO ()
    main = do
      modify $ \x -> ParkingGarage 1 5 5
      garage <- get
      liftIO $ putStrLn $ show garage
      park "b" >> park "s" >> park "s"
      garage <- get
      liftIO $ putStrLn $ show garage

checkPark :: Monad m => String -> StateT ParkingGarage m Bool
checkPark "s" = get >>= \x -> return (small x > 0)
checkPark "m" = get >>= \x -> return (medium x > 0)
checkPark "b" = get >>= \x -> return (big x > 0)

park :: String -> StateT ParkingGarage IO ()
park a 
  | a `elem` ["s", "m", "b"] = checkPark a >>= \x ->
    if x then do
      parkCar a 
      liftIO $ putStrLn ("Parking " ++ a ++ " car")
    else 
      liftIO $ putStrLn ("No space left for " ++ a ++ " cars")
  | otherwise = liftIO $ putStrLn "Invalid Option"

parkCar :: Monad m => String -> StateT ParkingGarage m ()
parkCar size = do
  garage <- get
  let g = case size of
          "s" -> garage { small = (small garage) - 1 }
          "m" -> garage { medium = (medium garage) - 1 }
          "b" -> garage { big = (big garage) - 1 }
  put $ g

