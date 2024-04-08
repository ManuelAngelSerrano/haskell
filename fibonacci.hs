import Data.Function -- Para importar los operadores (& y $)

fib :: Int -> Int
fib x = case x of
    0 -> 0
    1 -> 1
    _ -> fib (x-1) + fib (x-2)

main::IO ()
main = do
    [0..20]
        & map fib
        & print