import Data.Function -- Para importar los operadores (& y $)
import Flow -- Para importar los operadores (|> y <|)

fact :: Int -> Int
fact n = foldl (*) 1 [1..n]
-- fact n = product [1..n]

main::IO ()
main = do
    print $ [fact n | n <- [0..20]]