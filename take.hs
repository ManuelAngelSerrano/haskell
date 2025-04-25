take' :: (Num i, Ord i) => i -> [a] -> [a]
take' n _
    | n <= 0   = []
take' _ []     = []
take' n (x:xs) = x : take' (n-1) xs

main :: IO ()
main = do
    print $ take' 3 [1,2,3,4,5] -- [1,2,3]
    print $ take' 0 [1,2,3,4,5] -- []
    print $ take' (-1) [1,2,3,4,5] -- []
    print $ take' 10 [1,2] -- [1,2]
    -- print $ take' 5 [] -- []
    print $ take' 3 "hello" -- "hel"
    print $ take' 0 "hello" -- ""
    print $ take' (-1) "hello" -- ""
    print $ take' 10 "hello" -- "hello"