-- 4. Make a function named 'myLength' that finds the number of elements in a list.

myLength :: [a] -> Int
myLength [] = 0
myLength (_:xs) = 1 + myLength xs
