Ticket reservation system
=========================

POST /ticket/ {amount : 2}
=>
     [{ "car" : 1, "seat" : 2},{ "car" : 1, "seat" : 4}] 

or [] if not possible to reserve all tickets

Phases:

- Clone from git: https://github.com/raimohanska/trainwreck
- Parse input, return constant value
- Static train, algorithm: Int -> Train -> [Ticket]
- Real algorithm
- Use STM for global state: STM TVar train, init in main

