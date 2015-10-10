-- 2. Make a function named 'myButLast' that finds the second last element of a list.

myButLast :: [a] -> a
myButLast [] = error "myButLast: empty list"
myButLast [x] = error "myButLast: singleton list"
myButLast [x, y] = x
myButLast (x:xs) = myButLast xs 
