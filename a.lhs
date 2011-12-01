IO
==

IO a = IO action that returns value of type a
IO () = IO action that doesn't return anything ("IO Unit")

getLine :: IO String
putStrLn :: String -> IO ()
putStrLn "lol" :: IO ()

echo :: IO ()
echo = getLine >>= putStrLn

> cat :: IO ()
> cat = getLine >>= readFile >>= putStrLn
>
> catFile :: String -> IO ()
> catFile f = return f >>= readFile >>= putStrLn


