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

Harkka  :  näytä resun nimen tilalla "lonttinen" jos nimi = "londen"
Harkka 2:  näytä resujen nimen tilalla "uus jäbä" jos numero > 2

> resut = [(2, "vesa"), (50, "vessi"), (140, "londen")]
