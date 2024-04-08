import Data.Function -- Para importar los operadores (& y $)

power :: Int -> Int -> Int
power base 0 = 1
power base exp 
    | even exp = n*n
    | otherwise = n*n*base
    where n = power base (exp `div` 2)

main::IO ()
main = do
    [0..10]
        & map (power 2)
        & print
    [0..10]
        & map (power 3)
        & print