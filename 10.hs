-- 10. Make a function named 'encode' that implements run-length encoding on a list. That is, consecutive duplicates and standalone elements are replaced with tuples of the format (number of occurences of element, element itself).

encode :: Eq a => [a] -> [(Int, a)]
encode [] = []
encode (x:xs) = let (first, rest) = span (== x) xs
                    amount = length first + 1
                in (amount, x):encode rest
