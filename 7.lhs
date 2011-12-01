Pattern matching
================

> first :: [a] -> Maybe a
> first [] = Nothing
> first (a : as) = Just a

> data Event a = Next a | End | Error
> instance Show a => Show (Event a) where
>   show (Next a) = show a
>   show End = "<END>"
>   show Error = "<ERROR>"
