Karma-server
============

POST /buyRound {"buyer":"juha", "others":["juho", "atte"]}

GET /karma/juha/juho
=>1
GET /karma/atte/juha
=>-1

TODO:
- Install MongoDB
- git clone ssh://git@git.reaktor.fi/public/jpaanane/haskell-skole-harma
- Implement the algorithm
- Hoogle: mongo
