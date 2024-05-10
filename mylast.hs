myLast :: [a] -> a
myLast [] = error "empty list"
myLast [x] = x
myLast (x:xs) = myLast xs

myLast2 :: [a] -> a
-- myLast2 [] = error "empty list"
myLast2 = head . reverse

main::IO ()
main = do
    print $ myLast [1,2,3,4]
    print $ myLast "hola"
    print $ myLast "En un lugar de la Mancha de cuyo nombre no quiero acordarme"
    print $ myLast [1]
    -- print $ myLast []
    print $ myLast [1,2,3,4,5,6,7,8,9,10]
    print $ myLast2 [1,2,3,4]
    print $ myLast2 "hola"