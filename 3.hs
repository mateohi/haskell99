-- 3. Make a function named 'elementAt' that finds the element of a list at a specific 1-based index.

elementAt :: [a] -> Int -> a
elementAt [] _ = error "elementAt: empty list"
elementAt (x:xs) 1 = x
elementAt (_:xs) n
    | n < 0 = error "elementAt: negative index"
        | otherwise = elementAt xs (n - 1)
