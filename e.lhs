Lipunvarausjarjestelma
======================

POST /ticket/ {amount : 2}
=>
     [{ "car" : 1, "seat" : 2},{ "car" : 1, "seat" : 4}] 

tai [] jos ei saada kaikkia

Vaiheet:

- Kloonataan ja siivotaan skeleton (tän vois tehdä valmiiksi)
- Parsitaan input, palautetaan vakioarvo
- Staattinen juna, algoritmi: Int -> Train -> [Ticket]
- Kunnon algoritmi: 
- Otetaan globaali tila käyttöön: STM TVar train, tämä initialisoidaan Mainissa

