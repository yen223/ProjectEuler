sumSquare :: Int -> Int
sumSquare num = sum $ map (^ 2) [1..num]

squareSum :: Int -> Int
squareSum num = (^ 2) $ sum [1..num]

solution :: Int -> Int
solution num = sumSquare num - squareSum num
