resut = [(2, "vesa"), (50, "vessi"), (140, "londen")]

lontti (_, "londen") = "lonttinen"
lontti (n, name) | n > 2 = "uus jäbä"
                 | otherwise = name 
