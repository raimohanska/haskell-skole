{-# LANGUAGE TupleSections #-}
module Slide where

import System.IO.Unsafe
import Data.IORef
import Control.Monad
import Data.List
import Data.Maybe
import System.Directory

index = unsafePerformIO $ newIORef 0

chars = ['1'..'9']++['a'..'z']

current = readIORef index >>= return . (: ".lhs") . (chars !!) 
  >>= \fileName -> do 
    contents <- readFile fileName
    putStrLn $ "<" ++ fileName ++ ">"
    putStrLn "" 
    putStrLn contents
next  = relative (+ 1)
prev  = relative (\i -> i - 1)
go n  = relative $ const $ fromJust $ elemIndex n chars

relative f = modifyIORef index f >> current
grep s = findAll >>= mapM grep' >>= (mapM_ (putStrLn . format)) . concat
  where grep' :: String -> IO [(FilePath, String, Int)] 
        grep' f = readFile f >>= 
          return . map (\(n, l) -> (f,l,n)) 
                 . filter ((s `isInfixOf`) . snd) 
                 . zip [1..] . lines
        format :: (FilePath, String, Int) -> String
        format (f, ln, num) = f ++ "(" ++ (show num) ++"): " ++ ln
        findAll = forM fileNames maybeFileName >>= return . catMaybes 
        maybeFileName f = doesFileExist f >>= return . ifTrue f 
        fileNames = map (: ".lhs") chars
        ifTrue x True  = Just x
        ifTrue _ False = Nothing

