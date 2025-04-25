replicate' :: (Num i, Ord i) => i -> a -> [a]
replicate' n x
    | n <= 0    = []
    | otherwise = x:replicate' (n-1) x

main :: IO ()
main = do
    print $ replicate' 5 'a' -- "aaaaa"
    print $ replicate' 3 2   -- [2,2,2]
    print $ replicate' 0 True -- []
    print $ replicate' (-1) 'b' -- []
    print $ replicate' 4 "hello" -- ["hello","hello","hello","hello"]
    print $ replicate' 2 [1,2] -- [[1,2],[1,2]]
    print $ replicate' 1 (Just 42) -- [Just 42]
    print $ replicate' 3 (1,2) -- [(1,2),(1,2),(1,2)]
    -- print $ replicate' 0 Nothing -- []