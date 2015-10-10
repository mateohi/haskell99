-- 9. Make a function named 'pack' that packs consecutive duplicates and standalone elements into sublists.

pack :: Eq a => [a] -> [[a]]
pack [] = []
pack [x] = [[x]]
pack (x:y:xs)
    | x == y = (x:head rest):tail rest
    | otherwise = [x]:rest
    where rest = pack (y:xs)
