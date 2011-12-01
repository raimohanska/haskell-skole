module Skole where

import Control.Concurrent.STM
import Control.Concurrent.STM.TVar

data Event a = Next a | End | Error

instance Show a => Show (Event a) where
  show (Next x) = show x
  show End    = "<end>"
  show Error  = "<error>"

multiply :: Int -> Int -> Int
multiply a b = a * b
multiply2 = (*)

multiplyList :: Int -> [Int] -> [Int]
multiplyList a bs = map (*a) bs
multiplyList2 a = map (*a)
multiplyList3 a = map (\b -> a * b)

echo = getLine >>= putStrLn
latvialize = getLine >>= putStrLn . unwords . map (++ "s") . words
cat = getLine >>= readFile >>= putStrLn
catMe = return "Skole.hs" >>= readFile >>= putStrLn

cat2 = do
  fileName <- getLine
  fileContents <- readFile fileName
  putStrLn $ "Printing contents of " ++ fileName
  putStrLn fileContents

catFile fileName = do
  fileContents <- readFile fileName
  putStrLn $ "Printing contents of " ++ fileName
  putStrLn fileContents

catMany = getLine >>= return . words >>= mapM catFile

inc :: TVar Int -> STM ()
inc var = do 
  val <- readTVar var
  writeTVar var (val + 1)

tvarExample = do
  var <- newTVarIO 0
  result <- atomically $ do inc var
                            readTVar var
  putStrLn $ show result
