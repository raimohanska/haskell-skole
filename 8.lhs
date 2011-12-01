Komentoriviparametrit
=====================

main = getArgs >>= git

> git ("add" : files) = undefined
> git ("rm" : files) = undefined
> git _ = putStrLn "Usage: git ..."


