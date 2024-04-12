import Data.Function -- Para importar los operadores (& y $)
import Data.List -- Para importar las funciones de listas

calcularMaximo :: [Char] -> (Char, Int) -> (Char, Int) -> (Char, Int)
calcularMaximo [] acc max = max
calcularMaximo (x:xs) (ac, an) (maxc, maxn)
    | x == ac = calcularMaximo xs (ac, an + 1) (maxc, maxn)
    | an > maxn = calcularMaximo xs (x, 1) (ac, an)
    | otherwise = calcularMaximo xs (x, 1) (maxc, maxn)

maximo :: [Char] -> (Char, Int)
maximo [] = (' ', 0)
maximo (x:xs) = calcularMaximo xs (x,1) (x,1)

masRepetido :: [Char] -> (Char, Int)
masRepetido [] = (' ', 0)
masRepetido s = s
    & filter (/=' ') -- quitar los espacios en blanco
    & sort -- ordenar los caracteres
    & maximo -- calcular el caracter más repetido

main::IO ()
main = do
    print $ masRepetido "En un lugar de la Mancha de cuyo nombre no quiero acordarme"