elem' :: (Eq a) => a -> [a] -> Bool
elem' a [] = False
elem' a (x:xs)
    | a == x    = True
    | otherwise = a `elem'` xs


main :: IO ()
main = do
    print $ elem' 1 [1,2,3] -- True
    print $ elem' 4 [1,2,3] -- False
    print $ elem' 'a' "hello" -- False
    print $ elem' 'h' "hello" -- True
    print $ elem' 1 [1] -- True
    print $ elem' 2 [1] -- False
    print $ elem' 1 [] -- False
    print $ elem' 'a' [] -- False