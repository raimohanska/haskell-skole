Do-notation
===========

> import Control.Monad
> cat2 = do
>   fileName <- getLine
>   fileContents <- readFile fileName
>   let logMessage = "Printing contents of " ++ fileName
>   putStrLn logMessage 
>   putStrLn fileContents
> 
> catMany = do
>   input <- getLine
>   let fileNames = words input
>   forM_ fileNames $ \fileName -> do
>      content <- readFile fileName
>      putStrLn content

But you could also do
 
> catMany2 = getLine >>= return . words >>= mapM_ (readFile >=> putStrLn)



