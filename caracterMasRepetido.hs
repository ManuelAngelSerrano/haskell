import Data.Function -- Para importar los operadores (& y $)
import Data.List -- Para importar las funciones de listas

calcularMaximo :: [Char] -> (Char, Int) -> (Char, Int) -> (Char, Int)
calcularMaximo [] acc max = max
calcularMaximo (x:xs) acc max
    | x == fst acc = calcularMaximo xs (x, snd acc + 1) max
    | snd acc > snd max = calcularMaximo xs (x, 1) acc
    | otherwise = calcularMaximo xs (x, 1) max

maximo :: [Char] -> (Char, Int)
maximo [] = (' ', 0)
maximo (x:xs) = calcularMaximo xs (x,1) (x,1)

masRepetido :: [Char] -> (Char, Int)
masRepetido [] = (' ', 0)
masRepetido s = s
    & filter (/=' ') -- quitarBlancos
    & sort -- ordenar
    & maximo

main::IO ()
main = do
    print $ masRepetido "En un lugar de la Mancha de cuyo nombre no quiero acordarme"