maximum' :: (Ord a) => [a] -> a
maximum' []     = error "maximum of empty list"
maximum' [x]    = x
maximum' (x:xs) = max x (maximum' xs)

max'' :: (Ord a) => [a] -> a
max'' [] = error "maximum of empty list"
max'' xs = foldl1 (max) xs

main :: IO () = do
    print (maximum' [1, 2, 3, 4, 5])
    print (maximum' [5, 4, 3, 2, 1])
    print (maximum' [1, 3, 2, 5, 4])
    print (maximum' [1])
    -- print (maximum' [])
    print (max'' [1, 2, 3, 4, 5])
    print (max'' [5, 4, 3, 2, 1])
    print (max'' [1, 3, 2, 5, 7])