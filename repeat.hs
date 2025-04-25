repeat' :: a -> [a]
repeat' x = x : repeat' x

main :: IO ()
main = do
    print $ take 5 (repeat' 1) -- [1,1,1,1,1]
    print $ take 3 (repeat' "hello") -- ["hello","hello","hello"]
    print $ take 0 (repeat' 42) -- []
    print $ take 2 (repeat' True) -- [True,True]
    print $ take 4 (repeat' 'a') -- "aaaa"
    print $ take 6 (repeat' [1,2]) -- [[1,2],[1,2],[1,2],[1,2],[1,2],[1,2]]
    print $ take 1 (repeat' [1]) -- [[1]]