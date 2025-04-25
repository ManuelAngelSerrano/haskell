import Data.Function -- Para importar los operadores (& y $)
import Flow -- Para importar los operadores (|> y <|)

fact :: [Integer]
-- Definición infinita de la sucesión factorial utilizando recursión perezosa.
fact = 1 : zipWith (*) [2..] fact

main::IO ()
main = do
    print $ take 20 fact