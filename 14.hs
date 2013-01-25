collatz :: (Integral a) => a -> [a]
collatz 1 = [1]
collatz n
    | even n = n : collatz (n `div` 2)
    | odd n  = n : collatz (n*3 + 1)

collatzLength :: (Integral a) => a -> Int
collatzLength 1 = 1
collatzLength n
    | even n = 1 + collatzLength (n `div` 2)
    | odd n = 1 + collatzLength(n*3 + 1)

