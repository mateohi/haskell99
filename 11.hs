-- 11. Make a function named 'encodeModified' that implements a modified run-length encoding on a list. Instead of encoding the result as a tuple, use the provided ListItem.

data ListItem a = Single a | Multiple Int a deriving Show

encodeModified :: Eq a => [a] -> [ListItem a]
encodeModified [] = []
encodeModified (x:xs) = let (first, rest) = span (== x) xs
                            single = null first
                            amount = length first + 1
                            item = if single then Single x else Multiple amount x
                        in item:encodeModified rest
