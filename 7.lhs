Pattern matching
================

> first :: [a] -> Maybe a
> first [] = Nothing
> first (a : as) = Just a

Guards
======

> data Event a = Next a | End | Error
> desc :: Event [Char] -> String
> desc (Next s) | length s < 10 = s
>               | otherwise     = take 10 s
> desc e                        = show e

Excercise : show "lauronen" if name equals "vesa" 
Excercise 2: replace name with "new guy" if employee number > 2

> employees = [(2, "vesa"), (50, "vessi"), (140, "londen")]

Full solution in Lauronen.hs
