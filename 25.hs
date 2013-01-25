fib :: Int -> Integer
fib num = 
    let phi = (1 + sqrt 5) / 2
    in floor ((( phi ^ num )/(sqrt 5)) + (1/2))

hasThousandDigits :: Integer -> Bool
hasThousandDigits num = num >= (10^999)
