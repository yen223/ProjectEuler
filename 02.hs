--fibonacci :: Int -> Int
--fibonacci 1 = 1
--fibonacci 2 = 1
--fibonacci n = fibonacci (n-1) + fibonacci (n-2)

fib = 1 : 1 : [ a+b | (a,b) <- zip fib (tail fib) ]

fibsum = sum.takeWhile (< 4000000)
solution = show (fibsum fib)
