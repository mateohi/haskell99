-- 1. Make a function named 'myLast' that finds the last element of a list.

myLast :: [a] -> a
myLast [] = error "myLast: empty list"
myLast [x] = x
myLast (x:xs) = myLast xs
