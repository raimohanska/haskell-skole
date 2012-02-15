Command line parameters
=====================

main = getArgs >>= git

> git ("add" : files) = putStrLn $ concat files
> git ("rm" : files) = undefined
> git _ = putStrLn "Usage: git ..."


