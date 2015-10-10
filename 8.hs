-- 8. Make a function named 'compress' removes consecutive duplicates of elements in a list without affecting the order.

compress :: Eq a => [a] -> [a]
compress [] = []
compress [x] = [x]
compress (x:y:xs)
    | x == y = compress (y:xs)
    | otherwise = x:compress (y:xs)
