import Data.Function -- Para importar los operadores (& y $)
import Flow -- Para importar los operadores (|> y <|)

-- Definición infinita de la sucesión de Fibonacci utilizando recursión perezosa.
-- Los dos primeros elementos de la lista son 1 y 1.
-- A partir de ahí, los siguientes elementos se calculan sumando pares de elementos consecutivos
-- usando zipWith (+) fib (tail fib), lo cual suma cada elemento de la lista con su siguiente.
-- Ejemplo:
-- fib       = 1, 1, 2, 3, 5, 8, ...
-- tail fib  =    1, 2, 3, 5, 8, ...
-- zipWith (+) =  2, 3, 5, 8, 13, ...
-- Resultado: fib = 1 : 1 : [2, 3, 5, 8, 13, ...]
fib :: [Integer]
fib = 1 : 1 : zipWith (+) fib (tail fib)


main::IO ()
main = do
    print $ take 20 fib