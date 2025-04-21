import Data.Function -- Para importar los operadores (& y $)
import Flow -- Para importar el operador (|>)

fizzBuzz :: Int -> String
fizzBuzz x  
   | mod x 15 == 0  = "FizzBuzz"  
   | mod x  3 == 0  = "Fizz"  
   | mod x  5 == 0  = "Buzz"  
   | otherwise      = show x

main :: IO ()
main = do
    [fizzBuzz x | x <- [1..30]] |> print
    print $ [fizzBuzz x | x <- [1..30]]