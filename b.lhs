Do-notation
===========

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

Mutta Freeman kirjoittaisi
 
> catMany2 = getLine >>= return . words >>= mapM_ (readFile >=> putStrLn)



