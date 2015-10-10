-- 12. Make a function named 'decodeModified' that decodes a modified run-length encoding, implemented in Problem 11.

data ListItem a = Single a | Multiple Int a deriving Show

decodeModified :: [ListItem a] -> [a]
decodeModified [] = []
decodeModified (Single x:xs) = x:decodeModified xs
decodeModified (Multiple n x:xs) = (replicate n x) ++ decodeModified xs
