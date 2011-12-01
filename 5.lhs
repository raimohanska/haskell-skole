Currying, partial application
=============================

> add :: Int -> Int -> Int 
> add = (+)

:t (add)
:t (add 1)
:t (add 1 2)

map (add 1) [1, 2, 3]

