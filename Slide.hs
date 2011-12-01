module Slide where

import System.IO.Unsafe
import Data.IORef
import Control.Monad
import Data.List
import Data.Maybe

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
