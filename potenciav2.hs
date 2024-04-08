import Data.Function -- Para importar los operadores (& y $)

power :: Int -> Int -> Int
power base exp =
-- Generamos uns lista de longitud exp 
-- y la llenamos de base repetida exp veces
-- Luego multiplicamos todos los elementos de la lista
-- con foldl
    take exp (repeat base)
    & foldl (*) 1

main::IO ()
main = do
    [0..10]
        & map (power 2)
        & print
    [0..10]
        & map (power 3)
        & print