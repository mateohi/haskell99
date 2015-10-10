-- 6. Make a function named 'isPalindrome' that finds whether a list is a palindrome (is the same read forward and backward).

isPalindrome :: (Eq a) => [a] -> Bool
isPalindrome xs = xs == reverse xs
