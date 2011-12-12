Funktio-kompositio
==================

> import GHC.Exts(sortWith)
> resut = [(2, "vesa"), (50, "vessi"), (140, "londen")]
> sorted rs = map snd $ sortWith fst $ rs 
> newbies = map snd . sortWith fst . filter ((<100) . fst)


