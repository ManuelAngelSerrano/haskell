import Data.Function

esPrimo :: Int -> Bool 
esPrimo n =
    n >= 2 && sinDivisores 2
    where 
        sinDivisores :: Int -> Bool
        sinDivisores m = 
            m*m > n || ((mod n m /= 0) && sinDivisores (m+1))
    
main :: IO ()
main = do
    [1..100]
    & filter esPrimo
    & print