import Data.Function;
-- import Data.List;
import Text.Printf;

cuenta :: [Int] -> Int
cuenta lista =
    foldl (\acc x -> acc + 1) 0 lista

main :: IO ()
main = do
    printf "El tamaño de la lista %s es: %d\n" (show [1..10]) (cuenta [1..10])    
    -- print $ cuenta [1..10]

