reverse' :: [a] -> [a]
reverse' [] = []
reverse' (x:xs) = reverse' xs ++ [x]

main :: IO ()
main = do
    print $ reverse' [1,2,3,4,5] -- [5,4,3,2,1]
    print $ reverse' "hello" -- "olleh"
    print $ reverse' [1] -- [1]
    -- print $ reverse' [] -- []
    print $ reverse' [1,2] -- [2,1]
    print $ reverse' [1,2,3] -- [3,2,1]
    print $ reverse' [1,2,3,4] -- [4,3,2,1]