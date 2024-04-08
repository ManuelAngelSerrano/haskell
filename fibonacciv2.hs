import Data.Function -- Para importar los operadores (& y $)

-- fibaux :: Int -> Int -> Int -> [Int]
-- fibaux a b n = 
--     case n of
--         1 -> [b]
--         _ -> b : (fibaux b (a+b) (n-1))

fib ::Int -> [Int]
fib n =
    case n of
        0 -> []
        _ -> 1 : fibaux 1 1 n
    where fibaux a b n = 
            case n of
                1 -> [b]
                _ -> b : (fibaux b (a+b) (n-1))

main::IO ()
main = do
    print $ fib 20