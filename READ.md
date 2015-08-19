This tiny application helps to estimate the price of diamond based on the size in carats

The price is given in 3 currencies

The price - in SG dollar - is calculated on the basis of a linear model built upon the dataframe `Dimaond` from the library `UsingR`

`fit <- lm(price ~ I(carat - mean(carat)), data = diamond)`

The price is SG Dollar is afterward converted to US Dollar `*0.71` and to Euro `*0.65`