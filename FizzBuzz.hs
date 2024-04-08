import Data.Function -- Para importar los operadores (& y $)

fizzBuzz :: Int -> String
fizzBuzz x  
   | (mod x 15 == 0) = "FizzBuzz"  
   | (mod x  3 == 0) = "Fizz"  
   | (mod x  5 == 0) = "Buzz"  
   | otherwise       = show x

main :: IO ()
main = do
    [1..30]
        & map fizzBuzz
        & print

    print $ map fizzBuzz [1..30]