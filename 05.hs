doubleMe x = x + x

doubleUs x y = x*2 + y*2

checkDivisible :: Int -> Bool
checkDivisible num = all (==0) [num `mod` x|x <- [1..20]]
