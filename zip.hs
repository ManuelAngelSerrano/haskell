zip' :: [a] -> [b] -> [(a,b)]
zip' _ [] = []
zip' [] _ = []
zip' (x:xs) (y:ys) = (x,y):zip' xs ys

main :: IO ()
main = do
    print $ zip' [1,2,3] ['a','b','c'] -- [(1,'a'),(2,'b'),(3,'c')]
    print $ zip' [1,2] ['a','b','c'] -- [(1,'a'),(2,'b')]
    -- print $ zip' [] ['a','b','c'] -- []
    -- print $ zip' [1,2,3] [] -- []
    print $ zip' [1] ['a'] -- [(1,'a')]
    print $ zip' [1,2] ['a'] -- [(1,'a')]
    -- print $ zip' [] [] -- []