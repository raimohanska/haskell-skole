Funktio-kompositio
==================

"vaunujen numerot, joissa paikkoja vapaana"

> type Seat = String
> data Car = Car Int [Seat]

> car1 = Car 1 ["a1", "b1"]
> car2 = Car 2 []

> freeCars = map number . filter anyFreeSeats
>      where anyFreeSeats (Car _ []) = False
>            anyFreeSeats (Car _ _) = True
>            number (Car a _) = a

Koe : "korkeintaan 4-merkkisten sanojen pituuksien summa"


