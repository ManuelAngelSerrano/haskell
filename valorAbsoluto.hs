import Data.Function -- Para importar los operadores (& y $)
absValue :: Int -> Int
absValue x
    | x < 0 = -x
    | otherwise = x 

main::IO () 
main = do
    [-5..5] 
        & map absValue
        & print
    print $ map absValue [-5..5]