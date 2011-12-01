Lipunvarausjarjestelma
======================

POST /ticket/ {amount : 2}
=>
     [{ "car" : 1, "seat" : 2},{ "car" : 1, "seat" : 4}] 

tai [] jos ei saada kaikkia

Vaiheet:

- Parsitaan input, palautetaan vakioarvo
  ssh://git@git.reaktor.fi/public/jpaanane/haskell-skole-trainwreck-1
- Staattinen juna, algoritmi: Int -> Train -> [Ticket]
- Kunnon algoritmi: 
- Otetaan globaali tila käyttöön: STM TVar train, tämä initialisoidaan Mainissa

